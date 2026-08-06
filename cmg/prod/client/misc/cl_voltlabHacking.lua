-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1
SHX0_1 = DrawSprite
SHX1_1 = DrawRect
SHX2_1 = false
SHX3_1 = false
SHX4_1 = nil
SHX5_1 = 1
SHX6_1 = 0
SHX7_1 = {}
SHX8_1 = 0
SHX9_1 = {}
SHX10_1 = 0
SHX11_1 = {}
SHX12_1 = "0"
SHX13_1 = "0"
SHX14_1 = "0"
SHX11_1[1] = SHX12_1
SHX11_1[2] = SHX13_1
SHX11_1[3] = SHX14_1
SHX12_1 = {}
SHX13_1 = {}
SHX14_1 = 6
SHX15_1 = nil
SHX16_1 = {}
SHX17_1 = {}
SHX18_1 = 250
SHX19_1 = 172
SHX20_1 = 54
SHX17_1[1] = SHX18_1
SHX17_1[2] = SHX19_1
SHX17_1[3] = SHX20_1
SHX18_1 = {}
SHX19_1 = 247
SHX20_1 = 49
SHX21_1 = 49
SHX18_1[1] = SHX19_1
SHX18_1[2] = SHX20_1
SHX18_1[3] = SHX21_1
SHX19_1 = {}
SHX20_1 = 58
SHX21_1 = 53
SHX22_1 = 212
SHX19_1[1] = SHX20_1
SHX19_1[2] = SHX21_1
SHX19_1[3] = SHX22_1
SHX16_1[1] = SHX17_1
SHX16_1[2] = SHX18_1
SHX16_1[3] = SHX19_1
SHX17_1 = {}
SHX18_1 = {}
SHX19_1 = 191
SHX20_1 = 191
SHX21_1 = 191
SHX18_1[1] = SHX19_1
SHX18_1[2] = SHX20_1
SHX18_1[3] = SHX21_1
SHX19_1 = {}
SHX20_1 = 88
SHX21_1 = 204
SHX22_1 = 102
SHX19_1[1] = SHX20_1
SHX19_1[2] = SHX21_1
SHX19_1[3] = SHX22_1
SHX17_1[1] = SHX18_1
SHX17_1[2] = SHX19_1
SHX18_1 = 255
SHX19_1 = {}
SHX20_1 = 255
SHX21_1 = 255
SHX22_1 = 255
SHX19_1[1] = SHX20_1
SHX19_1[2] = SHX21_1
SHX19_1[3] = SHX22_1
SHX20_1 = {}
SHX21_1 = "Icons__x1"
SHX22_1 = "Icons__x2"
SHX23_1 = "Icons__x3"
SHX24_1 = "Icons__x5"
SHX25_1 = "Icons__x10"
SHX26_1 = "Icons__x15"
SHX20_1[1] = SHX21_1
SHX20_1[2] = SHX22_1
SHX20_1[3] = SHX23_1
SHX20_1[4] = SHX24_1
SHX20_1[5] = SHX25_1
SHX20_1[6] = SHX26_1
SHX21_1 = {}
SHX22_1 = 1
SHX23_1 = 10
SHX24_1 = 50
SHX21_1[1] = SHX22_1
SHX21_1[2] = SHX23_1
SHX21_1[3] = SHX24_1
SHX22_1 = {}
SHX23_1 = {}
SHX24_1 = 0.383
SHX25_1 = 0.815
SHX26_1 = 0.0145
SHX27_1 = 0.05
SHX23_1[1] = SHX24_1
SHX23_1[2] = SHX25_1
SHX23_1[3] = SHX26_1
SHX23_1[4] = SHX27_1
SHX24_1 = {}
SHX25_1 = 0.373
SHX26_1 = 0.815
SHX27_1 = 0.0145
SHX28_1 = 0.05
SHX24_1[1] = SHX25_1
SHX24_1[2] = SHX26_1
SHX24_1[3] = SHX27_1
SHX24_1[4] = SHX28_1
SHX25_1 = {}
SHX26_1 = 0.363
SHX27_1 = 0.815
SHX28_1 = 0.0145
SHX29_1 = 0.05
SHX25_1[1] = SHX26_1
SHX25_1[2] = SHX27_1
SHX25_1[3] = SHX28_1
SHX25_1[4] = SHX29_1
SHX26_1 = {}
SHX27_1 = 0.353
SHX28_1 = 0.815
SHX29_1 = 0.0145
SHX30_1 = 0.05
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX27_1 = {}
SHX28_1 = 0.343
SHX29_1 = 0.815
SHX30_1 = 0.0145
SHX31_1 = 0.05
SHX27_1[1] = SHX28_1
SHX27_1[2] = SHX29_1
SHX27_1[3] = SHX30_1
SHX27_1[4] = SHX31_1
SHX28_1 = {}
SHX29_1 = 0.333
SHX30_1 = 0.815
SHX31_1 = 0.0145
SHX32_1 = 0.05
SHX28_1[1] = SHX29_1
SHX28_1[2] = SHX30_1
SHX28_1[3] = SHX31_1
SHX28_1[4] = SHX32_1
SHX22_1[1] = SHX23_1
SHX22_1[2] = SHX24_1
SHX22_1[3] = SHX25_1
SHX22_1[4] = SHX26_1
SHX22_1[5] = SHX27_1
SHX22_1[6] = SHX28_1
SHX23_1 = {}
SHX24_1 = {}
SHX25_1 = {}
SHX26_1 = {}
SHX27_1 = 0.324
SHX28_1 = 0.307
SHX29_1 = 0.006
SHX30_1 = 0.01
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.square1 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.658
SHX28_1 = 0.307
SHX29_1 = 0.006
SHX30_1 = 0.01
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.square2 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.49
SHX28_1 = 0.307
SHX29_1 = 0.33
SHX30_1 = 0.004
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.line = SHX26_1
SHX24_1["1"] = SHX25_1
SHX25_1 = {}
SHX26_1 = {}
SHX27_1 = 0.324
SHX28_1 = 0.307
SHX29_1 = 0.006
SHX30_1 = 0.01
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.square1 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.49
SHX28_1 = 0.307
SHX29_1 = 0.007
SHX30_1 = 0.0135
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.sqaure2 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.49
SHX28_1 = 0.501
SHX29_1 = 0.007
SHX30_1 = 0.0128
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.square3 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.657
SHX28_1 = 0.501
SHX29_1 = 0.007
SHX30_1 = 0.0128
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.square4 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.407
SHX28_1 = 0.307
SHX29_1 = 0.16
SHX30_1 = 0.004
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.line1 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.4905
SHX28_1 = 0.404
SHX29_1 = 0.002
SHX30_1 = 0.18
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.line2 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.574
SHX28_1 = 0.501
SHX29_1 = 0.16
SHX30_1 = 0.004
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.line3 = SHX26_1
SHX24_1["2"] = SHX25_1
SHX25_1 = {}
SHX26_1 = {}
SHX27_1 = 0.324
SHX28_1 = 0.307
SHX29_1 = 0.007
SHX30_1 = 0.0128
SHX31_1 = 250
SHX32_1 = 172
SHX33_1 = 54
SHX34_1 = 255
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX26_1[5] = SHX31_1
SHX26_1[6] = SHX32_1
SHX26_1[7] = SHX33_1
SHX26_1[8] = SHX34_1
SHX25_1.square1 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.397
SHX28_1 = 0.307
SHX29_1 = 0.007
SHX30_1 = 0.0128
SHX31_1 = 250
SHX32_1 = 172
SHX33_1 = 54
SHX34_1 = 255
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX26_1[5] = SHX31_1
SHX26_1[6] = SHX32_1
SHX26_1[7] = SHX33_1
SHX26_1[8] = SHX34_1
SHX25_1.square2 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.397
SHX28_1 = 0.502
SHX29_1 = 0.007
SHX30_1 = 0.0128
SHX31_1 = 250
SHX32_1 = 172
SHX33_1 = 54
SHX34_1 = 255
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX26_1[5] = SHX31_1
SHX26_1[6] = SHX32_1
SHX26_1[7] = SHX33_1
SHX26_1[8] = SHX34_1
SHX25_1.square3 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.49
SHX28_1 = 0.502
SHX29_1 = 0.007
SHX30_1 = 0.0128
SHX31_1 = 250
SHX32_1 = 172
SHX33_1 = 54
SHX34_1 = 255
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX26_1[5] = SHX31_1
SHX26_1[6] = SHX32_1
SHX26_1[7] = SHX33_1
SHX26_1[8] = SHX34_1
SHX25_1.square4 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.49
SHX28_1 = 0.694
SHX29_1 = 0.007
SHX30_1 = 0.0128
SHX31_1 = 250
SHX32_1 = 172
SHX33_1 = 54
SHX34_1 = 255
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX26_1[5] = SHX31_1
SHX26_1[6] = SHX32_1
SHX26_1[7] = SHX33_1
SHX26_1[8] = SHX34_1
SHX25_1.square5 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.657
SHX28_1 = 0.694
SHX29_1 = 0.007
SHX30_1 = 0.0128
SHX31_1 = 250
SHX32_1 = 172
SHX33_1 = 54
SHX34_1 = 255
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX26_1[5] = SHX31_1
SHX26_1[6] = SHX32_1
SHX26_1[7] = SHX33_1
SHX26_1[8] = SHX34_1
SHX25_1.square6 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.36
SHX28_1 = 0.307
SHX29_1 = 0.07
SHX30_1 = 0.004
SHX31_1 = 250
SHX32_1 = 172
SHX33_1 = 54
SHX34_1 = 255
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX26_1[5] = SHX31_1
SHX26_1[6] = SHX32_1
SHX26_1[7] = SHX33_1
SHX26_1[8] = SHX34_1
SHX25_1.line1 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.3965
SHX28_1 = 0.404
SHX29_1 = 0.002
SHX30_1 = 0.182
SHX31_1 = 250
SHX32_1 = 172
SHX33_1 = 54
SHX34_1 = 255
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX26_1[5] = SHX31_1
SHX26_1[6] = SHX32_1
SHX26_1[7] = SHX33_1
SHX26_1[8] = SHX34_1
SHX25_1.line2 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.445
SHX28_1 = 0.502
SHX29_1 = 0.09
SHX30_1 = 0.004
SHX31_1 = 250
SHX32_1 = 172
SHX33_1 = 54
SHX34_1 = 255
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX26_1[5] = SHX31_1
SHX26_1[6] = SHX32_1
SHX26_1[7] = SHX33_1
SHX26_1[8] = SHX34_1
SHX25_1.line3 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.4905
SHX28_1 = 0.598
SHX29_1 = 0.002
SHX30_1 = 0.182
SHX31_1 = 250
SHX32_1 = 172
SHX33_1 = 54
SHX34_1 = 255
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX26_1[5] = SHX31_1
SHX26_1[6] = SHX32_1
SHX26_1[7] = SHX33_1
SHX26_1[8] = SHX34_1
SHX25_1.line4 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.574
SHX28_1 = 0.694
SHX29_1 = 0.16
SHX30_1 = 0.004
SHX31_1 = 250
SHX32_1 = 172
SHX33_1 = 54
SHX34_1 = 255
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX26_1[5] = SHX31_1
SHX26_1[6] = SHX32_1
SHX26_1[7] = SHX33_1
SHX26_1[8] = SHX34_1
SHX25_1.line5 = SHX26_1
SHX24_1["3"] = SHX25_1
SHX23_1["1"] = SHX24_1
SHX24_1 = {}
SHX25_1 = {}
SHX26_1 = {}
SHX27_1 = 0.324
SHX28_1 = 0.5
SHX29_1 = 0.006
SHX30_1 = 0.01
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.square1 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.46
SHX28_1 = 0.5
SHX29_1 = 0.007
SHX30_1 = 0.01281
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.square2 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.46
SHX28_1 = 0.39
SHX29_1 = 0.007
SHX30_1 = 0.01281
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.square3 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.551
SHX28_1 = 0.39
SHX29_1 = 0.007
SHX30_1 = 0.01281
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.square4 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.551
SHX28_1 = 0.307
SHX29_1 = 0.007
SHX30_1 = 0.01281
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.square5 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.658
SHX28_1 = 0.307
SHX29_1 = 0.006
SHX30_1 = 0.01
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.square6 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.392
SHX28_1 = 0.5
SHX29_1 = 0.129
SHX30_1 = 0.0035
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.line1 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.46
SHX28_1 = 0.444
SHX29_1 = 0.003
SHX30_1 = 0.1
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.line2 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.508
SHX28_1 = 0.39
SHX29_1 = 0.09
SHX30_1 = 0.004
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.line3 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.508
SHX28_1 = 0.39
SHX29_1 = 0.09
SHX30_1 = 0.0025
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.line4 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.605
SHX28_1 = 0.307
SHX29_1 = 0.108
SHX30_1 = 0.004
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.line5 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.551
SHX28_1 = 0.35
SHX29_1 = 0.0025
SHX30_1 = 0.08
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.line6 = SHX26_1
SHX24_1["1"] = SHX25_1
SHX25_1 = {}
SHX26_1 = {}
SHX27_1 = 0.324
SHX28_1 = 0.5
SHX29_1 = 0.006
SHX30_1 = 0.01
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.square1 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.657
SHX28_1 = 0.5
SHX29_1 = 0.006
SHX30_1 = 0.01
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.square2 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.49
SHX28_1 = 0.5
SHX29_1 = 0.33
SHX30_1 = 0.004
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.line1 = SHX26_1
SHX24_1["2"] = SHX25_1
SHX25_1 = {}
SHX26_1 = {}
SHX27_1 = 0.324
SHX28_1 = 0.5
SHX29_1 = 0.006
SHX30_1 = 0.01
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.square1 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.429
SHX28_1 = 0.5
SHX29_1 = 0.007
SHX30_1 = 0.01281
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.square2 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.429
SHX28_1 = 0.694
SHX29_1 = 0.007
SHX30_1 = 0.01281
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.square3 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.657
SHX28_1 = 0.694
SHX29_1 = 0.007
SHX30_1 = 0.01281
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.square4 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.376
SHX28_1 = 0.5
SHX29_1 = 0.1
SHX30_1 = 0.0035
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.line1 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.429
SHX28_1 = 0.6
SHX29_1 = 0.003
SHX30_1 = 0.2
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.line2 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.543
SHX28_1 = 0.694
SHX29_1 = 0.22
SHX30_1 = 0.0035
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.line3 = SHX26_1
SHX24_1["3"] = SHX25_1
SHX23_1["2"] = SHX24_1
SHX24_1 = {}
SHX25_1 = {}
SHX26_1 = {}
SHX27_1 = 0.324
SHX28_1 = 0.694
SHX29_1 = 0.006
SHX30_1 = 0.01
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.square1 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.521
SHX28_1 = 0.694
SHX29_1 = 0.007
SHX30_1 = 0.01281
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.square2 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.521
SHX28_1 = 0.61
SHX29_1 = 0.007
SHX30_1 = 0.01281
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.square3 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.582
SHX28_1 = 0.61
SHX29_1 = 0.007
SHX30_1 = 0.01281
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.square4 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.582
SHX28_1 = 0.3085
SHX29_1 = 0.007
SHX30_1 = 0.01281
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.square5 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.6565
SHX28_1 = 0.307
SHX29_1 = 0.007
SHX30_1 = 0.01281
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.square6 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.421
SHX28_1 = 0.694
SHX29_1 = 0.19
SHX30_1 = 0.0035
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.line1 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.521
SHX28_1 = 0.652
SHX29_1 = 0.00222
SHX30_1 = 0.074
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.line2 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.55
SHX28_1 = 0.61
SHX29_1 = 0.06
SHX30_1 = 0.0035
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.line3 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.582
SHX28_1 = 0.46
SHX29_1 = 0.00222
SHX30_1 = 0.29
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.line4 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.62
SHX28_1 = 0.307
SHX29_1 = 0.07
SHX30_1 = 0.0035
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.line5 = SHX26_1
SHX24_1["1"] = SHX25_1
SHX25_1 = {}
SHX26_1 = {}
SHX27_1 = 0.324
SHX28_1 = 0.694
SHX29_1 = 0.006
SHX30_1 = 0.01
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.sqaure1 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.521
SHX28_1 = 0.694
SHX29_1 = 0.007
SHX30_1 = 0.01281
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.sqaure2 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.521
SHX28_1 = 0.61
SHX29_1 = 0.007
SHX30_1 = 0.01281
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.sqaure3 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.582
SHX28_1 = 0.61
SHX29_1 = 0.007
SHX30_1 = 0.01281
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.sqaure4 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.582
SHX28_1 = 0.5
SHX29_1 = 0.007
SHX30_1 = 0.01281
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.sqaure5 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.6565
SHX28_1 = 0.5
SHX29_1 = 0.007
SHX30_1 = 0.01281
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.sqaure6 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.421
SHX28_1 = 0.694
SHX29_1 = 0.19
SHX30_1 = 0.0035
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.line1 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.521
SHX28_1 = 0.652
SHX29_1 = 0.00222
SHX30_1 = 0.074
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.line2 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.55
SHX28_1 = 0.61
SHX29_1 = 0.06
SHX30_1 = 0.0035
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.line3 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.582
SHX28_1 = 0.55
SHX29_1 = 0.00222
SHX30_1 = 0.11
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.line4 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.62
SHX28_1 = 0.5
SHX29_1 = 0.07
SHX30_1 = 0.0035
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.line5 = SHX26_1
SHX24_1["2"] = SHX25_1
SHX25_1 = {}
SHX26_1 = {}
SHX27_1 = 0.324
SHX28_1 = 0.694
SHX29_1 = 0.006
SHX30_1 = 0.01
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.square1 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.6565
SHX28_1 = 0.694
SHX29_1 = 0.007
SHX30_1 = 0.01281
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.square2 = SHX26_1
SHX26_1 = {}
SHX27_1 = 0.49
SHX28_1 = 0.694
SHX29_1 = 0.33
SHX30_1 = 0.0035
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX25_1.line1 = SHX26_1
SHX24_1["3"] = SHX25_1
SHX23_1["3"] = SHX24_1
function SHX24_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = {}
  SHX2_2 = 1
  SHX3_2 = #SHX0_2
  SHX4_2 = 1
  for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = SHX0_2[SHX5_2]
    SHX1_2[SHX5_2] = SHX6_2
  end
  SHX2_2 = #SHX1_2
  SHX3_2 = 2
  SHX4_2 = -1
  for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = math
    SHX6_2 = SHX6_2.random
    SHX7_2 = SHX5_2
    SHX6_2 = SHX6_2(SHX7_2)
    SHX7_2 = SHX1_2[SHX6_2]
    SHX8_2 = SHX1_2[SHX5_2]
    SHX1_2[SHX6_2] = SHX8_2
    SHX1_2[SHX5_2] = SHX7_2
  end
  return SHX1_2
