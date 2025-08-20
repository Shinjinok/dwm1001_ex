#ifndef TDOA_H
#define TDOA_H

#include <stdint.h>


#define MAX_ANCHOR_NUM 10
typedef struct{
  int64_t x;
  int64_t y;
  int64_t z;
}pos_t;

typedef struct{
  uint16_t ex;
  uint16_t ey;
  uint16_t ez;
  uint16_t e;
}pos_err_t;
typedef struct{
  pos_t pos;
  pos_err_t err;
}tag_pos_t;

typedef struct{
  pos_t anchor[MAX_ANCHOR_NUM];
  uint64_t tdoa[MAX_ANCHOR_NUM]; 
}tdoa_data_t;


extern void estimate_position(double tdoa[], double* est_x, double* est_y);
extern double compute_residual(double x, double y, double tdoa[]);
extern void compute_tdoa(double tdoa[]);
extern double distance2point(double x1, double y1, double x2, double y2) ;
extern tag_pos_t pos_cal(uint32_t anchorNum, tdoa_data_t data);


#endif //TDOA_H