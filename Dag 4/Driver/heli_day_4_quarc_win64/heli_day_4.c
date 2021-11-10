/*
 * heli_day_4.c
 *
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * Code generation for model "heli_day_4".
 *
 * Model version              : 1.87
 * Simulink Coder version : 8.9 (R2015b) 13-Aug-2015
 * C source code generated on : Sun Nov 08 10:55:19 2020
 *
 * Target selection: quarc_win64.tlc
 * Note: GRT includes extra infrastructure and instrumentation for prototyping
 * Embedded hardware selection: 32-bit Generic
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "heli_day_4.h"
#include "heli_day_4_private.h"
#include "heli_day_4_dt.h"

t_stream heli_day_4_rtZt_stream = NULL;

/* Block signals (auto storage) */
B_heli_day_4_T heli_day_4_B;

/* Continuous states */
X_heli_day_4_T heli_day_4_X;

/* Block states (auto storage) */
DW_heli_day_4_T heli_day_4_DW;

/* Real-time model */
RT_MODEL_heli_day_4_T heli_day_4_M_;
RT_MODEL_heli_day_4_T *const heli_day_4_M = &heli_day_4_M_;

/* Forward declaration for local functions */
static void heli_day_4_invNxN(const real_T x[25], real_T y[25]);
static void rate_monotonic_scheduler(void);

/*
 * Writes out MAT-file header.  Returns success or failure.
 * Returns:
 *      0 - success
 *      1 - failure
 */
int_T rt_WriteMat4FileHeader(FILE *fp, int32_T m, int32_T n, const char *name)
{
  typedef enum { ELITTLE_ENDIAN, EBIG_ENDIAN } ByteOrder;

  int16_T one = 1;
  ByteOrder byteOrder = (*((int8_T *)&one)==1) ? ELITTLE_ENDIAN : EBIG_ENDIAN;
  int32_T type = (byteOrder == ELITTLE_ENDIAN) ? 0: 1000;
  int32_T imagf = 0;
  int32_T name_len = (int32_T)strlen(name) + 1;
  if ((fwrite(&type, sizeof(int32_T), 1, fp) == 0) ||
      (fwrite(&m, sizeof(int32_T), 1, fp) == 0) ||
      (fwrite(&n, sizeof(int32_T), 1, fp) == 0) ||
      (fwrite(&imagf, sizeof(int32_T), 1, fp) == 0) ||
      (fwrite(&name_len, sizeof(int32_T), 1, fp) == 0) ||
      (fwrite(name, sizeof(char), name_len, fp) == 0)) {
    return(1);
  } else {
    return(0);
  }
}                                      /* end rt_WriteMat4FileHeader */

time_T rt_SimUpdateDiscreteEvents(
  int_T rtmNumSampTimes, void *rtmTimingData, int_T *rtmSampleHitPtr, int_T
  *rtmPerTaskSampleHits )
{
  rtmSampleHitPtr[1] = rtmStepTask(heli_day_4_M, 1);
  rtmSampleHitPtr[2] = rtmStepTask(heli_day_4_M, 2);
  UNUSED_PARAMETER(rtmNumSampTimes);
  UNUSED_PARAMETER(rtmTimingData);
  UNUSED_PARAMETER(rtmPerTaskSampleHits);
  return(-1);
}

/*
 *   This function updates active task flag for each subrate
 * and rate transition flags for tasks that exchange data.
 * The function assumes rate-monotonic multitasking scheduler.
 * The function must be called at model base rate so that
 * the generated code self-manages all its subrates and rate
 * transition flags.
 */
static void rate_monotonic_scheduler(void)
{
  /* To ensure a deterministic data transfer between two rates,
   * data is transferred at the priority of a fast task and the frequency
   * of the slow task.  The following flags indicate when the data transfer
   * happens.  That is, a rate interaction flag is set true when both rates
   * will run, and false otherwise.
   */

  /* tid 1 shares data with slower tid rate: 2 */
  if (heli_day_4_M->Timing.TaskCounters.TID[1] == 0) {
    heli_day_4_M->Timing.RateInteraction.TID1_2 =
      (heli_day_4_M->Timing.TaskCounters.TID[2] == 0);

    /* update PerTaskSampleHits matrix for non-inline sfcn */
    heli_day_4_M->Timing.perTaskSampleHits[5] =
      heli_day_4_M->Timing.RateInteraction.TID1_2;
  }

  /* Compute which subrates run during the next base time step.  Subrates
   * are an integer multiple of the base rate counter.  Therefore, the subtask
   * counter is reset when it reaches its limit (zero means run).
   */
  (heli_day_4_M->Timing.TaskCounters.TID[2])++;
  if ((heli_day_4_M->Timing.TaskCounters.TID[2]) > 4) {/* Sample time: [0.01s, 0.0s] */
    heli_day_4_M->Timing.TaskCounters.TID[2] = 0;
  }
}

/*
 * This function updates continuous states using the ODE1 fixed-step
 * solver algorithm
 */
static void rt_ertODEUpdateContinuousStates(RTWSolverInfo *si )
{
  time_T tnew = rtsiGetSolverStopTime(si);
  time_T h = rtsiGetStepSize(si);
  real_T *x = rtsiGetContStates(si);
  ODE1_IntgData *id = (ODE1_IntgData *)rtsiGetSolverData(si);
  real_T *f0 = id->f[0];
  int_T i;
  int_T nXc = 5;
  rtsiSetSimTimeStep(si,MINOR_TIME_STEP);
  rtsiSetdX(si, f0);
  heli_day_4_derivatives();
  rtsiSetT(si, tnew);
  for (i = 0; i < nXc; ++i) {
    x[i] += h * f0[i];
  }

  rtsiSetSimTimeStep(si,MAJOR_TIME_STEP);
}

real_T rt_atan2d_snf(real_T u0, real_T u1)
{
  real_T y;
  int32_T u0_0;
  int32_T u1_0;
  if (rtIsNaN(u0) || rtIsNaN(u1)) {
    y = (rtNaN);
  } else if (rtIsInf(u0) && rtIsInf(u1)) {
    if (u0 > 0.0) {
      u0_0 = 1;
    } else {
      u0_0 = -1;
    }

    if (u1 > 0.0) {
      u1_0 = 1;
    } else {
      u1_0 = -1;
    }

    y = atan2(u0_0, u1_0);
  } else if (u1 == 0.0) {
    if (u0 > 0.0) {
      y = RT_PI / 2.0;
    } else if (u0 < 0.0) {
      y = -(RT_PI / 2.0);
    } else {
      y = 0.0;
    }
  } else {
    y = atan2(u0, u1);
  }

  return y;
}

/* Function for MATLAB Function: '<S6>/Correction step' */
static void heli_day_4_invNxN(const real_T x[25], real_T y[25])
{
  int8_T p[5];
  real_T A[25];
  int8_T ipiv[5];
  int32_T b_j;
  real_T smax;
  real_T s;
  int32_T iy;
  int32_T c_ix;
  int32_T d;
  int32_T ijA;
  int32_T jBcol;
  int32_T kAcol;
  int32_T c_i;
  for (b_j = 0; b_j < 25; b_j++) {
    y[b_j] = 0.0;
    A[b_j] = x[b_j];
  }

  for (b_j = 0; b_j < 5; b_j++) {
    ipiv[b_j] = (int8_T)(1 + b_j);
  }

  for (b_j = 0; b_j < 4; b_j++) {
    jBcol = b_j * 6;
    iy = 0;
    kAcol = jBcol;
    smax = fabs(A[jBcol]);
    for (c_i = 2; c_i <= 5 - b_j; c_i++) {
      kAcol++;
      s = fabs(A[kAcol]);
      if (s > smax) {
        iy = c_i - 1;
        smax = s;
      }
    }

    if (A[jBcol + iy] != 0.0) {
      if (iy != 0) {
        ipiv[b_j] = (int8_T)((b_j + iy) + 1);
        kAcol = b_j;
        iy += b_j;
        for (c_i = 0; c_i < 5; c_i++) {
          smax = A[kAcol];
          A[kAcol] = A[iy];
          A[iy] = smax;
          kAcol += 5;
          iy += 5;
        }
      }

      iy = (jBcol - b_j) + 5;
      for (kAcol = jBcol + 1; kAcol + 1 <= iy; kAcol++) {
        A[kAcol] /= A[jBcol];
      }
    }

    iy = jBcol;
    kAcol = jBcol + 5;
    for (c_i = 1; c_i <= 4 - b_j; c_i++) {
      smax = A[kAcol];
      if (A[kAcol] != 0.0) {
        c_ix = jBcol + 1;
        d = (iy - b_j) + 10;
        for (ijA = 6 + iy; ijA + 1 <= d; ijA++) {
          A[ijA] += A[c_ix] * -smax;
          c_ix++;
        }
      }

      kAcol += 5;
      iy += 5;
    }
  }

  for (b_j = 0; b_j < 5; b_j++) {
    p[b_j] = (int8_T)(1 + b_j);
  }

  if (ipiv[0] > 1) {
    jBcol = p[ipiv[0] - 1];
    p[ipiv[0] - 1] = p[0];
    p[0] = (int8_T)jBcol;
  }

  if (ipiv[1] > 2) {
    jBcol = p[ipiv[1] - 1];
    p[ipiv[1] - 1] = p[1];
    p[1] = (int8_T)jBcol;
  }

  if (ipiv[2] > 3) {
    jBcol = p[ipiv[2] - 1];
    p[ipiv[2] - 1] = p[2];
    p[2] = (int8_T)jBcol;
  }

  if (ipiv[3] > 4) {
    jBcol = p[ipiv[3] - 1];
    p[ipiv[3] - 1] = p[3];
    p[3] = (int8_T)jBcol;
  }

  for (b_j = 0; b_j < 5; b_j++) {
    jBcol = p[b_j] - 1;
    y[b_j + 5 * (p[b_j] - 1)] = 1.0;
    for (iy = b_j; iy + 1 < 6; iy++) {
      if (y[5 * jBcol + iy] != 0.0) {
        for (kAcol = iy + 1; kAcol + 1 < 6; kAcol++) {
          y[kAcol + 5 * jBcol] -= y[5 * jBcol + iy] * A[5 * iy + kAcol];
        }
      }
    }
  }

  for (b_j = 0; b_j < 5; b_j++) {
    jBcol = 5 * b_j;
    for (iy = 4; iy >= 0; iy += -1) {
      kAcol = 5 * iy;
      if (y[iy + jBcol] != 0.0) {
        y[iy + jBcol] /= A[iy + kAcol];
        for (c_i = 0; c_i + 1 <= iy; c_i++) {
          y[c_i + jBcol] -= y[iy + jBcol] * A[c_i + kAcol];
        }
      }
    }
  }
}