end
function SHX25_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = 0
  SHX2_2 = pairs
  SHX3_2 = SHX0_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX1_2 = SHX1_2 + 1
  end
  return SHX1_2
end
function SHX26_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = PlaySoundFrontend
  SHX3_2 = -1
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  SHX6_2 = true
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
end
function SHX27_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = 0
  SHX8_1 = SHX0_2
  SHX0_2 = 1
  SHX1_2 = 3
  SHX2_2 = 1
  for SHX3_2 = SHX0_2, SHX1_2, SHX2_2 do
    SHX4_2 = SHX7_1
    SHX5_2 = math
    SHX5_2 = SHX5_2.random
    SHX6_2 = 1
    SHX7_2 = 8
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
    SHX4_2[SHX3_2] = SHX5_2
  end
  SHX0_2 = 1
  SHX1_2 = 3
  SHX2_2 = 1
  for SHX3_2 = SHX0_2, SHX1_2, SHX2_2 do
    SHX4_2 = SHX8_1
    SHX5_2 = SHX7_1
    SHX5_2 = SHX5_2[SHX3_2]
    SHX6_2 = SHX21_1
    SHX6_2 = SHX6_2[SHX3_2]
    SHX5_2 = SHX5_2 * SHX6_2
    SHX4_2 = SHX4_2 + SHX5_2
    SHX8_1 = SHX4_2
  end
