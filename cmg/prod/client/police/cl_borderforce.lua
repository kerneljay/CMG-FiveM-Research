-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1
SHX0_1 = {}
SHX1_1 = {}
SHX1_1.prop = "cmg_prop_gate_military_01"
SHX1_1.prop_frame = "cmg_prop_gate_frame_02"
SHX1_1.prop_controller = "prop_rail_controller"
SHX2_1 = vector3
SHX3_1 = 1307.67163
SHX4_1 = 575.666138
SHX5_1 = 80.11085
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.position = SHX2_1
SHX2_1 = vector3
SHX3_1 = 0.0
SHX4_1 = 0.0
SHX5_1 = 131.0
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.gateRotation = SHX2_1
SHX2_1 = vector3
SHX3_1 = 1305.7927246094
SHX4_1 = 581.07287597656
SHX5_1 = 80.081733703613
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.controllerPos = SHX2_1
SHX1_1.controllerRotation = 226.0
SHX1_1.rotation = 133.46
SHX2_1 = {}
SHX1_1.propObjHandlers = SHX2_1
SHX1_1.propFrameObjHandler = 0
SHX1_1.propControllerHandler = 0
SHX1_1.open = false
SHX1_1.instruction = "none"
SHX0_1[1] = SHX1_1
SHX1_1 = {}
SHX1_1.prop = "cmg_prop_gate_military_01"
SHX1_1.prop_frame = "cmg_prop_gate_frame_02"
SHX1_1.prop_controller = "prop_rail_controller"
SHX2_1 = vector3
SHX3_1 = 1336.73181
SHX4_1 = 602.823364
SHX5_1 = 80.15877
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.position = SHX2_1
SHX1_1.gateRotation = nil
SHX2_1 = vector3
SHX3_1 = 1330.9665527344
SHX4_1 = 604.69061279297
SHX5_1 = 80.189002990723
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.controllerPos = SHX2_1
SHX1_1.controllerRotation = 226.0
SHX1_1.rotation = 131.69
SHX2_1 = {}
SHX1_1.propObjHandlers = SHX2_1
SHX1_1.propFrameObjHandler = 0
SHX1_1.propControllerHandler = 0
SHX1_1.open = false
SHX1_1.instruction = "none"
SHX0_1[2] = SHX1_1
SHX1_1 = {}
SHX1_1.prop = "cmg_prop_gate_military_01"
SHX1_1.prop_frame = "cmg_prop_gate_frame_02"
SHX1_1.prop_controller = "prop_rail_controller"
SHX2_1 = vector3
SHX3_1 = 1313.71228
SHX4_1 = 628.0808
SHX5_1 = 80.1978455
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.position = SHX2_1
SHX2_1 = vector3
SHX3_1 = 0.0
SHX4_1 = 0.0
SHX5_1 = 311.0
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.gateRotation = SHX2_1
SHX2_1 = vector3
SHX3_1 = 1312.9809570313
SHX4_1 = 623.81829833984
SHX5_1 = 80.197242736816
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.controllerPos = SHX2_1
SHX1_1.controllerRotation = 41.0
SHX1_1.rotation = 131.69
SHX2_1 = {}
SHX1_1.propObjHandlers = SHX2_1
SHX1_1.propFrameObjHandler = 0
SHX1_1.propControllerHandler = 0
SHX1_1.open = false
SHX1_1.instruction = "none"
SHX0_1[3] = SHX1_1
SHX1_1 = {}
SHX1_1.prop = "cmg_prop_gate_military_01"
SHX1_1.prop_frame = "cmg_prop_gate_frame_02"
SHX1_1.prop_controller = "prop_rail_controller"
SHX2_1 = vector3
SHX3_1 = 1283.63123
SHX4_1 = 600.256348
SHX5_1 = 80.0751
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.position = SHX2_1
SHX2_1 = vector3
SHX3_1 = 0.0
SHX4_1 = 0.0
SHX5_1 = 311.0
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.gateRotation = SHX2_1
SHX2_1 = vector3
SHX3_1 = 1288.6761474609
SHX4_1 = 598.40759277344
SHX5_1 = 80.098342895508
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.controllerPos = SHX2_1
SHX1_1.controllerRotation = 41.0
SHX1_1.rotation = 131.69
SHX2_1 = {}
SHX1_1.propObjHandlers = SHX2_1
SHX1_1.propFrameObjHandler = 0
SHX1_1.propControllerHandler = 0
SHX1_1.open = false
SHX1_1.instruction = "none"
SHX0_1[4] = SHX1_1
SHX1_1 = {}
SHX1_1.prop = "cmg_prop_gate_military_01"
SHX1_1.prop_frame = "cmg_prop_gate_frame_02"
SHX1_1.prop_controller = "prop_rail_controller"
SHX2_1 = vector3
SHX3_1 = 2436.67236
SHX4_1 = -221.798569
SHX5_1 = 86.0626144
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.position = SHX2_1
SHX2_1 = vector3
SHX3_1 = 0.0
SHX4_1 = 0.0
SHX5_1 = 155.0
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.gateRotation = SHX2_1
SHX2_1 = vector3
SHX3_1 = 2432.5932617188
SHX4_1 = -217.69305419922
SHX5_1 = 86.343444824219
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.controllerPos = SHX2_1
SHX1_1.controllerRotation = 240.0
SHX1_1.rotation = 131.69
SHX2_1 = {}
SHX1_1.propObjHandlers = SHX2_1
SHX1_1.propFrameObjHandler = 0
SHX1_1.propControllerHandler = 0
SHX1_1.open = false
SHX1_1.instruction = "none"
SHX0_1[5] = SHX1_1
SHX1_1 = {}
SHX1_1.prop = "cmg_prop_gate_military_01"
SHX1_1.prop_frame = "cmg_prop_gate_frame_02"
SHX1_1.prop_controller = "prop_rail_controller"
SHX2_1 = vector3
SHX3_1 = 2454.306
SHX4_1 = -186.302841
SHX5_1 = 87.8461151
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.position = SHX2_1
SHX2_1 = vector3
SHX3_1 = 0.0
SHX4_1 = 0.0
SHX5_1 = 155.0
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.gateRotation = SHX2_1
SHX2_1 = vector3
SHX3_1 = 2447.4279785156
SHX4_1 = -187.01138305664
SHX5_1 = 87.809188842773
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.controllerPos = SHX2_1
SHX1_1.controllerRotation = 240.0
SHX1_1.rotation = 131.69
SHX2_1 = {}
SHX1_1.propObjHandlers = SHX2_1
SHX1_1.propFrameObjHandler = 0
SHX1_1.propControllerHandler = 0
SHX1_1.open = false
SHX1_1.instruction = "none"
SHX0_1[6] = SHX1_1
SHX1_1 = {}
SHX1_1.prop = "cmg_prop_gate_military_01"
SHX1_1.prop_frame = "cmg_prop_gate_frame_02"
SHX1_1.prop_controller = "prop_rail_controller"
SHX2_1 = vector3
SHX3_1 = 2423.53882
SHX4_1 = -171.105515
SHX5_1 = 87.77565
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.position = SHX2_1
SHX2_1 = vector3
SHX3_1 = 0.0
SHX4_1 = 0.0
SHX5_1 = 333.0
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.gateRotation = SHX2_1
SHX2_1 = vector3
SHX3_1 = 2426.1889648438
SHX4_1 = -175.99674987793
SHX5_1 = 87.734436035156
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.controllerPos = SHX2_1
SHX1_1.controllerRotation = 68.0
SHX1_1.rotation = 131.69
SHX2_1 = {}
SHX1_1.propObjHandlers = SHX2_1
SHX1_1.propFrameObjHandler = 0
SHX1_1.propControllerHandler = 0
SHX1_1.open = false
SHX1_1.instruction = "none"
SHX0_1[7] = SHX1_1
SHX1_1 = {}
SHX1_1.prop = "cmg_prop_gate_military_01"
SHX1_1.prop_frame = "cmg_prop_gate_frame_02"
SHX1_1.prop_controller = "prop_rail_controller"
SHX2_1 = vector3
SHX3_1 = 2405.56372
SHX4_1 = -208.031891
SHX5_1 = 86.09489
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.position = SHX2_1
SHX2_1 = vector3
SHX3_1 = 0.0
SHX4_1 = 0.0
SHX5_1 = 333.0
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.gateRotation = SHX2_1
SHX2_1 = vector3
SHX3_1 = 2411.3996582031
SHX4_1 = -207.52787780762
SHX5_1 = 86.227264404297
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.controllerPos = SHX2_1
SHX1_1.controllerRotation = 68.0
SHX1_1.rotation = 131.69
SHX2_1 = {}
SHX1_1.propObjHandlers = SHX2_1
SHX1_1.propFrameObjHandler = 0
SHX1_1.propControllerHandler = 0
SHX1_1.open = false
SHX1_1.instruction = "none"
SHX0_1[8] = SHX1_1
SHX1_1 = {}
SHX1_1.prop = "cmg_prop_gate_military_01"
SHX1_1.prop_frame = "cmg_prop_gate_frame_02"
SHX1_1.prop_controller = "prop_rail_controller"
SHX2_1 = vector3
SHX3_1 = -2401.57422
SHX4_1 = -235.169571
SHX5_1 = 15.5775642
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.position = SHX2_1
SHX2_1 = vector3
SHX3_1 = 0.0
SHX4_1 = 0.0
SHX5_1 = 242.5
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.gateRotation = SHX2_1
SHX2_1 = vector3
SHX3_1 = -2406.2575683594
SHX4_1 = -239.23776245117
SHX5_1 = 15.476901054382
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.controllerPos = SHX2_1
SHX1_1.controllerRotation = 330.0
SHX1_1.rotation = 131.69
SHX2_1 = {}
SHX1_1.propObjHandlers = SHX2_1
SHX1_1.propFrameObjHandler = 0
SHX1_1.propControllerHandler = 0
SHX1_1.open = false
SHX1_1.instruction = "none"
SHX0_1[9] = SHX1_1
SHX1_1 = {}
SHX1_1.prop = "cmg_prop_gate_military_01"
SHX1_1.prop_frame = "cmg_prop_gate_frame_02"
SHX1_1.prop_controller = "prop_rail_controller"
SHX2_1 = vector3
SHX3_1 = -2436.278
SHX4_1 = -216.735123
SHX5_1 = 16.4167013
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.position = SHX2_1
SHX2_1 = vector3
SHX3_1 = 0.0
SHX4_1 = 0.0
SHX5_1 = 242.5
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.gateRotation = SHX2_1
SHX2_1 = vector3
SHX3_1 = -2434.2758789063
SHX4_1 = -224.33985900879
SHX5_1 = 16.358936309814
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.controllerPos = SHX2_1
SHX1_1.controllerRotation = 330.0
SHX1_1.rotation = 131.69
SHX2_1 = {}
SHX1_1.propObjHandlers = SHX2_1
SHX1_1.propFrameObjHandler = 0
SHX1_1.propControllerHandler = 0
SHX1_1.open = false
SHX1_1.instruction = "none"
SHX0_1[10] = SHX1_1
SHX1_1 = {}
SHX1_1.prop = "cmg_prop_gate_military_01"
SHX1_1.prop_frame = "cmg_prop_gate_frame_02"
SHX1_1.prop_controller = "prop_rail_controller"
SHX2_1 = vector3
SHX3_1 = -2452.826
SHX4_1 = -245.910721
SHX5_1 = 16.44616
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.position = SHX2_1
SHX2_1 = vector3
SHX3_1 = 0.0
SHX4_1 = 0.0
SHX5_1 = 60
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.gateRotation = SHX2_1
SHX2_1 = vector3
SHX3_1 = -2444.1645507813
SHX4_1 = -244.25773620605
SHX5_1 = 16.33381652832
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.controllerPos = SHX2_1
SHX1_1.controllerRotation = 150.0
SHX1_1.rotation = 131.69
SHX2_1 = {}
SHX1_1.propObjHandlers = SHX2_1
SHX1_1.propFrameObjHandler = 0
SHX1_1.propControllerHandler = 0
SHX1_1.open = false
SHX1_1.instruction = "none"
SHX0_1[11] = SHX1_1
SHX1_1 = {}
SHX1_1.prop = "cmg_prop_gate_military_01"
SHX1_1.prop_frame = "cmg_prop_gate_frame_02"
SHX1_1.prop_controller = "prop_rail_controller"
SHX2_1 = vector3
SHX3_1 = -2416.83057
SHX4_1 = -264.836578
SHX5_1 = 15.4028273
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.position = SHX2_1
SHX2_1 = vector3
SHX3_1 = 0.0
SHX4_1 = 0.0
SHX5_1 = 60
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.gateRotation = SHX2_1
SHX2_1 = vector3
SHX3_1 = -2416.6555175781
SHX4_1 = -259.09844970703
SHX5_1 = 15.234084701538
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.controllerPos = SHX2_1
SHX1_1.controllerRotation = 150.0
SHX1_1.rotation = 131.69
SHX2_1 = {}
SHX1_1.propObjHandlers = SHX2_1
SHX1_1.propFrameObjHandler = 0
SHX1_1.propControllerHandler = 0
SHX1_1.open = false
SHX1_1.instruction = "none"
SHX0_1[12] = SHX1_1
SHX1_1 = {}
SHX2_1 = {}
SHX2_1.name = "Los Santos"
SHX3_1 = vector4
SHX4_1 = 1312.8000488281
SHX5_1 = 603.81097412109
SHX6_1 = 80.317993164062
SHX7_1 = 131.81103515625
SHX3_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1, SHX7_1)
SHX2_1.position = SHX3_1
SHX3_1 = {}
SHX4_1 = 1
SHX5_1 = 2
SHX6_1 = 3
SHX7_1 = 4
SHX3_1[1] = SHX4_1
SHX3_1[2] = SHX5_1
SHX3_1[3] = SHX6_1
SHX3_1[4] = SHX7_1
SHX2_1.opens = SHX3_1
SHX1_1[1] = SHX2_1
SHX2_1 = {}
SHX2_1.name = "Olympic"
SHX3_1 = vector4
SHX4_1 = 2432.6638183594
SHX5_1 = -192.52746582031
SHX6_1 = 87.428588867188
SHX7_1 = 153.07086181641
SHX3_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1, SHX7_1)
SHX2_1.position = SHX3_1
SHX3_1 = {}
SHX4_1 = 5
SHX5_1 = 6
SHX6_1 = 7
SHX7_1 = 8
SHX3_1[1] = SHX4_1
SHX3_1[2] = SHX5_1
SHX3_1[3] = SHX6_1
SHX3_1[4] = SHX7_1
SHX2_1.opens = SHX3_1
SHX1_1[2] = SHX2_1
SHX2_1 = {}
SHX2_1.name = "Great Ocean"
SHX3_1 = vector4
SHX4_1 = -2431.2526855469
SHX5_1 = -237.65274047852
SHX6_1 = 16.305541992188
SHX7_1 = 249.44882202148
SHX3_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1, SHX7_1)
SHX2_1.position = SHX3_1
SHX3_1 = {}
SHX4_1 = 9
SHX5_1 = 10
SHX6_1 = 11
SHX7_1 = 12
SHX3_1[1] = SHX4_1
SHX3_1[2] = SHX5_1
SHX3_1[3] = SHX6_1
SHX3_1[4] = SHX7_1
SHX2_1.opens = SHX3_1
SHX1_1[3] = SHX2_1
SHX2_1 = {}
function SHX3_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.hasClientPermission
  SHX2_2 = "borderforce.onduty.permission"
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.isStaffedOnClient
    SHX1_2 = SHX1_2()
    if not SHX1_2 then
      goto SHX_LABEL_88
    end
  end
  SHX1_2 = false
  SHX2_2 = pairs
  SHX3_2 = SHX0_2.opens
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX0_1
    SHX8_2 = SHX8_2[SHX7_2]
    SHX8_2 = SHX8_2.open
    if SHX8_2 then
      SHX1_2 = true
      break
    end
  end
  if SHX1_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.DrawText3D
    SHX3_2 = SHX0_2.position
    SHX3_2 = SHX3_2.xyz
    SHX4_2 = "Press [E] to close gates"
    SHX5_2 = 0.35
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = IsControlJustPressed
    SHX3_2 = 0
    SHX4_2 = 38
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if SHX2_2 then
      SHX2_2 = tCMG
      SHX2_2 = SHX2_2.notify
      SHX3_2 = "~g~Gate closing..."
      SHX2_2(SHX3_2)
      SHX2_2 = pairs
      SHX3_2 = SHX0_2.opens
      SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
      for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
        SHX8_2 = TriggerServerEvent
        SHX9_2 = "bfb85eb237"
        SHX10_2 = SHX7_2
        SHX11_2 = "close"
        SHX8_2(SHX9_2, SHX10_2, SHX11_2)
      end
    end
  else
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.DrawText3D
    SHX3_2 = SHX0_2.position
    SHX3_2 = SHX3_2.xyz
    SHX4_2 = "Press [E] to open gates"
    SHX5_2 = 0.35
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = IsControlJustPressed
    SHX3_2 = 0
    SHX4_2 = 38
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if SHX2_2 then
      SHX2_2 = tCMG
      SHX2_2 = SHX2_2.notify
      SHX3_2 = "~g~Gate opening..."
      SHX2_2(SHX3_2)
      SHX2_2 = pairs
      SHX3_2 = SHX0_2.opens
      SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
      for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
        SHX8_2 = TriggerServerEvent
        SHX9_2 = "bfb85eb237"
        SHX10_2 = SHX7_2
        SHX11_2 = "open"
        SHX8_2(SHX9_2, SHX10_2, SHX11_2)
      end
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_88:: outside nested blocks until all 'goto SHX_LABEL_88' can see it
  ::SHX_LABEL_88::
