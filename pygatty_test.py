
from pygatt.backends.gatttool import GattToolBackend
import time

# GATT 서버 객체 생성
adapter = GATTToolBackend() # 또는 GattTool()
adapter.start()

# 서비스 및 특성 정의
service_uuid = "your_service_uuid"
characteristic_uuid = "your_characteristic_uuid"

# 예시: 특성 값을 읽고 쓰는 함수
def read_value_callback(handle, offset, data):
    print(f"Read request received for handle {handle}, offset {offset}")
    # 데이터 반환
    return b"read data"

def write_value_callback(handle, offset, data):
    print(f"Write request received for handle {handle}, offset {offset}, data: {data.hex()}")
    # 데이터 처리

# 서비스 추가
adapter.add_service(service_uuid)
adapter.add_characteristic(service_uuid, characteristic_uuid, read_value_callback, write_value_callback)


# 서버 시작 및 광고
adapter.start_advertising("my_device", [service_uuid])

# 서버 유지
try:
    while True:
        time.sleep(1)
except KeyboardInterrupt:
    adapter.stop_advertising()
    adapter.remove_service(service_uuid)
    adapter.stop()