end
function SHX28_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  if not SHX0_2 then
    SHX0_2 = SHX10_1
  end
  SHX1_2 = tostring
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = string
  SHX2_2 = SHX2_2.len
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 < 3 then
    SHX2_2 = 1
    SHX3_2 = string
    SHX3_2 = SHX3_2.len
    SHX4_2 = SHX1_2
    SHX3_2 = SHX3_2(SHX4_2)
    SHX4_2 = 3
    SHX3_2 = SHX4_2 - SHX3_2
    SHX4_2 = 1
    for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
      SHX6_2 = "0"
      SHX7_2 = SHX1_2
      SHX6_2 = SHX6_2 .. SHX7_2
      SHX1_2 = SHX6_2
    end
  end
  SHX2_2 = 1
  SHX3_2 = 3
  SHX4_2 = 1
  for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = SHX11_1
    SHX8_2 = SHX1_2
    SHX7_2 = SHX1_2.sub
    SHX9_2 = SHX5_2
    SHX10_2 = SHX5_2
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
    SHX6_2[SHX5_2] = SHX7_2
  end
end
function SHX29_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = tostring
  SHX1_2 = SHX8_1
  SHX0_2 = SHX0_2(SHX1_2)
  SHX1_2 = string
  SHX1_2 = SHX1_2.len
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 < 3 then
    SHX1_2 = 1
    SHX2_2 = string
    SHX2_2 = SHX2_2.len
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    SHX3_2 = 3
    SHX2_2 = SHX3_2 - SHX2_2
    SHX3_2 = 1
    for SHX4_2 = SHX1_2, SHX2_2, SHX3_2 do
      SHX5_2 = "0"
      SHX6_2 = SHX0_2
      SHX5_2 = SHX5_2 .. SHX6_2
      SHX0_2 = SHX5_2
    end
  end
  SHX1_2 = 1
  SHX2_2 = 3
  SHX3_2 = 1
  for SHX4_2 = SHX1_2, SHX2_2, SHX3_2 do
    SHX5_2 = SHX9_1
    SHX7_2 = SHX0_2
    SHX6_2 = SHX0_2.sub
    SHX8_2 = SHX4_2
    SHX9_2 = SHX4_2
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
    SHX5_2[SHX4_2] = SHX6_2
  end
end
function SHX30_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX8_2 = SHX1_1
  SHX9_2 = SHX0_2
  SHX10_2 = SHX1_2
  SHX11_2 = SHX2_2
  SHX12_2 = SHX3_2
  SHX13_2 = SHX4_2
  SHX14_2 = SHX5_2
  SHX15_2 = SHX6_2
  SHX16_2 = SHX7_2
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
end
function SHX31_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2
  SHX11_2 = SHX0_1
  SHX12_2 = SHX0_2
  SHX13_2 = SHX1_2
  SHX14_2 = SHX2_2
  SHX15_2 = SHX3_2
  SHX16_2 = SHX4_2
  SHX17_2 = SHX5_2
  SHX18_2 = SHX6_2
  SHX19_2 = SHX7_2
  SHX20_2 = SHX8_2
  SHX21_2 = SHX9_2
  SHX22_2 = SHX10_2
  SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
end
function SHX32_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = BeginTextCommandScaleformString
  SHX2_2 = "STRING"
  SHX1_2(SHX2_2)
  SHX1_2 = AddTextComponentSubstringKeyboardDisplay
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = EndTextCommandScaleformString
  SHX1_2()
end
ButtonMessage = SHX32_1
function SHX32_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = _ENV
  SHX2_2 = "ScaleformMovieMethodAddParamPlayerNameString"
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
Button = SHX32_1
function SHX32_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = RequestScaleformMovie
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  while true do
    SHX2_2 = HasScaleformMovieLoaded
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      break
    end
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
  SHX2_2 = BeginScaleformMovieMethod
  SHX3_2 = SHX1_2
  SHX4_2 = "CLEAR_ALL"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = EndScaleformMovieMethod
  SHX2_2()
  SHX2_2 = BeginScaleformMovieMethod
  SHX3_2 = SHX1_2
  SHX4_2 = "SET_CLEAR_SPACE"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = ScaleformMovieMethodAddParamInt
  SHX3_2 = 200
  SHX2_2(SHX3_2)
  SHX2_2 = EndScaleformMovieMethod
  SHX2_2()
  SHX2_2 = BeginScaleformMovieMethod
  SHX3_2 = SHX1_2
  SHX4_2 = "SET_DATA_SLOT"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = ScaleformMovieMethodAddParamInt
  SHX3_2 = 0
  SHX2_2(SHX3_2)
  SHX2_2 = Button
  SHX3_2 = GetControlInstructionalButton
  SHX4_2 = 2
  SHX5_2 = 194
  SHX6_2 = true
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = ButtonMessage
  SHX3_2 = "Abort Hack"
  SHX2_2(SHX3_2)
  SHX2_2 = EndScaleformMovieMethod
  SHX2_2()
  SHX2_2 = BeginScaleformMovieMethod
  SHX3_2 = SHX1_2
  SHX4_2 = "SET_DATA_SLOT"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = ScaleformMovieMethodAddParamInt
  SHX3_2 = 1
  SHX2_2(SHX3_2)
  SHX2_2 = Button
  SHX3_2 = GetControlInstructionalButton
  SHX4_2 = 2
  SHX5_2 = 191
  SHX6_2 = true
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = ButtonMessage
  SHX3_2 = "Confirm selection (Irrevertible)"
  SHX2_2(SHX3_2)
  SHX2_2 = EndScaleformMovieMethod
  SHX2_2()
  SHX2_2 = BeginScaleformMovieMethod
  SHX3_2 = SHX1_2
  SHX4_2 = "SET_DATA_SLOT"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = ScaleformMovieMethodAddParamInt
  SHX3_2 = 2
  SHX2_2(SHX3_2)
  SHX2_2 = Button
  SHX3_2 = GetControlInstructionalButton
  SHX4_2 = 2
  SHX5_2 = 307
  SHX6_2 = true
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = Button
  SHX3_2 = GetControlInstructionalButton
  SHX4_2 = 2
  SHX5_2 = 308
  SHX6_2 = true
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = Button
  SHX3_2 = GetControlInstructionalButton
  SHX4_2 = 2
  SHX5_2 = 299
  SHX6_2 = true
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = Button
  SHX3_2 = GetControlInstructionalButton
  SHX4_2 = 2
  SHX5_2 = 300
  SHX6_2 = true
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = ButtonMessage
  SHX3_2 = "Select"
  SHX2_2(SHX3_2)
  SHX2_2 = EndScaleformMovieMethod
  SHX2_2()
  SHX2_2 = BeginScaleformMovieMethod
  SHX3_2 = SHX1_2
  SHX4_2 = "DRAW_INSTRUCTIONAL_BUTTONS"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = EndScaleformMovieMethod
  SHX2_2()
  SHX2_2 = BeginScaleformMovieMethod
  SHX3_2 = SHX1_2
  SHX4_2 = "SET_BACKGROUND_COLOUR"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = ScaleformMovieMethodAddParamInt
  SHX3_2 = 0
  SHX2_2(SHX3_2)
  SHX2_2 = ScaleformMovieMethodAddParamInt
  SHX3_2 = 0
  SHX2_2(SHX3_2)
  SHX2_2 = ScaleformMovieMethodAddParamInt
  SHX3_2 = 0
  SHX2_2(SHX3_2)
  SHX2_2 = ScaleformMovieMethodAddParamInt
  SHX3_2 = 80
  SHX2_2(SHX3_2)
  SHX2_2 = EndScaleformMovieMethod
  SHX2_2()
  return SHX1_2