/* Model output function for TID0 */
void heli_day_4_output0(void)          /* Sample time: [0.0s, 0.0s] */
{
  /* local block i/o variables */
  real_T rtb_HILReadEncoderTimebase_o1;
  real_T rtb_HILReadEncoderTimebase_o2;
  real_T rtb_HILReadEncoderTimebase_o3;
  real_T rtb_TmpSignalConversionAtToFile[5];
  t_stream_ptr rtb_StreamCall1_o1;
  t_stream_ptr rtb_StreamFormattedWrite_o1;
  real32_T rtb_StreamRead1_o2[10];
  int32_T rtb_StreamFormattedWrite_o2;
  int32_T rtb_StreamCall1_o3;
  int32_T rtb_StreamRead1_o5;
  boolean_T rtb_StreamRead1_o3;
  real_T L[25];
  static const int8_T I[25] = { 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0,
    0, 0, 1, 0, 0, 0, 0, 0, 1 };

  real_T rtb_Gain2[3];
  real_T rtb_Gain;
  real_T rtb_Gain1;
  real_T rtb_Sum[2];
  real_T rtb_Switch3;
  real_T rtb_euler_rates[3];
  int32_T i;
  real_T tmp[9];
  real_T tmp_0[3];
  real_T rtb_Switch3_0[5];
  real_T tmp_1[5];
  real_T rtb_Switch3_1[5];
  real_T I_0[25];
  real_T tmp_2;
  real_T I_1[25];
  real_T I_2[25];
  real_T L_0[25];
  real_T L_1[25];
  real_T rtb_Gain2_0[5];
  int32_T i_0;
  int32_T i_1;
  if (rtmIsMajorTimeStep(heli_day_4_M)) {
    /* set solver stop time */
    if (!(heli_day_4_M->Timing.clockTick0+1)) {
      rtsiSetSolverStopTime(&heli_day_4_M->solverInfo,
                            ((heli_day_4_M->Timing.clockTickH0 + 1) *
        heli_day_4_M->Timing.stepSize0 * 4294967296.0));
    } else {
      rtsiSetSolverStopTime(&heli_day_4_M->solverInfo,
                            ((heli_day_4_M->Timing.clockTick0 + 1) *
        heli_day_4_M->Timing.stepSize0 + heli_day_4_M->Timing.clockTickH0 *
        heli_day_4_M->Timing.stepSize0 * 4294967296.0));
    }

    {                                  /* Sample time: [0.0s, 0.0s] */
      rate_monotonic_scheduler();
    }
  }                                    /* end MajorTimeStep */

  /* Update absolute time of base rate at minor time step */
  if (rtmIsMinorTimeStep(heli_day_4_M)) {
    heli_day_4_M->Timing.t[0] = rtsiGetT(&heli_day_4_M->solverInfo);
  }

  if (rtmIsMajorTimeStep(heli_day_4_M)) {
    /* S-Function (hil_read_encoder_timebase_block): '<S3>/HIL Read Encoder Timebase' */

    /* S-Function Block: heli_day_4/Heli 3D/HIL Read Encoder Timebase (hil_read_encoder_timebase_block) */
    {
      t_error result;
      result = hil_task_read_encoder(heli_day_4_DW.HILReadEncoderTimebase_Task,
        1, &heli_day_4_DW.HILReadEncoderTimebase_Buffer[0]);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(heli_day_4_M, _rt_error_message);
      } else {
        rtb_HILReadEncoderTimebase_o1 =
          heli_day_4_DW.HILReadEncoderTimebase_Buffer[0];
        rtb_HILReadEncoderTimebase_o2 =
          heli_day_4_DW.HILReadEncoderTimebase_Buffer[1];
        rtb_HILReadEncoderTimebase_o3 =
          heli_day_4_DW.HILReadEncoderTimebase_Buffer[2];
      }
    }

    /* RateTransition: '<S5>/Rate Transition: x' */
    if (heli_day_4_M->Timing.RateInteraction.TID1_2) {
      heli_day_4_B.RateTransitionx = heli_day_4_DW.RateTransitionx_Buffer0;
    }

    /* End of RateTransition: '<S5>/Rate Transition: x' */

    /* DeadZone: '<S5>/Dead Zone: x' */
    if (heli_day_4_B.RateTransitionx > heli_day_4_P.DeadZonex_End) {
      rtb_Gain1 = heli_day_4_B.RateTransitionx - heli_day_4_P.DeadZonex_End;
    } else if (heli_day_4_B.RateTransitionx >= heli_day_4_P.DeadZonex_Start) {
      rtb_Gain1 = 0.0;
    } else {
      rtb_Gain1 = heli_day_4_B.RateTransitionx - heli_day_4_P.DeadZonex_Start;
    }

    /* End of DeadZone: '<S5>/Dead Zone: x' */

    /* Gain: '<S5>/Joystick_gain_x' incorporates:
     *  Gain: '<S5>/Gain: x'
     */
    heli_day_4_B.Joystick_gain_x = heli_day_4_P.Gainx_Gain * rtb_Gain1 *
      heli_day_4_P.Joystick_gain_x;

    /* ToFile: '<Root>/To File' */
    if (rtmIsMajorTimeStep(heli_day_4_M)) {
      {
        if (!(++heli_day_4_DW.ToFile_IWORK.Decimation % 1) &&
            (heli_day_4_DW.ToFile_IWORK.Count*2)+1 < 100000000 ) {
          FILE *fp = (FILE *) heli_day_4_DW.ToFile_PWORK.FilePtr;
          if (fp != (NULL)) {
            real_T u[2];
            heli_day_4_DW.ToFile_IWORK.Decimation = 0;
            u[0] = heli_day_4_M->Timing.t[1];
            u[1] = heli_day_4_B.Joystick_gain_x;
            if (fwrite(u, sizeof(real_T), 2, fp) != 2) {
              rtmSetErrorStatus(heli_day_4_M,
                                "Error writing to MAT-file pitch_c.mat");
              return;
            }

            if (((++heli_day_4_DW.ToFile_IWORK.Count)*2)+1 >= 100000000) {
              (void)fprintf(stdout,
                            "*** The ToFile block will stop logging data before\n"
                            "    the simulation has ended, because it has reached\n"
                            "    the maximum number of elements (100000000)\n"
                            "    allowed in MAT-file pitch_c.mat.\n");
            }
          }
        }
      }
    }

    /* RateTransition: '<S5>/Rate Transition: y' */
    if (heli_day_4_M->Timing.RateInteraction.TID1_2) {
      heli_day_4_B.RateTransitiony = heli_day_4_DW.RateTransitiony_Buffer0;
    }

    /* End of RateTransition: '<S5>/Rate Transition: y' */

    /* DeadZone: '<S5>/Dead Zone: y' */
    if (heli_day_4_B.RateTransitiony > heli_day_4_P.DeadZoney_End) {
      rtb_Gain1 = heli_day_4_B.RateTransitiony - heli_day_4_P.DeadZoney_End;
    } else if (heli_day_4_B.RateTransitiony >= heli_day_4_P.DeadZoney_Start) {
      rtb_Gain1 = 0.0;
    } else {
      rtb_Gain1 = heli_day_4_B.RateTransitiony - heli_day_4_P.DeadZoney_Start;
    }

    /* End of DeadZone: '<S5>/Dead Zone: y' */

    /* Gain: '<S5>/Joystick_gain_y' incorporates:
     *  Gain: '<S5>/Gain: y'
     */
    heli_day_4_B.Joystick_gain_y = heli_day_4_P.Gainy_Gain * rtb_Gain1 *
      heli_day_4_P.Joystick_gain_y;

    /* ToFile: '<Root>/To File1' */
    if (rtmIsMajorTimeStep(heli_day_4_M)) {
      {
        if (!(++heli_day_4_DW.ToFile1_IWORK.Decimation % 1) &&
            (heli_day_4_DW.ToFile1_IWORK.Count*2)+1 < 100000000 ) {
          FILE *fp = (FILE *) heli_day_4_DW.ToFile1_PWORK.FilePtr;
          if (fp != (NULL)) {
            real_T u[2];
            heli_day_4_DW.ToFile1_IWORK.Decimation = 0;
            u[0] = heli_day_4_M->Timing.t[1];
            u[1] = heli_day_4_B.Joystick_gain_y;
            if (fwrite(u, sizeof(real_T), 2, fp) != 2) {
              rtmSetErrorStatus(heli_day_4_M,
                                "Error writing to MAT-file elevation_rate_c.mat");
              return;
            }

            if (((++heli_day_4_DW.ToFile1_IWORK.Count)*2)+1 >= 100000000) {
              (void)fprintf(stdout,
                            "*** The ToFile block will stop logging data before\n"
                            "    the simulation has ended, because it has reached\n"
                            "    the maximum number of elements (100000000)\n"
                            "    allowed in MAT-file elevation_rate_c.mat.\n");
            }
          }
        }
      }
    }

    /* S-Function (stream_call_block): '<S4>/Stream Call1' */

    /* S-Function Block: heli_day_4/IMU/Stream Call1 (stream_call_block) */
    {
      t_error result = 0;
      t_boolean close_flag = (heli_day_4_P.Constant_Value_k != 0);
      rtb_StreamCall1_o1 = NULL;
      switch (heli_day_4_DW.StreamCall1_State) {
       case STREAM_CALL_STATE_NOT_CONNECTED:
        {
          if (!close_flag) {
            /* Make sure URI is null-terminated */
            if (string_length((char *) heli_day_4_P.StringConstant_Value, 255) ==
                255) {
              rtmSetErrorStatus(heli_day_4_M,
                                "URI passed to Stream Call block is not null-terminated!");
              result = -QERR_STRING_NOT_TERMINATED;
            } else {
              result = stream_connect((char *) heli_day_4_P.StringConstant_Value,
                true, heli_day_4_P.StreamCall1_SendBufferSize,
                heli_day_4_P.StreamCall1_ReceiveBufferSize,
                &heli_day_4_DW.StreamCall1_Stream);
              if (result == 0) {
                heli_day_4_DW.StreamCall1_State = STREAM_CALL_STATE_CONNECTED;
                stream_set_byte_order(heli_day_4_DW.StreamCall1_Stream,
                                      (t_stream_byte_order)
                                      heli_day_4_P.StreamCall1_Endian);
                rtb_StreamCall1_o1 = &heli_day_4_DW.StreamCall1_Stream;
              } else if (result == -QERR_WOULD_BLOCK) {
                heli_day_4_DW.StreamCall1_State = STREAM_CALL_STATE_CONNECTING;
                result = 0;
              }
            }
          }
          break;
        }

       case STREAM_CALL_STATE_CONNECTING:
        {
          if (!close_flag) {
            const t_timeout timeout = { 0, 0, false };/* zero seconds */

            result = stream_poll(heli_day_4_DW.StreamCall1_Stream, &timeout,
                                 STREAM_POLL_CONNECT);
            if (result > 0) {
              heli_day_4_DW.StreamCall1_State = STREAM_CALL_STATE_CONNECTED;
              stream_set_byte_order(heli_day_4_DW.StreamCall1_Stream,
                                    (t_stream_byte_order)
                                    heli_day_4_P.StreamCall1_Endian);
              rtb_StreamCall1_o1 = &heli_day_4_DW.StreamCall1_Stream;
              result = 0;
              break;
            } else if (result == 0) {
              break;
            }
          }

          /* Fall through deliberately */
        }

       case STREAM_CALL_STATE_CONNECTED:
        {
          rtb_StreamCall1_o1 = &heli_day_4_DW.StreamCall1_Stream;
          if (!close_flag) {
            break;
          }

          /* Fall through deliberately */
        }

       default:
        {
          t_error close_result = stream_close(heli_day_4_DW.StreamCall1_Stream);
          if (close_result == 0) {
            heli_day_4_DW.StreamCall1_State = STREAM_CALL_STATE_NOT_CONNECTED;
            heli_day_4_DW.StreamCall1_Stream = NULL;
            rtb_StreamCall1_o1 = NULL;
          } else if (result == 0) {
            result = close_result;
          }
          break;
        }
      }

      heli_day_4_B.StreamCall1_o2 = heli_day_4_DW.StreamCall1_State;
      rtb_StreamCall1_o3 = (int32_T) result;
    }

    /* S-Function (stream_formatted_write_block): '<S4>/Stream Formatted Write' */
    {
      t_error result;
      if (rtb_StreamCall1_o1 != NULL) {
        result = stream_print_utf8_char_array(*rtb_StreamCall1_o1,
          heli_day_4_P.StreamFormattedWrite_MaxUnits,
          &rtb_StreamFormattedWrite_o2, "%c\n"
          , (char) heli_day_4_P.Constant1_Value_g
          );
        if (result > 0) {
          result = stream_flush(*rtb_StreamCall1_o1);
        }

        if (result == -QERR_WOULD_BLOCK) {
          result = 0;
        }
      }

      rtb_StreamFormattedWrite_o1 = rtb_StreamCall1_o1;
    }

    /* S-Function (stream_read_block): '<S4>/Stream Read1' */
    /* S-Function Block: heli_day_4/IMU/Stream Read1 (stream_read_block) */
    {
      t_error result;
      memset(&rtb_StreamRead1_o2[0], 0, 10 * sizeof(real32_T));
      if (rtb_StreamFormattedWrite_o1 != NULL) {
        result = stream_receive_unit_array(*rtb_StreamFormattedWrite_o1,
          &rtb_StreamRead1_o2[0], sizeof(real32_T), 10);
        rtb_StreamRead1_o3 = (result > 0);
        if (result > 0 || result == -QERR_WOULD_BLOCK) {
          result = 0;
        }
      } else {
        rtb_StreamRead1_o3 = false;
        result = 0;
      }

      rtb_StreamRead1_o5 = (int32_T) result;
    }

    /* Switch: '<S4>/Switch' incorporates:
     *  DataTypeConversion: '<S4>/Data Type Conversion'
     *  Memory: '<S4>/Memory'
     */
    for (i = 0; i < 10; i++) {
      if (rtb_StreamRead1_o3) {
        heli_day_4_B.Switch[i] = rtb_StreamRead1_o2[i];
      } else {
        heli_day_4_B.Switch[i] = heli_day_4_DW.Memory_PreviousInput[i];
      }
    }

    /* End of Switch: '<S4>/Switch' */

    /* Gain: '<S4>/Gain2' */
    for (i = 0; i < 3; i++) {
      rtb_Gain2[i] = heli_day_4_P.Gain2_Gain[i + 6] * heli_day_4_B.Switch[2] +
        (heli_day_4_P.Gain2_Gain[i + 3] * heli_day_4_B.Switch[1] +
         heli_day_4_P.Gain2_Gain[i] * heli_day_4_B.Switch[0]);
    }

    /* End of Gain: '<S4>/Gain2' */

    /* Gain: '<S8>/Gain' */
    rtb_Gain = heli_day_4_P.Gain_Gain * rtb_Gain2[1];

    /* Gain: '<S8>/Gain1' */
    rtb_Gain1 = heli_day_4_P.Gain1_Gain * rtb_Gain2[2];

    /* Switch: '<S8>/Switch3' incorporates:
     *  Constant: '<S8>/Constant3'
     *  Trigonometry: '<S8>/Trigonometric Function'
     */
    if (rtb_Gain1 != 0.0) {
      /* Switch: '<S8>/Switch2' incorporates:
       *  Constant: '<S8>/Constant2'
       */
      if (rtb_Gain1 != 0.0) {
        rtb_Switch3 = rtb_Gain1;
      } else {
        rtb_Switch3 = heli_day_4_P.Constant2_Value;
      }

      /* End of Switch: '<S8>/Switch2' */
      rtb_Switch3 = rt_atan2d_snf(rtb_Gain, rtb_Switch3);
    } else {
      rtb_Switch3 = heli_day_4_P.Constant3_Value;
    }

    /* End of Switch: '<S8>/Switch3' */

    /* Gain: '<S3>/Pitch: Count to rad' */
    heli_day_4_B.PitchCounttorad = heli_day_4_P.PitchCounttorad_Gain *
      rtb_HILReadEncoderTimebase_o2;

    /* Gain: '<S3>/Elevation: Count to rad' */
    heli_day_4_B.ElevationCounttorad = heli_day_4_P.ElevationCounttorad_Gain *
      rtb_HILReadEncoderTimebase_o3;

    /* Sum: '<S3>/Sum' incorporates:
     *  Constant: '<S3>/Constant'
     */
    heli_day_4_B.Sum = heli_day_4_B.ElevationCounttorad -
      heli_day_4_P.Constant_Value_j;

    /* Gain: '<S3>/Travel: Count to rad' */
    heli_day_4_B.TravelCounttorad = heli_day_4_P.TravelCounttorad_Gain *
      rtb_HILReadEncoderTimebase_o1;

    /* MATLAB Function: '<Root>/Gyro vector to [pitch rate, elevation rate, travle rate]' incorporates:
     *  SignalConversion: '<S2>/TmpSignal ConversionAt SFunction Inport2'
     */
    /* MATLAB Function 'Gyro vector to [pitch rate, elevation rate, travle rate]': '<S2>:1' */
    /* '<S2>:1:3' */
    /* '<S2>:1:4' */
    /* psi = euler_angles(3); */
    /* '<S2>:1:8' */
    /* '<S2>:1:11' */
    tmp[0] = 1.0;
    tmp[3] = sin(heli_day_4_B.PitchCounttorad) * tan(heli_day_4_B.Sum);
    tmp[6] = cos(heli_day_4_B.PitchCounttorad) * tan(heli_day_4_B.Sum);
    tmp[1] = 0.0;
    tmp[4] = cos(heli_day_4_B.PitchCounttorad);
    tmp[7] = -sin(heli_day_4_B.PitchCounttorad);
    tmp[2] = 0.0;
    tmp[5] = sin(heli_day_4_B.PitchCounttorad) / cos(heli_day_4_B.Sum);
    tmp[8] = cos(heli_day_4_B.PitchCounttorad) / cos(heli_day_4_B.Sum);

    /* Gain: '<S4>/Gain1' incorporates:
     *  MATLAB Function: '<Root>/Gyro vector to [pitch rate, elevation rate, travle rate]'
     */
    for (i = 0; i < 3; i++) {
      tmp_0[i] = heli_day_4_P.Gain1_Gain_h[i + 6] * heli_day_4_B.Switch[5] +
        (heli_day_4_P.Gain1_Gain_h[i + 3] * heli_day_4_B.Switch[4] +
         heli_day_4_P.Gain1_Gain_h[i] * heli_day_4_B.Switch[3]);
    }

    /* End of Gain: '<S4>/Gain1' */

    /* MATLAB Function: '<Root>/Gyro vector to [pitch rate, elevation rate, travle rate]' */
    for (i = 0; i < 3; i++) {
      rtb_euler_rates[i] = tmp[i + 6] * tmp_0[2] + (tmp[i + 3] * tmp_0[1] +
        tmp[i] * tmp_0[0]);
    }

    /* Sqrt: '<S8>/Sqrt' incorporates:
     *  Product: '<S8>/Product'
     *  Product: '<S8>/Product1'
     *  Sum: '<S8>/Sum'
     */
    rtb_Gain = sqrt(rtb_Gain * rtb_Gain + rtb_Gain1 * rtb_Gain1);

    /* Switch: '<S8>/Switch1' incorporates:
     *  Constant: '<S8>/Constant1'
     *  Trigonometry: '<S8>/Trigonometric Function1'
     */
    if (rtb_Gain != 0.0) {
      /* Switch: '<S8>/Switch' incorporates:
       *  Constant: '<S8>/Constant'
       */
      if (!(rtb_Gain != 0.0)) {
        rtb_Gain = heli_day_4_P.Constant_Value;
      }

      /* End of Switch: '<S8>/Switch' */
      rtb_Gain = rt_atan2d_snf(rtb_Gain2[0], rtb_Gain);
    } else {
      rtb_Gain = heli_day_4_P.Constant1_Value;
    }

    /* End of Switch: '<S8>/Switch1' */

    /* MATLAB Function: '<S6>/Correction step' incorporates:
     *  UnitDelay: '<S6>/Unit Delay'
     *  UnitDelay: '<S6>/Unit Delay1'
     */
    /* MATLAB Function 'Kalman filter/Correction step': '<S9>:1' */
    /* '<S9>:1:3' */
    /*  Identity matrix  */
    if (rtb_StreamRead1_o3) {
      /* '<S9>:1:5' */
      /*  Compute kalman gain, L: */
      /* '<S9>:1:7' */
      for (i = 0; i < 5; i++) {
        for (i_0 = 0; i_0 < 5; i_0++) {
          I_1[i + 5 * i_0] = 0.0;
          for (i_1 = 0; i_1 < 5; i_1++) {
            I_1[i + 5 * i_0] += heli_day_4_P.C_d[5 * i_1 + i] *
              heli_day_4_DW.UnitDelay1_DSTATE[5 * i_0 + i_1];
          }
        }
      }

      for (i = 0; i < 5; i++) {
        for (i_0 = 0; i_0 < 5; i_0++) {
          rtb_Gain1 = 0.0;
          for (i_1 = 0; i_1 < 5; i_1++) {
            rtb_Gain1 += I_1[5 * i_1 + i] * heli_day_4_P.C_d[5 * i_1 + i_0];
          }

          I_0[i + 5 * i_0] = heli_day_4_P.R_d[5 * i_0 + i] + rtb_Gain1;
        }
      }

      heli_day_4_invNxN(I_0, I_1);
      for (i = 0; i < 5; i++) {
        for (i_0 = 0; i_0 < 5; i_0++) {
          I_0[i + 5 * i_0] = 0.0;
          for (i_1 = 0; i_1 < 5; i_1++) {
            I_0[i + 5 * i_0] += heli_day_4_DW.UnitDelay1_DSTATE[5 * i_1 + i] *
              heli_day_4_P.C_d[5 * i_1 + i_0];
          }
        }
      }

      /* SignalConversion: '<S9>/TmpSignal ConversionAt SFunction Inport3' incorporates:
       *  UnitDelay: '<S6>/Unit Delay1'
       */
      /*  Update estimate with measurement: */
      /* '<S9>:1:10' */
      rtb_Switch3_0[0] = rtb_Switch3;
      rtb_Switch3_0[1] = rtb_euler_rates[0];
      rtb_Switch3_0[2] = rtb_Gain;
      rtb_Switch3_0[3] = rtb_euler_rates[1];
      rtb_Switch3_0[4] = rtb_euler_rates[2];
      for (i = 0; i < 5; i++) {
        tmp_1[i] = 0.0;
        for (i_0 = 0; i_0 < 5; i_0++) {
          L[i + 5 * i_0] = 0.0;
          for (i_1 = 0; i_1 < 5; i_1++) {
            L[i + 5 * i_0] += I_0[5 * i_1 + i] * I_1[5 * i_0 + i_1];
          }

          tmp_1[i] += heli_day_4_P.C_d[5 * i_0 + i] *
            heli_day_4_DW.UnitDelay_DSTATE[i_0];
        }

        rtb_Switch3_1[i] = rtb_Switch3_0[i] - tmp_1[i];
      }

      /*  Update error covariance matrix: */
      /* '<S9>:1:13' */
      for (i = 0; i < 5; i++) {
        rtb_Gain1 = 0.0;
        for (i_0 = 0; i_0 < 5; i_0++) {
          rtb_Gain1 += L[5 * i_0 + i] * rtb_Switch3_1[i_0];
          tmp_2 = 0.0;
          for (i_1 = 0; i_1 < 5; i_1++) {
            tmp_2 += L[5 * i_1 + i] * heli_day_4_P.C_d[5 * i_0 + i_1];
          }

          I_0[i + 5 * i_0] = (real_T)I[5 * i_0 + i] - tmp_2;
        }

        heli_day_4_B.x_posteriori[i] = heli_day_4_DW.UnitDelay_DSTATE[i] +
          rtb_Gain1;
      }

      for (i = 0; i < 5; i++) {
        for (i_0 = 0; i_0 < 5; i_0++) {
          I_1[i + 5 * i_0] = 0.0;
          rtb_Gain1 = 0.0;
          for (i_1 = 0; i_1 < 5; i_1++) {
            I_1[i + 5 * i_0] += I_0[5 * i_1 + i] *
              heli_day_4_DW.UnitDelay1_DSTATE[5 * i_0 + i_1];
            rtb_Gain1 += L[5 * i_1 + i_0] * heli_day_4_P.C_d[5 * i + i_1];
          }

          I_2[i + 5 * i_0] = (real_T)I[5 * i + i_0] - rtb_Gain1;
          L_0[i + 5 * i_0] = 0.0;
          for (i_1 = 0; i_1 < 5; i_1++) {
            L_0[i + 5 * i_0] += L[5 * i_1 + i] * heli_day_4_P.R_d[5 * i_0 + i_1];
          }
        }
      }

      for (i = 0; i < 5; i++) {
        for (i_0 = 0; i_0 < 5; i_0++) {
          I_0[i + 5 * i_0] = 0.0;
          L_1[i + 5 * i_0] = 0.0;
          for (i_1 = 0; i_1 < 5; i_1++) {
            I_0[i + 5 * i_0] += I_1[5 * i_1 + i] * I_2[5 * i_0 + i_1];
            L_1[i + 5 * i_0] += L_0[5 * i_1 + i] * L[5 * i_1 + i_0];
          }
        }
      }

      for (i = 0; i < 5; i++) {
        for (i_0 = 0; i_0 < 5; i_0++) {
          heli_day_4_B.P_posteriori[i_0 + 5 * i] = I_0[5 * i + i_0] + L_1[5 * i
            + i_0];
        }
      }
    } else {
      /* '<S9>:1:15' */
      for (i = 0; i < 5; i++) {
        heli_day_4_B.x_posteriori[i] = heli_day_4_DW.UnitDelay_DSTATE[i];
      }

      /* '<S9>:1:16' */
      memcpy(&heli_day_4_B.P_posteriori[0], &heli_day_4_DW.UnitDelay1_DSTATE[0],
             25U * sizeof(real_T));
    }

    /* End of MATLAB Function: '<S6>/Correction step' */

    /* ToFile: '<Root>/To File2' */
    if (rtmIsMajorTimeStep(heli_day_4_M)) {
      {
        if (!(++heli_day_4_DW.ToFile2_IWORK.Decimation % 1) &&
            (heli_day_4_DW.ToFile2_IWORK.Count*6)+1 < 100000000 ) {
          FILE *fp = (FILE *) heli_day_4_DW.ToFile2_PWORK.FilePtr;
          if (fp != (NULL)) {
            real_T u[6];
            heli_day_4_DW.ToFile2_IWORK.Decimation = 0;
            u[0] = heli_day_4_M->Timing.t[1];
            u[1] = heli_day_4_B.x_posteriori[0];
            u[2] = heli_day_4_B.x_posteriori[1];
            u[3] = heli_day_4_B.x_posteriori[2];
            u[4] = heli_day_4_B.x_posteriori[3];
            u[5] = heli_day_4_B.x_posteriori[4];
            if (fwrite(u, sizeof(real_T), 6, fp) != 6) {
              rtmSetErrorStatus(heli_day_4_M,
                                "Error writing to MAT-file estimates.mat");
              return;
            }

            if (((++heli_day_4_DW.ToFile2_IWORK.Count)*6)+1 >= 100000000) {
              (void)fprintf(stdout,
                            "*** The ToFile block will stop logging data before\n"
                            "    the simulation has ended, because it has reached\n"
                            "    the maximum number of elements (100000000)\n"
                            "    allowed in MAT-file estimates.mat.\n");
            }
          }
        }
      }
    }

    /* SignalConversion: '<Root>/TmpSignal ConversionAtTo File21Inport1' */
    rtb_TmpSignalConversionAtToFile[0] = rtb_Switch3;
    rtb_TmpSignalConversionAtToFile[1] = rtb_euler_rates[0];
    rtb_TmpSignalConversionAtToFile[2] = rtb_Gain;
    rtb_TmpSignalConversionAtToFile[3] = rtb_euler_rates[1];
    rtb_TmpSignalConversionAtToFile[4] = rtb_euler_rates[2];

    /* ToFile: '<Root>/To File21' */
    if (rtmIsMajorTimeStep(heli_day_4_M)) {
      {
        if (!(++heli_day_4_DW.ToFile21_IWORK.Decimation % 1) &&
            (heli_day_4_DW.ToFile21_IWORK.Count*6)+1 < 100000000 ) {
          FILE *fp = (FILE *) heli_day_4_DW.ToFile21_PWORK.FilePtr;
          if (fp != (NULL)) {
            real_T u[6];
            heli_day_4_DW.ToFile21_IWORK.Decimation = 0;
            u[0] = heli_day_4_M->Timing.t[1];
            u[1] = rtb_TmpSignalConversionAtToFile[0];
            u[2] = rtb_TmpSignalConversionAtToFile[1];
            u[3] = rtb_TmpSignalConversionAtToFile[2];
            u[4] = rtb_TmpSignalConversionAtToFile[3];
            u[5] = rtb_TmpSignalConversionAtToFile[4];
            if (fwrite(u, sizeof(real_T), 6, fp) != 6) {
              rtmSetErrorStatus(heli_day_4_M,
                                "Error writing to MAT-file measurements.mat");
              return;
            }

            if (((++heli_day_4_DW.ToFile21_IWORK.Count)*6)+1 >= 100000000) {
              (void)fprintf(stdout,
                            "*** The ToFile block will stop logging data before\n"
                            "    the simulation has ended, because it has reached\n"
                            "    the maximum number of elements (100000000)\n"
                            "    allowed in MAT-file measurements.mat.\n");
            }
          }
        }
      }
    }
  }

  /* TransferFcn: '<S3>/Pitch: Transfer Fcn' */
  heli_day_4_B.PitchTransferFcn = 0.0;
  heli_day_4_B.PitchTransferFcn += heli_day_4_P.PitchTransferFcn_C *
    heli_day_4_X.PitchTransferFcn_CSTATE;
  heli_day_4_B.PitchTransferFcn += heli_day_4_P.PitchTransferFcn_D *
    heli_day_4_B.PitchCounttorad;

  /* TransferFcn: '<S3>/Elevation: Transfer Fcn' */
  heli_day_4_B.ElevationTransferFcn = 0.0;
  heli_day_4_B.ElevationTransferFcn += heli_day_4_P.ElevationTransferFcn_C *
    heli_day_4_X.ElevationTransferFcn_CSTATE;
  heli_day_4_B.ElevationTransferFcn += heli_day_4_P.ElevationTransferFcn_D *
    heli_day_4_B.ElevationCounttorad;

  /* TransferFcn: '<S3>/Travel: Transfer Fcn' */
  heli_day_4_B.TravelTransferFcn = 0.0;
  heli_day_4_B.TravelTransferFcn += heli_day_4_P.TravelTransferFcn_C *
    heli_day_4_X.TravelTransferFcn_CSTATE;
  heli_day_4_B.TravelTransferFcn += heli_day_4_P.TravelTransferFcn_D *
    heli_day_4_B.TravelCounttorad;
  if (rtmIsMajorTimeStep(heli_day_4_M)) {
    /* SignalConversion: '<Root>/TmpSignal ConversionAtTo File3Inport1' */
    rtb_TmpSignalConversionAtToFile[0] = heli_day_4_B.PitchCounttorad;
    rtb_TmpSignalConversionAtToFile[1] = heli_day_4_B.PitchTransferFcn;
    rtb_TmpSignalConversionAtToFile[2] = heli_day_4_B.Sum;
    rtb_TmpSignalConversionAtToFile[3] = heli_day_4_B.ElevationTransferFcn;
    rtb_TmpSignalConversionAtToFile[4] = heli_day_4_B.TravelTransferFcn;

    /* ToFile: '<Root>/To File3' */
    if (rtmIsMajorTimeStep(heli_day_4_M)) {
      {
        if (!(++heli_day_4_DW.ToFile3_IWORK.Decimation % 1) &&
            (heli_day_4_DW.ToFile3_IWORK.Count*6)+1 < 100000000 ) {
          FILE *fp = (FILE *) heli_day_4_DW.ToFile3_PWORK.FilePtr;
          if (fp != (NULL)) {
            real_T u[6];
            heli_day_4_DW.ToFile3_IWORK.Decimation = 0;
            u[0] = heli_day_4_M->Timing.t[1];
            u[1] = rtb_TmpSignalConversionAtToFile[0];
            u[2] = rtb_TmpSignalConversionAtToFile[1];
            u[3] = rtb_TmpSignalConversionAtToFile[2];
            u[4] = rtb_TmpSignalConversionAtToFile[3];
            u[5] = rtb_TmpSignalConversionAtToFile[4];
            if (fwrite(u, sizeof(real_T), 6, fp) != 6) {
              rtmSetErrorStatus(heli_day_4_M,
                                "Error writing to MAT-file encoders.mat");
              return;
            }

            if (((++heli_day_4_DW.ToFile3_IWORK.Count)*6)+1 >= 100000000) {
              (void)fprintf(stdout,
                            "*** The ToFile block will stop logging data before\n"
                            "    the simulation has ended, because it has reached\n"
                            "    the maximum number of elements (100000000)\n"
                            "    allowed in MAT-file encoders.mat.\n");
            }
          }
        }
      }
    }

    /* Product: '<S7>/Product' incorporates:
     *  Constant: '<S7>/Constant'
     *  SignalConversion: '<S7>/TmpSignal ConversionAtProductInport2'
     */
    heli_day_4_B.Fr[0] = 0.0;
    heli_day_4_B.Fr[0] += heli_day_4_P.F[0] * heli_day_4_B.Joystick_gain_x;
    heli_day_4_B.Fr[0] += heli_day_4_P.F[2] * heli_day_4_B.Joystick_gain_y;
    heli_day_4_B.Fr[1] = 0.0;
    heli_day_4_B.Fr[1] += heli_day_4_P.F[1] * heli_day_4_B.Joystick_gain_x;
    heli_day_4_B.Fr[1] += heli_day_4_P.F[3] * heli_day_4_B.Joystick_gain_y;

    /* Constant: '<S7>/Constant2' */
    memcpy(&heli_day_4_B.Constant2[0], &heli_day_4_P.K[0], 10U * sizeof(real_T));
  }

  /* ManualSwitch: '<Root>/Manual Switch' */
  if (heli_day_4_P.ManualSwitch_CurrentSetting == 1) {
    rtb_Gain2[0] = heli_day_4_B.PitchCounttorad;
    rtb_Gain2[1] = heli_day_4_B.PitchTransferFcn;
    rtb_Gain2[2] = heli_day_4_B.ElevationTransferFcn;
  } else {
    rtb_Gain2[0] = heli_day_4_B.x_posteriori[0];
    rtb_Gain2[1] = heli_day_4_B.x_posteriori[1];
    rtb_Gain2[2] = heli_day_4_B.x_posteriori[3];
  }

  /* End of ManualSwitch: '<Root>/Manual Switch' */

  /* SignalConversion: '<S7>/TmpSignal ConversionAtProduct1Inport2' incorporates:
   *  Integrator: '<S7>/Integrator'
   *  Integrator: '<S7>/Integrator1'
   */
  rtb_Gain2_0[0] = rtb_Gain2[0];
  rtb_Gain2_0[1] = rtb_Gain2[1];
  rtb_Gain2_0[2] = rtb_Gain2[2];
  rtb_Gain2_0[3] = heli_day_4_X.Integrator_CSTATE;
  rtb_Gain2_0[4] = heli_day_4_X.Integrator1_CSTATE;

  /* Sum: '<S7>/Sum' incorporates:
   *  Product: '<S7>/Product1'
   *  SignalConversion: '<S7>/TmpSignal ConversionAtProduct1Inport2'
   */
  for (i = 0; i < 2; i++) {
    rtb_Gain1 = 0.0;
    for (i_0 = 0; i_0 < 5; i_0++) {
      rtb_Gain1 += heli_day_4_B.Constant2[(i_0 << 1) + i] * rtb_Gain2_0[i_0];
    }

    rtb_Sum[i] = heli_day_4_B.Fr[i] - rtb_Gain1;
  }

  /* End of Sum: '<S7>/Sum' */
  if (rtmIsMajorTimeStep(heli_day_4_M)) {
    /* Constant: '<S7>/Constant1' */
    heli_day_4_B.Constant1 = heli_day_4_P.Vs_0;
  }

  /* Sum: '<S7>/Sum1' */
  rtb_Switch3 = rtb_Sum[0] + heli_day_4_B.Constant1;
  if (rtmIsMajorTimeStep(heli_day_4_M)) {
  }

  /* Gain: '<S1>/Front gain' incorporates:
   *  Sum: '<S1>/Add'
   */
  rtb_Gain = (rtb_Switch3 - rtb_Sum[1]) * heli_day_4_P.Frontgain_Gain;

  /* Saturate: '<S3>/Front motor: Saturation' */
  if (rtb_Gain > heli_day_4_P.FrontmotorSaturation_UpperSat) {
    heli_day_4_B.FrontmotorSaturation =
      heli_day_4_P.FrontmotorSaturation_UpperSat;
  } else if (rtb_Gain < heli_day_4_P.FrontmotorSaturation_LowerSat) {
    heli_day_4_B.FrontmotorSaturation =
      heli_day_4_P.FrontmotorSaturation_LowerSat;
  } else {
    heli_day_4_B.FrontmotorSaturation = rtb_Gain;
  }

  /* End of Saturate: '<S3>/Front motor: Saturation' */

  /* Gain: '<S1>/Back gain' incorporates:
   *  Sum: '<S1>/Subtract'
   */
  rtb_Gain = (rtb_Switch3 + rtb_Sum[1]) * heli_day_4_P.Backgain_Gain;

  /* Saturate: '<S3>/Back motor: Saturation' */
  if (rtb_Gain > heli_day_4_P.BackmotorSaturation_UpperSat) {
    heli_day_4_B.BackmotorSaturation = heli_day_4_P.BackmotorSaturation_UpperSat;
  } else if (rtb_Gain < heli_day_4_P.BackmotorSaturation_LowerSat) {
    heli_day_4_B.BackmotorSaturation = heli_day_4_P.BackmotorSaturation_LowerSat;
  } else {
    heli_day_4_B.BackmotorSaturation = rtb_Gain;
  }

  /* End of Saturate: '<S3>/Back motor: Saturation' */
  if (rtmIsMajorTimeStep(heli_day_4_M)) {
    /* S-Function (hil_write_analog_block): '<S3>/HIL Write Analog' */

    /* S-Function Block: heli_day_4/Heli 3D/HIL Write Analog (hil_write_analog_block) */
    {
      t_error result;
      heli_day_4_DW.HILWriteAnalog_Buffer[0] = heli_day_4_B.FrontmotorSaturation;
      heli_day_4_DW.HILWriteAnalog_Buffer[1] = heli_day_4_B.BackmotorSaturation;
      result = hil_write_analog(heli_day_4_DW.HILInitialize_Card,
        heli_day_4_P.HILWriteAnalog_channels, 2,
        &heli_day_4_DW.HILWriteAnalog_Buffer[0]);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(heli_day_4_M, _rt_error_message);
      }
    }

    /* S-Function (stop_with_error_block): '<S4>/Stop with Call Error' */

    /* S-Function Block: heli_day_4/IMU/Stop with Call Error (stop_with_error_block) */
    {
      if (rtb_StreamCall1_o3 < 0) {
        msg_get_error_messageA(NULL, rtb_StreamCall1_o3, _rt_error_message,
          sizeof(_rt_error_message));
        rtmSetErrorStatus(heli_day_4_M, _rt_error_message);
        return;
      }
    }

    /* S-Function (stop_with_error_block): '<S4>/Stop with Read Error' */

    /* S-Function Block: heli_day_4/IMU/Stop with Read Error (stop_with_error_block) */
    {
      if (rtb_StreamRead1_o5 < 0) {
        msg_get_error_messageA(NULL, rtb_StreamRead1_o5, _rt_error_message,
          sizeof(_rt_error_message));
        rtmSetErrorStatus(heli_day_4_M, _rt_error_message);
        return;
      }
    }
  }

  /* MATLAB Function: '<S6>/Prediction step' */
  /* MATLAB Function 'Kalman filter/Prediction step': '<S10>:1' */
  /*  Project ahead: */
  /* '<S10>:1:4' */
  /* '<S10>:1:5' */
  for (i = 0; i < 5; i++) {
    tmp_1[i] = 0.0;
    rtb_Switch3_0[i] = 0.0;
    rtb_Switch3_0[i] += heli_day_4_P.B_d[i] * rtb_Sum[0];
    rtb_Switch3_0[i] += heli_day_4_P.B_d[i + 5] * rtb_Sum[1];
    for (i_0 = 0; i_0 < 5; i_0++) {
      tmp_1[i] += heli_day_4_P.A_d[5 * i_0 + i] * heli_day_4_B.x_posteriori[i_0];
      I_0[i + 5 * i_0] = 0.0;
      for (i_1 = 0; i_1 < 5; i_1++) {
        I_0[i + 5 * i_0] += heli_day_4_P.A_d[5 * i_1 + i] *
          heli_day_4_B.P_posteriori[5 * i_0 + i_1];
      }
    }

    heli_day_4_B.x_apriori[i] = tmp_1[i] + rtb_Switch3_0[i];
  }

  for (i = 0; i < 5; i++) {
    for (i_0 = 0; i_0 < 5; i_0++) {
      rtb_Gain1 = 0.0;
      for (i_1 = 0; i_1 < 5; i_1++) {
        rtb_Gain1 += I_0[5 * i_1 + i] * heli_day_4_P.A_d[5 * i_1 + i_0];
      }

      heli_day_4_B.P_apriori[i + 5 * i_0] = heli_day_4_P.Q_d[5 * i_0 + i] +
        rtb_Gain1;
    }
  }

  /* End of MATLAB Function: '<S6>/Prediction step' */

  /* Sum: '<S7>/Sum2' */
  heli_day_4_B.Sum2 = rtb_Gain2[0] - heli_day_4_B.Joystick_gain_x;

  /* Sum: '<S7>/Sum3' */
  heli_day_4_B.Sum3 = rtb_Gain2[2] - heli_day_4_B.Joystick_gain_y;
}

