/*
 * heli_task_3_private.h
 *
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * Code generation for model "heli_task_3".
 *
 * Model version              : 1.71
 * Simulink Coder version : 8.9 (R2015b) 13-Aug-2015
 * C source code generated on : Sun Nov 08 10:27:09 2020
 *
 * Target selection: quarc_win64.tlc
 * Note: GRT includes extra infrastructure and instrumentation for prototyping
 * Embedded hardware selection: 32-bit Generic
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#ifndef RTW_HEADER_heli_task_3_private_h_
#define RTW_HEADER_heli_task_3_private_h_
#include "rtwtypes.h"
#include "multiword_types.h"
#include "zero_crossing_types.h"

extern t_stream heli_task_3_rtZt_stream;

/* A global buffer for storing error messages (defined in quanser_common library) */
EXTERN char _rt_error_message[512];
extern real_T rt_atan2d_snf(real_T u0, real_T u1);
int_T rt_WriteMat4FileHeader(FILE *fp,
  int32_T m,
  int32_T n,
  const char_T *name);
void heli_task_3_output0(void);
void heli_task_3_update0(void);
void heli_task_3_output2(void);
void heli_task_3_update2(void);        /* private model entry point functions */
extern void heli_task_3_derivatives(void);

#endif                                 /* RTW_HEADER_heli_task_3_private_h_ */
