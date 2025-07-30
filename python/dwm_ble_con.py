import asyncio
from bleak import BleakClient, BleakScanner

# Nordic UART Service (NUS) UUIDs
NUS_SERVICE_UUID    = "6e400001-b5a3-f393-e0a9-e50e24dcca9e"
NUS_RX_CHAR_UUID    = "6e400002-b5a3-f393-e0a9-e50e24dcca9e"  # PC -> DWM1001
NUS_TX_CHAR_UUID    = "6e400003-b5a3-f393-e0a9-e50e24dcca9e"  # DWM1001 -> PC

# 수신 콜백 함수
def handle_rx(_: int, data: bytearray):
    try:
        print("수신 <<", data.decode("utf-8").strip())
    except UnicodeDecodeError:
        print("수신 << (바이너리)", data)

async def main():
    print("BLE 기기 검색 중...")
    devices = await BleakScanner.discover()

    target = None
    for d in devices:
        print(f"발견: {d.name or '(no name)'} [{d.address}]")
        if d.name and ("UART" in d.name or "DWM" in d.name):
            print(f"대상 기기 선택됨: {d.name} [{d.address}]")
            target = d
            break

    if not target:
        print("BLE NUS 장치를 찾을 수 없습니다.")
        return

    async with BleakClient(target.address) as client:
        print("BLE 연결됨!")

        # Notify 등록
        await client.start_notify(NUS_TX_CHAR_UUID, handle_rx)
        print("DWM1001 → PC 수신 대기 시작 (Ctrl+C 또는 'exit'로 종료)")

        # 송신 루프
        try:
            while True:
                msg = input("송신 >> ")
                if msg.lower() == "exit":
                    break
                await client.write_gatt_char(NUS_RX_CHAR_UUID, msg.encode())
        except KeyboardInterrupt:
            print("\n[사용자 중단]")

        await client.stop_notify(NUS_TX_CHAR_UUID)
        print("Notify 종료, 연결 해제됨")

if __name__ == "__main__":
    asyncio.run(main())