/* Model update function for TID0 */
void heli_day_4_update0(void)          /* Sample time: [0.0s, 0.0s] */
{
  int32_T i;
  if (rtmIsMajorTimeStep(heli_day_4_M)) {
    /* Update for UnitDelay: '<S6>/Unit Delay' */
    for (i = 0; i < 5; i++) {
      heli_day_4_DW.UnitDelay_DSTATE[i] = heli_day_4_B.x_apriori[i];
    }

    /* End of Update for UnitDelay: '<S6>/Unit Delay' */

    /* Update for UnitDelay: '<S6>/Unit Delay1' */
    memcpy(&heli_day_4_DW.UnitDelay1_DSTATE[0], &heli_day_4_B.P_apriori[0], 25U *
           sizeof(real_T));

    /* Update for Memory: '<S4>/Memory' */
    memcpy(&heli_day_4_DW.Memory_PreviousInput[0], &heli_day_4_B.Switch[0], 10U *
           sizeof(real_T));
  }

  if (rtmIsMajorTimeStep(heli_day_4_M)) {
    rt_ertODEUpdateContinuousStates(&heli_day_4_M->solverInfo);
  }

  /* Update absolute time */
  /* The "clockTick0" counts the number of times the code of this task has
   * been executed. The absolute time is the multiplication of "clockTick0"
   * and "Timing.stepSize0". Size of "clockTick0" ensures timer will not
   * overflow during the application lifespan selected.
   * Timer of this task consists of two 32 bit unsigned integers.
   * The two integers represent the low bits Timing.clockTick0 and the high bits
   * Timing.clockTickH0. When the low bit overflows to 0, the high bits increment.
   */
  if (!(++heli_day_4_M->Timing.clockTick0)) {
    ++heli_day_4_M->Timing.clockTickH0;
  }

  heli_day_4_M->Timing.t[0] = rtsiGetSolverStopTime(&heli_day_4_M->solverInfo);

  /* Update absolute time */
  /* The "clockTick1" counts the number of times the code of this task has
   * been executed. The absolute time is the multiplication of "clockTick1"
   * and "Timing.stepSize1". Size of "clockTick1" ensures timer will not
   * overflow during the application lifespan selected.
   * Timer of this task consists of two 32 bit unsigned integers.
   * The two integers represent the low bits Timing.clockTick1 and the high bits
   * Timing.clockTickH1. When the low bit overflows to 0, the high bits increment.
   */
  if (!(++heli_day_4_M->Timing.clockTick1)) {
    ++heli_day_4_M->Timing.clockTickH1;
  }

  heli_day_4_M->Timing.t[1] = heli_day_4_M->Timing.clockTick1 *
    heli_day_4_M->Timing.stepSize1 + heli_day_4_M->Timing.clockTickH1 *
    heli_day_4_M->Timing.stepSize1 * 4294967296.0;
}