end
SHX4_1 = Citizen
SHX4_1 = SHX4_1.CreateThread
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2
  SHX0_2 = pairs
  SHX1_2 = SHX0_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.loadModel
    SHX7_2 = SHX5_2.prop
    SHX6_2 = SHX6_2(SHX7_2)
    if not SHX6_2 then
      return
    end
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.loadModel
    SHX8_2 = SHX5_2.prop_frame
    SHX7_2 = SHX7_2(SHX8_2)
    SHX8_2 = CMG
    SHX8_2 = SHX8_2.loadModel
    SHX9_2 = SHX5_2.prop_controller
    SHX8_2 = SHX8_2(SHX9_2)
    SHX9_2 = CreateObjectNoOffset
    SHX10_2 = SHX6_2
    SHX11_2 = SHX5_2.position
    SHX11_2 = SHX11_2.x
    SHX12_2 = SHX5_2.position
    SHX12_2 = SHX12_2.y
    SHX13_2 = SHX5_2.position
    SHX13_2 = SHX13_2.z
    SHX13_2 = SHX13_2 - 1
    SHX14_2 = false
    SHX15_2 = false
    SHX16_2 = true
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
    SHX10_2 = table
    SHX10_2 = SHX10_2.insert
    SHX11_2 = SHX0_1
    SHX11_2 = SHX11_2[SHX4_2]
    SHX11_2 = SHX11_2.propObjHandlers
    SHX12_2 = SHX9_2
    SHX10_2(SHX11_2, SHX12_2)
    SHX10_2 = CreateObjectNoOffset
    SHX11_2 = SHX6_2
    SHX12_2 = SHX5_2.position
    SHX12_2 = SHX12_2.x
    SHX13_2 = SHX5_2.position
    SHX13_2 = SHX13_2.y
    SHX14_2 = SHX5_2.position
    SHX14_2 = SHX14_2.z
    SHX14_2 = SHX14_2 - 1
    SHX15_2 = false
    SHX16_2 = false
    SHX17_2 = true
    SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
    SHX11_2 = table
    SHX11_2 = SHX11_2.insert
    SHX12_2 = SHX0_1
    SHX12_2 = SHX12_2[SHX4_2]
    SHX12_2 = SHX12_2.propObjHandlers
    SHX13_2 = SHX10_2
    SHX11_2(SHX12_2, SHX13_2)
    SHX11_2 = pairs
    SHX12_2 = SHX0_1
    SHX12_2 = SHX12_2[SHX4_2]
    SHX12_2 = SHX12_2.propObjHandlers
    SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX11_2(SHX12_2)
    for SHX15_2, SHX16_2 in SHX11_2, SHX12_2, SHX13_2, SHX14_2 do
      SHX17_2 = SetEntityHeading
      SHX18_2 = SHX16_2
      SHX19_2 = SHX0_1
      SHX19_2 = SHX19_2[SHX4_2]
      SHX19_2 = SHX19_2.rotation
      SHX17_2(SHX18_2, SHX19_2)
      SHX17_2 = SetEntityInvincible
      SHX18_2 = SHX16_2
      SHX19_2 = true
      SHX17_2(SHX18_2, SHX19_2)
      SHX17_2 = FreezeEntityPosition
      SHX18_2 = SHX16_2
      SHX19_2 = true
      SHX17_2(SHX18_2, SHX19_2)
      SHX17_2 = SHX0_1
      SHX17_2 = SHX17_2[SHX4_2]
      SHX17_2 = SHX17_2.gateRotation
      if nil ~= SHX17_2 then
        SHX18_2 = SetEntityRotation
        SHX19_2 = SHX16_2
        SHX20_2 = SHX17_2.x
        SHX21_2 = SHX17_2.y
        SHX22_2 = SHX17_2.z
        SHX23_2 = 2
        SHX24_2 = false
        SHX18_2(SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
      end
    end
    SHX11_2 = CreateObjectNoOffset
    SHX12_2 = SHX7_2
    SHX13_2 = SHX5_2.position
    SHX13_2 = SHX13_2.x
    SHX14_2 = SHX5_2.position
    SHX14_2 = SHX14_2.y
    SHX15_2 = SHX5_2.position
    SHX15_2 = SHX15_2.z
    SHX15_2 = SHX15_2 - 1.0
    SHX16_2 = false
    SHX17_2 = true
    SHX18_2 = false
    SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
    SHX12_2 = SHX0_1
    SHX12_2 = SHX12_2[SHX4_2]
    SHX12_2.propFrameObjHandler = SHX11_2
    SHX12_2 = SetEntityHeading
    SHX13_2 = SHX0_1
    SHX13_2 = SHX13_2[SHX4_2]
    SHX13_2 = SHX13_2.propFrameObjHandler
    SHX14_2 = SHX0_1
    SHX14_2 = SHX14_2[SHX4_2]
    SHX14_2 = SHX14_2.rotation
    SHX12_2(SHX13_2, SHX14_2)
    SHX12_2 = SetEntityInvincible
    SHX13_2 = SHX0_1
    SHX13_2 = SHX13_2[SHX4_2]
    SHX13_2 = SHX13_2.propFrameObjHandler
    SHX14_2 = true
    SHX12_2(SHX13_2, SHX14_2)
    SHX12_2 = FreezeEntityPosition
    SHX13_2 = SHX0_1
    SHX13_2 = SHX13_2[SHX4_2]
    SHX13_2 = SHX13_2.propFrameObjHandler
    SHX14_2 = true
    SHX12_2(SHX13_2, SHX14_2)
    SHX12_2 = SHX0_1
    SHX12_2 = SHX12_2[SHX4_2]
    SHX12_2 = SHX12_2.gateRotation
    if nil ~= SHX12_2 then
      SHX13_2 = SetEntityRotation
      SHX14_2 = SHX0_1
      SHX14_2 = SHX14_2[SHX4_2]
      SHX14_2 = SHX14_2.propFrameObjHandler
      SHX15_2 = SHX12_2.x
      SHX16_2 = SHX12_2.y
      SHX17_2 = SHX12_2.z
      SHX18_2 = 2
      SHX19_2 = false
      SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
    end
    SHX13_2 = CreateObjectNoOffset
    SHX14_2 = SHX8_2
    SHX15_2 = SHX5_2.controllerPos
    SHX15_2 = SHX15_2.x
    SHX16_2 = SHX5_2.controllerPos
    SHX16_2 = SHX16_2.y
    SHX17_2 = SHX5_2.controllerPos
    SHX17_2 = SHX17_2.z
    SHX17_2 = SHX17_2 - 1
    SHX18_2 = false
    SHX19_2 = false
    SHX20_2 = true
    SHX13_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
    SHX14_2 = SHX0_1
    SHX14_2 = SHX14_2[SHX4_2]
    SHX14_2.propControllerHandler = SHX13_2
    SHX14_2 = SetEntityHeading
    SHX15_2 = SHX13_2
    SHX16_2 = SHX0_1
    SHX16_2 = SHX16_2[SHX4_2]
    SHX16_2 = SHX16_2.controllerRotation
    SHX14_2(SHX15_2, SHX16_2)
    SHX14_2 = SetEntityInvincible
    SHX15_2 = SHX13_2
    SHX16_2 = true
    SHX14_2(SHX15_2, SHX16_2)
    SHX14_2 = FreezeEntityPosition
    SHX15_2 = SHX13_2
    SHX16_2 = true
    SHX14_2(SHX15_2, SHX16_2)
    SHX14_2 = SetModelAsNoLongerNeeded
    SHX15_2 = SHX6_2
    SHX14_2(SHX15_2)
    SHX14_2 = SetModelAsNoLongerNeeded
    SHX15_2 = SHX7_2
    SHX14_2(SHX15_2)
    SHX14_2 = SetModelAsNoLongerNeeded
    SHX15_2 = SHX8_2
    SHX14_2(SHX15_2)
  end
  SHX0_2 = pairs
  SHX1_2 = SHX1_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = CreateObjectNoOffset
    SHX7_2 = -257022130
    SHX8_2 = SHX5_2.position
    SHX8_2 = SHX8_2.x
    SHX9_2 = SHX5_2.position
    SHX9_2 = SHX9_2.y
    SHX10_2 = SHX5_2.position
    SHX10_2 = SHX10_2.z
    SHX10_2 = SHX10_2 - 1.0
    SHX11_2 = false
    SHX12_2 = false
    SHX13_2 = true
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX7_2 = SetEntityHeading
    SHX8_2 = SHX6_2
    SHX9_2 = SHX5_2.position
    SHX9_2 = SHX9_2.w
    SHX7_2(SHX8_2, SHX9_2)
    SHX7_2 = table
    SHX7_2 = SHX7_2.insert
    SHX8_2 = SHX2_1
    SHX9_2 = SHX6_2
    SHX7_2(SHX8_2, SHX9_2)
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.createArea
    SHX8_2 = "bordercloseall_"
    SHX9_2 = tostring
    SHX10_2 = SHX4_2
    SHX9_2 = SHX9_2(SHX10_2)
    SHX8_2 = SHX8_2 .. SHX9_2
    SHX9_2 = SHX5_2.position
    SHX9_2 = SHX9_2.xyz
    SHX10_2 = 1.5
    SHX11_2 = 6.0
    function SHX12_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX13_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    SHX14_2 = SHX3_1
    SHX15_2 = SHX5_2
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  end
end
SHX4_1(SHX5_1)
SHX4_1 = 10000
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2
  SHX0_2 = pairs
  SHX1_2 = SHX0_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX5_2.instruction
    if "open" == SHX6_2 then
      SHX6_2 = pairs
      SHX7_2 = SHX0_1
      SHX7_2 = SHX7_2[SHX4_2]
      SHX7_2 = SHX7_2.propObjHandlers
      SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
      for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
        SHX12_2 = GetEntityCoords
        SHX13_2 = SHX11_2
        SHX12_2 = SHX12_2(SHX13_2)
        SHX13_2 = GetOffsetFromEntityInWorldCoords
        SHX14_2 = SHX0_1
        SHX14_2 = SHX14_2[SHX4_2]
        SHX14_2 = SHX14_2.propFrameObjHandler
        SHX15_2 = SHX10_2 * 5.0
        SHX16_2 = 0.0
        SHX17_2 = 0.0
        SHX13_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2)
        SHX14_2 = SHX12_2.xy
        SHX15_2 = SHX5_2.position
        SHX15_2 = SHX15_2.xy
        SHX14_2 = SHX14_2 - SHX15_2
        SHX14_2 = #SHX14_2
        SHX15_2 = 0.1
        if SHX14_2 < SHX15_2 then
          SHX14_2 = SHX0_1
          SHX14_2 = SHX14_2[SHX4_2]
          SHX14_2.instruction = "none"
        end
        SHX14_2 = SHX4_1
        SHX15_2 = GetFrameTime
        SHX15_2 = SHX15_2()
        SHX14_2 = SHX14_2 * SHX15_2
        SHX15_2 = SetEntityCoordsNoOffset
        SHX16_2 = SHX11_2
        SHX17_2 = SHX12_2.x
        SHX18_2 = SHX5_2.position
        SHX18_2 = SHX18_2.x
        SHX19_2 = SHX13_2.x
        SHX18_2 = SHX18_2 - SHX19_2
        SHX18_2 = SHX18_2 / SHX14_2
        SHX17_2 = SHX17_2 + SHX18_2
        SHX18_2 = SHX12_2.y
        SHX19_2 = SHX5_2.position
        SHX19_2 = SHX19_2.y
        SHX20_2 = SHX13_2.y
        SHX19_2 = SHX19_2 - SHX20_2
        SHX19_2 = SHX19_2 / SHX14_2
        SHX18_2 = SHX18_2 + SHX19_2
        SHX19_2 = SHX12_2.z
        SHX20_2 = false
        SHX21_2 = false
        SHX22_2 = false
        SHX15_2(SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
      end
    end
    SHX6_2 = SHX5_2.instruction
    if "close" == SHX6_2 then
      SHX6_2 = pairs
      SHX7_2 = SHX0_1
      SHX7_2 = SHX7_2[SHX4_2]
      SHX7_2 = SHX7_2.propObjHandlers
      SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
      for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
        SHX12_2 = GetEntityCoords
        SHX13_2 = SHX11_2
        SHX12_2 = SHX12_2(SHX13_2)
        SHX13_2 = GetOffsetFromEntityInWorldCoords
        SHX14_2 = SHX0_1
        SHX14_2 = SHX14_2[SHX4_2]
        SHX14_2 = SHX14_2.propFrameObjHandler
        SHX15_2 = SHX10_2 * 5.0
        SHX16_2 = 0.0
        SHX17_2 = 0.0
        SHX13_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2)
        SHX14_2 = SHX12_2 - SHX13_2
        SHX14_2 = #SHX14_2
        SHX15_2 = 0.1
        if SHX14_2 < SHX15_2 then
          SHX14_2 = SHX0_1
          SHX14_2 = SHX14_2[SHX4_2]
          SHX14_2.instruction = "none"
        end
        SHX14_2 = SHX4_1
        SHX15_2 = GetFrameTime
        SHX15_2 = SHX15_2()
        SHX14_2 = SHX14_2 * SHX15_2
        SHX15_2 = SetEntityCoordsNoOffset
        SHX16_2 = SHX11_2
        SHX17_2 = SHX12_2.x
        SHX18_2 = SHX13_2.x
        SHX19_2 = SHX5_2.position
        SHX19_2 = SHX19_2.x
        SHX18_2 = SHX18_2 - SHX19_2
        SHX18_2 = SHX18_2 / SHX14_2
        SHX17_2 = SHX17_2 + SHX18_2
        SHX18_2 = SHX12_2.y
        SHX19_2 = SHX13_2.y
        SHX20_2 = SHX5_2.position
        SHX20_2 = SHX20_2.y
        SHX19_2 = SHX19_2 - SHX20_2
        SHX19_2 = SHX19_2 / SHX14_2
        SHX18_2 = SHX18_2 + SHX19_2
        SHX19_2 = SHX12_2.z
        SHX20_2 = false
        SHX21_2 = false
        SHX22_2 = false
        SHX15_2(SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
      end
    end
  end
end
SHX6_1 = CMG
SHX6_1 = SHX6_1.createThreadOnTick
SHX7_1 = SHX5_1
SHX8_1 = "Border Force"
SHX6_1(SHX7_1, SHX8_1)
SHX6_1 = AddEventHandler
SHX7_1 = "CMG:onClientSpawn"
function SHX8_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  if SHX1_2 then
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX3_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX4_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
      SHX1_3 = CMG
      SHX1_3 = SHX1_3.hasClientPermission
      SHX2_3 = "borderforce.onduty.permission"
      SHX1_3 = SHX1_3(SHX2_3)
      if not SHX1_3 then
        SHX1_3 = CMG
        SHX1_3 = SHX1_3.isStaffedOnClient
        SHX1_3 = SHX1_3()
        if not SHX1_3 then
          goto SHX_LABEL_65
        end
      end
      SHX1_3 = SHX0_3.objectId
      SHX2_3 = SHX0_1
      SHX2_3 = SHX2_3[SHX1_3]
      SHX2_3 = SHX2_3.open
      if SHX2_3 then
        SHX2_3 = IsControlJustPressed
        SHX3_3 = 0
        SHX4_3 = 38
        SHX2_3 = SHX2_3(SHX3_3, SHX4_3)
        if SHX2_3 then
          SHX2_3 = tCMG
          SHX2_3 = SHX2_3.notify
          SHX3_3 = "~g~Gate closing..."
          SHX2_3(SHX3_3)
          SHX2_3 = TriggerServerEvent
          SHX3_3 = "bfb85eb237"
          SHX4_3 = SHX1_3
          SHX5_3 = "close"
          SHX2_3(SHX3_3, SHX4_3, SHX5_3)
        end
        SHX2_3 = CMG
        SHX2_3 = SHX2_3.DrawText3D
        SHX3_3 = SHX0_1
        SHX3_3 = SHX3_3[SHX1_3]
        SHX3_3 = SHX3_3.controllerPos
        SHX4_3 = "Press [E] to close gate"
        SHX5_3 = 0.35
        SHX2_3(SHX3_3, SHX4_3, SHX5_3)
      else
        SHX2_3 = CMG
        SHX2_3 = SHX2_3.DrawText3D
        SHX3_3 = SHX0_1
        SHX3_3 = SHX3_3[SHX1_3]
        SHX3_3 = SHX3_3.controllerPos
        SHX4_3 = "Press [E] to open gate"
        SHX5_3 = 0.35
        SHX2_3(SHX3_3, SHX4_3, SHX5_3)
        SHX2_3 = IsControlJustPressed
        SHX3_3 = 0
        SHX4_3 = 38
        SHX2_3 = SHX2_3(SHX3_3, SHX4_3)
        if SHX2_3 then
          SHX2_3 = tCMG
          SHX2_3 = SHX2_3.notify
          SHX3_3 = "~g~Gate opening..."
          SHX2_3(SHX3_3)
          SHX2_3 = TriggerServerEvent
          SHX3_3 = "bfb85eb237"
          SHX4_3 = SHX1_3
          SHX5_3 = "open"
          SHX2_3(SHX3_3, SHX4_3, SHX5_3)
        end
      end
      -- [FIX IF ERROR] Move ::SHX_LABEL_65:: outside nested blocks until all 'goto SHX_LABEL_65' can see it
      ::SHX_LABEL_65::
    end
    SHX5_2 = pairs
    SHX6_2 = SHX0_1
    SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
    for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
      SHX11_2 = CMG
      SHX11_2 = SHX11_2.createArea
      SHX12_2 = "border_"
      SHX13_2 = SHX9_2
      SHX12_2 = SHX12_2 .. SHX13_2
      SHX13_2 = SHX10_2.controllerPos
      SHX14_2 = 1.5
      SHX15_2 = 6
      SHX16_2 = SHX2_2
      SHX17_2 = SHX3_2
      SHX18_2 = SHX4_2
      SHX19_2 = {}
      SHX19_2.objectId = SHX9_2
      SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
    end
  end
end
SHX6_1(SHX7_1, SHX8_1)
SHX6_1 = AddEventHandler
SHX7_1 = "onResourceStop"
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX1_2 = GetCurrentResourceName
  SHX1_2 = SHX1_2()
  if SHX0_2 == SHX1_2 then
    SHX1_2 = pairs
    SHX2_2 = SHX0_1
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
    for SHX5_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
      SHX6_2 = pairs
      SHX7_2 = SHX0_1
      SHX7_2 = SHX7_2[SHX5_2]
      SHX7_2 = SHX7_2.propObjHandlers
      SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
      for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
        SHX12_2 = DeleteObject
        SHX13_2 = SHX11_2
        SHX12_2(SHX13_2)
      end
      SHX6_2 = DeleteObject
      SHX7_2 = SHX0_1
      SHX7_2 = SHX7_2[SHX5_2]
      SHX7_2 = SHX7_2.propFrameObjHandler
      SHX6_2(SHX7_2)
      SHX6_2 = DeleteObject
      SHX7_2 = SHX0_1
      SHX7_2 = SHX7_2[SHX5_2]
      SHX7_2 = SHX7_2.propControllerHandler
      SHX6_2(SHX7_2)
    end
    SHX1_2 = pairs
    SHX2_2 = SHX2_1
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
    for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
      SHX7_2 = DeleteEntity
      SHX8_2 = SHX6_2
      SHX7_2(SHX8_2)
    end
  end
end
SHX6_1(SHX7_1, SHX8_1)
SHX6_1 = RegisterNetEvent
SHX7_1 = "03e141ef40"
SHX6_1(SHX7_1)
SHX6_1 = AddEventHandler
SHX7_1 = "03e141ef40"
function SHX8_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX0_1
  SHX2_2 = SHX2_2[SHX0_2]
  SHX2_2.instruction = SHX1_2
  if "open" == SHX1_2 then
    SHX2_2 = SHX0_1
    SHX2_2 = SHX2_2[SHX0_2]
    SHX2_2.open = true
  elseif "close" == SHX1_2 then
    SHX2_2 = SHX0_1
    SHX2_2 = SHX2_2[SHX0_2]
    SHX2_2.open = false
  end
end
SHX6_1(SHX7_1, SHX8_1)
SHX6_1 = RegisterNetEvent
SHX7_1 = "46592aad2d"
SHX6_1(SHX7_1)
SHX6_1 = AddEventHandler
SHX7_1 = "46592aad2d"
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = pairs
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.open
    if SHX7_2 then
      SHX7_2 = SHX0_1
      SHX7_2 = SHX7_2[SHX5_2]
      SHX7_2 = SHX7_2.open
      if not SHX7_2 then
        SHX7_2 = SHX0_1
        SHX7_2 = SHX7_2[SHX5_2]
        SHX7_2.instruction = "open"
        SHX7_2 = SHX0_1
        SHX7_2 = SHX7_2[SHX5_2]
        SHX7_2.open = true
      end
    end
    SHX7_2 = SHX6_2.open
    if not SHX7_2 then
      SHX7_2 = SHX0_1
      SHX7_2 = SHX7_2[SHX5_2]
      SHX7_2 = SHX7_2.open
      if not SHX7_2 then
        SHX7_2 = SHX0_1
        SHX7_2 = SHX7_2[SHX5_2]
        SHX7_2.instruction = "close"
        SHX7_2 = SHX0_1
        SHX7_2 = SHX7_2[SHX5_2]
        SHX7_2.open = false
      end
    end
  end
end
SHX6_1(SHX7_1, SHX8_1)
SHX6_1 = AddEventHandler
SHX7_1 = "CMG:onClientSpawn"
function SHX8_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  if SHX1_2 then
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "923b558511"
    SHX2_2(SHX3_2)
  end
end
SHX6_1(SHX7_1, SHX8_1)
SHX6_1 = RegisterNetEvent
SHX7_1 = "9da3977b15"
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = nil
  SHX1_2 = 75.0
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerCoords
  SHX2_2 = SHX2_2()
  SHX3_2 = pairs
  SHX4_2 = SHX1_1
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = SHX8_2.position
    SHX9_2 = SHX9_2.xyz
    SHX9_2 = SHX2_2 - SHX9_2
    SHX9_2 = #SHX9_2
    if SHX1_2 > SHX9_2 then
      SHX0_2 = SHX8_2
      SHX1_2 = SHX9_2
    end
  end
  if SHX0_2 then
    SHX3_2 = TriggerServerEvent
    SHX4_2 = "d95fd9b2cd"
    SHX5_2 = SHX0_2.name
    SHX3_2(SHX4_2, SHX5_2)
    SHX3_2 = pairs
    SHX4_2 = SHX0_2.opens
    SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
    for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
      SHX9_2 = TriggerServerEvent
      SHX10_2 = "bfb85eb237"
      SHX11_2 = SHX8_2
      SHX12_2 = "close"
      SHX9_2(SHX10_2, SHX11_2, SHX12_2)
    end
  else
    SHX3_2 = notify
    SHX4_2 = "~r~No nearby border to lockdown"
    SHX3_2(SHX4_2)
  end
end
SHX6_1(SHX7_1, SHX8_1)
SHX6_1 = RegisterNetEvent
SHX7_1 = "d95fd9b2cd"
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.notifyPicture
  SHX2_2 = "polnotification"
  SHX3_2 = "notification"
  SHX4_2 = "~r~Lockdown triggered at the "
  SHX5_2 = SHX0_2
  SHX6_2 = " border!"
  SHX4_2 = SHX4_2 .. SHX5_2 .. SHX6_2
  SHX5_2 = "Border Force"
  SHX6_2 = SHX0_2
  SHX7_2 = nil
  SHX8_2 = nil
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
end
SHX6_1(SHX7_1, SHX8_1)
SHX6_1 = ""
SHX7_1 = ""
SHX8_1 = false
SHX9_1 = RegisterNetEvent
SHX10_1 = "5e416b2e9c"
function SHX11_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX6_1 = SHX1_2
  SHX7_1 = SHX0_2
  SHX2_2 = true
  SHX8_1 = SHX2_2
end
SHX9_1(SHX10_1, SHX11_1)
SHX9_1 = CMG
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX7_1
  return SHX0_2
end
SHX9_1.getBorderForceCallsign = SHX10_1
SHX9_1 = CMG
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX6_1
  return SHX0_2
end
SHX9_1.getBorderForceRank = SHX10_1
SHX9_1 = CMG
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX8_1
  return SHX0_2
end
SHX9_1.hasBorderForceCallsign = SHX10_1
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = SHX7_1
  if "" ~= SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.hasClientPermission
    SHX1_2 = "borderforce.onduty.permission"
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 1.064
      SHX2_2 = 0.972
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = SHX7_1
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 0
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    end
  end
end
SHX10_1 = CMG
SHX10_1 = SHX10_1.createThreadOnTick
SHX11_1 = SHX9_1
SHX12_1 = "Border Force Callsign"
SHX10_1(SHX11_1, SHX12_1)