end
SHX33_1 = {}
SHX34_1 = "MPIsland_Voltage"
SHX35_1 = "MPIsland_Voltage_BG"
SHX33_1[1] = SHX34_1
SHX33_1[2] = SHX35_1
SHX34_1 = "DLC_HEI4\\DLC_HEI4_V_MG"
SHX35_1 = "DLC_HEI4\\DLC_HEI4_FH_MG"
function SHX36_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = 1
  SHX1_2 = SHX33_1
  SHX1_2 = #SHX1_2
  SHX2_2 = 1
  for SHX3_2 = SHX0_2, SHX1_2, SHX2_2 do
    SHX4_2 = RequestStreamedTextureDict
    SHX5_2 = SHX33_1
    SHX5_2 = SHX5_2[SHX3_2]
    SHX6_2 = false
    SHX4_2(SHX5_2, SHX6_2)
  end
  SHX0_2 = 1
  SHX1_2 = SHX33_1
  SHX1_2 = #SHX1_2
  SHX2_2 = 1
  for SHX3_2 = SHX0_2, SHX1_2, SHX2_2 do
    while true do
      SHX4_2 = HasStreamedTextureDictLoaded
      SHX5_2 = SHX33_1
      SHX5_2 = SHX5_2[SHX3_2]
      SHX4_2 = SHX4_2(SHX5_2)
      if SHX4_2 then
        break
      end
      SHX4_2 = Wait
      SHX5_2 = 10
      SHX4_2(SHX5_2)
    end
  end
  SHX0_2 = GetGameTimer
  SHX0_2 = SHX0_2()
  while true do
    SHX1_2 = RequestScriptAudioBank
    SHX2_2 = SHX34_1
    SHX3_2 = false
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    if SHX1_2 then
      break
    end
    SHX1_2 = GetGameTimer
    SHX1_2 = SHX1_2()
    SHX1_2 = SHX1_2 - SHX0_2
    SHX2_2 = 1500
    if SHX1_2 > SHX2_2 then
      SHX1_2 = ReleaseNamedScriptAudioBank
      SHX2_2 = SHX34_1
      SHX1_2(SHX2_2)
      break
    end
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
  end
  SHX1_2 = GetGameTimer
  SHX1_2 = SHX1_2()
  while true do
    SHX2_2 = RequestScriptAudioBank
    SHX3_2 = SHX35_1
    SHX4_2 = false
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if SHX2_2 then
      break
    end
    SHX2_2 = GetGameTimer
    SHX2_2 = SHX2_2()
    SHX2_2 = SHX2_2 - SHX1_2
    SHX3_2 = 1500
    if SHX2_2 > SHX3_2 then
      SHX2_2 = ReleaseNamedScriptAudioBank
      SHX3_2 = SHX35_1
      SHX2_2(SHX3_2)
      break
    end
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
end
function SHX37_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = ReleaseNamedScriptAudioBank
  SHX1_2 = SHX35_1
  SHX0_2(SHX1_2)
  SHX0_2 = ReleaseNamedScriptAudioBank
  SHX1_2 = SHX34_1
  SHX0_2(SHX1_2)
  SHX0_2 = 1
  SHX1_2 = SHX33_1
  SHX1_2 = #SHX1_2
  SHX2_2 = 1
  for SHX3_2 = SHX0_2, SHX1_2, SHX2_2 do
    SHX4_2 = SetStreamedTextureDictAsNoLongerNeeded
    SHX5_2 = SHX33_1
    SHX5_2 = SHX5_2[SHX3_2]
    SHX4_2(SHX5_2)
  end