/* Derivatives for root system: '<Root>' */
void heli_day_4_derivatives(void)
{
  XDot_heli_day_4_T *_rtXdot;
  _rtXdot = ((XDot_heli_day_4_T *) heli_day_4_M->ModelData.derivs);

  /* Derivatives for TransferFcn: '<S3>/Pitch: Transfer Fcn' */
  _rtXdot->PitchTransferFcn_CSTATE = 0.0;
  _rtXdot->PitchTransferFcn_CSTATE += heli_day_4_P.PitchTransferFcn_A *
    heli_day_4_X.PitchTransferFcn_CSTATE;
  _rtXdot->PitchTransferFcn_CSTATE += heli_day_4_B.PitchCounttorad;

  /* Derivatives for TransferFcn: '<S3>/Elevation: Transfer Fcn' */
  _rtXdot->ElevationTransferFcn_CSTATE = 0.0;
  _rtXdot->ElevationTransferFcn_CSTATE += heli_day_4_P.ElevationTransferFcn_A *
    heli_day_4_X.ElevationTransferFcn_CSTATE;
  _rtXdot->ElevationTransferFcn_CSTATE += heli_day_4_B.ElevationCounttorad;

  /* Derivatives for TransferFcn: '<S3>/Travel: Transfer Fcn' */
  _rtXdot->TravelTransferFcn_CSTATE = 0.0;
  _rtXdot->TravelTransferFcn_CSTATE += heli_day_4_P.TravelTransferFcn_A *
    heli_day_4_X.TravelTransferFcn_CSTATE;
  _rtXdot->TravelTransferFcn_CSTATE += heli_day_4_B.TravelCounttorad;

  /* Derivatives for Integrator: '<S7>/Integrator' */
  _rtXdot->Integrator_CSTATE = heli_day_4_B.Sum2;

  /* Derivatives for Integrator: '<S7>/Integrator1' */
  _rtXdot->Integrator1_CSTATE = heli_day_4_B.Sum3;
}

