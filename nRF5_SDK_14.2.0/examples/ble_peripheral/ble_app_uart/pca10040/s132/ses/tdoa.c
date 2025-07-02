#include <stdio.h>
#include <math.h>
#include <float.h>
#include <string.h>
#include "tdoa.h"
#define NUM_RX 3
#define C 343.0  // 음속 (m/s)

// 수신기 좌표 (x, y)


double rx[NUM_RX][2] = {
    {0.0, 0.0},
    {100.0, 0.0},
    {0.0, 100.0}
};

// 실제 송신기 위치
double tx_true[2] = {3.0, 40.0};


// 거리 계산 함수
double distance2point(double x1, double y1, double x2, double y2) {
    return sqrt((x1 - x2)*(x1 - x2) + (y1 - y2)*(y1 - y2));
}

// TDOA 계산 함수 (기준: rx[0])
void compute_tdoa(double tdoa[]) {
    double dist0 = distance2point(tx_true[0], tx_true[1], rx[0][0], rx[0][1]);
    double t0 = dist0 / C;

    for (int i = 1; i < NUM_RX; i++) {
        double disti = distance2point(tx_true[0], tx_true[1], rx[i][0], rx[i][1]);
        double ti = disti / C;
        tdoa[i - 1] = ti - t0;
    }
}

// 잔차 계산 (추정 위치에서의 시간차와 측정된 TDOA 비교)
double compute_residual(double x, double y, double tdoa[]) {
    double d0 = distance2point(x, y, rx[0][0], rx[0][1]);
    double res = 0.0;

    for (int i = 1; i < NUM_RX; i++) {
        double di = distance2point(x, y, rx[i][0], rx[i][1]);
        double predicted_tdoa = (di - d0) / C;
        double err = predicted_tdoa - tdoa[i - 1];
        res += err * err;
    }

    return res;
}

// 위치 추정 (격자 탐색)
void estimate_position(double tdoa[], double* est_x, double* est_y) {
    double best_x = 0.0, best_y = 0.0;
    double min_res = DBL_MAX;

    for (double x = 0; x <= 100; x += 1.0) {
        for (double y = 0; y <= 100; y += 1.0) {
            double res = compute_residual(x, y, tdoa);
            if (res < min_res) {
                min_res = res;
                best_x = x;
                best_y = y;
            }
        }
    }

    *est_x = best_x;
    *est_y = best_y;
}

tag_pos_t pos_cal(uint32_t anchorNum, tdoa_data_t data) {

    tag_pos_t tag_pos;
    double best_x = 0.0, best_y = 0.0;
    double min_res = DBL_MAX;

    for (double x = 0; x <= 100; x += 1.0) {
        for (double y = 0; y <= 100; y += 1.0) {
            double res = compute_residual(x, y, data.tdoa);
            if (res < min_res) {
                min_res = res;
                best_x = x;
                best_y = y;
            }
        }
    }
  
    tag_pos.pos.x = (int64_t) best_x;
    tag_pos.pos.y  = (int64_t) best_y;
    tag_pos.pos.z  = 0;

    return tag_pos;
}
