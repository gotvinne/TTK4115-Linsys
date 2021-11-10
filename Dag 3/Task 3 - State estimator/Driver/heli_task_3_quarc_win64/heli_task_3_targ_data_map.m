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
    ;% Auto data (heli_task_3_P)
    ;%
      section.nData     = 26;
      section.data(26)  = dumData; %prealloc
      
	  ;% heli_task_3_P.A
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% heli_task_3_P.B
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 25;
	
	  ;% heli_task_3_P.C
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 35;
	
	  ;% heli_task_3_P.F
	  section.data(4).logicalSrcIdx = 3;
	  section.data(4).dtTransOffset = 60;
	
	  ;% heli_task_3_P.Joystick_gain_x
	  section.data(5).logicalSrcIdx = 4;
	  section.data(5).dtTransOffset = 64;
	
	  ;% heli_task_3_P.Joystick_gain_y
	  section.data(6).logicalSrcIdx = 5;
	  section.data(6).dtTransOffset = 65;
	
	  ;% heli_task_3_P.K
	  section.data(7).logicalSrcIdx = 6;
	  section.data(7).dtTransOffset = 66;
	
	  ;% heli_task_3_P.L
	  section.data(8).logicalSrcIdx = 7;
	  section.data(8).dtTransOffset = 76;
	
	  ;% heli_task_3_P.Vs_0
	  section.data(9).logicalSrcIdx = 8;
	  section.data(9).dtTransOffset = 101;
	
	  ;% heli_task_3_P.HILInitialize_analog_input_maxi
	  section.data(10).logicalSrcIdx = 9;
	  section.data(10).dtTransOffset = 102;
	
	  ;% heli_task_3_P.HILInitialize_analog_input_mini
	  section.data(11).logicalSrcIdx = 10;
	  section.data(11).dtTransOffset = 103;
	
	  ;% heli_task_3_P.HILInitialize_analog_output_max
	  section.data(12).logicalSrcIdx = 11;
	  section.data(12).dtTransOffset = 104;
	
	  ;% heli_task_3_P.HILInitialize_analog_output_min
	  section.data(13).logicalSrcIdx = 12;
	  section.data(13).dtTransOffset = 105;
	
	  ;% heli_task_3_P.HILInitialize_final_analog_outp
	  section.data(14).logicalSrcIdx = 13;
	  section.data(14).dtTransOffset = 106;
	
	  ;% heli_task_3_P.HILInitialize_final_pwm_outputs
	  section.data(15).logicalSrcIdx = 14;
	  section.data(15).dtTransOffset = 107;
	
	  ;% heli_task_3_P.HILInitialize_initial_analog_ou
	  section.data(16).logicalSrcIdx = 15;
	  section.data(16).dtTransOffset = 108;
	
	  ;% heli_task_3_P.HILInitialize_initial_pwm_outpu
	  section.data(17).logicalSrcIdx = 16;
	  section.data(17).dtTransOffset = 109;
	
	  ;% heli_task_3_P.HILInitialize_pwm_frequency
	  section.data(18).logicalSrcIdx = 17;
	  section.data(18).dtTransOffset = 110;
	
	  ;% heli_task_3_P.HILInitialize_pwm_leading_deadb
	  section.data(19).logicalSrcIdx = 18;
	  section.data(19).dtTransOffset = 111;
	
	  ;% heli_task_3_P.HILInitialize_pwm_trailing_dead
	  section.data(20).logicalSrcIdx = 19;
	  section.data(20).dtTransOffset = 112;
	
	  ;% heli_task_3_P.HILInitialize_set_other_outputs
	  section.data(21).logicalSrcIdx = 20;
	  section.data(21).dtTransOffset = 113;
	
	  ;% heli_task_3_P.HILInitialize_set_other_outpu_m
	  section.data(22).logicalSrcIdx = 21;
	  section.data(22).dtTransOffset = 114;
	
	  ;% heli_task_3_P.HILInitialize_set_other_outpu_k
	  section.data(23).logicalSrcIdx = 22;
	  section.data(23).dtTransOffset = 115;
	
	  ;% heli_task_3_P.HILInitialize_set_other_outpu_j
	  section.data(24).logicalSrcIdx = 23;
	  section.data(24).dtTransOffset = 116;
	
	  ;% heli_task_3_P.HILInitialize_watchdog_analog_o
	  section.data(25).logicalSrcIdx = 24;
	  section.data(25).dtTransOffset = 117;
	
	  ;% heli_task_3_P.HILInitialize_watchdog_pwm_outp
	  section.data(26).logicalSrcIdx = 25;
	  section.data(26).dtTransOffset = 118;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(1) = section;
      clear section
      
      section.nData     = 8;
      section.data(8)  = dumData; %prealloc
      
	  ;% heli_task_3_P.HILReadEncoderTimebase_clock
	  section.data(1).logicalSrcIdx = 26;
	  section.data(1).dtTransOffset = 0;
	
	  ;% heli_task_3_P.HILInitialize_hardware_clocks
	  section.data(2).logicalSrcIdx = 27;
	  section.data(2).dtTransOffset = 1;
	
	  ;% heli_task_3_P.HILInitialize_initial_encoder_c
	  section.data(3).logicalSrcIdx = 28;
	  section.data(3).dtTransOffset = 4;
	
	  ;% heli_task_3_P.HILInitialize_pwm_alignment
	  section.data(4).logicalSrcIdx = 29;
	  section.data(4).dtTransOffset = 5;
	
	  ;% heli_task_3_P.HILInitialize_pwm_configuration
	  section.data(5).logicalSrcIdx = 30;
	  section.data(5).dtTransOffset = 6;
	
	  ;% heli_task_3_P.HILInitialize_pwm_modes
	  section.data(6).logicalSrcIdx = 31;
	  section.data(6).dtTransOffset = 7;
	
	  ;% heli_task_3_P.HILInitialize_pwm_polarity
	  section.data(7).logicalSrcIdx = 32;
	  section.data(7).dtTransOffset = 8;
	
	  ;% heli_task_3_P.HILInitialize_watchdog_digital_
	  section.data(8).logicalSrcIdx = 33;
	  section.data(8).dtTransOffset = 9;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(2) = section;
      clear section
      
      section.nData     = 8;
      section.data(8)  = dumData; %prealloc
      
	  ;% heli_task_3_P.HILInitialize_analog_input_chan
	  section.data(1).logicalSrcIdx = 34;
	  section.data(1).dtTransOffset = 0;
	
	  ;% heli_task_3_P.HILInitialize_analog_output_cha
	  section.data(2).logicalSrcIdx = 35;
	  section.data(2).dtTransOffset = 8;
	
	  ;% heli_task_3_P.HILReadEncoderTimebase_channels
	  section.data(3).logicalSrcIdx = 36;
	  section.data(3).dtTransOffset = 16;
	
	  ;% heli_task_3_P.HILWriteAnalog_channels
	  section.data(4).logicalSrcIdx = 37;
	  section.data(4).dtTransOffset = 19;
	
	  ;% heli_task_3_P.HILInitialize_encoder_channels
	  section.data(5).logicalSrcIdx = 38;
	  section.data(5).dtTransOffset = 21;
	
	  ;% heli_task_3_P.HILInitialize_pwm_channels
	  section.data(6).logicalSrcIdx = 39;
	  section.data(6).dtTransOffset = 29;
	
	  ;% heli_task_3_P.HILInitialize_quadrature
	  section.data(7).logicalSrcIdx = 40;
	  section.data(7).dtTransOffset = 37;
	
	  ;% heli_task_3_P.HILReadEncoderTimebase_samples_
	  section.data(8).logicalSrcIdx = 41;
	  section.data(8).dtTransOffset = 38;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(3) = section;
      clear section
      
      section.nData     = 35;
      section.data(35)  = dumData; %prealloc
      
	  ;% heli_task_3_P.HILInitialize_active
	  section.data(1).logicalSrcIdx = 42;
	  section.data(1).dtTransOffset = 0;
	
	  ;% heli_task_3_P.HILInitialize_final_digital_out
	  section.data(2).logicalSrcIdx = 43;
	  section.data(2).dtTransOffset = 1;
	
	  ;% heli_task_3_P.HILInitialize_initial_digital_o
	  section.data(3).logicalSrcIdx = 44;
	  section.data(3).dtTransOffset = 2;
	
	  ;% heli_task_3_P.HILInitialize_set_analog_input_
	  section.data(4).logicalSrcIdx = 45;
	  section.data(4).dtTransOffset = 3;
	
	  ;% heli_task_3_P.HILInitialize_set_analog_inpu_m
	  section.data(5).logicalSrcIdx = 46;
	  section.data(5).dtTransOffset = 4;
	
	  ;% heli_task_3_P.HILInitialize_set_analog_output
	  section.data(6).logicalSrcIdx = 47;
	  section.data(6).dtTransOffset = 5;
	
	  ;% heli_task_3_P.HILInitialize_set_analog_outp_b
	  section.data(7).logicalSrcIdx = 48;
	  section.data(7).dtTransOffset = 6;
	
	  ;% heli_task_3_P.HILInitialize_set_analog_outp_e
	  section.data(8).logicalSrcIdx = 49;
	  section.data(8).dtTransOffset = 7;
	
	  ;% heli_task_3_P.HILInitialize_set_analog_outp_j
	  section.data(9).logicalSrcIdx = 50;
	  section.data(9).dtTransOffset = 8;
	
	  ;% heli_task_3_P.HILInitialize_set_analog_outp_c
	  section.data(10).logicalSrcIdx = 51;
	  section.data(10).dtTransOffset = 9;
	
	  ;% heli_task_3_P.HILInitialize_set_analog_out_ex
	  section.data(11).logicalSrcIdx = 52;
	  section.data(11).dtTransOffset = 10;
	
	  ;% heli_task_3_P.HILInitialize_set_analog_outp_p
	  section.data(12).logicalSrcIdx = 53;
	  section.data(12).dtTransOffset = 11;
	
	  ;% heli_task_3_P.HILInitialize_set_clock_frequen
	  section.data(13).logicalSrcIdx = 54;
	  section.data(13).dtTransOffset = 12;
	
	  ;% heli_task_3_P.HILInitialize_set_clock_frequ_e
	  section.data(14).logicalSrcIdx = 55;
	  section.data(14).dtTransOffset = 13;
	
	  ;% heli_task_3_P.HILInitialize_set_clock_params_
	  section.data(15).logicalSrcIdx = 56;
	  section.data(15).dtTransOffset = 14;
	
	  ;% heli_task_3_P.HILInitialize_set_clock_param_c
	  section.data(16).logicalSrcIdx = 57;
	  section.data(16).dtTransOffset = 15;
	
	  ;% heli_task_3_P.HILInitialize_set_digital_outpu
	  section.data(17).logicalSrcIdx = 58;
	  section.data(17).dtTransOffset = 16;
	
	  ;% heli_task_3_P.HILInitialize_set_digital_out_b
	  section.data(18).logicalSrcIdx = 59;
	  section.data(18).dtTransOffset = 17;
	
	  ;% heli_task_3_P.HILInitialize_set_digital_out_c
	  section.data(19).logicalSrcIdx = 60;
	  section.data(19).dtTransOffset = 18;
	
	  ;% heli_task_3_P.HILInitialize_set_digital_ou_c1
	  section.data(20).logicalSrcIdx = 61;
	  section.data(20).dtTransOffset = 19;
	
	  ;% heli_task_3_P.HILInitialize_set_digital_out_a
	  section.data(21).logicalSrcIdx = 62;
	  section.data(21).dtTransOffset = 20;
	
	  ;% heli_task_3_P.HILInitialize_set_digital_out_j
	  section.data(22).logicalSrcIdx = 63;
	  section.data(22).dtTransOffset = 21;
	
	  ;% heli_task_3_P.HILInitialize_set_digital_out_m
	  section.data(23).logicalSrcIdx = 64;
	  section.data(23).dtTransOffset = 22;
	
	  ;% heli_task_3_P.HILInitialize_set_encoder_count
	  section.data(24).logicalSrcIdx = 65;
	  section.data(24).dtTransOffset = 23;
	
	  ;% heli_task_3_P.HILInitialize_set_encoder_cou_k
	  section.data(25).logicalSrcIdx = 66;
	  section.data(25).dtTransOffset = 24;
	
	  ;% heli_task_3_P.HILInitialize_set_encoder_param
	  section.data(26).logicalSrcIdx = 67;
	  section.data(26).dtTransOffset = 25;
	
	  ;% heli_task_3_P.HILInitialize_set_encoder_par_m
	  section.data(27).logicalSrcIdx = 68;
	  section.data(27).dtTransOffset = 26;
	
	  ;% heli_task_3_P.HILInitialize_set_other_outpu_l
	  section.data(28).logicalSrcIdx = 69;
	  section.data(28).dtTransOffset = 27;
	
	  ;% heli_task_3_P.HILInitialize_set_pwm_outputs_a
	  section.data(29).logicalSrcIdx = 70;
	  section.data(29).dtTransOffset = 28;
	
	  ;% heli_task_3_P.HILInitialize_set_pwm_outputs_g
	  section.data(30).logicalSrcIdx = 71;
	  section.data(30).dtTransOffset = 29;
	
	  ;% heli_task_3_P.HILInitialize_set_pwm_outputs_p
	  section.data(31).logicalSrcIdx = 72;
	  section.data(31).dtTransOffset = 30;
	
	  ;% heli_task_3_P.HILInitialize_set_pwm_output_ap
	  section.data(32).logicalSrcIdx = 73;
	  section.data(32).dtTransOffset = 31;
	
	  ;% heli_task_3_P.HILInitialize_set_pwm_outputs_o
	  section.data(33).logicalSrcIdx = 74;
	  section.data(33).dtTransOffset = 32;
	
	  ;% heli_task_3_P.HILInitialize_set_pwm_params_at
	  section.data(34).logicalSrcIdx = 75;
	  section.data(34).dtTransOffset = 33;
	
	  ;% heli_task_3_P.HILInitialize_set_pwm_params__f
	  section.data(35).logicalSrcIdx = 76;
	  section.data(35).dtTransOffset = 34;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(4) = section;
      clear section
      
      section.nData     = 43;
      section.data(43)  = dumData; %prealloc
      
	  ;% heli_task_3_P.Constant3_Value
	  section.data(1).logicalSrcIdx = 77;
	  section.data(1).dtTransOffset = 0;
	
	  ;% heli_task_3_P.Constant2_Value
	  section.data(2).logicalSrcIdx = 78;
	  section.data(2).dtTransOffset = 1;
	
	  ;% heli_task_3_P.Constant1_Value
	  section.data(3).logicalSrcIdx = 79;
	  section.data(3).dtTransOffset = 2;
	
	  ;% heli_task_3_P.Constant_Value
	  section.data(4).logicalSrcIdx = 80;
	  section.data(4).dtTransOffset = 3;
	
	  ;% heli_task_3_P.RateTransitionx_X0
	  section.data(5).logicalSrcIdx = 81;
	  section.data(5).dtTransOffset = 4;
	
	  ;% heli_task_3_P.DeadZonex_Start
	  section.data(6).logicalSrcIdx = 82;
	  section.data(6).dtTransOffset = 5;
	
	  ;% heli_task_3_P.DeadZonex_End
	  section.data(7).logicalSrcIdx = 83;
	  section.data(7).dtTransOffset = 6;
	
	  ;% heli_task_3_P.Gainx_Gain
	  section.data(8).logicalSrcIdx = 84;
	  section.data(8).dtTransOffset = 7;
	
	  ;% heli_task_3_P.RateTransitiony_X0
	  section.data(9).logicalSrcIdx = 85;
	  section.data(9).dtTransOffset = 8;
	
	  ;% heli_task_3_P.DeadZoney_Start
	  section.data(10).logicalSrcIdx = 86;
	  section.data(10).dtTransOffset = 9;
	
	  ;% heli_task_3_P.DeadZoney_End
	  section.data(11).logicalSrcIdx = 87;
	  section.data(11).dtTransOffset = 10;
	
	  ;% heli_task_3_P.Gainy_Gain
	  section.data(12).logicalSrcIdx = 88;
	  section.data(12).dtTransOffset = 11;
	
	  ;% heli_task_3_P.TravelCounttorad_Gain
	  section.data(13).logicalSrcIdx = 89;
	  section.data(13).dtTransOffset = 12;
	
	  ;% heli_task_3_P.TravelTransferFcn_A
	  section.data(14).logicalSrcIdx = 90;
	  section.data(14).dtTransOffset = 13;
	
	  ;% heli_task_3_P.TravelTransferFcn_C
	  section.data(15).logicalSrcIdx = 91;
	  section.data(15).dtTransOffset = 14;
	
	  ;% heli_task_3_P.TravelTransferFcn_D
	  section.data(16).logicalSrcIdx = 92;
	  section.data(16).dtTransOffset = 15;
	
	  ;% heli_task_3_P.PitchCounttorad_Gain
	  section.data(17).logicalSrcIdx = 93;
	  section.data(17).dtTransOffset = 16;
	
	  ;% heli_task_3_P.ElevationCounttorad_Gain
	  section.data(18).logicalSrcIdx = 94;
	  section.data(18).dtTransOffset = 17;
	
	  ;% heli_task_3_P.Constant_Value_j
	  section.data(19).logicalSrcIdx = 95;
	  section.data(19).dtTransOffset = 18;
	
	  ;% heli_task_3_P.Constant_Value_k
	  section.data(20).logicalSrcIdx = 96;
	  section.data(20).dtTransOffset = 19;
	
	  ;% heli_task_3_P.Constant1_Value_g
	  section.data(21).logicalSrcIdx = 97;
	  section.data(21).dtTransOffset = 20;
	
	  ;% heli_task_3_P.Memory_X0
	  section.data(22).logicalSrcIdx = 98;
	  section.data(22).dtTransOffset = 21;
	
	  ;% heli_task_3_P.Gain2_Gain
	  section.data(23).logicalSrcIdx = 99;
	  section.data(23).dtTransOffset = 31;
	
	  ;% heli_task_3_P.Gain_Gain
	  section.data(24).logicalSrcIdx = 100;
	  section.data(24).dtTransOffset = 40;
	
	  ;% heli_task_3_P.Gain1_Gain
	  section.data(25).logicalSrcIdx = 101;
	  section.data(25).dtTransOffset = 41;
	
	  ;% heli_task_3_P.Integrator_IC
	  section.data(26).logicalSrcIdx = 102;
	  section.data(26).dtTransOffset = 42;
	
	  ;% heli_task_3_P.Gain_Gain_e
	  section.data(27).logicalSrcIdx = 103;
	  section.data(27).dtTransOffset = 43;
	
	  ;% heli_task_3_P.Gain1_Gain_d
	  section.data(28).logicalSrcIdx = 104;
	  section.data(28).dtTransOffset = 44;
	
	  ;% heli_task_3_P.Gain1_Gain_h
	  section.data(29).logicalSrcIdx = 105;
	  section.data(29).dtTransOffset = 45;
	
	  ;% heli_task_3_P.PitchTransferFcn_A
	  section.data(30).logicalSrcIdx = 106;
	  section.data(30).dtTransOffset = 54;
	
	  ;% heli_task_3_P.PitchTransferFcn_C
	  section.data(31).logicalSrcIdx = 107;
	  section.data(31).dtTransOffset = 55;
	
	  ;% heli_task_3_P.PitchTransferFcn_D
	  section.data(32).logicalSrcIdx = 108;
	  section.data(32).dtTransOffset = 56;
	
	  ;% heli_task_3_P.ElevationTransferFcn_A
	  section.data(33).logicalSrcIdx = 109;
	  section.data(33).dtTransOffset = 57;
	
	  ;% heli_task_3_P.ElevationTransferFcn_C
	  section.data(34).logicalSrcIdx = 110;
	  section.data(34).dtTransOffset = 58;
	
	  ;% heli_task_3_P.ElevationTransferFcn_D
	  section.data(35).logicalSrcIdx = 111;
	  section.data(35).dtTransOffset = 59;
	
	  ;% heli_task_3_P.Integrator_IC_j
	  section.data(36).logicalSrcIdx = 112;
	  section.data(36).dtTransOffset = 60;
	
	  ;% heli_task_3_P.Integrator1_IC
	  section.data(37).logicalSrcIdx = 113;
	  section.data(37).dtTransOffset = 61;
	
	  ;% heli_task_3_P.Backgain_Gain
	  section.data(38).logicalSrcIdx = 114;
	  section.data(38).dtTransOffset = 62;
	
	  ;% heli_task_3_P.Frontgain_Gain
	  section.data(39).logicalSrcIdx = 115;
	  section.data(39).dtTransOffset = 63;
	
	  ;% heli_task_3_P.FrontmotorSaturation_UpperSat
	  section.data(40).logicalSrcIdx = 116;
	  section.data(40).dtTransOffset = 64;
	
	  ;% heli_task_3_P.FrontmotorSaturation_LowerSat
	  section.data(41).logicalSrcIdx = 117;
	  section.data(41).dtTransOffset = 65;
	
	  ;% heli_task_3_P.BackmotorSaturation_UpperSat
	  section.data(42).logicalSrcIdx = 118;
	  section.data(42).dtTransOffset = 66;
	
	  ;% heli_task_3_P.BackmotorSaturation_LowerSat
	  section.data(43).logicalSrcIdx = 119;
	  section.data(43).dtTransOffset = 67;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(5) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% heli_task_3_P.StreamCall1_SendBufferSize
	  section.data(1).logicalSrcIdx = 120;
	  section.data(1).dtTransOffset = 0;
	
	  ;% heli_task_3_P.StreamCall1_ReceiveBufferSize
	  section.data(2).logicalSrcIdx = 121;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(6) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% heli_task_3_P.StreamFormattedWrite_MaxUnits
	  section.data(1).logicalSrcIdx = 122;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(7) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% heli_task_3_P.GameController_BufferSize
	  section.data(1).logicalSrcIdx = 123;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(8) = section;
      clear section
      
      section.nData     = 5;
      section.data(5)  = dumData; %prealloc
      
	  ;% heli_task_3_P.StringConstant_Value
	  section.data(1).logicalSrcIdx = 124;
	  section.data(1).dtTransOffset = 0;
	
	  ;% heli_task_3_P.StreamCall1_URI
	  section.data(2).logicalSrcIdx = 125;
	  section.data(2).dtTransOffset = 255;
	
	  ;% heli_task_3_P.StreamCall1_Endian
	  section.data(3).logicalSrcIdx = 126;
	  section.data(3).dtTransOffset = 256;
	
	  ;% heli_task_3_P.Feedbackselector_CurrentSetting
	  section.data(4).logicalSrcIdx = 127;
	  section.data(4).dtTransOffset = 257;
	
	  ;% heli_task_3_P.GameController_ControllerNumber
	  section.data(5).logicalSrcIdx = 128;
	  section.data(5).dtTransOffset = 258;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(9) = section;
      clear section
      
      section.nData     = 5;
      section.data(5)  = dumData; %prealloc
      
	  ;% heli_task_3_P.HILReadEncoderTimebase_Active
	  section.data(1).logicalSrcIdx = 129;
	  section.data(1).dtTransOffset = 0;
	
	  ;% heli_task_3_P.StreamCall1_Active
	  section.data(2).logicalSrcIdx = 130;
	  section.data(2).dtTransOffset = 1;
	
	  ;% heli_task_3_P.HILWriteAnalog_Active
	  section.data(3).logicalSrcIdx = 131;
	  section.data(3).dtTransOffset = 2;
	
	  ;% heli_task_3_P.GameController_AutoCenter
	  section.data(4).logicalSrcIdx = 132;
	  section.data(4).dtTransOffset = 3;
	
	  ;% heli_task_3_P.GameController_Enabled
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
    ;% Auto data (heli_task_3_B)
    ;%
      section.nData     = 30;
      section.data(30)  = dumData; %prealloc
      
	  ;% heli_task_3_B.RateTransitionx
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% heli_task_3_B.Joystick_gain_x
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 1;
	
	  ;% heli_task_3_B.RateTransitiony
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 2;
	
	  ;% heli_task_3_B.Joystick_gain_y
	  section.data(4).logicalSrcIdx = 3;
	  section.data(4).dtTransOffset = 3;
	
	  ;% heli_task_3_B.TravelCounttorad
	  section.data(5).logicalSrcIdx = 4;
	  section.data(5).dtTransOffset = 4;
	
	  ;% heli_task_3_B.TravelTransferFcn
	  section.data(6).logicalSrcIdx = 5;
	  section.data(6).dtTransOffset = 5;
	
	  ;% heli_task_3_B.PitchCounttorad
	  section.data(7).logicalSrcIdx = 6;
	  section.data(7).dtTransOffset = 6;
	
	  ;% heli_task_3_B.ElevationCounttorad
	  section.data(8).logicalSrcIdx = 7;
	  section.data(8).dtTransOffset = 7;
	
	  ;% heli_task_3_B.Sum
	  section.data(9).logicalSrcIdx = 8;
	  section.data(9).dtTransOffset = 8;
	
	  ;% heli_task_3_B.Switch
	  section.data(10).logicalSrcIdx = 9;
	  section.data(10).dtTransOffset = 9;
	
	  ;% heli_task_3_B.Switch3
	  section.data(11).logicalSrcIdx = 10;
	  section.data(11).dtTransOffset = 19;
	
	  ;% heli_task_3_B.Switch1
	  section.data(12).logicalSrcIdx = 11;
	  section.data(12).dtTransOffset = 20;
	
	  ;% heli_task_3_B.Integrator
	  section.data(13).logicalSrcIdx = 12;
	  section.data(13).dtTransOffset = 21;
	
	  ;% heli_task_3_B.PitchTransferFcn
	  section.data(14).logicalSrcIdx = 13;
	  section.data(14).dtTransOffset = 26;
	
	  ;% heli_task_3_B.ElevationTransferFcn
	  section.data(15).logicalSrcIdx = 14;
	  section.data(15).dtTransOffset = 27;
	
	  ;% heli_task_3_B.Fr
	  section.data(16).logicalSrcIdx = 15;
	  section.data(16).dtTransOffset = 28;
	
	  ;% heli_task_3_B.Constant2
	  section.data(17).logicalSrcIdx = 16;
	  section.data(17).dtTransOffset = 30;
	
	  ;% heli_task_3_B.Constant1
	  section.data(18).logicalSrcIdx = 17;
	  section.data(18).dtTransOffset = 40;
	
	  ;% heli_task_3_B.FrontmotorSaturation
	  section.data(19).logicalSrcIdx = 18;
	  section.data(19).dtTransOffset = 41;
	
	  ;% heli_task_3_B.BackmotorSaturation
	  section.data(20).logicalSrcIdx = 19;
	  section.data(20).dtTransOffset = 42;
	
	  ;% heli_task_3_B.GameController_o4
	  section.data(21).logicalSrcIdx = 20;
	  section.data(21).dtTransOffset = 43;
	
	  ;% heli_task_3_B.GameController_o5
	  section.data(22).logicalSrcIdx = 21;
	  section.data(22).dtTransOffset = 44;
	
	  ;% heli_task_3_B.Sum2
	  section.data(23).logicalSrcIdx = 22;
	  section.data(23).dtTransOffset = 45;
	
	  ;% heli_task_3_B.Sum3
	  section.data(24).logicalSrcIdx = 23;
	  section.data(24).dtTransOffset = 46;
	
	  ;% heli_task_3_B.A
	  section.data(25).logicalSrcIdx = 24;
	  section.data(25).dtTransOffset = 47;
	
	  ;% heli_task_3_B.C
	  section.data(26).logicalSrcIdx = 25;
	  section.data(26).dtTransOffset = 72;
	
	  ;% heli_task_3_B.Constant
	  section.data(27).logicalSrcIdx = 26;
	  section.data(27).dtTransOffset = 97;
	
	  ;% heli_task_3_B.Constant1_g
	  section.data(28).logicalSrcIdx = 27;
	  section.data(28).dtTransOffset = 107;
	
	  ;% heli_task_3_B.Sum_l
	  section.data(29).logicalSrcIdx = 28;
	  section.data(29).dtTransOffset = 132;
	
	  ;% heli_task_3_B.euler_rates
	  section.data(30).logicalSrcIdx = 29;
	  section.data(30).dtTransOffset = 137;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(1) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% heli_task_3_B.StreamCall1_o2
	  section.data(1).logicalSrcIdx = 30;
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
    ;% Auto data (heli_task_3_DW)
    ;%
      section.nData     = 12;
      section.data(12)  = dumData; %prealloc
      
	  ;% heli_task_3_DW.HILInitialize_AIMinimums
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% heli_task_3_DW.HILInitialize_AIMaximums
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 8;
	
	  ;% heli_task_3_DW.HILInitialize_AOMinimums
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 16;
	
	  ;% heli_task_3_DW.HILInitialize_AOMaximums
	  section.data(4).logicalSrcIdx = 3;
	  section.data(4).dtTransOffset = 24;
	
	  ;% heli_task_3_DW.HILInitialize_AOVoltages
	  section.data(5).logicalSrcIdx = 4;
	  section.data(5).dtTransOffset = 32;
	
	  ;% heli_task_3_DW.HILInitialize_FilterFrequency
	  section.data(6).logicalSrcIdx = 5;
	  section.data(6).dtTransOffset = 40;
	
	  ;% heli_task_3_DW.HILInitialize_POSortedFreqs
	  section.data(7).logicalSrcIdx = 6;
	  section.data(7).dtTransOffset = 48;
	
	  ;% heli_task_3_DW.HILInitialize_POValues
	  section.data(8).logicalSrcIdx = 7;
	  section.data(8).dtTransOffset = 56;
	
	  ;% heli_task_3_DW.RateTransitionx_Buffer0
	  section.data(9).logicalSrcIdx = 8;
	  section.data(9).dtTransOffset = 64;
	
	  ;% heli_task_3_DW.RateTransitiony_Buffer0
	  section.data(10).logicalSrcIdx = 9;
	  section.data(10).dtTransOffset = 65;
	
	  ;% heli_task_3_DW.Memory_PreviousInput
	  section.data(11).logicalSrcIdx = 10;
	  section.data(11).dtTransOffset = 66;
	
	  ;% heli_task_3_DW.HILWriteAnalog_Buffer
	  section.data(12).logicalSrcIdx = 11;
	  section.data(12).dtTransOffset = 76;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(1) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% heli_task_3_DW.StreamCall1_Stream
	  section.data(1).logicalSrcIdx = 12;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(2) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% heli_task_3_DW.GameController_Controller
	  section.data(1).logicalSrcIdx = 13;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(3) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% heli_task_3_DW.HILInitialize_Card
	  section.data(1).logicalSrcIdx = 14;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(4) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% heli_task_3_DW.HILReadEncoderTimebase_Task
	  section.data(1).logicalSrcIdx = 15;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(5) = section;
      clear section
      
      section.nData     = 31;
      section.data(31)  = dumData; %prealloc
      
	  ;% heli_task_3_DW.ToFile_PWORK.FilePtr
	  section.data(1).logicalSrcIdx = 16;
	  section.data(1).dtTransOffset = 0;
	
	  ;% heli_task_3_DW.ToFile1_PWORK.FilePtr
	  section.data(2).logicalSrcIdx = 17;
	  section.data(2).dtTransOffset = 1;
	
	  ;% heli_task_3_DW.ToFile10_PWORK.FilePtr
	  section.data(3).logicalSrcIdx = 18;
	  section.data(3).dtTransOffset = 2;
	
	  ;% heli_task_3_DW.ToFile11_PWORK.FilePtr
	  section.data(4).logicalSrcIdx = 19;
	  section.data(4).dtTransOffset = 3;
	
	  ;% heli_task_3_DW.ToFile12_PWORK.FilePtr
	  section.data(5).logicalSrcIdx = 20;
	  section.data(5).dtTransOffset = 4;
	
	  ;% heli_task_3_DW.ToFile13_PWORK.FilePtr
	  section.data(6).logicalSrcIdx = 21;
	  section.data(6).dtTransOffset = 5;
	
	  ;% heli_task_3_DW.ToFile14_PWORK.FilePtr
	  section.data(7).logicalSrcIdx = 22;
	  section.data(7).dtTransOffset = 6;
	
	  ;% heli_task_3_DW.ToFile15_PWORK.FilePtr
	  section.data(8).logicalSrcIdx = 23;
	  section.data(8).dtTransOffset = 7;
	
	  ;% heli_task_3_DW.ToFile16_PWORK.FilePtr
	  section.data(9).logicalSrcIdx = 24;
	  section.data(9).dtTransOffset = 8;
	
	  ;% heli_task_3_DW.ToFile17_PWORK.FilePtr
	  section.data(10).logicalSrcIdx = 25;
	  section.data(10).dtTransOffset = 9;
	
	  ;% heli_task_3_DW.ToFile18_PWORK.FilePtr
	  section.data(11).logicalSrcIdx = 26;
	  section.data(11).dtTransOffset = 10;
	
	  ;% heli_task_3_DW.ToFile19_PWORK.FilePtr
	  section.data(12).logicalSrcIdx = 27;
	  section.data(12).dtTransOffset = 11;
	
	  ;% heli_task_3_DW.ToFile2_PWORK.FilePtr
	  section.data(13).logicalSrcIdx = 28;
	  section.data(13).dtTransOffset = 12;
	
	  ;% heli_task_3_DW.ToFile20_PWORK.FilePtr
	  section.data(14).logicalSrcIdx = 29;
	  section.data(14).dtTransOffset = 13;
	
	  ;% heli_task_3_DW.ToFile3_PWORK.FilePtr
	  section.data(15).logicalSrcIdx = 30;
	  section.data(15).dtTransOffset = 14;
	
	  ;% heli_task_3_DW.ToFile4_PWORK.FilePtr
	  section.data(16).logicalSrcIdx = 31;
	  section.data(16).dtTransOffset = 15;
	
	  ;% heli_task_3_DW.ToFile5_PWORK.FilePtr
	  section.data(17).logicalSrcIdx = 32;
	  section.data(17).dtTransOffset = 16;
	
	  ;% heli_task_3_DW.ToFile6_PWORK.FilePtr
	  section.data(18).logicalSrcIdx = 33;
	  section.data(18).dtTransOffset = 17;
	
	  ;% heli_task_3_DW.ToFile7_PWORK.FilePtr
	  section.data(19).logicalSrcIdx = 34;
	  section.data(19).dtTransOffset = 18;
	
	  ;% heli_task_3_DW.ToFile8_PWORK.FilePtr
	  section.data(20).logicalSrcIdx = 35;
	  section.data(20).dtTransOffset = 19;
	
	  ;% heli_task_3_DW.ToFile9_PWORK.FilePtr
	  section.data(21).logicalSrcIdx = 36;
	  section.data(21).dtTransOffset = 20;
	
	  ;% heli_task_3_DW.ElevationScoperads_PWORK.LoggedData
	  section.data(22).logicalSrcIdx = 37;
	  section.data(22).dtTransOffset = 21;
	
	  ;% heli_task_3_DW.ElevationScoperad_PWORK.LoggedData
	  section.data(23).logicalSrcIdx = 38;
	  section.data(23).dtTransOffset = 22;
	
	  ;% heli_task_3_DW.PitchScoperad_PWORK.LoggedData
	  section.data(24).logicalSrcIdx = 39;
	  section.data(24).dtTransOffset = 23;
	
	  ;% heli_task_3_DW.PtichrateScoperads_PWORK.LoggedData
	  section.data(25).logicalSrcIdx = 40;
	  section.data(25).dtTransOffset = 24;
	
	  ;% heli_task_3_DW.TravelrateScoperads_PWORK.LoggedData
	  section.data(26).logicalSrcIdx = 41;
	  section.data(26).dtTransOffset = 25;
	
	  ;% heli_task_3_DW.TravelScoperad_PWORK.LoggedData
	  section.data(27).logicalSrcIdx = 42;
	  section.data(27).dtTransOffset = 26;
	
	  ;% heli_task_3_DW.HILWriteAnalog_PWORK
	  section.data(28).logicalSrcIdx = 43;
	  section.data(28).dtTransOffset = 27;
	
	  ;% heli_task_3_DW.Connected_PWORK.LoggedData
	  section.data(29).logicalSrcIdx = 44;
	  section.data(29).dtTransOffset = 28;
	
	  ;% heli_task_3_DW.XScope_PWORK.LoggedData
	  section.data(30).logicalSrcIdx = 45;
	  section.data(30).dtTransOffset = 29;
	
	  ;% heli_task_3_DW.YScope_PWORK.LoggedData
	  section.data(31).logicalSrcIdx = 46;
	  section.data(31).dtTransOffset = 30;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(6) = section;
      clear section
      
      section.nData     = 7;
      section.data(7)  = dumData; %prealloc
      
	  ;% heli_task_3_DW.HILInitialize_ClockModes
	  section.data(1).logicalSrcIdx = 47;
	  section.data(1).dtTransOffset = 0;
	
	  ;% heli_task_3_DW.HILInitialize_QuadratureModes
	  section.data(2).logicalSrcIdx = 48;
	  section.data(2).dtTransOffset = 3;
	
	  ;% heli_task_3_DW.HILInitialize_InitialEICounts
	  section.data(3).logicalSrcIdx = 49;
	  section.data(3).dtTransOffset = 11;
	
	  ;% heli_task_3_DW.HILInitialize_POModeValues
	  section.data(4).logicalSrcIdx = 50;
	  section.data(4).dtTransOffset = 19;
	
	  ;% heli_task_3_DW.HILInitialize_POAlignValues
	  section.data(5).logicalSrcIdx = 51;
	  section.data(5).dtTransOffset = 27;
	
	  ;% heli_task_3_DW.HILInitialize_POPolarityVals
	  section.data(6).logicalSrcIdx = 52;
	  section.data(6).dtTransOffset = 35;
	
	  ;% heli_task_3_DW.HILReadEncoderTimebase_Buffer
	  section.data(7).logicalSrcIdx = 53;
	  section.data(7).dtTransOffset = 43;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(7) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% heli_task_3_DW.HILInitialize_POSortedChans
	  section.data(1).logicalSrcIdx = 54;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(8) = section;
      clear section
      
      section.nData     = 21;
      section.data(21)  = dumData; %prealloc
      
	  ;% heli_task_3_DW.ToFile_IWORK.Count
	  section.data(1).logicalSrcIdx = 55;
	  section.data(1).dtTransOffset = 0;
	
	  ;% heli_task_3_DW.ToFile1_IWORK.Count
	  section.data(2).logicalSrcIdx = 56;
	  section.data(2).dtTransOffset = 1;
	
	  ;% heli_task_3_DW.ToFile10_IWORK.Count
	  section.data(3).logicalSrcIdx = 57;
	  section.data(3).dtTransOffset = 2;
	
	  ;% heli_task_3_DW.ToFile11_IWORK.Count
	  section.data(4).logicalSrcIdx = 58;
	  section.data(4).dtTransOffset = 3;
	
	  ;% heli_task_3_DW.ToFile12_IWORK.Count
	  section.data(5).logicalSrcIdx = 59;
	  section.data(5).dtTransOffset = 4;
	
	  ;% heli_task_3_DW.ToFile13_IWORK.Count
	  section.data(6).logicalSrcIdx = 60;
	  section.data(6).dtTransOffset = 5;
	
	  ;% heli_task_3_DW.ToFile14_IWORK.Count
	  section.data(7).logicalSrcIdx = 61;
	  section.data(7).dtTransOffset = 6;
	
	  ;% heli_task_3_DW.ToFile15_IWORK.Count
	  section.data(8).logicalSrcIdx = 62;
	  section.data(8).dtTransOffset = 7;
	
	  ;% heli_task_3_DW.ToFile16_IWORK.Count
	  section.data(9).logicalSrcIdx = 63;
	  section.data(9).dtTransOffset = 8;
	
	  ;% heli_task_3_DW.ToFile17_IWORK.Count
	  section.data(10).logicalSrcIdx = 64;
	  section.data(10).dtTransOffset = 9;
	
	  ;% heli_task_3_DW.ToFile18_IWORK.Count
	  section.data(11).logicalSrcIdx = 65;
	  section.data(11).dtTransOffset = 10;
	
	  ;% heli_task_3_DW.ToFile19_IWORK.Count
	  section.data(12).logicalSrcIdx = 66;
	  section.data(12).dtTransOffset = 11;
	
	  ;% heli_task_3_DW.ToFile2_IWORK.Count
	  section.data(13).logicalSrcIdx = 67;
	  section.data(13).dtTransOffset = 12;
	
	  ;% heli_task_3_DW.ToFile20_IWORK.Count
	  section.data(14).logicalSrcIdx = 68;
	  section.data(14).dtTransOffset = 13;
	
	  ;% heli_task_3_DW.ToFile3_IWORK.Count
	  section.data(15).logicalSrcIdx = 69;
	  section.data(15).dtTransOffset = 14;
	
	  ;% heli_task_3_DW.ToFile4_IWORK.Count
	  section.data(16).logicalSrcIdx = 70;
	  section.data(16).dtTransOffset = 15;
	
	  ;% heli_task_3_DW.ToFile5_IWORK.Count
	  section.data(17).logicalSrcIdx = 71;
	  section.data(17).dtTransOffset = 16;
	
	  ;% heli_task_3_DW.ToFile6_IWORK.Count
	  section.data(18).logicalSrcIdx = 72;
	  section.data(18).dtTransOffset = 17;
	
	  ;% heli_task_3_DW.ToFile7_IWORK.Count
	  section.data(19).logicalSrcIdx = 73;
	  section.data(19).dtTransOffset = 18;
	
	  ;% heli_task_3_DW.ToFile8_IWORK.Count
	  section.data(20).logicalSrcIdx = 74;
	  section.data(20).dtTransOffset = 19;
	
	  ;% heli_task_3_DW.ToFile9_IWORK.Count
	  section.data(21).logicalSrcIdx = 75;
	  section.data(21).dtTransOffset = 20;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(9) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% heli_task_3_DW.StreamCall1_State
	  section.data(1).logicalSrcIdx = 76;
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


  targMap.checksum0 = 1544080890;
  targMap.checksum1 = 3376831619;
  targMap.checksum2 = 698551320;
  targMap.checksum3 = 338396920;