/* Model output function for TID2 */
void heli_day_4_output2(void)          /* Sample time: [0.01s, 0.0s] */
{
  /* S-Function (game_controller_block): '<S5>/Game Controller' */

  /* S-Function Block: heli_day_4/Joystick/Game Controller (game_controller_block) */
  {
    if (heli_day_4_P.GameController_Enabled) {
      t_game_controller_states state;
      t_boolean new_data;
      t_error result;
      result = game_controller_poll(heli_day_4_DW.GameController_Controller,
        &state, &new_data);
      if (result == 0) {
        heli_day_4_B.GameController_o4 = state.x;
        heli_day_4_B.GameController_o5 = state.y;
      }
    } else {
      heli_day_4_B.GameController_o4 = 0;
      heli_day_4_B.GameController_o5 = 0;
    }
  }
}

/* Model update function for TID2 */
void heli_day_4_update2(void)          /* Sample time: [0.01s, 0.0s] */
{
  /* Update for RateTransition: '<S5>/Rate Transition: x' */
  heli_day_4_DW.RateTransitionx_Buffer0 = heli_day_4_B.GameController_o4;

  /* Update for RateTransition: '<S5>/Rate Transition: y' */
  heli_day_4_DW.RateTransitiony_Buffer0 = heli_day_4_B.GameController_o5;

  /* Update absolute time */
  /* The "clockTick2" counts the number of times the code of this task has
   * been executed. The absolute time is the multiplication of "clockTick2"
   * and "Timing.stepSize2". Size of "clockTick2" ensures timer will not
   * overflow during the application lifespan selected.
   * Timer of this task consists of two 32 bit unsigned integers.
   * The two integers represent the low bits Timing.clockTick2 and the high bits
   * Timing.clockTickH2. When the low bit overflows to 0, the high bits increment.
   */
  if (!(++heli_day_4_M->Timing.clockTick2)) {
    ++heli_day_4_M->Timing.clockTickH2;
  }

  heli_day_4_M->Timing.t[2] = heli_day_4_M->Timing.clockTick2 *
    heli_day_4_M->Timing.stepSize2 + heli_day_4_M->Timing.clockTickH2 *
    heli_day_4_M->Timing.stepSize2 * 4294967296.0;
}

/* Model output wrapper function for compatibility with a static main program */
void heli_day_4_output(int_T tid)
{
  switch (tid) {
   case 0 :
    heli_day_4_output0();
    break;

   case 2 :
    heli_day_4_output2();
    break;

   default :
    break;
  }
}

/* Model update wrapper function for compatibility with a static main program */
void heli_day_4_update(int_T tid)
{
  switch (tid) {
   case 0 :
    heli_day_4_update0();
    break;

   case 2 :
    heli_day_4_update2();
    break;

   default :
    break;
  }
}