end
SHX38_1 = AddEventHandler
SHX39_1 = "ultra-voltlab"
function SHX40_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX2_2 = SHX36_1
  SHX2_2()
  SHX2_2 = false
  SHX3_1 = SHX2_2
  SHX2_2 = {}
  SHX12_1 = SHX2_2
  SHX2_2 = {}
  SHX13_1 = SHX2_2
  SHX2_2 = 1
  SHX5_1 = SHX2_2
  SHX2_2 = 0
  SHX6_1 = SHX2_2
  SHX2_2 = 6
  SHX14_1 = SHX2_2
  function SHX2_2(...)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = SHX37_1
    SHX0_3()
    SHX0_3 = SHX1_2
    SHX1_3 = ...
    SHX0_3(SHX1_3)
  end
  SHX4_1 = SHX2_2
  SHX2_2 = tonumber
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = SHX2_2
  if SHX2_2 < 10 or SHX2_2 > 60 then
    SHX4_2 = SHX4_1
    SHX5_2 = -1
    SHX6_2 = "Entered time is out of range"
    SHX4_2(SHX5_2, SHX6_2)
    SHX4_2 = true
    SHX3_1 = SHX4_2
    return
  end
  SHX4_2 = SHX27_1
  SHX4_2()
  SHX4_2 = SHX29_1
  SHX4_2()
  while true do
    SHX4_2 = SHX8_1
    SHX5_2 = 999
    if not (SHX4_2 > SHX5_2) then
      SHX4_2 = SHX8_1
      if not (SHX4_2 <= 0) then
        break
      end
    end
    SHX4_2 = Wait
    SHX5_2 = 10
    SHX4_2(SHX5_2)
    SHX4_2 = SHX27_1
    SHX4_2()
  end
  SHX4_2 = SHX24_1
  SHX5_2 = SHX7_1
  SHX4_2 = SHX4_2(SHX5_2)
  SHX7_1 = SHX4_2
  SHX4_2 = SHX24_1
  SHX5_2 = SHX21_1
  SHX4_2 = SHX4_2(SHX5_2)
  SHX21_1 = SHX4_2
  SHX4_2 = SHX24_1
  SHX5_2 = SHX20_1
  SHX4_2 = SHX4_2(SHX5_2)
  SHX20_1 = SHX4_2
  SHX4_2 = 0
  SHX5_2 = 1
  SHX6_2 = 3
  SHX7_2 = 1
  for SHX8_2 = SHX5_2, SHX6_2, SHX7_2 do
    SHX9_2 = SHX21_1
    SHX9_2 = SHX9_2[SHX8_2]
    SHX4_2 = SHX4_2 + SHX9_2
  end
  if SHX4_2 > 111 or SHX4_2 <= 0 then
    SHX5_2 = SHX4_1
    SHX6_2 = -1
    SHX7_2 = "Icon values are out of range in config"
    SHX5_2(SHX6_2, SHX7_2)
    SHX5_2 = true
    SHX3_1 = SHX5_2
    return
  end
  SHX5_2 = SHX29_1
  SHX5_2()
  SHX5_2 = true
  SHX2_1 = SHX5_2
  SHX5_2 = print
  SHX6_2 = "Creating first Voltlab hacking thread"
  SHX5_2(SHX6_2)
  SHX5_2 = CreateThread
  function SHX6_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3
    SHX0_3 = Wait
    SHX1_3 = 100
    SHX0_3(SHX1_3)
    SHX0_3 = SendNUIMessage
    SHX1_3 = {}
    SHX1_3.type = "intro"
    SHX0_3(SHX1_3)
    SHX0_3 = SHX26_1
    SHX1_3 = "Loading_Bink"
    SHX2_3 = "DLC_H4_Voltage_Minigame_Sounds"
    SHX0_3(SHX1_3, SHX2_3)
    while true do
      SHX0_3 = SHX2_1
      if not SHX0_3 then
        break
      end
      SHX0_3 = Wait
      SHX1_3 = 1
      SHX0_3(SHX1_3)
      SHX0_3 = SHX31_1
      SHX1_3 = "MPIsland_Voltage_BG"
      SHX2_3 = "PHONE_BACKGROUND"
      SHX3_3 = 0.5
      SHX4_3 = 0.5
      SHX5_3 = 1.0
      SHX6_3 = 1.0
      SHX7_3 = 0
      SHX8_3 = 255
      SHX9_3 = 255
      SHX10_3 = 255
      SHX11_3 = 255
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
      SHX0_3 = SHX31_1
      SHX1_3 = "MPIsland_Voltage_BG"
      SHX2_3 = "target_text"
      SHX3_3 = 0.498
      SHX4_3 = 0.12
      SHX5_3 = 0.04
      SHX6_3 = 0.014
      SHX7_3 = 0
      SHX8_3 = 231
      SHX9_3 = 99
      SHX10_3 = 99
      SHX11_3 = 255
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
      SHX0_3 = SHX31_1
      SHX1_3 = "MPIsland_Voltage_BG"
      SHX2_3 = "result_text"
      SHX3_3 = 0.498
      SHX4_3 = 0.88
      SHX5_3 = 0.04
      SHX6_3 = 0.014
      SHX7_3 = 0
      SHX8_3 = 88
      SHX9_3 = 204
      SHX10_3 = 102
      SHX11_3 = 255
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
      SHX0_3 = SHX31_1
      SHX1_3 = "MPIsland_Voltage"
      SHX2_3 = "Phone_Icons"
      SHX3_3 = 0.95
      SHX4_3 = 0.03
      SHX5_3 = 0.08
      SHX6_3 = 0.04
      SHX7_3 = 0
      SHX8_3 = 160
      SHX9_3 = 160
      SHX10_3 = 160
      SHX11_3 = 255
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
      SHX0_3 = SHX31_1
      SHX1_3 = "MPIsland_Voltage"
      SHX2_3 = "MainInterface_BG"
      SHX3_3 = 0.5
      SHX4_3 = 0.5
      SHX5_3 = 0.5
      SHX6_3 = 0.73
      SHX7_3 = 0
      SHX8_3 = 255
      SHX9_3 = 255
      SHX10_3 = 255
      SHX11_3 = 255
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
      SHX0_3 = SHX31_1
      SHX1_3 = "MPIsland_Voltage"
      SHX2_3 = SHX9_1
      SHX2_3 = SHX2_3[1]
      SHX3_3 = 0.457
      SHX4_3 = 0.185
      SHX5_3 = 0.03
      SHX6_3 = 0.09
      SHX7_3 = 0
      SHX8_3 = 231
      SHX9_3 = 99
      SHX10_3 = 99
      SHX11_3 = 255
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
      SHX0_3 = SHX31_1
      SHX1_3 = "MPIsland_Voltage"
      SHX2_3 = SHX9_1
      SHX2_3 = SHX2_3[2]
      SHX3_3 = 0.497
      SHX4_3 = 0.185
      SHX5_3 = 0.03
      SHX6_3 = 0.09
      SHX7_3 = 0
      SHX8_3 = 231
      SHX9_3 = 99
      SHX10_3 = 99
      SHX11_3 = 255
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
      SHX0_3 = SHX31_1
      SHX1_3 = "MPIsland_Voltage"
      SHX2_3 = SHX9_1
      SHX2_3 = SHX2_3[3]
      SHX3_3 = 0.539
      SHX4_3 = 0.185
      SHX5_3 = 0.03
      SHX6_3 = 0.09
      SHX7_3 = 0
      SHX8_3 = 231
      SHX9_3 = 99
      SHX10_3 = 99
      SHX11_3 = 255
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
      SHX0_3 = SHX31_1
      SHX1_3 = "MPIsland_Voltage"
      SHX2_3 = SHX7_1
      SHX2_3 = SHX2_3[1]
      SHX3_3 = 0.29
      SHX4_3 = 0.307
      SHX5_3 = 0.03
      SHX6_3 = 0.09
      SHX7_3 = 0
      SHX8_3 = 255
      SHX9_3 = 255
      SHX10_3 = 255
      SHX11_3 = 255
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
      SHX0_3 = SHX31_1
      SHX1_3 = "MPIsland_Voltage"
      SHX2_3 = SHX7_1
      SHX2_3 = SHX2_3[2]
      SHX3_3 = 0.29
      SHX4_3 = 0.5
      SHX5_3 = 0.03
      SHX6_3 = 0.09
      SHX7_3 = 0
      SHX8_3 = 255
      SHX9_3 = 255
      SHX10_3 = 255
      SHX11_3 = 255
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
      SHX0_3 = SHX31_1
      SHX1_3 = "MPIsland_Voltage"
      SHX2_3 = SHX7_1
      SHX2_3 = SHX2_3[3]
      SHX3_3 = 0.29
      SHX4_3 = 0.694
      SHX5_3 = 0.03
      SHX6_3 = 0.09
      SHX7_3 = 0
      SHX8_3 = 255
      SHX9_3 = 255
      SHX10_3 = 255
      SHX11_3 = 255
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
      SHX0_3 = SHX31_1
      SHX1_3 = "MPIsland_Voltage"
      SHX2_3 = SHX20_1
      SHX2_3 = SHX2_3[1]
      SHX3_3 = 0.699
      SHX4_3 = 0.307
      SHX5_3 = 0.06
      SHX6_3 = 0.08
      SHX7_3 = 0
      SHX8_3 = 255
      SHX9_3 = 255
      SHX10_3 = 255
      SHX11_3 = 255
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
      SHX0_3 = SHX31_1
      SHX1_3 = "MPIsland_Voltage"
      SHX2_3 = SHX20_1
      SHX2_3 = SHX2_3[2]
      SHX3_3 = 0.7
      SHX4_3 = 0.503
      SHX5_3 = 0.05
      SHX6_3 = 0.08
      SHX7_3 = 0
      SHX8_3 = 255
      SHX9_3 = 255
      SHX10_3 = 255
      SHX11_3 = 255
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
      SHX0_3 = SHX31_1
      SHX1_3 = "MPIsland_Voltage"
      SHX2_3 = SHX20_1
      SHX2_3 = SHX2_3[3]
      SHX3_3 = 0.7
      SHX4_3 = 0.698
      SHX5_3 = 0.04
      SHX6_3 = 0.06
      SHX7_3 = 0
      SHX8_3 = 255
      SHX9_3 = 255
      SHX10_3 = 255
      SHX11_3 = 255
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
      SHX0_3 = 0
      SHX1_3 = SHX10_1
      SHX2_3 = SHX8_1
      if SHX1_3 == SHX2_3 then
        SHX0_3 = 2
      else
        SHX0_3 = 1
      end
      SHX1_3 = SHX31_1
      SHX2_3 = "MPIsland_Voltage"
      SHX3_3 = tostring
      SHX4_3 = SHX11_1
      SHX4_3 = SHX4_3[1]
      SHX3_3 = SHX3_3(SHX4_3)
      SHX4_3 = 0.457
      SHX5_3 = 0.815
      SHX6_3 = 0.03
      SHX7_3 = 0.09
      SHX8_3 = 0
      SHX9_3 = SHX17_1
      SHX9_3 = SHX9_3[SHX0_3]
      SHX9_3 = SHX9_3[1]
      SHX10_3 = SHX17_1
      SHX10_3 = SHX10_3[SHX0_3]
      SHX10_3 = SHX10_3[2]
      SHX11_3 = SHX17_1
      SHX11_3 = SHX11_3[SHX0_3]
      SHX11_3 = SHX11_3[3]
      SHX12_3 = SHX18_1
      SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
      SHX1_3 = SHX31_1
      SHX2_3 = "MPIsland_Voltage"
      SHX3_3 = tostring
      SHX4_3 = SHX11_1
      SHX4_3 = SHX4_3[2]
      SHX3_3 = SHX3_3(SHX4_3)
      SHX4_3 = 0.497
      SHX5_3 = 0.815
      SHX6_3 = 0.03
      SHX7_3 = 0.09
      SHX8_3 = 0
      SHX9_3 = SHX17_1
      SHX9_3 = SHX9_3[SHX0_3]
      SHX9_3 = SHX9_3[1]
      SHX10_3 = SHX17_1
      SHX10_3 = SHX10_3[SHX0_3]
      SHX10_3 = SHX10_3[2]
      SHX11_3 = SHX17_1
      SHX11_3 = SHX11_3[SHX0_3]
      SHX11_3 = SHX11_3[3]
      SHX12_3 = SHX18_1
      SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
      SHX1_3 = SHX31_1
      SHX2_3 = "MPIsland_Voltage"
      SHX3_3 = tostring
      SHX4_3 = SHX11_1
      SHX4_3 = SHX4_3[3]
      SHX3_3 = SHX3_3(SHX4_3)
      SHX4_3 = 0.539
      SHX5_3 = 0.815
      SHX6_3 = 0.03
      SHX7_3 = 0.09
      SHX8_3 = 0
      SHX9_3 = SHX17_1
      SHX9_3 = SHX9_3[SHX0_3]
      SHX9_3 = SHX9_3[1]
      SHX10_3 = SHX17_1
      SHX10_3 = SHX10_3[SHX0_3]
      SHX10_3 = SHX10_3[2]
      SHX11_3 = SHX17_1
      SHX11_3 = SHX11_3[SHX0_3]
      SHX11_3 = SHX11_3[3]
      SHX12_3 = SHX18_1
      SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
      SHX1_3 = 1
      SHX2_3 = SHX14_1
      SHX3_3 = 1
      for SHX4_3 = SHX1_3, SHX2_3, SHX3_3 do
        SHX5_3 = SHX31_1
        SHX6_3 = "MPIsland_Voltage"
        SHX7_3 = "maininterface_progress_highlight"
        SHX8_3 = SHX22_1
        SHX8_3 = SHX8_3[SHX4_3]
        SHX8_3 = SHX8_3[1]
        SHX9_3 = SHX22_1
        SHX9_3 = SHX9_3[SHX4_3]
        SHX9_3 = SHX9_3[2]
        SHX10_3 = SHX22_1
        SHX10_3 = SHX10_3[SHX4_3]
        SHX10_3 = SHX10_3[3]
        SHX11_3 = SHX22_1
        SHX11_3 = SHX11_3[SHX4_3]
        SHX11_3 = SHX11_3[4]
        SHX12_3 = 0
        SHX13_3 = 88
        SHX14_3 = 204
        SHX15_3 = 102
        SHX16_3 = 255
        SHX5_3(SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3)
      end
      SHX1_3 = SHX5_1
      if 1 == SHX1_3 then
        SHX1_3 = SHX31_1
        SHX2_3 = "MPIsland_Voltage"
        SHX3_3 = "NUMBER_NODE"
        SHX4_3 = 0.298
        SHX5_3 = 0.307
        SHX6_3 = 0.06
        SHX7_3 = 0.098
        SHX8_3 = 0
        SHX9_3 = 250
        SHX10_3 = 172
        SHX11_3 = 54
        SHX12_3 = 255
        SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
      else
        SHX1_3 = SHX5_1
        if 2 == SHX1_3 then
          SHX1_3 = SHX31_1
          SHX2_3 = "MPIsland_Voltage"
          SHX3_3 = "NUMBER_NODE"
          SHX4_3 = 0.298
          SHX5_3 = 0.5
          SHX6_3 = 0.06
          SHX7_3 = 0.098
          SHX8_3 = 0
          SHX9_3 = 247
          SHX10_3 = 49
          SHX11_3 = 49
          SHX12_3 = 255
          SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
        else
          SHX1_3 = SHX5_1
          if 3 == SHX1_3 then
            SHX1_3 = SHX31_1
            SHX2_3 = "MPIsland_Voltage"
            SHX3_3 = "NUMBER_NODE"
            SHX4_3 = 0.298
            SHX5_3 = 0.693
            SHX6_3 = 0.06
            SHX7_3 = 0.098
            SHX8_3 = 0
            SHX9_3 = 58
            SHX10_3 = 53
            SHX11_3 = 212
            SHX12_3 = 255
            SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
          end
        end
      end
      SHX1_3 = SHX6_1
      if 1 == SHX1_3 then
        SHX1_3 = SHX31_1
        SHX2_3 = "MPIsland_Voltage"
        SHX3_3 = "CIRCLE_NODE"
        SHX4_3 = 0.691
        SHX5_3 = 0.307
        SHX6_3 = 0.078
        SHX7_3 = 0.13
        SHX8_3 = 0
        SHX10_3 = SHX5_1
        SHX9_3 = SHX16_1
        SHX9_3 = SHX9_3[SHX10_3]
        SHX9_3 = SHX9_3[1]
        SHX11_3 = SHX5_1
        SHX10_3 = SHX16_1
        SHX10_3 = SHX10_3[SHX11_3]
        SHX10_3 = SHX10_3[2]
        SHX12_3 = SHX5_1
        SHX11_3 = SHX16_1
        SHX11_3 = SHX11_3[SHX12_3]
        SHX11_3 = SHX11_3[3]
        SHX12_3 = 255
        SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
      else
        SHX1_3 = SHX6_1
        if 2 == SHX1_3 then
          SHX1_3 = SHX31_1
          SHX2_3 = "MPIsland_Voltage"
          SHX3_3 = "CIRCLE_NODE"
          SHX4_3 = 0.691
          SHX5_3 = 0.5
          SHX6_3 = 0.078
          SHX7_3 = 0.125
          SHX8_3 = 0
          SHX10_3 = SHX5_1
          SHX9_3 = SHX16_1
          SHX9_3 = SHX9_3[SHX10_3]
          SHX9_3 = SHX9_3[1]
          SHX11_3 = SHX5_1
          SHX10_3 = SHX16_1
          SHX10_3 = SHX10_3[SHX11_3]
          SHX10_3 = SHX10_3[2]
          SHX12_3 = SHX5_1
          SHX11_3 = SHX16_1
          SHX11_3 = SHX11_3[SHX12_3]
          SHX11_3 = SHX11_3[3]
          SHX12_3 = 255
          SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
        else
          SHX1_3 = SHX6_1
          if 3 == SHX1_3 then
            SHX1_3 = SHX31_1
            SHX2_3 = "MPIsland_Voltage"
            SHX3_3 = "CIRCLE_NODE"
            SHX4_3 = 0.691
            SHX5_3 = 0.694
            SHX6_3 = 0.078
            SHX7_3 = 0.125
            SHX8_3 = 0
            SHX10_3 = SHX5_1
            SHX9_3 = SHX16_1
            SHX9_3 = SHX9_3[SHX10_3]
            SHX9_3 = SHX9_3[1]
            SHX11_3 = SHX5_1
            SHX10_3 = SHX16_1
            SHX10_3 = SHX10_3[SHX11_3]
            SHX10_3 = SHX10_3[2]
            SHX12_3 = SHX5_1
            SHX11_3 = SHX16_1
            SHX11_3 = SHX11_3[SHX12_3]
            SHX11_3 = SHX11_3[3]
            SHX12_3 = 255
            SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
          end
        end
      end
      SHX1_3 = SHX5_1
      if 0 ~= SHX1_3 then
        SHX1_3 = SHX6_1
        if 0 ~= SHX1_3 then
          SHX1_3 = pairs
          SHX2_3 = tostring
          SHX3_3 = SHX5_1
          SHX2_3 = SHX2_3(SHX3_3)
          SHX3_3 = SHX23_1
          SHX2_3 = SHX3_3[SHX2_3]
          SHX3_3 = tostring
          SHX4_3 = SHX6_1
          SHX3_3 = SHX3_3(SHX4_3)
          SHX2_3 = SHX2_3[SHX3_3]
          SHX1_3, SHX2_3, SHX3_3, SHX4_3 = SHX1_3(SHX2_3)
          for SHX5_3, SHX6_3 in SHX1_3, SHX2_3, SHX3_3, SHX4_3 do
            SHX7_3 = SHX5_1
            if SHX7_3 then
              SHX7_3 = SHX6_1
              if SHX7_3 then
                SHX7_3 = SHX30_1
                SHX8_3 = SHX6_3[1]
                SHX9_3 = SHX6_3[2]
                SHX10_3 = SHX6_3[3]
                SHX11_3 = SHX6_3[4]
                SHX13_3 = SHX5_1
                SHX12_3 = SHX16_1
                SHX12_3 = SHX12_3[SHX13_3]
                SHX12_3 = SHX12_3[1]
                SHX14_3 = SHX5_1
                SHX13_3 = SHX16_1
                SHX13_3 = SHX13_3[SHX14_3]
                SHX13_3 = SHX13_3[2]
                SHX15_3 = SHX5_1
                SHX14_3 = SHX16_1
                SHX14_3 = SHX14_3[SHX15_3]
                SHX14_3 = SHX14_3[3]
                SHX16_3 = SHX5_1
                SHX15_3 = SHX19_1
                SHX15_3 = SHX15_3[SHX16_3]
                SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3)
              end
            end
          end
        end
      end
      SHX1_3 = SHX25_1
      SHX2_3 = SHX13_1
      SHX1_3 = SHX1_3(SHX2_3)
      if 0 ~= SHX1_3 then
        SHX1_3 = pairs
        SHX2_3 = SHX13_1
        SHX1_3, SHX2_3, SHX3_3, SHX4_3 = SHX1_3(SHX2_3)
        for SHX5_3, SHX6_3 in SHX1_3, SHX2_3, SHX3_3, SHX4_3 do
          SHX7_3 = pairs
          SHX8_3 = tostring
          SHX9_3 = SHX6_3[1]
          SHX8_3 = SHX8_3(SHX9_3)
          SHX9_3 = SHX23_1
          SHX8_3 = SHX9_3[SHX8_3]
          SHX9_3 = tostring
          SHX10_3 = SHX6_3[2]
          SHX9_3 = SHX9_3(SHX10_3)
          SHX8_3 = SHX8_3[SHX9_3]
          SHX7_3, SHX8_3, SHX9_3, SHX10_3 = SHX7_3(SHX8_3)
          for SHX11_3, SHX12_3 in SHX7_3, SHX8_3, SHX9_3, SHX10_3 do
            SHX13_3 = SHX6_3[1]
            if SHX13_3 then
              SHX13_3 = SHX6_3[2]
              if SHX13_3 then
                SHX13_3 = SHX30_1
                SHX14_3 = SHX12_3[1]
                SHX15_3 = SHX12_3[2]
                SHX16_3 = SHX12_3[3]
                SHX17_3 = SHX12_3[4]
                SHX19_3 = SHX6_3[1]
                SHX18_3 = SHX16_1
                SHX18_3 = SHX18_3[SHX19_3]
                SHX18_3 = SHX18_3[1]
                SHX20_3 = SHX6_3[1]
                SHX19_3 = SHX16_1
                SHX19_3 = SHX19_3[SHX20_3]
                SHX19_3 = SHX19_3[2]
                SHX21_3 = SHX6_3[1]
                SHX20_3 = SHX16_1
                SHX20_3 = SHX20_3[SHX21_3]
                SHX20_3 = SHX20_3[3]
                SHX22_3 = SHX6_3[1]
                SHX21_3 = SHX19_1
                SHX21_3 = SHX21_3[SHX22_3]
                SHX13_3(SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3)
              end
            end
          end
        end
      end
    end
    SHX0_3 = print
    SHX1_3 = "Ended first Voltlab hacking thread"
    SHX0_3(SHX1_3)
  end
  SHX5_2(SHX6_2)
  SHX5_2 = Wait
  SHX6_2 = 100
  SHX5_2(SHX6_2)
  SHX5_2 = print
  SHX6_2 = "Creating second Voltlab hacking thread"
  SHX5_2(SHX6_2)
  SHX5_2 = CreateThread
  function SHX6_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3
    SHX0_3 = 0
    SHX1_3 = 0
    SHX2_3 = SHX32_1
    SHX3_3 = "instructional_buttons"
    SHX2_3 = SHX2_3(SHX3_3)
    while true do
      SHX3_3 = SHX2_1
      if not SHX3_3 then
        break
      end
      SHX3_3 = Wait
      SHX4_3 = 5
      SHX3_3(SHX4_3)
      SHX3_3 = DrawScaleformMovieFullscreen
      SHX4_3 = SHX2_3
      SHX5_3 = 255
      SHX6_3 = 255
      SHX7_3 = 255
      SHX8_3 = 255
      SHX9_3 = 0
      SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
      SHX3_3 = DisableControlAction
      SHX4_3 = 0
      SHX5_3 = 172
      SHX6_3 = true
      SHX3_3(SHX4_3, SHX5_3, SHX6_3)
      SHX3_3 = DisableControlAction
      SHX4_3 = 0
      SHX5_3 = 173
      SHX6_3 = true
      SHX3_3(SHX4_3, SHX5_3, SHX6_3)
      SHX3_3 = DisableControlAction
      SHX4_3 = 0
      SHX5_3 = 174
      SHX6_3 = true
      SHX3_3(SHX4_3, SHX5_3, SHX6_3)
      SHX3_3 = DisableControlAction
      SHX4_3 = 0
      SHX5_3 = 175
      SHX6_3 = true
      SHX3_3(SHX4_3, SHX5_3, SHX6_3)
      SHX3_3 = DisableControlAction
      SHX4_3 = 0
      SHX5_3 = 194
      SHX6_3 = true
      SHX3_3(SHX4_3, SHX5_3, SHX6_3)
      SHX3_3 = DisableControlAction
      SHX4_3 = 0
      SHX5_3 = 191
      SHX6_3 = true
      SHX3_3(SHX4_3, SHX5_3, SHX6_3)
      SHX3_3 = DisableControlAction
      SHX4_3 = 0
      SHX5_3 = 24
      SHX6_3 = true
      SHX3_3(SHX4_3, SHX5_3, SHX6_3)
      SHX3_3 = DisableControlAction
      SHX4_3 = 0
      SHX5_3 = 25
      SHX6_3 = true
      SHX3_3(SHX4_3, SHX5_3, SHX6_3)
      SHX3_3 = IsDisabledControlJustPressed
      SHX4_3 = 0
      SHX5_3 = 172
      SHX3_3 = SHX3_3(SHX4_3, SHX5_3)
      if SHX3_3 then
        SHX3_3 = SHX5_1
        if SHX3_3 > 1 then
          SHX3_3 = SHX5_1
          if SHX3_3 < 4 then
            SHX3_3 = SHX5_1
            SHX3_3 = SHX3_3 - 1
            SHX5_1 = SHX3_3
            SHX3_3 = SHX26_1
            SHX4_3 = "Disconnect_Wire"
            SHX5_3 = "DLC_H4_Voltage_Minigame_Sounds"
            SHX3_3(SHX4_3, SHX5_3)
            SHX3_3 = SHX6_1
            if 0 ~= SHX3_3 then
              SHX4_3 = SHX5_1
              SHX3_3 = SHX7_1
              SHX3_3 = SHX3_3[SHX4_3]
              SHX5_3 = SHX6_1
              SHX4_3 = SHX21_1
              SHX4_3 = SHX4_3[SHX5_3]
              SHX3_3 = SHX3_3 * SHX4_3
              SHX0_3 = SHX1_3 + SHX3_3
              SHX3_3 = SHX28_1
              SHX4_3 = SHX0_3
              SHX3_3(SHX4_3)
            end
          end
        end
      else
        SHX3_3 = IsDisabledControlJustPressed
        SHX4_3 = 0
        SHX5_3 = 173
        SHX3_3 = SHX3_3(SHX4_3, SHX5_3)
        if SHX3_3 then
          SHX3_3 = SHX5_1
          if SHX3_3 < 3 then
            SHX3_3 = SHX5_1
            if SHX3_3 >= 0 then
              SHX3_3 = SHX5_1
              SHX3_3 = SHX3_3 + 1
              SHX5_1 = SHX3_3
              SHX3_3 = SHX26_1
              SHX4_3 = "Disconnect_Wire"
              SHX5_3 = "DLC_H4_Voltage_Minigame_Sounds"
              SHX3_3(SHX4_3, SHX5_3)
              SHX3_3 = SHX6_1
              if 0 ~= SHX3_3 then
                SHX4_3 = SHX5_1
                SHX3_3 = SHX7_1
                SHX3_3 = SHX3_3[SHX4_3]
                SHX5_3 = SHX6_1
                SHX4_3 = SHX21_1
                SHX4_3 = SHX4_3[SHX5_3]
                SHX3_3 = SHX3_3 * SHX4_3
                SHX0_3 = SHX1_3 + SHX3_3
                SHX3_3 = SHX28_1
                SHX4_3 = SHX0_3
                SHX3_3(SHX4_3)
              end
            end
          end
        else
          SHX3_3 = IsDisabledControlJustPressed
          SHX4_3 = 0
          SHX5_3 = 174
          SHX3_3 = SHX3_3(SHX4_3, SHX5_3)
          if SHX3_3 then
            SHX3_3 = SHX6_1
            if SHX3_3 > 1 then
              SHX3_3 = SHX6_1
              if SHX3_3 < 4 then
                SHX3_3 = SHX6_1
                SHX3_3 = SHX3_3 - 1
                SHX6_1 = SHX3_3
                SHX3_3 = SHX26_1
                SHX4_3 = "Disconnect_Wire"
                SHX5_3 = "DLC_H4_Voltage_Minigame_Sounds"
                SHX3_3(SHX4_3, SHX5_3)
                SHX4_3 = SHX5_1
                SHX3_3 = SHX7_1
                SHX3_3 = SHX3_3[SHX4_3]
                SHX5_3 = SHX6_1
                SHX4_3 = SHX21_1
                SHX4_3 = SHX4_3[SHX5_3]
                SHX3_3 = SHX3_3 * SHX4_3
                SHX0_3 = SHX1_3 + SHX3_3
                SHX3_3 = SHX28_1
                SHX4_3 = SHX0_3
                SHX3_3(SHX4_3)
              end
            end
          else
            SHX3_3 = IsDisabledControlJustPressed
            SHX4_3 = 0
            SHX5_3 = 175
            SHX3_3 = SHX3_3(SHX4_3, SHX5_3)
            if SHX3_3 then
              SHX3_3 = SHX6_1
              if SHX3_3 < 3 then
                SHX3_3 = SHX6_1
                if SHX3_3 >= 0 then
                  SHX3_3 = SHX6_1
                  SHX3_3 = SHX3_3 + 1
                  SHX6_1 = SHX3_3
                  SHX3_3 = SHX26_1
                  SHX4_3 = "Disconnect_Wire"
                  SHX5_3 = "DLC_H4_Voltage_Minigame_Sounds"
                  SHX3_3(SHX4_3, SHX5_3)
                  SHX4_3 = SHX5_1
                  SHX3_3 = SHX7_1
                  SHX3_3 = SHX3_3[SHX4_3]
                  SHX5_3 = SHX6_1
                  SHX4_3 = SHX21_1
                  SHX4_3 = SHX4_3[SHX5_3]
                  SHX3_3 = SHX3_3 * SHX4_3
                  SHX0_3 = SHX1_3 + SHX3_3
                  SHX3_3 = SHX28_1
                  SHX4_3 = SHX0_3
                  SHX3_3(SHX4_3)
                end
              end
            else
              SHX3_3 = IsDisabledControlJustPressed
              SHX4_3 = 0
              SHX5_3 = 194
              SHX3_3 = SHX3_3(SHX4_3, SHX5_3)
              if SHX3_3 then
                SHX3_3 = false
                SHX15_1 = SHX3_3
                SHX3_3 = false
                SHX2_1 = SHX3_3
                SHX3_3 = SHX26_1
                SHX4_3 = "Minigame_Failure"
                SHX5_3 = "DLC_H4_Voltage_Minigame_Sounds"
                SHX3_3(SHX4_3, SHX5_3)
                SHX3_3 = SendNUIMessage
                SHX4_3 = {}
                SHX4_3.type = "fail"
                SHX3_3(SHX4_3)
                SHX3_3 = true
                SHX3_1 = SHX3_3
                SHX3_3 = SHX4_1
                SHX4_3 = 0
                SHX5_3 = "Hack cancelled"
                SHX3_3(SHX4_3, SHX5_3)
              else
                SHX3_3 = IsDisabledControlJustPressed
                SHX4_3 = 0
                SHX5_3 = 191
                SHX3_3 = SHX3_3(SHX4_3, SHX5_3)
                if SHX3_3 then
                  SHX3_3 = SHX6_1
                  if 0 ~= SHX3_3 then
                    SHX3_3 = tostring
                    SHX4_3 = SHX6_1
                    SHX3_3 = SHX3_3(SHX4_3)
                    SHX4_3 = SHX12_1
                    SHX3_3 = SHX4_3[SHX3_3]
                    if nil ~= SHX3_3 then
                      SHX3_3 = tostring
                      SHX4_3 = SHX6_1
                      SHX3_3 = SHX3_3(SHX4_3)
                      SHX4_3 = SHX12_1
                      SHX3_3 = SHX4_3[SHX3_3]
                      if false ~= SHX3_3 then
                        goto SHX_LABEL_367
                      end
                    end
                    SHX3_3 = tostring
                    SHX4_3 = SHX5_1
                    SHX3_3 = SHX3_3(SHX4_3)
                    SHX4_3 = SHX13_1
                    SHX3_3 = SHX4_3[SHX3_3]
                    if nil ~= SHX3_3 then
                      SHX3_3 = tostring
                      SHX4_3 = SHX5_1
                      SHX3_3 = SHX3_3(SHX4_3)
                      SHX4_3 = SHX13_1
                      SHX3_3 = SHX4_3[SHX3_3]
                      if false ~= SHX3_3 then
                        goto SHX_LABEL_367
                      end
                    end
                    SHX3_3 = 1
                    SHX4_3 = 255
                    SHX5_3 = SHX26_1
                    SHX6_3 = "OS_Draw"
                    SHX7_3 = "DLC_H4_Voltage_Minigame_Sounds"
                    SHX5_3(SHX6_3, SHX7_3)
                    SHX5_3 = CreateThread
                    function SHX6_3()
                      -- [AI CLEANUP] Decompiled Lua - Fix these:
                      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                      -- 3. Replace goto/label with while/repeat-until where possible
                      -- 4. Remove decompiler comments, add meaningful ones
                      -- 5. Fix indentation and formatting
                      
                      local SHX0_4, SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4
                      while true do
                        SHX0_4 = SHX3_3
                        if not (SHX0_4 > 0) then
                          break
                        end
                        SHX0_4 = 1
                        SHX1_4 = SHX19_1
                        SHX1_4 = #SHX1_4
                        SHX2_4 = 1
                        for SHX3_4 = SHX0_4, SHX1_4, SHX2_4 do
                          SHX4_4 = SHX19_1
                          SHX5_4 = SHX4_3
                          SHX4_4[SHX3_4] = SHX5_4
                          SHX4_4 = SHX4_3
                          SHX5_4 = 255
                          if SHX4_4 < SHX5_4 then
                            SHX4_4 = SHX4_3
                            SHX4_4 = SHX4_4 + 85
                            SHX4_3 = SHX4_4
                          else
                            SHX4_4 = SHX4_3
                            SHX4_4 = SHX4_4 - 85
                            SHX4_3 = SHX4_4
                          end
                        end
                        SHX0_4 = Wait
                        SHX1_4 = 100
                        SHX0_4(SHX1_4)
                      end
                      SHX0_4 = 1
                      SHX1_4 = SHX19_1
                      SHX1_4 = #SHX1_4
                      SHX2_4 = 1
                      for SHX3_4 = SHX0_4, SHX1_4, SHX2_4 do
                        SHX4_4 = SHX19_1
                        SHX4_4[SHX3_4] = 255
                      end
                    end
                    SHX5_3(SHX6_3)
                    SHX5_3 = Wait
                    SHX6_3 = 1000
                    SHX5_3(SHX6_3)
                    SHX3_3 = 0
                    SHX6_3 = SHX5_1
                    SHX5_3 = SHX7_1
                    SHX5_3 = SHX5_3[SHX6_3]
                    SHX7_3 = SHX6_1
                    SHX6_3 = SHX21_1
                    SHX6_3 = SHX6_3[SHX7_3]
                    SHX5_3 = SHX5_3 * SHX6_3
                    SHX1_3 = SHX1_3 + SHX5_3
                    SHX10_1 = SHX1_3
                    SHX5_3 = tostring
                    SHX6_3 = SHX6_1
                    SHX5_3 = SHX5_3(SHX6_3)
                    SHX6_3 = SHX12_1
                    SHX6_3[SHX5_3] = true
                    SHX5_3 = tostring
                    SHX6_3 = SHX5_1
                    SHX5_3 = SHX5_3(SHX6_3)
                    SHX6_3 = SHX13_1
                    SHX7_3 = {}
                    SHX8_3 = SHX5_1
                    SHX9_3 = SHX6_1
                    SHX7_3[1] = SHX8_3
                    SHX7_3[2] = SHX9_3
                    SHX6_3[SHX5_3] = SHX7_3
                    SHX5_3 = SHX25_1
                    SHX6_3 = SHX13_1
                    SHX5_3 = SHX5_3(SHX6_3)
                    if SHX5_3 >= 3 then
                      SHX5_3 = SHX8_1
                      if SHX1_3 == SHX5_3 then
                        SHX5_3 = true
                        SHX15_1 = SHX5_3
                        SHX5_3 = SHX26_1
                        SHX6_3 = "All_Connected_Correct"
                        SHX7_3 = "DLC_H4_Voltage_Minigame_Sounds"
                        SHX5_3(SHX6_3, SHX7_3)
                        SHX5_3 = 1
                        SHX6_3 = CreateThread
                        function SHX7_3()
                          -- [AI CLEANUP] Decompiled Lua - Fix these:
                          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                          -- 3. Replace goto/label with while/repeat-until where possible
                          -- 4. Remove decompiler comments, add meaningful ones
                          -- 5. Fix indentation and formatting
                          
                          local SHX0_4, SHX1_4
                          while true do
                            SHX0_4 = SHX5_3
                            if not (SHX0_4 > 0) then
                              break
                            end
                            SHX0_4 = SHX18_1
                            SHX1_4 = 255
                            if SHX0_4 < SHX1_4 then
                              SHX0_4 = SHX18_1
                              SHX0_4 = SHX0_4 + 85
                              SHX18_1 = SHX0_4
                            else
                              SHX0_4 = SHX18_1
                              SHX0_4 = SHX0_4 - 85
                              SHX18_1 = SHX0_4
                            end
                            SHX0_4 = Wait
                            SHX1_4 = 100
                            SHX0_4(SHX1_4)
                          end
                          SHX0_4 = 255
                          SHX18_1 = SHX0_4
                        end
                        SHX6_3(SHX7_3)
                        SHX6_3 = Wait
                        SHX7_3 = 1000
                        SHX6_3(SHX7_3)
                        SHX5_3 = 0
                        SHX6_3 = SHX26_1
                        SHX7_3 = "Minigame_Success"
                        SHX8_3 = "DLC_H4_Voltage_Minigame_Sounds"
                        SHX6_3(SHX7_3, SHX8_3)
                        SHX6_3 = SendNUIMessage
                        SHX7_3 = {}
                        SHX7_3.type = "success"
                        SHX6_3(SHX7_3)
                        SHX6_3 = false
                        SHX2_1 = SHX6_3
                        SHX6_3 = true
                        SHX3_1 = SHX6_3
                        SHX6_3 = SHX4_1
                        SHX7_3 = 1
                        SHX6_3(SHX7_3)
                      else
                        SHX5_3 = Wait
                        SHX6_3 = 1000
                        SHX5_3(SHX6_3)
                        SHX5_3 = false
                        SHX15_1 = SHX5_3
                        SHX5_3 = false
                        SHX2_1 = SHX5_3
                        SHX5_3 = SHX26_1
                        SHX6_3 = "Minigame_Failure"
                        SHX7_3 = "DLC_H4_Voltage_Minigame_Sounds"
                        SHX5_3(SHX6_3, SHX7_3)
                        SHX5_3 = SendNUIMessage
                        SHX6_3 = {}
                        SHX6_3.type = "fail"
                        SHX5_3(SHX6_3)
                        SHX5_3 = true
                        SHX3_1 = SHX5_3
                        SHX5_3 = SHX4_1
                        SHX6_3 = 0
                        SHX7_3 = "Hack failed"
                        SHX5_3(SHX6_3, SHX7_3)
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
      -- [FIX IF ERROR] Move ::SHX_LABEL_367:: outside nested blocks until all 'goto SHX_LABEL_367' can see it
      ::SHX_LABEL_367::
    end
    SHX3_3 = print
    SHX4_3 = "Ended second Voltlab hacking thread"
    SHX3_3(SHX4_3)
  end
  SHX5_2(SHX6_2)
  SHX5_2 = print
  SHX6_2 = "Creating third Voltlab hacking thread"
  SHX5_2(SHX6_2)
  SHX5_2 = CreateThread
  function SHX6_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3
    SHX0_3 = Wait
    SHX1_3 = 5000
    SHX0_3(SHX1_3)
    SHX0_3 = SHX3_2
    SHX0_3 = SHX0_3 / 6
    while true do
      SHX1_3 = SHX3_2
      if not (SHX1_3 > 0) then
        break
      end
      SHX1_3 = Wait
      SHX2_3 = SHX0_3 * 1000
      SHX1_3(SHX2_3)
      SHX1_3 = SHX3_2
      SHX1_3 = SHX1_3 - SHX0_3
      SHX3_2 = SHX1_3
      SHX1_3 = SHX14_1
      SHX1_3 = SHX1_3 - 1
      SHX14_1 = SHX1_3
    end
    SHX1_3 = Wait
    SHX2_3 = 2000
    SHX1_3(SHX2_3)
    SHX1_3 = SHX15_1
    if nil == SHX1_3 then
      SHX1_3 = false
      SHX2_1 = SHX1_3
      SHX1_3 = SHX26_1
      SHX2_3 = "Minigame_Failure"
      SHX3_3 = "DLC_H4_Voltage_Minigame_Sounds"
      SHX1_3(SHX2_3, SHX3_3)
      SHX1_3 = SendNUIMessage
      SHX2_3 = {}
      SHX2_3.type = "fail"
      SHX1_3(SHX2_3)
      SHX1_3 = SHX3_1
      if not SHX1_3 then
        SHX1_3 = SHX4_1
        SHX2_3 = 2
        SHX3_3 = "Hack timeout out"
        SHX1_3(SHX2_3, SHX3_3)
      end
    end
    SHX1_3 = print
    SHX2_3 = "Ended third Voltlab hacking thread"
    SHX1_3(SHX2_3)
  end
  SHX5_2(SHX6_2)
end
SHX38_1(SHX39_1, SHX40_1)
