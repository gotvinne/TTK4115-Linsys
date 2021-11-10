  function targMap = targDataMap(),

  ;%***********************
  ;% Create Parameter Map *
  ;%***********************
      
    nTotData      = 0; %add to this count as we go
    nTotSects     = 10;
    sectIdxOffset = 0;
    
    ;%
    ;% Define dummy sections & preallocate arrays
    ;%
    dumSection.nData = -1;  
    dumSection.data  = [];
    
    dumData.logicalSrcIdx = -1;
    dumData.dtTransOffset = -1;
    
    ;%
    ;% Init/prealloc paramMap
    ;%
    paramMap.nSections           = nTotSects;
    paramMap.sectIdxOffset       = sectIdxOffset;
      paramMap.sections(nTotSects) = dumSection; %prealloc
    paramMap.nTotData            = -1;
    
    ;%
    ;% Auto data (heli_day_4_P)
    ;%
      section.nData     = 29;
      section.data(29)  = dumData; %prealloc
      
	  ;% heli_day_4_P.A_d
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% heli_day_4_P.B_d
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 25;
	
	  ;% heli_day_4_P.C_d
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 35;
	
	  ;% heli_day_4_P.F
	  section.data(4).logicalSrcIdx = 3;
	  section.data(4).dtTransOffset = 60;
	
	  ;% heli_day_4_P.Joystick_gain_x
	  section.data(5).logicalSrcIdx = 4;
	  section.data(5).dtTransOffset = 64;
	
	  ;% heli_day_4_P.Joystick_gain_y
	  section.data(6).logicalSrcIdx = 5;
	  section.data(6).dtTransOffset = 65;
	
	  ;% heli_day_4_P.K
	  section.data(7).logicalSrcIdx = 6;
	  section.data(7).dtTransOffset = 66;
	
	  ;% heli_day_4_P.P_init
	  section.data(8).logicalSrcIdx = 7;
	  section.data(8).dtTransOffset = 76;
	
	  ;% heli_day_4_P.Q_d
	  section.data(9).logicalSrcIdx = 8;
	  section.data(9).dtTransOffset = 101;
	
	  ;% heli_day_4_P.R_d
	  section.data(10).logicalSrcIdx = 9;
	  section.data(10).dtTransOffset = 126;
	
	  ;% heli_day_4_P.Vs_0
	  section.data(11).logicalSrcIdx = 10;
	  section.data(11).dtTransOffset = 151;
	
	  ;% heli_day_4_P.x_init
	  section.data(12).logicalSrcIdx = 11;
	  section.data(12).dtTransOffset = 152;
	
	  ;% heli_day_4_P.HILInitialize_analog_input_maxi
	  section.data(13).logicalSrcIdx = 12;
	  section.data(13).dtTransOffset = 157;
	
	  ;% heli_day_4_P.HILInitialize_analog_input_mini
	  section.data(14).logicalSrcIdx = 13;
	  section.data(14).dtTransOffset = 158;
	
	  ;% heli_day_4_P.HILInitialize_analog_output_max
	  section.data(15).logicalSrcIdx = 14;
	  section.data(15).dtTransOffset = 159;
	
	  ;% heli_day_4_P.HILInitialize_analog_output_min
	  section.data(16).logicalSrcIdx = 15;
	  section.data(16).dtTransOffset = 160;
	
	  ;% heli_day_4_P.HILInitialize_final_analog_outp
	  section.data(17).logicalSrcIdx = 16;
	  section.data(17).dtTransOffset = 161;
	
	  ;% heli_day_4_P.HILInitialize_final_pwm_outputs
	  section.data(18).logicalSrcIdx = 17;
	  section.data(18).dtTransOffset = 162;
	
	  ;% heli_day_4_P.HILInitialize_initial_analog_ou
	  section.data(19).logicalSrcIdx = 18;
	  section.data(19).dtTransOffset = 163;
	
	  ;% heli_day_4_P.HILInitialize_initial_pwm_outpu
	  section.data(20).logicalSrcIdx = 19;
	  section.data(20).dtTransOffset = 164;
	
	  ;% heli_day_4_P.HILInitialize_pwm_frequency
	  section.data(21).logicalSrcIdx = 20;
	  section.data(21).dtTransOffset = 165;
	
	  ;% heli_day_4_P.HILInitialize_pwm_leading_deadb
	  section.data(22).logicalSrcIdx = 21;
	  section.data(22).dtTransOffset = 166;
	
	  ;% heli_day_4_P.HILInitialize_pwm_trailing_dead
	  section.data(23).logicalSrcIdx = 22;
	  section.data(23).dtTransOffset = 167;
	
	  ;% heli_day_4_P.HILInitialize_set_other_outputs
	  section.data(24).logicalSrcIdx = 23;
	  section.data(24).dtTransOffset = 168;
	
	  ;% heli_day_4_P.HILInitialize_set_other_outpu_m
	  section.data(25).logicalSrcIdx = 24;
	  section.data(25).dtTransOffset = 169;
	
	  ;% heli_day_4_P.HILInitialize_set_other_outpu_k
	  section.data(26).logicalSrcIdx = 25;
	  section.data(26).dtTransOffset = 170;
	
	  ;% heli_day_4_P.HILInitialize_set_other_outpu_j
	  section.data(27).logicalSrcIdx = 26;
	  section.data(27).dtTransOffset = 171;
	
	  ;% heli_day_4_P.HILInitialize_watchdog_analog_o
	  section.data(28).logicalSrcIdx = 27;
	  section.data(28).dtTransOffset = 172;
	
	  ;% heli_day_4_P.HILInitialize_watchdog_pwm_outp
	  section.data(29).logicalSrcIdx = 28;
	  section.data(29).dtTransOffset = 173;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(1) = section;
      clear section
      
      section.nData     = 8;
      section.data(8)  = dumData; %prealloc
      
	  ;% heli_day_4_P.HILReadEncoderTimebase_clock
	  section.data(1).logicalSrcIdx = 29;
	  section.data(1).dtTransOffset = 0;
	
	  ;% heli_day_4_P.HILInitialize_hardware_clocks
	  section.data(2).logicalSrcIdx = 30;
	  section.data(2).dtTransOffset = 1;
	
	  ;% heli_day_4_P.HILInitialize_initial_encoder_c
	  section.data(3).logicalSrcIdx = 31;
	  section.data(3).dtTransOffset = 4;
	
	  ;% heli_day_4_P.HILInitialize_pwm_alignment
	  section.data(4).logicalSrcIdx = 32;
	  section.data(4).dtTransOffset = 5;
	
	  ;% heli_day_4_P.HILInitialize_pwm_configuration
	  section.data(5).logicalSrcIdx = 33;
	  section.data(5).dtTransOffset = 6;
	
	  ;% heli_day_4_P.HILInitialize_pwm_modes
	  section.data(6).logicalSrcIdx = 34;
	  section.data(6).dtTransOffset = 7;
	
	  ;% heli_day_4_P.HILInitialize_pwm_polarity
	  section.data(7).logicalSrcIdx = 35;
	  section.data(7).dtTransOffset = 8;
	
	  ;% heli_day_4_P.HILInitialize_watchdog_digital_
	  section.data(8).logicalSrcIdx = 36;
	  section.data(8).dtTransOffset = 9;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(2) = section;
      clear section
      
      section.nData     = 8;
      section.data(8)  = dumData; %prealloc
      
	  ;% heli_day_4_P.HILInitialize_analog_input_chan
	  section.data(1).logicalSrcIdx = 37;
	  section.data(1).dtTransOffset = 0;
	
	  ;% heli_day_4_P.HILInitialize_analog_output_cha
	  section.data(2).logicalSrcIdx = 38;
	  section.data(2).dtTransOffset = 8;
	
	  ;% heli_day_4_P.HILReadEncoderTimebase_channels
	  section.data(3).logicalSrcIdx = 39;
	  section.data(3).dtTransOffset = 16;
	
	  ;% heli_day_4_P.HILWriteAnalog_channels
	  section.data(4).logicalSrcIdx = 40;
	  section.data(4).dtTransOffset = 19;
	
	  ;% heli_day_4_P.HILInitialize_encoder_channels
	  section.data(5).logicalSrcIdx = 41;
	  section.data(5).dtTransOffset = 21;
	
	  ;% heli_day_4_P.HILInitialize_pwm_channels
	  section.data(6).logicalSrcIdx = 42;
	  section.data(6).dtTransOffset = 29;
	
	  ;% heli_day_4_P.HILInitialize_quadrature
	  section.data(7).logicalSrcIdx = 43;
	  section.data(7).dtTransOffset = 37;
	
	  ;% heli_day_4_P.HILReadEncoderTimebase_samples_
	  section.data(8).logicalSrcIdx = 44;
	  section.data(8).dtTransOffset = 38;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(3) = section;
      clear section
      
      section.nData     = 35;
      section.data(35)  = dumData; %prealloc
      
	  ;% heli_day_4_P.HILInitialize_active
	  section.data(1).logicalSrcIdx = 45;
	  section.data(1).dtTransOffset = 0;
	
	  ;% heli_day_4_P.HILInitialize_final_digital_out
	  section.data(2).logicalSrcIdx = 46;
	  section.data(2).dtTransOffset = 1;
	
	  ;% heli_day_4_P.HILInitialize_initial_digital_o
	  section.data(3).logicalSrcIdx = 47;
	  section.data(3).dtTransOffset = 2;
	
	  ;% heli_day_4_P.HILInitialize_set_analog_input_
	  section.data(4).logicalSrcIdx = 48;
	  section.data(4).dtTransOffset = 3;
	
	  ;% heli_day_4_P.HILInitialize_set_analog_inpu_m
	  section.data(5).logicalSrcIdx = 49;
	  section.data(5).dtTransOffset = 4;
	
	  ;% heli_day_4_P.HILInitialize_set_analog_output
	  section.data(6).logicalSrcIdx = 50;
	  section.data(6).dtTransOffset = 5;
	
	  ;% heli_day_4_P.HILInitialize_set_analog_outp_b
	  section.data(7).logicalSrcIdx = 51;
	  section.data(7).dtTransOffset = 6;
	
	  ;% heli_day_4_P.HILInitialize_set_analog_outp_e
	  section.data(8).logicalSrcIdx = 52;
	  section.data(8).dtTransOffset = 7;
	
	  ;% heli_day_4_P.HILInitialize_set_analog_outp_j
	  section.data(9).logicalSrcIdx = 53;
	  section.data(9).dtTransOffset = 8;
	
	  ;% heli_day_4_P.HILInitialize_set_analog_outp_c
	  section.data(10).logicalSrcIdx = 54;
	  section.data(10).dtTransOffset = 9;
	
	  ;% heli_day_4_P.HILInitialize_set_analog_out_ex
	  section.data(11).logicalSrcIdx = 55;
	  section.data(11).dtTransOffset = 10;
	
	  ;% heli_day_4_P.HILInitialize_set_analog_outp_p
	  section.data(12).logicalSrcIdx = 56;
	  section.data(12).dtTransOffset = 11;
	
	  ;% heli_day_4_P.HILInitialize_set_clock_frequen
	  section.data(13).logicalSrcIdx = 57;
	  section.data(13).dtTransOffset = 12;
	
	  ;% heli_day_4_P.HILInitialize_set_clock_frequ_e
	  section.data(14).logicalSrcIdx = 58;
	  section.data(14).dtTransOffset = 13;
	
	  ;% heli_day_4_P.HILInitialize_set_clock_params_
	  section.data(15).logicalSrcIdx = 59;
	  section.data(15).dtTransOffset = 14;
	
	  ;% heli_day_4_P.HILInitialize_set_clock_param_c
	  section.data(16).logicalSrcIdx = 60;
	  section.data(16).dtTransOffset = 15;
	
	  ;% heli_day_4_P.HILInitialize_set_digital_outpu
	  section.data(17).logicalSrcIdx = 61;
	  section.data(17).dtTransOffset = 16;
	
	  ;% heli_day_4_P.HILInitialize_set_digital_out_b
	  section.data(18).logicalSrcIdx = 62;
	  section.data(18).dtTransOffset = 17;
	
	  ;% heli_day_4_P.HILInitialize_set_digital_out_c
	  section.data(19).logicalSrcIdx = 63;
	  section.data(19).dtTransOffset = 18;
	
	  ;% heli_day_4_P.HILInitialize_set_digital_ou_c1
	  section.data(20).logicalSrcIdx = 64;
	  section.data(20).dtTransOffset = 19;
	
	  ;% heli_day_4_P.HILInitialize_set_digital_out_a
	  section.data(21).logicalSrcIdx = 65;
	  section.data(21).dtTransOffset = 20;
	
	  ;% heli_day_4_P.HILInitialize_set_digital_out_j
	  section.data(22).logicalSrcIdx = 66;
	  section.data(22).dtTransOffset = 21;
	
	  ;% heli_day_4_P.HILInitialize_set_digital_out_m
	  section.data(23).logicalSrcIdx = 67;
	  section.data(23).dtTransOffset = 22;
	
	  ;% heli_day_4_P.HILInitialize_set_encoder_count
	  section.data(24).logicalSrcIdx = 68;
	  section.data(24).dtTransOffset = 23;
	
	  ;% heli_day_4_P.HILInitialize_set_encoder_cou_k
	  section.data(25).logicalSrcIdx = 69;
	  section.data(25).dtTransOffset = 24;
	
	  ;% heli_day_4_P.HILInitialize_set_encoder_param
	  section.data(26).logicalSrcIdx = 70;
	  section.data(26).dtTransOffset = 25;
	
	  ;% heli_day_4_P.HILInitialize_set_encoder_par_m
	  section.data(27).logicalSrcIdx = 71;
	  section.data(27).dtTransOffset = 26;
	
	  ;% heli_day_4_P.HILInitialize_set_other_outpu_l
	  section.data(28).logicalSrcIdx = 72;
	  section.data(28).dtTransOffset = 27;
	
	  ;% heli_day_4_P.HILInitialize_set_pwm_outputs_a
	  section.data(29).logicalSrcIdx = 73;
	  section.data(29).dtTransOffset = 28;
	
	  ;% heli_day_4_P.HILInitialize_set_pwm_outputs_g
	  section.data(30).logicalSrcIdx = 74;
	  section.data(30).dtTransOffset = 29;
	
	  ;% heli_day_4_P.HILInitialize_set_pwm_outputs_p
	  section.data(31).logicalSrcIdx = 75;
	  section.data(31).dtTransOffset = 30;
	
	  ;% heli_day_4_P.HILInitialize_set_pwm_output_ap
	  section.data(32).logicalSrcIdx = 76;
	  section.data(32).dtTransOffset = 31;
	
	  ;% heli_day_4_P.HILInitialize_set_pwm_outputs_o
	  section.data(33).logicalSrcIdx = 77;
	  section.data(33).dtTransOffset = 32;
	
	  ;% heli_day_4_P.HILInitialize_set_pwm_params_at
	  section.data(34).logicalSrcIdx = 78;
	  section.data(34).dtTransOffset = 33;
	
	  ;% heli_day_4_P.HILInitialize_set_pwm_params__f
	  section.data(35).logicalSrcIdx = 79;
	  section.data(35).dtTransOffset = 34;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(4) = section;
      clear section
      
      section.nData     = 40;
      section.data(40)  = dumData; %prealloc
      
	  ;% heli_day_4_P.Constant3_Value
	  section.data(1).logicalSrcIdx = 80;
	  section.data(1).dtTransOffset = 0;
	
	  ;% heli_day_4_P.Constant2_Value
	  section.data(2).logicalSrcIdx = 81;
	  section.data(2).dtTransOffset = 1;
	
	  ;% heli_day_4_P.Constant1_Value
	  section.data(3).logicalSrcIdx = 82;
	  section.data(3).dtTransOffset = 2;
	
	  ;% heli_day_4_P.Constant_Value
	  section.data(4).logicalSrcIdx = 83;
	  section.data(4).dtTransOffset = 3;
	
	  ;% heli_day_4_P.RateTransitionx_X0
	  section.data(5).logicalSrcIdx = 84;
	  section.data(5).dtTransOffset = 4;
	
	  ;% heli_day_4_P.DeadZonex_Start
	  section.data(6).logicalSrcIdx = 85;
	  section.data(6).dtTransOffset = 5;
	
	  ;% heli_day_4_P.DeadZonex_End
	  section.data(7).logicalSrcIdx = 86;
	  section.data(7).dtTransOffset = 6;
	
	  ;% heli_day_4_P.Gainx_Gain
	  section.data(8).logicalSrcIdx = 87;
	  section.data(8).dtTransOffset = 7;
	
	  ;% heli_day_4_P.RateTransitiony_X0
	  section.data(9).logicalSrcIdx = 88;
	  section.data(9).dtTransOffset = 8;
	
	  ;% heli_day_4_P.DeadZoney_Start
	  section.data(10).logicalSrcIdx = 89;
	  section.data(10).dtTransOffset = 9;
	
	  ;% heli_day_4_P.DeadZoney_End
	  section.data(11).logicalSrcIdx = 90;
	  section.data(11).dtTransOffset = 10;
	
	  ;% heli_day_4_P.Gainy_Gain
	  section.data(12).logicalSrcIdx = 91;
	  section.data(12).dtTransOffset = 11;
	
	  ;% heli_day_4_P.Constant_Value_k
	  section.data(13).logicalSrcIdx = 92;
	  section.data(13).dtTransOffset = 12;
	
	  ;% heli_day_4_P.Constant1_Value_g
	  section.data(14).logicalSrcIdx = 93;
	  section.data(14).dtTransOffset = 13;
	
	  ;% heli_day_4_P.Memory_X0
	  section.data(15).logicalSrcIdx = 94;
	  section.data(15).dtTransOffset = 14;
	
	  ;% heli_day_4_P.Gain2_Gain
	  section.data(16).logicalSrcIdx = 95;
	  section.data(16).dtTransOffset = 24;
	
	  ;% heli_day_4_P.Gain_Gain
	  section.data(17).logicalSrcIdx = 96;
	  section.data(17).dtTransOffset = 33;
	
	  ;% heli_day_4_P.Gain1_Gain
	  section.data(18).logicalSrcIdx = 97;
	  section.data(18).dtTransOffset = 34;
	
	  ;% heli_day_4_P.Gain1_Gain_h
	  section.data(19).logicalSrcIdx = 98;
	  section.data(19).dtTransOffset = 35;
	
	  ;% heli_day_4_P.PitchCounttorad_Gain
	  section.data(20).logicalSrcIdx = 99;
	  section.data(20).dtTransOffset = 44;
	
	  ;% heli_day_4_P.ElevationCounttorad_Gain
	  section.data(21).logicalSrcIdx = 100;
	  section.data(21).dtTransOffset = 45;
	
	  ;% heli_day_4_P.Constant_Value_j
	  section.data(22).logicalSrcIdx = 101;
	  section.data(22).dtTransOffset = 46;
	
	  ;% heli_day_4_P.TravelCounttorad_Gain
	  section.data(23).logicalSrcIdx = 102;
	  section.data(23).dtTransOffset = 47;
	
	  ;% heli_day_4_P.PitchTransferFcn_A
	  section.data(24).logicalSrcIdx = 103;
	  section.data(24).dtTransOffset = 48;
	
	  ;% heli_day_4_P.PitchTransferFcn_C
	  section.data(25).logicalSrcIdx = 104;
	  section.data(25).dtTransOffset = 49;
	
	  ;% heli_day_4_P.PitchTransferFcn_D
	  section.data(26).logicalSrcIdx = 105;
	  section.data(26).dtTransOffset = 50;
	
	  ;% heli_day_4_P.ElevationTransferFcn_A
	  section.data(27).logicalSrcIdx = 106;
	  section.data(27).dtTransOffset = 51;
	
	  ;% heli_day_4_P.ElevationTransferFcn_C
	  section.data(28).logicalSrcIdx = 107;
	  section.data(28).dtTransOffset = 52;
	
	  ;% heli_day_4_P.ElevationTransferFcn_D
	  section.data(29).logicalSrcIdx = 108;
	  section.data(29).dtTransOffset = 53;
	
	  ;% heli_day_4_P.TravelTransferFcn_A
	  section.data(30).logicalSrcIdx = 109;
	  section.data(30).dtTransOffset = 54;
	
	  ;% heli_day_4_P.TravelTransferFcn_C
	  section.data(31).logicalSrcIdx = 110;
	  section.data(31).dtTransOffset = 55;
	
	  ;% heli_day_4_P.TravelTransferFcn_D
	  section.data(32).logicalSrcIdx = 111;
	  section.data(32).dtTransOffset = 56;
	
	  ;% heli_day_4_P.Integrator_IC
	  section.data(33).logicalSrcIdx = 112;
	  section.data(33).dtTransOffset = 57;
	
	  ;% heli_day_4_P.Integrator1_IC
	  section.data(34).logicalSrcIdx = 113;
	  section.data(34).dtTransOffset = 58;
	
	  ;% heli_day_4_P.Backgain_Gain
	  section.data(35).logicalSrcIdx = 114;
	  section.data(35).dtTransOffset = 59;
	
	  ;% heli_day_4_P.Frontgain_Gain
	  section.data(36).logicalSrcIdx = 115;
	  section.data(36).dtTransOffset = 60;
	
	  ;% heli_day_4_P.FrontmotorSaturation_UpperSat
	  section.data(37).logicalSrcIdx = 116;
	  section.data(37).dtTransOffset = 61;
	
	  ;% heli_day_4_P.FrontmotorSaturation_LowerSat
	  section.data(38).logicalSrcIdx = 117;
	  section.data(38).dtTransOffset = 62;
	
	  ;% heli_day_4_P.BackmotorSaturation_UpperSat
	  section.data(39).logicalSrcIdx = 118;
	  section.data(39).dtTransOffset = 63;
	
	  ;% heli_day_4_P.BackmotorSaturation_LowerSat
	  section.data(40).logicalSrcIdx = 119;
	  section.data(40).dtTransOffset = 64;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(5) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% heli_day_4_P.StreamCall1_SendBufferSize
	  section.data(1).logicalSrcIdx = 120;
	  section.data(1).dtTransOffset = 0;
	
	  ;% heli_day_4_P.StreamCall1_ReceiveBufferSize
	  section.data(2).logicalSrcIdx = 121;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(6) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% heli_day_4_P.StreamFormattedWrite_MaxUnits
	  section.data(1).logicalSrcIdx = 122;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(7) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% heli_day_4_P.GameController_BufferSize
	  section.data(1).logicalSrcIdx = 123;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(8) = section;
      clear section
      
      section.nData     = 5;
      section.data(5)  = dumData; %prealloc
      
	  ;% heli_day_4_P.StringConstant_Value
	  section.data(1).logicalSrcIdx = 124;
	  section.data(1).dtTransOffset = 0;
	
	  ;% heli_day_4_P.StreamCall1_URI
	  section.data(2).logicalSrcIdx = 125;
	  section.data(2).dtTransOffset = 255;
	
	  ;% heli_day_4_P.StreamCall1_Endian
	  section.data(3).logicalSrcIdx = 126;
	  section.data(3).dtTransOffset = 256;
	
	  ;% heli_day_4_P.ManualSwitch_CurrentSetting
	  section.data(4).logicalSrcIdx = 127;
	  section.data(4).dtTransOffset = 257;
	
	  ;% heli_day_4_P.GameController_ControllerNumber
	  section.data(5).logicalSrcIdx = 128;
	  section.data(5).dtTransOffset = 258;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(9) = section;
      clear section
      
      section.nData     = 5;
      section.data(5)  = dumData; %prealloc
      
	  ;% heli_day_4_P.HILReadEncoderTimebase_Active
	  section.data(1).logicalSrcIdx = 129;
	  section.data(1).dtTransOffset = 0;
	
	  ;% heli_day_4_P.StreamCall1_Active
	  section.data(2).logicalSrcIdx = 130;
	  section.data(2).dtTransOffset = 1;
	
	  ;% heli_day_4_P.HILWriteAnalog_Active
	  section.data(3).logicalSrcIdx = 131;
	  section.data(3).dtTransOffset = 2;
	
	  ;% heli_day_4_P.GameController_AutoCenter
	  section.data(4).logicalSrcIdx = 132;
	  section.data(4).dtTransOffset = 3;
	
	  ;% heli_day_4_P.GameController_Enabled
	  section.data(5).logicalSrcIdx = 133;
	  section.data(5).dtTransOffset = 4;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(10) = section;
      clear section
      
    
      ;%
      ;% Non-auto Data (parameter)
      ;%
    

    ;%
    ;% Add final counts to struct.
    ;%
    paramMap.nTotData = nTotData;
    


  ;%**************************
  ;% Create Block Output Map *
  ;%**************************
      
    nTotData      = 0; %add to this count as we go
    nTotSects     = 2;
    sectIdxOffset = 0;
    
    ;%
    ;% Define dummy sections & preallocate arrays
    ;%
    dumSection.nData = -1;  
    dumSection.data  = [];
    
    dumData.logicalSrcIdx = -1;
    dumData.dtTransOffset = -1;
    
    ;%
    ;% Init/prealloc sigMap
    ;%
    sigMap.nSections           = nTotSects;
    sigMap.sectIdxOffset       = sectIdxOffset;
      sigMap.sections(nTotSects) = dumSection; %prealloc
    sigMap.nTotData            = -1;
    
    ;%
    ;% Auto data (heli_day_4_B)
    ;%
      section.nData     = 25;
      section.data(25)  = dumData; %prealloc
      
	  ;% heli_day_4_B.RateTransitionx
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% heli_day_4_B.Joystick_gain_x
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 1;
	
	  ;% heli_day_4_B.RateTransitiony
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 2;
	
	  ;% heli_day_4_B.Joystick_gain_y
	  section.data(4).logicalSrcIdx = 3;
	  section.data(4).dtTransOffset = 3;
	
	  ;% heli_day_4_B.Switch
	  section.data(5).logicalSrcIdx = 4;
	  section.data(5).dtTransOffset = 4;
	
	  ;% heli_day_4_B.PitchCounttorad
	  section.data(6).logicalSrcIdx = 5;
	  section.data(6).dtTransOffset = 14;
	
	  ;% heli_day_4_B.ElevationCounttorad
	  section.data(7).logicalSrcIdx = 6;
	  section.data(7).dtTransOffset = 15;
	
	  ;% heli_day_4_B.Sum
	  section.data(8).logicalSrcIdx = 7;
	  section.data(8).dtTransOffset = 16;
	
	  ;% heli_day_4_B.TravelCounttorad
	  section.data(9).logicalSrcIdx = 8;
	  section.data(9).dtTransOffset = 17;
	
	  ;% heli_day_4_B.PitchTransferFcn
	  section.data(10).logicalSrcIdx = 9;
	  section.data(10).dtTransOffset = 18;
	
	  ;% heli_day_4_B.ElevationTransferFcn
	  section.data(11).logicalSrcIdx = 10;
	  section.data(11).dtTransOffset = 19;
	
	  ;% heli_day_4_B.TravelTransferFcn
	  section.data(12).logicalSrcIdx = 11;
	  section.data(12).dtTransOffset = 20;
	
	  ;% heli_day_4_B.Fr
	  section.data(13).logicalSrcIdx = 12;
	  section.data(13).dtTransOffset = 21;
	
	  ;% heli_day_4_B.Constant2
	  section.data(14).logicalSrcIdx = 13;
	  section.data(14).dtTransOffset = 23;
	
	  ;% heli_day_4_B.Constant1
	  section.data(15).logicalSrcIdx = 14;
	  section.data(15).dtTransOffset = 33;
	
	  ;% heli_day_4_B.FrontmotorSaturation
	  section.data(16).logicalSrcIdx = 15;
	  section.data(16).dtTransOffset = 34;
	
	  ;% heli_day_4_B.BackmotorSaturation
	  section.data(17).logicalSrcIdx = 16;
	  section.data(17).dtTransOffset = 35;
	
	  ;% heli_day_4_B.GameController_o4
	  section.data(18).logicalSrcIdx = 17;
	  section.data(18).dtTransOffset = 36;
	
	  ;% heli_day_4_B.GameController_o5
	  section.data(19).logicalSrcIdx = 18;
	  section.data(19).dtTransOffset = 37;
	
	  ;% heli_day_4_B.Sum2
	  section.data(20).logicalSrcIdx = 19;
	  section.data(20).dtTransOffset = 38;
	
	  ;% heli_day_4_B.Sum3
	  section.data(21).logicalSrcIdx = 20;
	  section.data(21).dtTransOffset = 39;
	
	  ;% heli_day_4_B.x_apriori
	  section.data(22).logicalSrcIdx = 21;
	  section.data(22).dtTransOffset = 40;
	
	  ;% heli_day_4_B.P_apriori
	  section.data(23).logicalSrcIdx = 22;
	  section.data(23).dtTransOffset = 45;
	
	  ;% heli_day_4_B.x_posteriori
	  section.data(24).logicalSrcIdx = 23;
	  section.data(24).dtTransOffset = 70;
	
	  ;% heli_day_4_B.P_posteriori
	  section.data(25).logicalSrcIdx = 24;
	  section.data(25).dtTransOffset = 75;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(1) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% heli_day_4_B.StreamCall1_o2
	  section.data(1).logicalSrcIdx = 25;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(2) = section;
      clear section
      
    
      ;%
      ;% Non-auto Data (signal)
      ;%
    

    ;%
    ;% Add final counts to struct.
    ;%
    sigMap.nTotData = nTotData;
    


  ;%*******************
  ;% Create DWork Map *
  ;%*******************
      
    nTotData      = 0; %add to this count as we go
    nTotSects     = 10;
    sectIdxOffset = 2;
    
    ;%
    ;% Define dummy sections & preallocate arrays
    ;%
    dumSection.nData = -1;  
    dumSection.data  = [];
    
    dumData.logicalSrcIdx = -1;
    dumData.dtTransOffset = -1;
    
    ;%
    ;% Init/prealloc dworkMap
    ;%
    dworkMap.nSections           = nTotSects;
    dworkMap.sectIdxOffset       = sectIdxOffset;
      dworkMap.sections(nTotSects) = dumSection; %prealloc
    dworkMap.nTotData            = -1;
    
    ;%
    ;% Auto data (heli_day_4_DW)
    ;%
      section.nData     = 14;
      section.data(14)  = dumData; %prealloc
      
	  ;% heli_day_4_DW.UnitDelay_DSTATE
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% heli_day_4_DW.UnitDelay1_DSTATE
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 5;
	
	  ;% heli_day_4_DW.HILInitialize_AIMinimums
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 30;
	
	  ;% heli_day_4_DW.HILInitialize_AIMaximums
	  section.data(4).logicalSrcIdx = 3;
	  section.data(4).dtTransOffset = 38;
	
	  ;% heli_day_4_DW.HILInitialize_AOMinimums
	  section.data(5).logicalSrcIdx = 4;
	  section.data(5).dtTransOffset = 46;
	
	  ;% heli_day_4_DW.HILInitialize_AOMaximums
	  section.data(6).logicalSrcIdx = 5;
	  section.data(6).dtTransOffset = 54;
	
	  ;% heli_day_4_DW.HILInitialize_AOVoltages
	  section.data(7).logicalSrcIdx = 6;
	  section.data(7).dtTransOffset = 62;
	
	  ;% heli_day_4_DW.HILInitialize_FilterFrequency
	  section.data(8).logicalSrcIdx = 7;
	  section.data(8).dtTransOffset = 70;
	
	  ;% heli_day_4_DW.HILInitialize_POSortedFreqs
	  section.data(9).logicalSrcIdx = 8;
	  section.data(9).dtTransOffset = 78;
	
	  ;% heli_day_4_DW.HILInitialize_POValues
	  section.data(10).logicalSrcIdx = 9;
	  section.data(10).dtTransOffset = 86;
	
	  ;% heli_day_4_DW.RateTransitionx_Buffer0
	  section.data(11).logicalSrcIdx = 10;
	  section.data(11).dtTransOffset = 94;
	
	  ;% heli_day_4_DW.RateTransitiony_Buffer0
	  section.data(12).logicalSrcIdx = 11;
	  section.data(12).dtTransOffset = 95;
	
	  ;% heli_day_4_DW.Memory_PreviousInput
	  section.data(13).logicalSrcIdx = 12;
	  section.data(13).dtTransOffset = 96;
	
	  ;% heli_day_4_DW.HILWriteAnalog_Buffer
	  section.data(14).logicalSrcIdx = 13;
	  section.data(14).dtTransOffset = 106;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(1) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% heli_day_4_DW.StreamCall1_Stream
	  section.data(1).logicalSrcIdx = 14;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(2) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% heli_day_4_DW.GameController_Controller
	  section.data(1).logicalSrcIdx = 15;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(3) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% heli_day_4_DW.HILInitialize_Card
	  section.data(1).logicalSrcIdx = 16;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(4) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% heli_day_4_DW.HILReadEncoderTimebase_Task
	  section.data(1).logicalSrcIdx = 17;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(5) = section;
      clear section
      
      section.nData     = 15;
      section.data(15)  = dumData; %prealloc
      
	  ;% heli_day_4_DW.ToFile_PWORK.FilePtr
	  section.data(1).logicalSrcIdx = 18;
	  section.data(1).dtTransOffset = 0;
	
	  ;% heli_day_4_DW.ToFile1_PWORK.FilePtr
	  section.data(2).logicalSrcIdx = 19;
	  section.data(2).dtTransOffset = 1;
	
	  ;% heli_day_4_DW.ToFile2_PWORK.FilePtr
	  section.data(3).logicalSrcIdx = 20;
	  section.data(3).dtTransOffset = 2;
	
	  ;% heli_day_4_DW.ToFile21_PWORK.FilePtr
	  section.data(4).logicalSrcIdx = 21;
	  section.data(4).dtTransOffset = 3;
	
	  ;% heli_day_4_DW.ToFile3_PWORK.FilePtr
	  section.data(5).logicalSrcIdx = 22;
	  section.data(5).dtTransOffset = 4;
	
	  ;% heli_day_4_DW.ElevationScoperads_PWORK.LoggedData
	  section.data(6).logicalSrcIdx = 23;
	  section.data(6).dtTransOffset = 5;
	
	  ;% heli_day_4_DW.ElevationScoperad_PWORK.LoggedData
	  section.data(7).logicalSrcIdx = 24;
	  section.data(7).dtTransOffset = 6;
	
	  ;% heli_day_4_DW.PitchScoperad_PWORK.LoggedData
	  section.data(8).logicalSrcIdx = 25;
	  section.data(8).dtTransOffset = 7;
	
	  ;% heli_day_4_DW.PtichrateScoperads_PWORK.LoggedData
	  section.data(9).logicalSrcIdx = 26;
	  section.data(9).dtTransOffset = 8;
	
	  ;% heli_day_4_DW.TravelrateScoperads_PWORK.LoggedData
	  section.data(10).logicalSrcIdx = 27;
	  section.data(10).dtTransOffset = 9;
	
	  ;% heli_day_4_DW.TravelScoperad_PWORK.LoggedData
	  section.data(11).logicalSrcIdx = 28;
	  section.data(11).dtTransOffset = 10;
	
	  ;% heli_day_4_DW.HILWriteAnalog_PWORK
	  section.data(12).logicalSrcIdx = 29;
	  section.data(12).dtTransOffset = 11;
	
	  ;% heli_day_4_DW.Connected_PWORK.LoggedData
	  section.data(13).logicalSrcIdx = 30;
	  section.data(13).dtTransOffset = 12;
	
	  ;% heli_day_4_DW.XScope_PWORK.LoggedData
	  section.data(14).logicalSrcIdx = 31;
	  section.data(14).dtTransOffset = 13;
	
	  ;% heli_day_4_DW.YScope_PWORK.LoggedData
	  section.data(15).logicalSrcIdx = 32;
	  section.data(15).dtTransOffset = 14;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(6) = section;
      clear section
      
      section.nData     = 7;
      section.data(7)  = dumData; %prealloc
      
	  ;% heli_day_4_DW.HILInitialize_ClockModes
	  section.data(1).logicalSrcIdx = 33;
	  section.data(1).dtTransOffset = 0;
	
	  ;% heli_day_4_DW.HILInitialize_QuadratureModes
	  section.data(2).logicalSrcIdx = 34;
	  section.data(2).dtTransOffset = 3;
	
	  ;% heli_day_4_DW.HILInitialize_InitialEICounts
	  section.data(3).logicalSrcIdx = 35;
	  section.data(3).dtTransOffset = 11;
	
	  ;% heli_day_4_DW.HILInitialize_POModeValues
	  section.data(4).logicalSrcIdx = 36;
	  section.data(4).dtTransOffset = 19;
	
	  ;% heli_day_4_DW.HILInitialize_POAlignValues
	  section.data(5).logicalSrcIdx = 37;
	  section.data(5).dtTransOffset = 27;
	
	  ;% heli_day_4_DW.HILInitialize_POPolarityVals
	  section.data(6).logicalSrcIdx = 38;
	  section.data(6).dtTransOffset = 35;
	
	  ;% heli_day_4_DW.HILReadEncoderTimebase_Buffer
	  section.data(7).logicalSrcIdx = 39;
	  section.data(7).dtTransOffset = 43;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(7) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% heli_day_4_DW.HILInitialize_POSortedChans
	  section.data(1).logicalSrcIdx = 40;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(8) = section;
      clear section
      
      section.nData     = 5;
      section.data(5)  = dumData; %prealloc
      
	  ;% heli_day_4_DW.ToFile_IWORK.Count
	  section.data(1).logicalSrcIdx = 41;
	  section.data(1).dtTransOffset = 0;
	
	  ;% heli_day_4_DW.ToFile1_IWORK.Count
	  section.data(2).logicalSrcIdx = 42;
	  section.data(2).dtTransOffset = 1;
	
	  ;% heli_day_4_DW.ToFile2_IWORK.Count
	  section.data(3).logicalSrcIdx = 43;
	  section.data(3).dtTransOffset = 2;
	
	  ;% heli_day_4_DW.ToFile21_IWORK.Count
	  section.data(4).logicalSrcIdx = 44;
	  section.data(4).dtTransOffset = 3;
	
	  ;% heli_day_4_DW.ToFile3_IWORK.Count
	  section.data(5).logicalSrcIdx = 45;
	  section.data(5).dtTransOffset = 4;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(9) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% heli_day_4_DW.StreamCall1_State
	  section.data(1).logicalSrcIdx = 46;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(10) = section;
      clear section
      
    
      ;%
      ;% Non-auto Data (dwork)
      ;%
    

    ;%
    ;% Add final counts to struct.
    ;%
    dworkMap.nTotData = nTotData;
    


  ;%
  ;% Add individual maps to base struct.
  ;%

  targMap.paramMap  = paramMap;    
  targMap.signalMap = sigMap;
  targMap.dworkMap  = dworkMap;
  
  ;%
  ;% Add checksums to base struct.
  ;%


  targMap.checksum0 = 3140911447;
  targMap.checksum1 = 1709894602;
  targMap.checksum2 = 639635876;
  targMap.checksum3 = 2044718008;