/* Model initialize function */
void heli_day_4_initialize(void)
{
  /* Start for S-Function (hil_initialize_block): '<Root>/HIL Initialize' */

  /* S-Function Block: heli_day_4/HIL Initialize (hil_initialize_block) */
  {
    t_int result;
    t_boolean is_switching;
    result = hil_open("q8_usb", "0", &heli_day_4_DW.HILInitialize_Card);
    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(heli_day_4_M, _rt_error_message);
      return;
    }

    is_switching = false;
    result = hil_set_card_specific_options(heli_day_4_DW.HILInitialize_Card,
      "update_rate=normal;decimation=1", 32);
    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(heli_day_4_M, _rt_error_message);
      return;
    }

    result = hil_watchdog_clear(heli_day_4_DW.HILInitialize_Card);
    if (result < 0 && result != -QERR_HIL_WATCHDOG_CLEAR) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(heli_day_4_M, _rt_error_message);
      return;
    }

    if ((heli_day_4_P.HILInitialize_set_analog_input_ && !is_switching) ||
        (heli_day_4_P.HILInitialize_set_analog_inpu_m && is_switching)) {
      {
        int_T i1;
        real_T *dw_AIMinimums = &heli_day_4_DW.HILInitialize_AIMinimums[0];
        for (i1=0; i1 < 8; i1++) {
          dw_AIMinimums[i1] = heli_day_4_P.HILInitialize_analog_input_mini;
        }
      }

      {
        int_T i1;
        real_T *dw_AIMaximums = &heli_day_4_DW.HILInitialize_AIMaximums[0];
        for (i1=0; i1 < 8; i1++) {
          dw_AIMaximums[i1] = heli_day_4_P.HILInitialize_analog_input_maxi;
        }
      }

      result = hil_set_analog_input_ranges(heli_day_4_DW.HILInitialize_Card,
        heli_day_4_P.HILInitialize_analog_input_chan, 8U,
        &heli_day_4_DW.HILInitialize_AIMinimums[0],
        &heli_day_4_DW.HILInitialize_AIMaximums[0]);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(heli_day_4_M, _rt_error_message);
        return;
      }
    }

    if ((heli_day_4_P.HILInitialize_set_analog_output && !is_switching) ||
        (heli_day_4_P.HILInitialize_set_analog_outp_b && is_switching)) {
      {
        int_T i1;
        real_T *dw_AOMinimums = &heli_day_4_DW.HILInitialize_AOMinimums[0];
        for (i1=0; i1 < 8; i1++) {
          dw_AOMinimums[i1] = heli_day_4_P.HILInitialize_analog_output_min;
        }
      }

      {
        int_T i1;
        real_T *dw_AOMaximums = &heli_day_4_DW.HILInitialize_AOMaximums[0];
        for (i1=0; i1 < 8; i1++) {
          dw_AOMaximums[i1] = heli_day_4_P.HILInitialize_analog_output_max;
        }
      }

      result = hil_set_analog_output_ranges(heli_day_4_DW.HILInitialize_Card,
        heli_day_4_P.HILInitialize_analog_output_cha, 8U,
        &heli_day_4_DW.HILInitialize_AOMinimums[0],
        &heli_day_4_DW.HILInitialize_AOMaximums[0]);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(heli_day_4_M, _rt_error_message);
        return;
      }
    }

    if ((heli_day_4_P.HILInitialize_set_analog_outp_e && !is_switching) ||
        (heli_day_4_P.HILInitialize_set_analog_outp_j && is_switching)) {
      {
        int_T i1;
        real_T *dw_AOVoltages = &heli_day_4_DW.HILInitialize_AOVoltages[0];
        for (i1=0; i1 < 8; i1++) {
          dw_AOVoltages[i1] = heli_day_4_P.HILInitialize_initial_analog_ou;
        }
      }

      result = hil_write_analog(heli_day_4_DW.HILInitialize_Card,
        heli_day_4_P.HILInitialize_analog_output_cha, 8U,
        &heli_day_4_DW.HILInitialize_AOVoltages[0]);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(heli_day_4_M, _rt_error_message);
        return;
      }
    }

    if (heli_day_4_P.HILInitialize_set_analog_outp_p) {
      {
        int_T i1;
        real_T *dw_AOVoltages = &heli_day_4_DW.HILInitialize_AOVoltages[0];
        for (i1=0; i1 < 8; i1++) {
          dw_AOVoltages[i1] = heli_day_4_P.HILInitialize_watchdog_analog_o;
        }
      }

      result = hil_watchdog_set_analog_expiration_state
        (heli_day_4_DW.HILInitialize_Card,
         heli_day_4_P.HILInitialize_analog_output_cha, 8U,
         &heli_day_4_DW.HILInitialize_AOVoltages[0]);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(heli_day_4_M, _rt_error_message);
        return;
      }
    }

    if ((heli_day_4_P.HILInitialize_set_encoder_param && !is_switching) ||
        (heli_day_4_P.HILInitialize_set_encoder_par_m && is_switching)) {
      {
        int_T i1;
        int32_T *dw_QuadratureModes =
          &heli_day_4_DW.HILInitialize_QuadratureModes[0];
        for (i1=0; i1 < 8; i1++) {
          dw_QuadratureModes[i1] = heli_day_4_P.HILInitialize_quadrature;
        }
      }

      result = hil_set_encoder_quadrature_mode(heli_day_4_DW.HILInitialize_Card,
        heli_day_4_P.HILInitialize_encoder_channels, 8U,
        (t_encoder_quadrature_mode *)
        &heli_day_4_DW.HILInitialize_QuadratureModes[0]);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(heli_day_4_M, _rt_error_message);
        return;
      }
    }

    if ((heli_day_4_P.HILInitialize_set_encoder_count && !is_switching) ||
        (heli_day_4_P.HILInitialize_set_encoder_cou_k && is_switching)) {
      {
        int_T i1;
        int32_T *dw_InitialEICounts =
          &heli_day_4_DW.HILInitialize_InitialEICounts[0];
        for (i1=0; i1 < 8; i1++) {
          dw_InitialEICounts[i1] = heli_day_4_P.HILInitialize_initial_encoder_c;
        }
      }

      result = hil_set_encoder_counts(heli_day_4_DW.HILInitialize_Card,
        heli_day_4_P.HILInitialize_encoder_channels, 8U,
        &heli_day_4_DW.HILInitialize_InitialEICounts[0]);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(heli_day_4_M, _rt_error_message);
        return;
      }
    }

    if ((heli_day_4_P.HILInitialize_set_pwm_params_at && !is_switching) ||
        (heli_day_4_P.HILInitialize_set_pwm_params__f && is_switching)) {
      uint32_T num_duty_cycle_modes = 0;
      uint32_T num_frequency_modes = 0;

      {
        int_T i1;
        int32_T *dw_POModeValues = &heli_day_4_DW.HILInitialize_POModeValues[0];
        for (i1=0; i1 < 8; i1++) {
          dw_POModeValues[i1] = heli_day_4_P.HILInitialize_pwm_modes;
        }
      }

      result = hil_set_pwm_mode(heli_day_4_DW.HILInitialize_Card,
        heli_day_4_P.HILInitialize_pwm_channels, 8U, (t_pwm_mode *)
        &heli_day_4_DW.HILInitialize_POModeValues[0]);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(heli_day_4_M, _rt_error_message);
        return;
      }

      {
        int_T i1;
        const uint32_T *p_HILInitialize_pwm_channels =
          heli_day_4_P.HILInitialize_pwm_channels;
        int32_T *dw_POModeValues = &heli_day_4_DW.HILInitialize_POModeValues[0];
        for (i1=0; i1 < 8; i1++) {
          if (dw_POModeValues[i1] == PWM_DUTY_CYCLE_MODE || dw_POModeValues[i1] ==
              PWM_ONE_SHOT_MODE || dw_POModeValues[i1] == PWM_TIME_MODE) {
            heli_day_4_DW.HILInitialize_POSortedChans[num_duty_cycle_modes] =
              p_HILInitialize_pwm_channels[i1];
            heli_day_4_DW.HILInitialize_POSortedFreqs[num_duty_cycle_modes] =
              heli_day_4_P.HILInitialize_pwm_frequency;
            num_duty_cycle_modes++;
          } else {
            heli_day_4_DW.HILInitialize_POSortedChans[7U - num_frequency_modes] =
              p_HILInitialize_pwm_channels[i1];
            heli_day_4_DW.HILInitialize_POSortedFreqs[7U - num_frequency_modes] =
              heli_day_4_P.HILInitialize_pwm_frequency;
            num_frequency_modes++;
          }
        }
      }

      if (num_duty_cycle_modes > 0) {
        result = hil_set_pwm_frequency(heli_day_4_DW.HILInitialize_Card,
          &heli_day_4_DW.HILInitialize_POSortedChans[0], num_duty_cycle_modes,
          &heli_day_4_DW.HILInitialize_POSortedFreqs[0]);
        if (result < 0) {
          msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
            (_rt_error_message));
          rtmSetErrorStatus(heli_day_4_M, _rt_error_message);
          return;
        }
      }

      if (num_frequency_modes > 0) {
        result = hil_set_pwm_duty_cycle(heli_day_4_DW.HILInitialize_Card,
          &heli_day_4_DW.HILInitialize_POSortedChans[num_duty_cycle_modes],
          num_frequency_modes,
          &heli_day_4_DW.HILInitialize_POSortedFreqs[num_duty_cycle_modes]);
        if (result < 0) {
          msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
            (_rt_error_message));
          rtmSetErrorStatus(heli_day_4_M, _rt_error_message);
          return;
        }
      }

      {
        int_T i1;
        int32_T *dw_POModeValues = &heli_day_4_DW.HILInitialize_POModeValues[0];
        for (i1=0; i1 < 8; i1++) {
          dw_POModeValues[i1] = heli_day_4_P.HILInitialize_pwm_configuration;
        }
      }

      {
        int_T i1;
        int32_T *dw_POAlignValues = &heli_day_4_DW.HILInitialize_POAlignValues[0];
        for (i1=0; i1 < 8; i1++) {
          dw_POAlignValues[i1] = heli_day_4_P.HILInitialize_pwm_alignment;
        }
      }

      {
        int_T i1;
        int32_T *dw_POPolarityVals =
          &heli_day_4_DW.HILInitialize_POPolarityVals[0];
        for (i1=0; i1 < 8; i1++) {
          dw_POPolarityVals[i1] = heli_day_4_P.HILInitialize_pwm_polarity;
        }
      }

      result = hil_set_pwm_configuration(heli_day_4_DW.HILInitialize_Card,
        heli_day_4_P.HILInitialize_pwm_channels, 8U,
        (t_pwm_configuration *) &heli_day_4_DW.HILInitialize_POModeValues[0],
        (t_pwm_alignment *) &heli_day_4_DW.HILInitialize_POAlignValues[0],
        (t_pwm_polarity *) &heli_day_4_DW.HILInitialize_POPolarityVals[0]);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(heli_day_4_M, _rt_error_message);
        return;
      }

      {
        int_T i1;
        real_T *dw_POSortedFreqs = &heli_day_4_DW.HILInitialize_POSortedFreqs[0];
        for (i1=0; i1 < 8; i1++) {
          dw_POSortedFreqs[i1] = heli_day_4_P.HILInitialize_pwm_leading_deadb;
        }
      }

      {
        int_T i1;
        real_T *dw_POValues = &heli_day_4_DW.HILInitialize_POValues[0];
        for (i1=0; i1 < 8; i1++) {
          dw_POValues[i1] = heli_day_4_P.HILInitialize_pwm_trailing_dead;
        }
      }

      result = hil_set_pwm_deadband(heli_day_4_DW.HILInitialize_Card,
        heli_day_4_P.HILInitialize_pwm_channels, 8U,
        &heli_day_4_DW.HILInitialize_POSortedFreqs[0],
        &heli_day_4_DW.HILInitialize_POValues[0]);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(heli_day_4_M, _rt_error_message);
        return;
      }
    }

    if ((heli_day_4_P.HILInitialize_set_pwm_outputs_a && !is_switching) ||
        (heli_day_4_P.HILInitialize_set_pwm_outputs_g && is_switching)) {
      {
        int_T i1;
        real_T *dw_POValues = &heli_day_4_DW.HILInitialize_POValues[0];
        for (i1=0; i1 < 8; i1++) {
          dw_POValues[i1] = heli_day_4_P.HILInitialize_initial_pwm_outpu;
        }
      }

      result = hil_write_pwm(heli_day_4_DW.HILInitialize_Card,
        heli_day_4_P.HILInitialize_pwm_channels, 8U,
        &heli_day_4_DW.HILInitialize_POValues[0]);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(heli_day_4_M, _rt_error_message);
        return;
      }
    }

    if (heli_day_4_P.HILInitialize_set_pwm_outputs_o) {
      {
        int_T i1;
        real_T *dw_POValues = &heli_day_4_DW.HILInitialize_POValues[0];
        for (i1=0; i1 < 8; i1++) {
          dw_POValues[i1] = heli_day_4_P.HILInitialize_watchdog_pwm_outp;
        }
      }

      result = hil_watchdog_set_pwm_expiration_state
        (heli_day_4_DW.HILInitialize_Card,
         heli_day_4_P.HILInitialize_pwm_channels, 8U,
         &heli_day_4_DW.HILInitialize_POValues[0]);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(heli_day_4_M, _rt_error_message);
        return;
      }
    }
  }

  /* Start for S-Function (hil_read_encoder_timebase_block): '<S3>/HIL Read Encoder Timebase' */

  /* S-Function Block: heli_day_4/Heli 3D/HIL Read Encoder Timebase (hil_read_encoder_timebase_block) */
  {
    t_error result;
    result = hil_task_create_encoder_reader(heli_day_4_DW.HILInitialize_Card,
      heli_day_4_P.HILReadEncoderTimebase_samples_,
      heli_day_4_P.HILReadEncoderTimebase_channels, 3,
      &heli_day_4_DW.HILReadEncoderTimebase_Task);
    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(heli_day_4_M, _rt_error_message);
    }
  }

  /* Start for RateTransition: '<S5>/Rate Transition: x' */
  heli_day_4_B.RateTransitionx = heli_day_4_P.RateTransitionx_X0;

  /* Start for ToFile: '<Root>/To File' */
  {
    FILE *fp = (NULL);
    char fileName[509] = "pitch_c.mat";
    if ((fp = fopen(fileName, "wb")) == (NULL)) {
      rtmSetErrorStatus(heli_day_4_M, "Error creating .mat file pitch_c.mat");
      return;
    }

    if (rt_WriteMat4FileHeader(fp,2,0,"pc")) {
      rtmSetErrorStatus(heli_day_4_M,
                        "Error writing mat file header to file pitch_c.mat");
      return;
    }

    heli_day_4_DW.ToFile_IWORK.Count = 0;
    heli_day_4_DW.ToFile_IWORK.Decimation = -1;
    heli_day_4_DW.ToFile_PWORK.FilePtr = fp;
  }

  /* Start for RateTransition: '<S5>/Rate Transition: y' */
  heli_day_4_B.RateTransitiony = heli_day_4_P.RateTransitiony_X0;

  /* Start for ToFile: '<Root>/To File1' */
  {
    FILE *fp = (NULL);
    char fileName[509] = "elevation_rate_c.mat";
    if ((fp = fopen(fileName, "wb")) == (NULL)) {
      rtmSetErrorStatus(heli_day_4_M,
                        "Error creating .mat file elevation_rate_c.mat");
      return;
    }

    if (rt_WriteMat4FileHeader(fp,2,0,"ec")) {
      rtmSetErrorStatus(heli_day_4_M,
                        "Error writing mat file header to file elevation_rate_c.mat");
      return;
    }

    heli_day_4_DW.ToFile1_IWORK.Count = 0;
    heli_day_4_DW.ToFile1_IWORK.Decimation = -1;
    heli_day_4_DW.ToFile1_PWORK.FilePtr = fp;
  }

  /* Start for S-Function (stream_call_block): '<S4>/Stream Call1' */

  /* S-Function Block: heli_day_4/IMU/Stream Call1 (stream_call_block) */
  {
    heli_day_4_DW.StreamCall1_State = STREAM_CALL_STATE_NOT_CONNECTED;
    heli_day_4_DW.StreamCall1_Stream = NULL;
  }

  /* Start for ToFile: '<Root>/To File2' */
  {
    FILE *fp = (NULL);
    char fileName[509] = "estimates.mat";
    if ((fp = fopen(fileName, "wb")) == (NULL)) {
      rtmSetErrorStatus(heli_day_4_M, "Error creating .mat file estimates.mat");
      return;
    }

    if (rt_WriteMat4FileHeader(fp,6,0,"estimates")) {
      rtmSetErrorStatus(heli_day_4_M,
                        "Error writing mat file header to file estimates.mat");
      return;
    }

    heli_day_4_DW.ToFile2_IWORK.Count = 0;
    heli_day_4_DW.ToFile2_IWORK.Decimation = -1;
    heli_day_4_DW.ToFile2_PWORK.FilePtr = fp;
  }

  /* Start for ToFile: '<Root>/To File21' */
  {
    FILE *fp = (NULL);
    char fileName[509] = "measurements.mat";
    if ((fp = fopen(fileName, "wb")) == (NULL)) {
      rtmSetErrorStatus(heli_day_4_M,
                        "Error creating .mat file measurements.mat");
      return;
    }

    if (rt_WriteMat4FileHeader(fp,6,0,"measurements")) {
      rtmSetErrorStatus(heli_day_4_M,
                        "Error writing mat file header to file measurements.mat");
      return;
    }

    heli_day_4_DW.ToFile21_IWORK.Count = 0;
    heli_day_4_DW.ToFile21_IWORK.Decimation = -1;
    heli_day_4_DW.ToFile21_PWORK.FilePtr = fp;
  }

  /* Start for ToFile: '<Root>/To File3' */
  {
    FILE *fp = (NULL);
    char fileName[509] = "encoders.mat";
    if ((fp = fopen(fileName, "wb")) == (NULL)) {
      rtmSetErrorStatus(heli_day_4_M, "Error creating .mat file encoders.mat");
      return;
    }

    if (rt_WriteMat4FileHeader(fp,6,0,"encoders")) {
      rtmSetErrorStatus(heli_day_4_M,
                        "Error writing mat file header to file encoders.mat");
      return;
    }

    heli_day_4_DW.ToFile3_IWORK.Count = 0;
    heli_day_4_DW.ToFile3_IWORK.Decimation = -1;
    heli_day_4_DW.ToFile3_PWORK.FilePtr = fp;
  }

  /* Start for S-Function (game_controller_block): '<S5>/Game Controller' */

  /* S-Function Block: heli_day_4/Joystick/Game Controller (game_controller_block) */
  {
    if (heli_day_4_P.GameController_Enabled) {
      t_double deadzone[6];
      t_double saturation[6];
      t_int index;
      t_error result;
      for (index = 0; index < 6; index++) {
        deadzone[index] = -1;
      }

      for (index = 0; index < 6; index++) {
        saturation[index] = -1;
      }

      result = game_controller_open(heli_day_4_P.GameController_ControllerNumber,
        heli_day_4_P.GameController_BufferSize, deadzone, saturation,
        heli_day_4_P.GameController_AutoCenter, 0, 1.0,
        &heli_day_4_DW.GameController_Controller);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(heli_day_4_M, _rt_error_message);
      }
    }
  }

  {
    int32_T i;

    /* InitializeConditions for RateTransition: '<S5>/Rate Transition: x' */
    heli_day_4_DW.RateTransitionx_Buffer0 = heli_day_4_P.RateTransitionx_X0;

    /* InitializeConditions for RateTransition: '<S5>/Rate Transition: y' */
    heli_day_4_DW.RateTransitiony_Buffer0 = heli_day_4_P.RateTransitiony_X0;

    /* InitializeConditions for UnitDelay: '<S6>/Unit Delay' */
    for (i = 0; i < 5; i++) {
      heli_day_4_DW.UnitDelay_DSTATE[i] = heli_day_4_P.x_init[i];
    }

    /* End of InitializeConditions for UnitDelay: '<S6>/Unit Delay' */

    /* InitializeConditions for UnitDelay: '<S6>/Unit Delay1' */
    memcpy(&heli_day_4_DW.UnitDelay1_DSTATE[0], &heli_day_4_P.P_init[0], 25U *
           sizeof(real_T));

    /* InitializeConditions for Memory: '<S4>/Memory' */
    memcpy(&heli_day_4_DW.Memory_PreviousInput[0], &heli_day_4_P.Memory_X0[0],
           10U * sizeof(real_T));

    /* InitializeConditions for TransferFcn: '<S3>/Pitch: Transfer Fcn' */
    heli_day_4_X.PitchTransferFcn_CSTATE = 0.0;

    /* InitializeConditions for TransferFcn: '<S3>/Elevation: Transfer Fcn' */
    heli_day_4_X.ElevationTransferFcn_CSTATE = 0.0;

    /* InitializeConditions for TransferFcn: '<S3>/Travel: Transfer Fcn' */
    heli_day_4_X.TravelTransferFcn_CSTATE = 0.0;

    /* InitializeConditions for Integrator: '<S7>/Integrator' */
    heli_day_4_X.Integrator_CSTATE = heli_day_4_P.Integrator_IC;

    /* InitializeConditions for Integrator: '<S7>/Integrator1' */
    heli_day_4_X.Integrator1_CSTATE = heli_day_4_P.Integrator1_IC;
  }
}

/* Model terminate function */
void heli_day_4_terminate(void)
{
  /* Terminate for S-Function (hil_initialize_block): '<Root>/HIL Initialize' */

  /* S-Function Block: heli_day_4/HIL Initialize (hil_initialize_block) */
  {
    t_boolean is_switching;
    t_int result;
    t_uint32 num_final_analog_outputs = 0;
    t_uint32 num_final_pwm_outputs = 0;
    hil_task_stop_all(heli_day_4_DW.HILInitialize_Card);
    hil_monitor_stop_all(heli_day_4_DW.HILInitialize_Card);
    is_switching = false;
    if ((heli_day_4_P.HILInitialize_set_analog_out_ex && !is_switching) ||
        (heli_day_4_P.HILInitialize_set_analog_outp_c && is_switching)) {
      {
        int_T i1;
        real_T *dw_AOVoltages = &heli_day_4_DW.HILInitialize_AOVoltages[0];
        for (i1=0; i1 < 8; i1++) {
          dw_AOVoltages[i1] = heli_day_4_P.HILInitialize_final_analog_outp;
        }
      }

      num_final_analog_outputs = 8U;
    }

    if ((heli_day_4_P.HILInitialize_set_pwm_output_ap && !is_switching) ||
        (heli_day_4_P.HILInitialize_set_pwm_outputs_p && is_switching)) {
      {
        int_T i1;
        real_T *dw_POValues = &heli_day_4_DW.HILInitialize_POValues[0];
        for (i1=0; i1 < 8; i1++) {
          dw_POValues[i1] = heli_day_4_P.HILInitialize_final_pwm_outputs;
        }
      }

      num_final_pwm_outputs = 8U;
    }

    if (0
        || num_final_analog_outputs > 0
        || num_final_pwm_outputs > 0
        ) {
      /* Attempt to write the final outputs atomically (due to firmware issue in old Q2-USB). Otherwise write channels individually */
      result = hil_write(heli_day_4_DW.HILInitialize_Card
                         , heli_day_4_P.HILInitialize_analog_output_cha,
                         num_final_analog_outputs
                         , heli_day_4_P.HILInitialize_pwm_channels,
                         num_final_pwm_outputs
                         , NULL, 0
                         , NULL, 0
                         , &heli_day_4_DW.HILInitialize_AOVoltages[0]
                         , &heli_day_4_DW.HILInitialize_POValues[0]
                         , (t_boolean *) NULL
                         , NULL
                         );
      if (result == -QERR_HIL_WRITE_NOT_SUPPORTED) {
        t_error local_result;
        result = 0;

        /* The hil_write operation is not supported by this card. Write final outputs for each channel type */
        if (num_final_analog_outputs > 0) {
          local_result = hil_write_analog(heli_day_4_DW.HILInitialize_Card,
            heli_day_4_P.HILInitialize_analog_output_cha,
            num_final_analog_outputs, &heli_day_4_DW.HILInitialize_AOVoltages[0]);
          if (local_result < 0) {
            result = local_result;
          }
        }

        if (num_final_pwm_outputs > 0) {
          local_result = hil_write_pwm(heli_day_4_DW.HILInitialize_Card,
            heli_day_4_P.HILInitialize_pwm_channels, num_final_pwm_outputs,
            &heli_day_4_DW.HILInitialize_POValues[0]);
          if (local_result < 0) {
            result = local_result;
          }
        }

        if (result < 0) {
          msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
            (_rt_error_message));
          rtmSetErrorStatus(heli_day_4_M, _rt_error_message);
        }
      }
    }

    hil_task_delete_all(heli_day_4_DW.HILInitialize_Card);
    hil_monitor_delete_all(heli_day_4_DW.HILInitialize_Card);
    hil_close(heli_day_4_DW.HILInitialize_Card);
    heli_day_4_DW.HILInitialize_Card = NULL;
  }

  /* Terminate for ToFile: '<Root>/To File' */
  {
    FILE *fp = (FILE *) heli_day_4_DW.ToFile_PWORK.FilePtr;
    if (fp != (NULL)) {
      char fileName[509] = "pitch_c.mat";
      if (fclose(fp) == EOF) {
        rtmSetErrorStatus(heli_day_4_M, "Error closing MAT-file pitch_c.mat");
        return;
      }

      if ((fp = fopen(fileName, "r+b")) == (NULL)) {
        rtmSetErrorStatus(heli_day_4_M, "Error reopening MAT-file pitch_c.mat");
        return;
      }

      if (rt_WriteMat4FileHeader(fp, 2, heli_day_4_DW.ToFile_IWORK.Count, "pc"))
      {
        rtmSetErrorStatus(heli_day_4_M,
                          "Error writing header for pc to MAT-file pitch_c.mat");
      }

      if (fclose(fp) == EOF) {
        rtmSetErrorStatus(heli_day_4_M, "Error closing MAT-file pitch_c.mat");
        return;
      }

      heli_day_4_DW.ToFile_PWORK.FilePtr = (NULL);
    }
  }

  /* Terminate for ToFile: '<Root>/To File1' */
  {
    FILE *fp = (FILE *) heli_day_4_DW.ToFile1_PWORK.FilePtr;
    if (fp != (NULL)) {
      char fileName[509] = "elevation_rate_c.mat";
      if (fclose(fp) == EOF) {
        rtmSetErrorStatus(heli_day_4_M,
                          "Error closing MAT-file elevation_rate_c.mat");
        return;
      }

      if ((fp = fopen(fileName, "r+b")) == (NULL)) {
        rtmSetErrorStatus(heli_day_4_M,
                          "Error reopening MAT-file elevation_rate_c.mat");
        return;
      }

      if (rt_WriteMat4FileHeader(fp, 2, heli_day_4_DW.ToFile1_IWORK.Count, "ec"))
      {
        rtmSetErrorStatus(heli_day_4_M,
                          "Error writing header for ec to MAT-file elevation_rate_c.mat");
      }

      if (fclose(fp) == EOF) {
        rtmSetErrorStatus(heli_day_4_M,
                          "Error closing MAT-file elevation_rate_c.mat");
        return;
      }

      heli_day_4_DW.ToFile1_PWORK.FilePtr = (NULL);
    }
  }

  /* Terminate for S-Function (stream_call_block): '<S4>/Stream Call1' */

  /* S-Function Block: heli_day_4/IMU/Stream Call1 (stream_call_block) */
  {
    if (heli_day_4_DW.StreamCall1_Stream != NULL) {
      stream_close(heli_day_4_DW.StreamCall1_Stream);
      heli_day_4_DW.StreamCall1_Stream = NULL;
    }
  }

  /* Terminate for ToFile: '<Root>/To File2' */
  {
    FILE *fp = (FILE *) heli_day_4_DW.ToFile2_PWORK.FilePtr;
    if (fp != (NULL)) {
      char fileName[509] = "estimates.mat";
      if (fclose(fp) == EOF) {
        rtmSetErrorStatus(heli_day_4_M, "Error closing MAT-file estimates.mat");
        return;
      }

      if ((fp = fopen(fileName, "r+b")) == (NULL)) {
        rtmSetErrorStatus(heli_day_4_M, "Error reopening MAT-file estimates.mat");
        return;
      }

      if (rt_WriteMat4FileHeader(fp, 6, heli_day_4_DW.ToFile2_IWORK.Count,
           "estimates")) {
        rtmSetErrorStatus(heli_day_4_M,
                          "Error writing header for estimates to MAT-file estimates.mat");
      }

      if (fclose(fp) == EOF) {
        rtmSetErrorStatus(heli_day_4_M, "Error closing MAT-file estimates.mat");
        return;
      }

      heli_day_4_DW.ToFile2_PWORK.FilePtr = (NULL);
    }
  }

  /* Terminate for ToFile: '<Root>/To File21' */
  {
    FILE *fp = (FILE *) heli_day_4_DW.ToFile21_PWORK.FilePtr;
    if (fp != (NULL)) {
      char fileName[509] = "measurements.mat";
      if (fclose(fp) == EOF) {
        rtmSetErrorStatus(heli_day_4_M,
                          "Error closing MAT-file measurements.mat");
        return;
      }

      if ((fp = fopen(fileName, "r+b")) == (NULL)) {
        rtmSetErrorStatus(heli_day_4_M,
                          "Error reopening MAT-file measurements.mat");
        return;
      }

      if (rt_WriteMat4FileHeader(fp, 6, heli_day_4_DW.ToFile21_IWORK.Count,
           "measurements")) {
        rtmSetErrorStatus(heli_day_4_M,
                          "Error writing header for measurements to MAT-file measurements.mat");
      }

      if (fclose(fp) == EOF) {
        rtmSetErrorStatus(heli_day_4_M,
                          "Error closing MAT-file measurements.mat");
        return;
      }

      heli_day_4_DW.ToFile21_PWORK.FilePtr = (NULL);
    }
  }

  /* Terminate for ToFile: '<Root>/To File3' */
  {
    FILE *fp = (FILE *) heli_day_4_DW.ToFile3_PWORK.FilePtr;
    if (fp != (NULL)) {
      char fileName[509] = "encoders.mat";
      if (fclose(fp) == EOF) {
        rtmSetErrorStatus(heli_day_4_M, "Error closing MAT-file encoders.mat");
        return;
      }

      if ((fp = fopen(fileName, "r+b")) == (NULL)) {
        rtmSetErrorStatus(heli_day_4_M, "Error reopening MAT-file encoders.mat");
        return;
      }

      if (rt_WriteMat4FileHeader(fp, 6, heli_day_4_DW.ToFile3_IWORK.Count,
           "encoders")) {
        rtmSetErrorStatus(heli_day_4_M,
                          "Error writing header for encoders to MAT-file encoders.mat");
      }

      if (fclose(fp) == EOF) {
        rtmSetErrorStatus(heli_day_4_M, "Error closing MAT-file encoders.mat");
        return;
      }

      heli_day_4_DW.ToFile3_PWORK.FilePtr = (NULL);
    }
  }

  /* Terminate for S-Function (game_controller_block): '<S5>/Game Controller' */

  /* S-Function Block: heli_day_4/Joystick/Game Controller (game_controller_block) */
  {
    if (heli_day_4_P.GameController_Enabled) {
      game_controller_close(heli_day_4_DW.GameController_Controller);
      heli_day_4_DW.GameController_Controller = NULL;
    }
  }
}

/*========================================================================*
 * Start of Classic call interface                                        *
 *========================================================================*/

/* Solver interface called by GRT_Main */
#ifndef USE_GENERATED_SOLVER

void rt_ODECreateIntegrationData(RTWSolverInfo *si)
{
  UNUSED_PARAMETER(si);
  return;
}                                      /* do nothing */

void rt_ODEDestroyIntegrationData(RTWSolverInfo *si)
{
  UNUSED_PARAMETER(si);
  return;
}                                      /* do nothing */

void rt_ODEUpdateContinuousStates(RTWSolverInfo *si)
{
  UNUSED_PARAMETER(si);
  return;
}                                      /* do nothing */

#endif

void MdlOutputs(int_T tid)
{
  if (tid == 1)
    tid = 0;
  heli_day_4_output(tid);
}

void MdlUpdate(int_T tid)
{
  if (tid == 1)
    tid = 0;
  heli_day_4_update(tid);
}

void MdlInitializeSizes(void)
{
}

void MdlInitializeSampleTimes(void)
{
}

void MdlInitialize(void)
{
}

void MdlStart(void)
{
  heli_day_4_initialize();
}

void MdlTerminate(void)
{
  heli_day_4_terminate();
}

/* Registration function */
RT_MODEL_heli_day_4_T *heli_day_4(void)
{
  /* Registration code */

  /* initialize non-finites */
  rt_InitInfAndNaN(sizeof(real_T));

  /* initialize real-time model */
  (void) memset((void *)heli_day_4_M, 0,
                sizeof(RT_MODEL_heli_day_4_T));

  {
    /* Setup solver object */
    rtsiSetSimTimeStepPtr(&heli_day_4_M->solverInfo,
                          &heli_day_4_M->Timing.simTimeStep);
    rtsiSetTPtr(&heli_day_4_M->solverInfo, &rtmGetTPtr(heli_day_4_M));
    rtsiSetStepSizePtr(&heli_day_4_M->solverInfo,
                       &heli_day_4_M->Timing.stepSize0);
    rtsiSetdXPtr(&heli_day_4_M->solverInfo, &heli_day_4_M->ModelData.derivs);
    rtsiSetContStatesPtr(&heli_day_4_M->solverInfo, (real_T **)
                         &heli_day_4_M->ModelData.contStates);
    rtsiSetNumContStatesPtr(&heli_day_4_M->solverInfo,
      &heli_day_4_M->Sizes.numContStates);
    rtsiSetNumPeriodicContStatesPtr(&heli_day_4_M->solverInfo,
      &heli_day_4_M->Sizes.numPeriodicContStates);
    rtsiSetPeriodicContStateIndicesPtr(&heli_day_4_M->solverInfo,
      &heli_day_4_M->ModelData.periodicContStateIndices);
    rtsiSetPeriodicContStateRangesPtr(&heli_day_4_M->solverInfo,
      &heli_day_4_M->ModelData.periodicContStateRanges);
    rtsiSetErrorStatusPtr(&heli_day_4_M->solverInfo, (&rtmGetErrorStatus
      (heli_day_4_M)));
    rtsiSetRTModelPtr(&heli_day_4_M->solverInfo, heli_day_4_M);
  }

  rtsiSetSimTimeStep(&heli_day_4_M->solverInfo, MAJOR_TIME_STEP);
  heli_day_4_M->ModelData.intgData.f[0] = heli_day_4_M->ModelData.odeF[0];
  heli_day_4_M->ModelData.contStates = ((real_T *) &heli_day_4_X);
  rtsiSetSolverData(&heli_day_4_M->solverInfo, (void *)
                    &heli_day_4_M->ModelData.intgData);
  rtsiSetSolverName(&heli_day_4_M->solverInfo,"ode1");

  /* Initialize timing info */
  {
    int_T *mdlTsMap = heli_day_4_M->Timing.sampleTimeTaskIDArray;
    mdlTsMap[0] = 0;
    mdlTsMap[1] = 1;
    mdlTsMap[2] = 2;
    heli_day_4_M->Timing.sampleTimeTaskIDPtr = (&mdlTsMap[0]);
    heli_day_4_M->Timing.sampleTimes = (&heli_day_4_M->Timing.sampleTimesArray[0]);
    heli_day_4_M->Timing.offsetTimes = (&heli_day_4_M->Timing.offsetTimesArray[0]);

    /* task periods */
    heli_day_4_M->Timing.sampleTimes[0] = (0.0);
    heli_day_4_M->Timing.sampleTimes[1] = (0.002);
    heli_day_4_M->Timing.sampleTimes[2] = (0.01);

    /* task offsets */
    heli_day_4_M->Timing.offsetTimes[0] = (0.0);
    heli_day_4_M->Timing.offsetTimes[1] = (0.0);
    heli_day_4_M->Timing.offsetTimes[2] = (0.0);
  }

  rtmSetTPtr(heli_day_4_M, &heli_day_4_M->Timing.tArray[0]);

  {
    int_T *mdlSampleHits = heli_day_4_M->Timing.sampleHitArray;
    int_T *mdlPerTaskSampleHits = heli_day_4_M->Timing.perTaskSampleHitsArray;
    heli_day_4_M->Timing.perTaskSampleHits = (&mdlPerTaskSampleHits[0]);
    mdlSampleHits[0] = 1;
    heli_day_4_M->Timing.sampleHits = (&mdlSampleHits[0]);
  }

  rtmSetTFinal(heli_day_4_M, -1);
  heli_day_4_M->Timing.stepSize0 = 0.002;
  heli_day_4_M->Timing.stepSize1 = 0.002;
  heli_day_4_M->Timing.stepSize2 = 0.01;

  /* External mode info */
  heli_day_4_M->Sizes.checksums[0] = (3140911447U);
  heli_day_4_M->Sizes.checksums[1] = (1709894602U);
  heli_day_4_M->Sizes.checksums[2] = (639635876U);
  heli_day_4_M->Sizes.checksums[3] = (2044718008U);

  {
    static const sysRanDType rtAlwaysEnabled = SUBSYS_RAN_BC_ENABLE;
    static RTWExtModeInfo rt_ExtModeInfo;
    static const sysRanDType *systemRan[11];
    heli_day_4_M->extModeInfo = (&rt_ExtModeInfo);
    rteiSetSubSystemActiveVectorAddresses(&rt_ExtModeInfo, systemRan);
    systemRan[0] = &rtAlwaysEnabled;
    systemRan[1] = &rtAlwaysEnabled;
    systemRan[2] = &rtAlwaysEnabled;
    systemRan[3] = &rtAlwaysEnabled;
    systemRan[4] = &rtAlwaysEnabled;
    systemRan[5] = &rtAlwaysEnabled;
    systemRan[6] = &rtAlwaysEnabled;
    systemRan[7] = &rtAlwaysEnabled;
    systemRan[8] = &rtAlwaysEnabled;
    systemRan[9] = &rtAlwaysEnabled;
    systemRan[10] = &rtAlwaysEnabled;
    rteiSetModelMappingInfoPtr(heli_day_4_M->extModeInfo,
      &heli_day_4_M->SpecialInfo.mappingInfo);
    rteiSetChecksumsPtr(heli_day_4_M->extModeInfo, heli_day_4_M->Sizes.checksums);
    rteiSetTPtr(heli_day_4_M->extModeInfo, rtmGetTPtr(heli_day_4_M));
  }

  heli_day_4_M->solverInfoPtr = (&heli_day_4_M->solverInfo);
  heli_day_4_M->Timing.stepSize = (0.002);
  rtsiSetFixedStepSize(&heli_day_4_M->solverInfo, 0.002);
  rtsiSetSolverMode(&heli_day_4_M->solverInfo, SOLVER_MODE_MULTITASKING);

  /* block I/O */
  heli_day_4_M->ModelData.blockIO = ((void *) &heli_day_4_B);
  (void) memset(((void *) &heli_day_4_B), 0,
                sizeof(B_heli_day_4_T));

  {
    int32_T i;
    for (i = 0; i < 10; i++) {
      heli_day_4_B.Switch[i] = 0.0;
    }

    for (i = 0; i < 10; i++) {
      heli_day_4_B.Constant2[i] = 0.0;
    }

    for (i = 0; i < 5; i++) {
      heli_day_4_B.x_apriori[i] = 0.0;
    }

    for (i = 0; i < 25; i++) {
      heli_day_4_B.P_apriori[i] = 0.0;
    }

    for (i = 0; i < 5; i++) {
      heli_day_4_B.x_posteriori[i] = 0.0;
    }

    for (i = 0; i < 25; i++) {
      heli_day_4_B.P_posteriori[i] = 0.0;
    }

    heli_day_4_B.RateTransitionx = 0.0;
    heli_day_4_B.Joystick_gain_x = 0.0;
    heli_day_4_B.RateTransitiony = 0.0;
    heli_day_4_B.Joystick_gain_y = 0.0;
    heli_day_4_B.PitchCounttorad = 0.0;
    heli_day_4_B.ElevationCounttorad = 0.0;
    heli_day_4_B.Sum = 0.0;
    heli_day_4_B.TravelCounttorad = 0.0;
    heli_day_4_B.PitchTransferFcn = 0.0;
    heli_day_4_B.ElevationTransferFcn = 0.0;
    heli_day_4_B.TravelTransferFcn = 0.0;
    heli_day_4_B.Fr[0] = 0.0;
    heli_day_4_B.Fr[1] = 0.0;
    heli_day_4_B.Constant1 = 0.0;
    heli_day_4_B.FrontmotorSaturation = 0.0;
    heli_day_4_B.BackmotorSaturation = 0.0;
    heli_day_4_B.GameController_o4 = 0.0;
    heli_day_4_B.GameController_o5 = 0.0;
    heli_day_4_B.Sum2 = 0.0;
    heli_day_4_B.Sum3 = 0.0;
  }

  /* parameters */
  heli_day_4_M->ModelData.defaultParam = ((real_T *)&heli_day_4_P);

  /* states (continuous) */
  {
    real_T *x = (real_T *) &heli_day_4_X;
    heli_day_4_M->ModelData.contStates = (x);
    (void) memset((void *)&heli_day_4_X, 0,
                  sizeof(X_heli_day_4_T));
  }

  /* states (dwork) */
  heli_day_4_M->ModelData.dwork = ((void *) &heli_day_4_DW);
  (void) memset((void *)&heli_day_4_DW, 0,
                sizeof(DW_heli_day_4_T));

  {
    int32_T i;
    for (i = 0; i < 5; i++) {
      heli_day_4_DW.UnitDelay_DSTATE[i] = 0.0;
    }
  }

  {
    int32_T i;
    for (i = 0; i < 25; i++) {
      heli_day_4_DW.UnitDelay1_DSTATE[i] = 0.0;
    }
  }

  {
    int32_T i;
    for (i = 0; i < 8; i++) {
      heli_day_4_DW.HILInitialize_AIMinimums[i] = 0.0;
    }
  }

  {
    int32_T i;
    for (i = 0; i < 8; i++) {
      heli_day_4_DW.HILInitialize_AIMaximums[i] = 0.0;
    }
  }

  {
    int32_T i;
    for (i = 0; i < 8; i++) {
      heli_day_4_DW.HILInitialize_AOMinimums[i] = 0.0;
    }
  }

  {
    int32_T i;
    for (i = 0; i < 8; i++) {
      heli_day_4_DW.HILInitialize_AOMaximums[i] = 0.0;
    }
  }

  {
    int32_T i;
    for (i = 0; i < 8; i++) {
      heli_day_4_DW.HILInitialize_AOVoltages[i] = 0.0;
    }
  }

  {
    int32_T i;
    for (i = 0; i < 8; i++) {
      heli_day_4_DW.HILInitialize_FilterFrequency[i] = 0.0;
    }
  }

  {
    int32_T i;
    for (i = 0; i < 8; i++) {
      heli_day_4_DW.HILInitialize_POSortedFreqs[i] = 0.0;
    }
  }

  {
    int32_T i;
    for (i = 0; i < 8; i++) {
      heli_day_4_DW.HILInitialize_POValues[i] = 0.0;
    }
  }

  heli_day_4_DW.RateTransitionx_Buffer0 = 0.0;
  heli_day_4_DW.RateTransitiony_Buffer0 = 0.0;

  {
    int32_T i;
    for (i = 0; i < 10; i++) {
      heli_day_4_DW.Memory_PreviousInput[i] = 0.0;
    }
  }

  heli_day_4_DW.HILWriteAnalog_Buffer[0] = 0.0;
  heli_day_4_DW.HILWriteAnalog_Buffer[1] = 0.0;

  /* data type transition information */
  {
    static DataTypeTransInfo dtInfo;
    (void) memset((char_T *) &dtInfo, 0,
                  sizeof(dtInfo));
    heli_day_4_M->SpecialInfo.mappingInfo = (&dtInfo);
    dtInfo.numDataTypes = 25;
    dtInfo.dataTypeSizes = &rtDataTypeSizes[0];
    dtInfo.dataTypeNames = &rtDataTypeNames[0];

    /* Block I/O transition table */
    dtInfo.B = &rtBTransTable;

    /* Parameters transition table */
    dtInfo.P = &rtPTransTable;
  }

  /* Initialize Sizes */
  heli_day_4_M->Sizes.numContStates = (5);/* Number of continuous states */
  heli_day_4_M->Sizes.numPeriodicContStates = (0);/* Number of periodic continuous states */
  heli_day_4_M->Sizes.numY = (0);      /* Number of model outputs */
  heli_day_4_M->Sizes.numU = (0);      /* Number of model inputs */
  heli_day_4_M->Sizes.sysDirFeedThru = (0);/* The model is not direct feedthrough */
  heli_day_4_M->Sizes.numSampTimes = (3);/* Number of sample times */
  heli_day_4_M->Sizes.numBlocks = (102);/* Number of blocks */
  heli_day_4_M->Sizes.numBlockIO = (26);/* Number of block outputs */
  heli_day_4_M->Sizes.numBlockPrms = (591);/* Sum of parameter "widths" */
  return heli_day_4_M;
}

/*========================================================================*
 * End of Classic call interface                                          *
 *========================================================================*/
