-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_prison"
SHX0_1 = SHX0_1(SHX1_1)
function SHX1_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = 1
  SHX3_2 = #SHX0_2
  SHX4_2 = 1
  for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = SHX0_2[SHX5_2]
    if SHX6_2 == SHX1_2 then
      SHX6_2 = true
      return SHX6_2
    end
  end
  SHX2_2 = false
  return SHX2_2
end
function SHX2_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2
  if SHX0_2 then
    SHX2_2 = DoesEntityExist
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      goto SHX_LABEL_10
    end
  end
  SHX2_2 = false
  return SHX2_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX2_2 = GetNuiCursorPosition
  SHX2_2, SHX3_2 = SHX2_2()
  SHX4_2 = GetActiveScreenResolution
  SHX4_2, SHX5_2 = SHX4_2()
  SHX6_2 = GetEntityCoords
  SHX7_2 = SHX0_2
  SHX6_2 = SHX6_2(SHX7_2)
  SHX7_2 = World3dToScreen2d
  SHX8_2 = SHX6_2.x
  SHX9_2 = SHX6_2.y
  SHX10_2 = SHX6_2.z
  SHX7_2, SHX8_2, SHX9_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  if not SHX7_2 then
    SHX10_2 = false
    return SHX10_2
  end
  SHX10_2 = GetEntityModel
  SHX11_2 = SHX0_2
  SHX10_2 = SHX10_2(SHX11_2)
  SHX11_2 = GetModelDimensions
  SHX12_2 = SHX10_2
  SHX11_2, SHX12_2 = SHX11_2(SHX12_2)
  SHX13_2 = math
  SHX13_2 = SHX13_2.max
  SHX14_2 = math
  SHX14_2 = SHX14_2.abs
  SHX15_2 = SHX12_2.x
  SHX16_2 = SHX11_2.x
  SHX15_2 = SHX15_2 - SHX16_2
  SHX14_2 = SHX14_2(SHX15_2)
  SHX15_2 = math
  SHX15_2 = SHX15_2.abs
  SHX16_2 = SHX12_2.y
  SHX17_2 = SHX11_2.y
  SHX16_2 = SHX16_2 - SHX17_2
  SHX15_2 = SHX15_2(SHX16_2)
  SHX16_2 = math
  SHX16_2 = SHX16_2.abs
  SHX17_2 = SHX12_2.z
  SHX18_2 = SHX11_2.z
  SHX17_2 = SHX17_2 - SHX18_2
  SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2 = SHX16_2(SHX17_2)
  SHX13_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
  SHX14_2 = GetFinalRenderedCamCoord
  SHX14_2 = SHX14_2()
  SHX15_2 = SHX14_2 - SHX6_2
  SHX15_2 = #SHX15_2
  SHX16_2 = SHX13_2 * 100.0
  SHX17_2 = math
  SHX17_2 = SHX17_2.max
  SHX18_2 = SHX15_2
  SHX19_2 = 1.0
  SHX17_2 = SHX17_2(SHX18_2, SHX19_2)
  SHX16_2 = SHX16_2 / SHX17_2
  SHX16_2 = SHX1_2 + SHX16_2
  SHX17_2 = SHX8_2 * SHX4_2
  SHX18_2 = SHX9_2 * SHX5_2
  SHX19_2 = SHX2_2 - SHX17_2
  SHX20_2 = SHX3_2 - SHX18_2
  SHX21_2 = SHX19_2 * SHX19_2
  SHX22_2 = SHX20_2 * SHX20_2
  SHX21_2 = SHX21_2 + SHX22_2
  SHX22_2 = SHX16_2 * SHX16_2
  SHX21_2 = SHX21_2 <= SHX22_2
  return SHX21_2
end
SHX3_1 = {}
SHX3_1.__index = SHX3_1
function SHX4_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = setmetatable
  SHX2_2 = {}
  SHX3_2 = SHX3_1
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX1_2.entity = SHX0_2
  SHX2_2 = CreateCam
  SHX3_2 = "DEFAULT_SCRIPTED_CAMERA"
  SHX4_2 = true
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX1_2.cam = SHX2_2
  SHX1_2.isActive = false
  return SHX1_2
end
SHX3_1.new = SHX4_1
function SHX4_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX4_2 = DoesEntityExist
  SHX5_2 = SHX0_2.entity
  SHX4_2 = SHX4_2(SHX5_2)
  if not SHX4_2 then
    return
  end
  SHX4_2 = GetOffsetFromEntityInWorldCoords
  SHX5_2 = SHX0_2.entity
  SHX6_2 = SHX1_2[1]
  SHX6_2 = SHX6_2.x
  SHX7_2 = SHX1_2[1]
  SHX7_2 = SHX7_2.y
  SHX8_2 = SHX1_2[1]
  SHX8_2 = SHX8_2.z
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = nil
  if not SHX3_2 then
    SHX6_2 = GetEntityRotation
    SHX7_2 = SHX0_2.entity
    SHX6_2 = SHX6_2(SHX7_2)
    SHX7_2 = vector3
    SHX8_2 = SHX1_2[2]
    SHX8_2 = SHX8_2.x
    SHX9_2 = SHX6_2.x
    SHX8_2 = SHX8_2 + SHX9_2
    SHX9_2 = SHX1_2[2]
    SHX9_2 = SHX9_2.y
    SHX10_2 = SHX6_2.y
    SHX9_2 = SHX9_2 + SHX10_2
    SHX10_2 = SHX1_2[2]
    SHX10_2 = SHX10_2.z
    SHX11_2 = SHX6_2.z
    SHX10_2 = SHX10_2 + SHX11_2
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
    SHX5_2 = SHX7_2
  else
    SHX5_2 = SHX1_2[2]
  end
  if SHX2_2 then
    SHX6_2 = SHX0_2.isActive
    if SHX6_2 then
      SHX6_2 = CreateCam
      SHX7_2 = "DEFAULT_SCRIPTED_CAMERA"
      SHX8_2 = true
      SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
      SHX7_2 = SetCamCoord
      SHX8_2 = SHX6_2
      SHX9_2 = SHX4_2.x
      SHX10_2 = SHX4_2.y
      SHX11_2 = SHX4_2.z
      SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
      SHX7_2 = SetCamRot
      SHX8_2 = SHX6_2
      SHX9_2 = SHX5_2.x
      SHX10_2 = SHX5_2.y
      SHX11_2 = SHX5_2.z
      SHX12_2 = 2
      SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX7_2 = SetCamFov
      SHX8_2 = SHX6_2
      SHX9_2 = 30.0
      SHX7_2(SHX8_2, SHX9_2)
      SHX7_2 = SetCamActive
      SHX8_2 = SHX6_2
      SHX9_2 = true
      SHX7_2(SHX8_2, SHX9_2)
      SHX7_2 = SetCamActiveWithInterp
      SHX8_2 = SHX6_2
      SHX9_2 = SHX0_2.cam
      SHX10_2 = 1500
      SHX11_2 = 1
      SHX12_2 = 1
      SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX7_2 = SetCamActive
      SHX8_2 = SHX0_2.cam
      SHX9_2 = false
      SHX7_2(SHX8_2, SHX9_2)
      SHX7_2 = DestroyCam
      SHX8_2 = SHX0_2.cam
      SHX9_2 = false
      SHX7_2(SHX8_2, SHX9_2)
      SHX0_2.cam = SHX6_2
  end
  else
    SHX6_2 = SetCamCoord
    SHX7_2 = SHX0_2.cam
    SHX8_2 = SHX4_2.x
    SHX9_2 = SHX4_2.y
    SHX10_2 = SHX4_2.z
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    SHX6_2 = SetCamRot
    SHX7_2 = SHX0_2.cam
    SHX8_2 = SHX5_2.x
    SHX9_2 = SHX5_2.y
    SHX10_2 = SHX5_2.z
    SHX11_2 = 2
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX6_2 = SetCamFov
    SHX7_2 = SHX0_2.cam
    SHX8_2 = 30.0
    SHX6_2(SHX7_2, SHX8_2)
    SHX6_2 = SHX0_2.isActive
    if not SHX6_2 then
      SHX6_2 = SetCamActive
      SHX7_2 = SHX0_2.cam
      SHX8_2 = true
      SHX6_2(SHX7_2, SHX8_2)
    end
  end
end
SHX3_1.setCamera = SHX4_1
function SHX4_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX3_2 = RenderScriptCams
  SHX4_2 = true
  SHX5_2 = SHX1_2 or SHX5_2
  if not SHX1_2 then
    SHX5_2 = false
  end
  SHX6_2 = SHX2_2 or SHX6_2
  if not SHX2_2 then
    SHX6_2 = 0
  end
  SHX7_2 = true
  SHX8_2 = true
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX0_2.isActive = true
end
SHX3_1.activate = SHX4_1
function SHX4_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX3_2 = RenderScriptCams
  SHX4_2 = false
  SHX5_2 = SHX1_2 or SHX5_2
  if not SHX1_2 then
    SHX5_2 = false
  end
  SHX6_2 = SHX2_2 or SHX6_2
  if not SHX2_2 then
    SHX6_2 = 0
  end
  SHX7_2 = true
  SHX8_2 = true
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX0_2.isActive = false
end
SHX3_1.deactivate = SHX4_1
function SHX4_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX0_2.isActive
  if SHX1_2 then
    SHX2_2 = SHX0_2
    SHX1_2 = SHX0_2.deactivate
    SHX3_2 = true
    SHX4_2 = 1500
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = Wait
    SHX2_2 = 1500
    SHX1_2(SHX2_2)
  end
  SHX1_2 = SHX0_2.cam
  if SHX1_2 then
    SHX1_2 = DestroyCam
    SHX2_2 = SHX0_2.cam
    SHX3_2 = false
    SHX1_2(SHX2_2, SHX3_2)
    SHX0_2.cam = nil
  end
  SHX0_2.isActive = false
end
SHX3_1.destroy = SHX4_1
SHX4_1 = "prompt@jail"
SHX5_1 = {}
SHX6_1 = "jail_work_left_up"
SHX7_1 = "jail_work_left_down"
SHX8_1 = "jail_work_right_up"
SHX9_1 = "jail_work_right_down"
SHX5_1[1] = SHX6_1
SHX5_1[2] = SHX7_1
SHX5_1[3] = SHX8_1
SHX5_1[4] = SHX9_1
SHX6_1 = {}
SHX6_1.__index = SHX6_1
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = setmetatable
  SHX2_2 = {}
  SHX3_2 = SHX6_1
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX1_2.ped = SHX0_2
  SHX1_2.currentAnim = nil
  SHX1_2.animSpeed = 1.0
  return SHX1_2
end
SHX6_1.new = SHX7_1
function SHX7_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX2_2 = SHX5_1
  SHX2_2 = SHX2_2[SHX1_2]
  if not SHX2_2 then
    return
  end
  SHX0_2.currentAnim = SHX2_2
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.loadAnimDict
  SHX4_2 = SHX4_1
  SHX3_2(SHX4_2)
  SHX3_2 = TaskPlayAnim
  SHX4_2 = SHX0_2.ped
  SHX5_2 = SHX4_1
  SHX6_2 = SHX2_2
  SHX7_2 = 8.0
  SHX8_2 = -8.0
  SHX9_2 = -1
  SHX10_2 = 2
  SHX11_2 = 0.0
  SHX12_2 = false
  SHX13_2 = false
  SHX14_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
end
SHX6_1.playScrewAnim = SHX7_1
function SHX7_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = SHX0_2.currentAnim
  if not SHX2_2 then
    return
  end
  SHX0_2.animSpeed = SHX1_2
  SHX2_2 = SetEntityAnimSpeed
  SHX3_2 = SHX0_2.ped
  SHX4_2 = SHX4_1
  SHX5_2 = SHX0_2.currentAnim
  SHX6_2 = SHX1_2
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
end
SHX6_1.setSpeed = SHX7_1
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX0_2.currentAnim
  if not SHX1_2 then
    SHX1_2 = 0.0
    return SHX1_2
  end
  SHX1_2 = GetEntityAnimCurrentTime
  SHX2_2 = SHX0_2.ped
  SHX3_2 = SHX4_1
  SHX4_2 = SHX0_2.currentAnim
  return SHX1_2(SHX2_2, SHX3_2, SHX4_2)
end
SHX6_1.getCurrentTime = SHX7_1
function SHX7_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2
  SHX4_2 = SHX0_2
  SHX3_2 = SHX0_2.getCurrentTime
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = SHX1_2 <= SHX3_2 and SHX2_2 >= SHX3_2
  return SHX4_2
end
SHX6_1.isInTimeRange = SHX7_1
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = ClearPedTasks
  SHX2_2 = SHX0_2.ped
  SHX1_2(SHX2_2)
  SHX0_2.currentAnim = nil
end
SHX6_1.stop = SHX7_1
function SHX7_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.loadAnimDict
  SHX8_2 = SHX1_2
  SHX7_2(SHX8_2)
  SHX7_2 = HasAnimDictLoaded
  SHX8_2 = SHX1_2
  SHX7_2 = SHX7_2(SHX8_2)
  if not SHX7_2 then
    SHX7_2 = false
    return SHX7_2
  end
  SHX7_2 = TaskPlayAnim
  SHX8_2 = SHX0_2
  SHX9_2 = SHX1_2
  SHX10_2 = SHX2_2
  SHX11_2 = SHX3_2 or SHX11_2
  if not SHX3_2 then
    SHX11_2 = 8.0
  end
  SHX12_2 = SHX4_2 or SHX12_2
  if not SHX4_2 then
    SHX12_2 = -8.0
  end
  SHX13_2 = SHX5_2 or SHX13_2
  if not SHX5_2 then
    SHX13_2 = -1
  end
  SHX14_2 = SHX6_2 or SHX14_2
  if not SHX6_2 then
    SHX14_2 = 2
  end
  SHX15_2 = 0.0
  SHX16_2 = false
  SHX17_2 = false
  SHX18_2 = false
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  SHX7_2 = true
  return SHX7_2
end
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 14
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 15
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 16
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 17
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 37
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
end
SHX9_1 = {}
SHX9_1.__index = SHX9_1
SHX9_1.activeInstance = nil
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = setmetatable
  SHX2_2 = {}
  SHX3_2 = SHX9_1
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX1_2.entity = SHX0_2
  SHX1_2.isRunning = false
  SHX1_2.isInMinigame = false
  SHX1_2.cameraAlternate = false
  SHX1_2.inControlRange = false
  SHX2_2 = SHX3_1.new
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX1_2.camera = SHX2_2
  SHX2_2 = SHX6_1.new
  SHX3_2 = PlayerPedId
  SHX3_2 = SHX3_2()
  SHX2_2 = SHX2_2(SHX3_2)
  SHX1_2.animator = SHX2_2
  SHX1_2.screwDriver = nil
  SHX1_2.screwObject = nil
  return SHX1_2
end
SHX9_1.new = SHX10_1
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = SHX0_1.toiletEscape
  if not SHX1_2 then
    SHX2_2 = false
    return SHX2_2
  end
  SHX2_2 = GetEntityCoords
  SHX3_2 = SHX0_2.entity
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.loadModel
  SHX4_2 = SHX1_2.screwDriverModel
  SHX3_2(SHX4_2)
  SHX3_2 = CreateObject
  SHX4_2 = SHX1_2.screwDriverModel
  SHX5_2 = SHX2_2.x
  SHX6_2 = SHX2_2.y
  SHX7_2 = SHX2_2.z
  SHX7_2 = SHX7_2 - 10
  SHX8_2 = SHX1_2.useNetworkedObjects
  SHX9_2 = true
  SHX10_2 = false
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX0_2.screwDriver = SHX3_2
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX0_2.screwDriver
  SHX3_2 = SHX3_2(SHX4_2)
  if not SHX3_2 then
    SHX3_2 = false
    return SHX3_2
  end
  SHX3_2 = SetEntityVisible
  SHX4_2 = SHX0_2.screwDriver
  SHX5_2 = false
  SHX6_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = SetModelAsNoLongerNeeded
  SHX4_2 = SHX1_2.screwDriverModel
  SHX3_2(SHX4_2)
  SHX3_2 = SetEntityCompletelyDisableCollision
  SHX4_2 = SHX0_2.screwDriver
  SHX5_2 = false
  SHX6_2 = true
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.loadModel
  SHX4_2 = SHX1_2.screwModel
  SHX3_2(SHX4_2)
  SHX3_2 = CreateObject
  SHX4_2 = SHX1_2.screwModel
  SHX5_2 = SHX2_2.x
  SHX6_2 = SHX2_2.y
  SHX7_2 = SHX2_2.z
  SHX7_2 = SHX7_2 - 10
  SHX8_2 = SHX1_2.useNetworkedObjects
  SHX9_2 = true
  SHX10_2 = false
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX0_2.screwObject = SHX3_2
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX0_2.screwObject
  SHX3_2 = SHX3_2(SHX4_2)
  if not SHX3_2 then
    SHX3_2 = false
    return SHX3_2
  end
  SHX3_2 = SetEntityVisible
  SHX4_2 = SHX0_2.screwObject
  SHX5_2 = false
  SHX6_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = SetModelAsNoLongerNeeded
  SHX4_2 = SHX1_2.screwModel
  SHX3_2(SHX4_2)
  SHX3_2 = SetEntityCompletelyDisableCollision
  SHX4_2 = SHX0_2.screwObject
  SHX5_2 = false
  SHX6_2 = true
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = true
  return SHX3_2
end
SHX9_1.createObjects = SHX10_1
function SHX10_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX2_2 = DoesEntityExist
  SHX3_2 = SHX0_2.screwDriver
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    return
  end
  SHX2_2 = SetEntityVisible
  SHX3_2 = SHX0_2.screwDriver
  SHX4_2 = true
  SHX5_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  if 1 == SHX1_2 or 2 == SHX1_2 then
    SHX3_2 = AttachEntityToEntity
    SHX4_2 = SHX0_2.screwDriver
    SHX5_2 = SHX2_2
    SHX6_2 = GetPedBoneIndex
    SHX7_2 = SHX2_2
    SHX8_2 = 18905
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
    SHX7_2 = 0.1319
    SHX8_2 = 0.082
    SHX9_2 = -1.7E-4
    SHX10_2 = 158.9
    SHX11_2 = -28.8
    SHX12_2 = -8.86
    SHX13_2 = true
    SHX14_2 = true
    SHX15_2 = false
    SHX16_2 = true
    SHX17_2 = 1
    SHX18_2 = true
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  else
    SHX3_2 = AttachEntityToEntity
    SHX4_2 = SHX0_2.screwDriver
    SHX5_2 = SHX2_2
    SHX6_2 = GetPedBoneIndex
    SHX7_2 = SHX2_2
    SHX8_2 = 57005
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
    SHX7_2 = 0.1445
    SHX8_2 = 0.0838
    SHX9_2 = -0.0306
    SHX10_2 = -8.9
    SHX11_2 = 40.15
    SHX12_2 = 160.55
    SHX13_2 = true
    SHX14_2 = true
    SHX15_2 = false
    SHX16_2 = true
    SHX17_2 = 1
    SHX18_2 = true
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  end
end
SHX9_1.attachScrewdriver = SHX10_1
function SHX10_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX4_2 = DoesEntityExist
  SHX5_2 = SHX0_2.screwObject
  SHX4_2 = SHX4_2(SHX5_2)
  if not SHX4_2 then
    return
  end
  SHX4_2 = SHX0_1.toiletEscape
  if SHX4_2 then
    SHX5_2 = SHX4_2.screwOffsets
    SHX5_2 = SHX5_2[SHX1_2]
    if SHX5_2 then
      goto SHX_LABEL_15
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_15:: outside nested blocks until all 'goto SHX_LABEL_15' can see it
  ::SHX_LABEL_15::
  SHX5_2 = SHX4_2.screwOffsets
  SHX5_2 = SHX5_2[SHX1_2]
  SHX6_2 = 1 == SHX1_2 or 2 == SHX1_2
  SHX7_2 = GetEntityRotation
  SHX8_2 = SHX0_2.entity
  SHX7_2 = SHX7_2(SHX8_2)
  SHX8_2 = SHX5_2.screw
  SHX8_2 = SHX8_2.x
  if SHX6_2 then
    SHX9_2 = -SHX2_2
    if SHX9_2 then
      goto SHX_LABEL_34
    end
  end
  SHX9_2 = SHX2_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_34:: outside nested blocks until all 'goto SHX_LABEL_34' can see it
  ::SHX_LABEL_34::
  SHX8_2 = SHX8_2 + SHX9_2
  SHX9_2 = GetOffsetFromEntityInWorldCoords
  SHX10_2 = SHX0_2.entity
  SHX11_2 = SHX8_2
  SHX12_2 = SHX5_2.screw
  SHX12_2 = SHX12_2.y
  SHX13_2 = SHX5_2.screw
  SHX13_2 = SHX13_2.z
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX10_2 = SetEntityCoords
  SHX11_2 = SHX0_2.screwObject
  SHX12_2 = SHX9_2.x
  SHX13_2 = SHX9_2.y
  SHX14_2 = SHX9_2.z
  SHX15_2 = false
  SHX16_2 = false
  SHX17_2 = false
  SHX18_2 = false
  SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  SHX10_2 = SetEntityRotation
  SHX11_2 = SHX0_2.screwObject
  SHX12_2 = SHX7_2.x
  SHX12_2 = SHX12_2 + SHX3_2
  SHX13_2 = SHX7_2.y
  if SHX6_2 then
    SHX14_2 = -90.0
    if SHX14_2 then
      goto SHX_LABEL_66
    end
  end
  SHX14_2 = 90.0
  -- [FIX IF ERROR] Move ::SHX_LABEL_66:: outside nested blocks until all 'goto SHX_LABEL_66' can see it
  ::SHX_LABEL_66::
  SHX13_2 = SHX13_2 + SHX14_2
  SHX14_2 = SHX7_2.z
  SHX15_2 = 2
  SHX16_2 = true
  SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX10_2 = SetEntityVisible
  SHX11_2 = SHX0_2.screwObject
  SHX12_2 = true
  SHX13_2 = false
  SHX10_2(SHX11_2, SHX12_2, SHX13_2)
end
SHX9_1.positionScrew = SHX10_1
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = SHX0_2.isInMinigame
  if SHX1_2 then
    SHX1_2 = SHX0_2.cameraAlternate
    if not SHX1_2 then
      goto SHX_LABEL_8
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_8:: outside nested blocks until all 'goto SHX_LABEL_8' can see it
  ::SHX_LABEL_8::
  SHX0_2.cameraAlternate = true
  SHX1_2 = SHX0_2.camera
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.setCamera
  SHX3_2 = {}
  SHX4_2 = vector3
  SHX5_2 = 0.0
  SHX6_2 = 0.0
  SHX7_2 = 1.0
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX5_2 = vector3
  SHX6_2 = 0.0
  SHX7_2 = 0.0
  SHX8_2 = GetEntityHeading
  SHX9_2 = SHX0_2.entity
  SHX8_2 = SHX8_2(SHX9_2)
  SHX8_2 = SHX8_2 + 180.0
  SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX3_2[1] = SHX4_2
  SHX3_2[2] = SHX5_2
  SHX3_2[3] = SHX6_2
  SHX3_2[4] = SHX7_2
  SHX3_2[5] = SHX8_2
  SHX3_2[6] = SHX9_2
  SHX4_2 = true
  SHX5_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX0_2.camera
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.activate
  SHX3_2 = true
  SHX4_2 = 300
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
end
SHX9_1.switchToAlternateCamera = SHX10_1
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = SHX0_2.isInMinigame
  if SHX1_2 then
    SHX1_2 = SHX0_2.cameraAlternate
    if SHX1_2 then
      goto SHX_LABEL_8
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_8:: outside nested blocks until all 'goto SHX_LABEL_8' can see it
  ::SHX_LABEL_8::
  SHX0_2.cameraAlternate = false
  SHX1_2 = SHX0_1.toiletEscape
  if SHX1_2 then
    SHX2_2 = SHX1_2.screwOffsets
    SHX3_2 = SHX0_2.currentScrewIndex
    SHX2_2 = SHX2_2[SHX3_2]
    if SHX2_2 then
      goto SHX_LABEL_18
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_18:: outside nested blocks until all 'goto SHX_LABEL_18' can see it
  ::SHX_LABEL_18::
  SHX2_2 = SHX1_2.screwOffsets
  SHX3_2 = SHX0_2.currentScrewIndex
  SHX2_2 = SHX2_2[SHX3_2]
  SHX2_2 = SHX2_2.cam
  SHX3_2 = SHX0_2.camera
  SHX4_2 = SHX3_2
  SHX3_2 = SHX3_2.setCamera
  SHX5_2 = SHX2_2
  SHX6_2 = true
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = SHX0_2.camera
  SHX4_2 = SHX3_2
  SHX3_2 = SHX3_2.activate
  SHX5_2 = true
  SHX6_2 = 300
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
end
SHX9_1.switchToScrewCamera = SHX10_1
function SHX10_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX2_2 = SHX0_1.toiletEscape
  if not SHX2_2 then
    SHX3_2 = false
    return SHX3_2
  end
  SHX3_2 = 1 == SHX1_2 or 2 == SHX1_2
  SHX0_2.isInMinigame = true
  SHX0_2.currentScrewIndex = SHX1_2
  SHX0_2.cameraAlternate = false
  SHX4_2 = SHX2_2.screwOffsets
  SHX4_2 = SHX4_2[SHX1_2]
  SHX4_2 = SHX4_2.cam
  SHX5_2 = SHX0_2.camera
  SHX6_2 = SHX5_2
  SHX5_2 = SHX5_2.setCamera
  SHX7_2 = SHX4_2
  SHX8_2 = false
  SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = SHX0_2.camera
  SHX6_2 = SHX5_2
  SHX5_2 = SHX5_2.activate
  SHX7_2 = true
  SHX8_2 = 1500
  SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX6_2 = SHX0_2
  SHX5_2 = SHX0_2.positionScrew
  SHX7_2 = SHX1_2
  SHX8_2 = 0
  SHX9_2 = 0
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX6_2 = SHX0_2
  SHX5_2 = SHX0_2.attachScrewdriver
  SHX7_2 = SHX1_2
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = SHX0_2.animator
  SHX6_2 = SHX5_2
  SHX5_2 = SHX5_2.playScrewAnim
  SHX7_2 = SHX1_2
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = Wait
  SHX6_2 = 100
  SHX5_2(SHX6_2)
  SHX5_2 = {}
  SHX5_2.start = 0.25
  SHX5_2.finish = 0.75
  SHX0_2.inControlRange = false
  SHX6_2 = false
  SHX7_2 = 0.0
  SHX8_2 = 0.0
  SHX9_2 = SetEntityVisible
  SHX10_2 = SHX0_2.screwObject
  SHX11_2 = true
  SHX12_2 = false
  SHX9_2(SHX10_2, SHX11_2, SHX12_2)
  SHX9_2 = CreateThread
  function SHX10_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3
    while true do
      SHX0_3 = SHX0_2.isRunning
      if not SHX0_3 then
        break
      end
      SHX0_3 = SHX0_2.isInMinigame
      if not SHX0_3 then
        break
      end
      SHX0_3 = IsDisabledControlJustPressed
      SHX1_3 = 0
      SHX2_3 = 45
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      if SHX0_3 then
        SHX0_3 = SHX0_2
        SHX1_3 = SHX0_3
        SHX0_3 = SHX0_3.switchToAlternateCamera
        SHX0_3(SHX1_3)
      end
      SHX0_3 = IsControlJustReleased
      SHX1_3 = 0
      SHX2_3 = 45
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      if SHX0_3 then
        SHX0_3 = SHX0_2
        SHX1_3 = SHX0_3
        SHX0_3 = SHX0_3.switchToScrewCamera
        SHX0_3(SHX1_3)
      end
      SHX0_3 = SHX8_1
      SHX0_3()
      SHX0_3 = Wait
      SHX1_3 = 0
      SHX0_3(SHX1_3)
    end
  end
  SHX9_2(SHX10_2)
  while true do
    SHX9_2 = SHX0_2.isRunning
    if not SHX9_2 then
      break
    end
    SHX9_2 = SHX8_1
    SHX9_2()
    SHX9_2 = SHX0_2.animator
    SHX10_2 = SHX9_2
    SHX9_2 = SHX9_2.getCurrentTime
    SHX9_2 = SHX9_2(SHX10_2)
    SHX10_2 = SHX0_2.animator
    SHX11_2 = SHX10_2
    SHX10_2 = SHX10_2.isInTimeRange
    SHX12_2 = SHX5_2.start
    SHX13_2 = SHX5_2.finish
    SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
    SHX11_2 = IsDisabledControlJustPressed
    SHX12_2 = 0
    SHX13_2 = 73
    SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
    if SHX11_2 then
      SHX11_2 = SetNuiFocus
      SHX12_2 = false
      SHX13_2 = false
      SHX11_2(SHX12_2, SHX13_2)
      SHX12_2 = SHX0_2
      SHX11_2 = SHX0_2.cancelWithAnimation
      SHX11_2(SHX12_2)
      SHX0_2.isRunning = false
      SHX11_2 = false
      return SHX11_2
    end
    if SHX10_2 then
      SHX11_2 = SHX0_2.inControlRange
      if not SHX11_2 then
        SHX11_2 = SHX0_2.animator
        SHX12_2 = SHX11_2
        SHX11_2 = SHX11_2.setSpeed
        SHX13_2 = 0.0
        SHX11_2(SHX12_2, SHX13_2)
        SHX0_2.inControlRange = true
        SHX11_2 = SetNuiFocus
        SHX12_2 = false
        SHX13_2 = true
        SHX11_2(SHX12_2, SHX13_2)
      end
    end
    SHX11_2 = SHX0_2.inControlRange
    if SHX11_2 then
      SHX11_2 = SHX2_1
      SHX12_2 = SHX0_2.screwObject
      SHX13_2 = 35.0
      SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
      SHX12_2 = IsControlPressed
      SHX13_2 = 0
      SHX14_2 = 24
      SHX12_2 = SHX12_2(SHX13_2, SHX14_2)
      if not SHX12_2 then
        SHX12_2 = IsDisabledControlPressed
        SHX13_2 = 0
        SHX14_2 = 24
        SHX12_2 = SHX12_2(SHX13_2, SHX14_2)
      end
      if SHX11_2 then
        SHX13_2 = SetEntityDrawOutline
        SHX14_2 = SHX0_2.screwObject
        SHX15_2 = true
        SHX13_2(SHX14_2, SHX15_2)
        SHX13_2 = SetEntityDrawOutlineColor
        SHX14_2 = 255
        SHX15_2 = 255
        SHX16_2 = 0
        SHX17_2 = 255
        SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2)
        SHX13_2 = SetEntityDrawOutlineShader
        SHX14_2 = 1
        SHX13_2(SHX14_2)
      else
        SHX13_2 = SetEntityDrawOutline
        SHX14_2 = SHX0_2.screwObject
        SHX15_2 = false
        SHX13_2(SHX14_2, SHX15_2)
      end
      if SHX11_2 and SHX12_2 then
        if not SHX6_2 then
          SHX13_2 = SHX0_2.animator
          SHX14_2 = SHX13_2
          SHX13_2 = SHX13_2.setSpeed
          SHX15_2 = 1.0
          SHX13_2(SHX14_2, SHX15_2)
          SHX13_2 = SetEntityDrawOutlineColor
          SHX14_2 = 0
          SHX15_2 = 255
          SHX16_2 = 0
          SHX17_2 = 255
          SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2)
          SHX6_2 = true
        end
        SHX8_2 = SHX8_2 + 1.0E-4
        if SHX3_2 then
          SHX13_2 = -2.0
          if SHX13_2 then
            goto SHX_LABEL_163
          end
        end
        SHX13_2 = 2.0
        -- [FIX IF ERROR] Move ::SHX_LABEL_163:: outside nested blocks until all 'goto SHX_LABEL_163' can see it
        ::SHX_LABEL_163::
        SHX7_2 = SHX7_2 + SHX13_2
        SHX14_2 = SHX0_2
        SHX13_2 = SHX0_2.positionScrew
        SHX15_2 = SHX1_2
        SHX16_2 = SHX8_2
        SHX17_2 = SHX7_2
        SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2)
        SHX13_2 = SHX5_2.finish
        if SHX9_2 >= SHX13_2 then
          SHX13_2 = SetNuiFocus
          SHX14_2 = false
          SHX15_2 = false
          SHX13_2(SHX14_2, SHX15_2)
          SHX13_2 = SetEntityDrawOutline
          SHX14_2 = SHX0_2.screwObject
          SHX15_2 = false
          SHX13_2(SHX14_2, SHX15_2)
          SHX13_2 = SetEntityVisible
          SHX14_2 = SHX0_2.screwObject
          SHX15_2 = false
          SHX16_2 = false
          SHX13_2(SHX14_2, SHX15_2, SHX16_2)
          SHX13_2 = SHX0_2.camera
          if SHX13_2 then
            SHX13_2 = SHX0_2.camera
            SHX14_2 = SHX13_2
            SHX13_2 = SHX13_2.destroy
            SHX13_2(SHX14_2)
            SHX0_2.camera = nil
          end
          SHX13_2 = true
          return SHX13_2
        end
      elseif SHX6_2 then
        SHX13_2 = SHX0_2.animator
        SHX14_2 = SHX13_2
        SHX13_2 = SHX13_2.setSpeed
        SHX15_2 = 0.0
        SHX13_2(SHX14_2, SHX15_2)
        if SHX11_2 then
          SHX13_2 = SetEntityDrawOutlineColor
          SHX14_2 = 255
          SHX15_2 = 255
          SHX16_2 = 0
          SHX17_2 = 255
          SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2)
        end
        SHX6_2 = false
      end
    end
    SHX11_2 = Wait
    SHX12_2 = 0
    SHX11_2(SHX12_2)
  end
  SHX9_2 = SetNuiFocus
  SHX10_2 = false
  SHX11_2 = false
  SHX9_2(SHX10_2, SHX11_2)
  SHX9_2 = SetEntityDrawOutline
  SHX10_2 = SHX0_2.screwObject
  SHX11_2 = false
  SHX9_2(SHX10_2, SHX11_2)
  SHX0_2.isInMinigame = false
  SHX9_2 = SHX0_2.camera
  if SHX9_2 then
    SHX9_2 = SHX0_2.camera
    SHX10_2 = SHX9_2
    SHX9_2 = SHX9_2.destroy
    SHX9_2(SHX10_2)
    SHX0_2.camera = nil
  end
  SHX9_2 = false
  return SHX9_2
end
SHX9_1.handleScrewMinigame = SHX10_1
function SHX10_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX2_2 = {}
  SHX3_2 = 1
  SHX4_2 = 4
  SHX5_2 = 1
  for SHX6_2 = SHX3_2, SHX4_2, SHX5_2 do
    SHX7_2 = SHX1_1
    SHX8_2 = SHX1_2
    SHX9_2 = SHX6_2
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
    if not SHX7_2 then
      SHX7_2 = #SHX2_2
      SHX7_2 = SHX7_2 + 1
      SHX2_2[SHX7_2] = SHX6_2
    end
  end
  SHX3_2 = #SHX2_2
  if 0 == SHX3_2 then
    SHX3_2 = nil
    return SHX3_2
  end
  SHX3_2 = SHX0_1.toiletEscape
  if SHX3_2 then
    SHX4_2 = SHX3_2.screwLabels
    if SHX4_2 then
      goto SHX_LABEL_36
    end
  end
  SHX4_2 = {}
  SHX5_2 = "Top left"
  SHX6_2 = "Bottom left"
  SHX7_2 = "Top right"
  SHX8_2 = "Bottom right"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX4_2[4] = SHX8_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_36:: outside nested blocks until all 'goto SHX_LABEL_36' can see it
  ::SHX_LABEL_36::
  SHX5_2 = 1
  SHX6_2 = true
  SHX7_2 = nil
  SHX8_2 = CreateThread
  function SHX9_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3
    while true do
      SHX0_3 = SHX6_2
      if not SHX0_3 then
        break
      end
      SHX0_3 = SHX0_2.isRunning
      if not SHX0_3 then
        break
      end
      SHX0_3 = SHX8_1
      SHX0_3()
      SHX1_3 = SHX5_2
      SHX0_3 = SHX2_2
      SHX1_3 = SHX0_3[SHX1_3]
      SHX0_3 = SHX4_2
      SHX0_3 = SHX0_3[SHX1_3]
      if not SHX0_3 then
        SHX0_3 = "Screw "
        SHX2_3 = SHX5_2
        SHX1_3 = SHX2_2
        SHX1_3 = SHX1_3[SHX2_3]
        SHX0_3 = SHX0_3 .. SHX1_3
      end
      SHX1_3 = SetTextFont
      SHX2_3 = 4
      SHX1_3(SHX2_3)
      SHX1_3 = SetTextScale
      SHX2_3 = 0.35
      SHX3_3 = 0.35
      SHX1_3(SHX2_3, SHX3_3)
      SHX1_3 = SetTextColour
      SHX2_3 = 255
      SHX3_3 = 255
      SHX4_3 = 255
      SHX5_3 = 255
      SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3)
      SHX1_3 = SetTextDropshadow
      SHX2_3 = 0
      SHX3_3 = 0
      SHX4_3 = 0
      SHX5_3 = 0
      SHX6_3 = 255
      SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
      SHX1_3 = SetTextEdge
      SHX2_3 = 1
      SHX3_3 = 0
      SHX4_3 = 0
      SHX5_3 = 0
      SHX6_3 = 255
      SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
      SHX1_3 = SetTextEntry
      SHX2_3 = "STRING"
      SHX1_3(SHX2_3)
      SHX1_3 = AddTextComponentSubstringPlayerName
      SHX2_3 = SHX0_3
      SHX3_3 = " - [SCROLL] change [E] select [X] cancel"
      SHX2_3 = SHX2_3 .. SHX3_3
      SHX1_3(SHX2_3)
      SHX1_3 = DrawText
      SHX2_3 = 0.4
      SHX3_3 = 0.25
      SHX1_3(SHX2_3, SHX3_3)
      SHX1_3 = Wait
      SHX2_3 = 0
      SHX1_3(SHX2_3)
    end
  end
  SHX8_2(SHX9_2)
  SHX8_2 = Wait
  SHX9_2 = 100
  SHX8_2(SHX9_2)
  while SHX6_2 do
    SHX8_2 = SHX8_1
    SHX8_2()
    SHX8_2 = IsDisabledControlJustPressed
    SHX9_2 = 0
    SHX10_2 = 14
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
    if not SHX8_2 then
      SHX8_2 = IsDisabledControlJustPressed
      SHX9_2 = 0
      SHX10_2 = 172
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
      if not SHX8_2 then
        goto SHX_LABEL_66
      end
    end
    SHX5_2 = SHX5_2 - 1
    if SHX5_2 < 1 then
      SHX5_2 = #SHX2_2
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_66:: outside nested blocks until all 'goto SHX_LABEL_66' can see it
    ::SHX_LABEL_66::
    SHX8_2 = IsDisabledControlJustPressed
    SHX9_2 = 0
    SHX10_2 = 15
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
    if not SHX8_2 then
      SHX8_2 = IsDisabledControlJustPressed
      SHX9_2 = 0
      SHX10_2 = 173
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
      if not SHX8_2 then
        goto SHX_LABEL_84
      end
    end
    SHX5_2 = SHX5_2 + 1
    SHX8_2 = #SHX2_2
    if SHX5_2 > SHX8_2 then
      SHX5_2 = 1
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_84:: outside nested blocks until all 'goto SHX_LABEL_84' can see it
    ::SHX_LABEL_84::
    SHX8_2 = IsDisabledControlJustPressed
    SHX9_2 = 0
    SHX10_2 = 38
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
    if not SHX8_2 then
      SHX8_2 = IsDisabledControlJustPressed
      SHX9_2 = 0
      SHX10_2 = 191
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
      if not SHX8_2 then
        goto SHX_LABEL_98
      end
    end
    SHX7_2 = SHX2_2[SHX5_2]
    SHX6_2 = false
    -- [FIX IF ERROR] Move ::SHX_LABEL_98:: outside nested blocks until all 'goto SHX_LABEL_98' can see it
    ::SHX_LABEL_98::
    SHX8_2 = IsDisabledControlJustPressed
    SHX9_2 = 0
    SHX10_2 = 73
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
    if not SHX8_2 then
      SHX8_2 = IsDisabledControlJustPressed
      SHX9_2 = 0
      SHX10_2 = 194
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
      if not SHX8_2 then
        goto SHX_LABEL_111
      end
    end
    SHX6_2 = false
    -- [FIX IF ERROR] Move ::SHX_LABEL_111:: outside nested blocks until all 'goto SHX_LABEL_111' can see it
    ::SHX_LABEL_111::
    SHX8_2 = Wait
    SHX9_2 = 0
    SHX8_2(SHX9_2)
  end
  return SHX7_2
end
SHX9_1.selectScrew = SHX10_1
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2
  SHX1_2 = SetNuiFocus
  SHX2_2 = false
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SHX0_2.camera
  if SHX1_2 then
    SHX1_2 = SHX0_2.camera
    SHX2_2 = SHX1_2
    SHX1_2 = SHX1_2.destroy
    SHX1_2(SHX2_2)
    SHX0_2.camera = nil
  end
  SHX1_2 = DetachEntity
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = true
  SHX4_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = GetEntityHeading
  SHX2_2 = SHX0_2.entity
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = GetEntityCoords
  SHX3_2 = SHX0_2.entity
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = GetOffsetFromEntityInWorldCoords
  SHX4_2 = SHX0_2.entity
  SHX5_2 = 0.0
  SHX6_2 = 0.0
  SHX7_2 = 0.55
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = SetEntityCoordsNoOffset
  SHX5_2 = PlayerPedId
  SHX5_2 = SHX5_2()
  SHX6_2 = SHX3_2.x
  SHX7_2 = SHX3_2.y
  SHX8_2 = SHX3_2.z
  SHX9_2 = false
  SHX10_2 = false
  SHX11_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX4_2 = SetEntityHeading
  SHX5_2 = PlayerPedId
  SHX5_2 = SHX5_2()
  SHX6_2 = SHX1_2 - 173.0
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SHX7_1
  SHX5_2 = PlayerPedId
  SHX5_2 = SHX5_2()
  SHX6_2 = "promt@jail_4"
  SHX7_2 = "jail_exit_open_ped"
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = Wait
  SHX5_2 = 4000
  SHX4_2(SHX5_2)
  SHX4_2 = GetOffsetFromEntityInWorldCoords
  SHX5_2 = SHX0_2.entity
  SHX6_2 = -0.5
  SHX7_2 = 0.0
  SHX8_2 = 0.0
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = SHX4_2.x
  SHX6_2 = SHX2_2.x
  SHX5_2 = SHX5_2 - SHX6_2
  SHX6_2 = SHX4_2.y
  SHX7_2 = SHX2_2.y
  SHX6_2 = SHX6_2 - SHX7_2
  SHX7_2 = 25
  SHX8_2 = 80.0
  SHX9_2 = 1
  SHX10_2 = SHX8_2
  SHX11_2 = 1
  for SHX12_2 = SHX9_2, SHX10_2, SHX11_2 do
    SHX13_2 = SHX12_2 / SHX8_2
    SHX14_2 = SetEntityCoords
    SHX15_2 = SHX0_2.entity
    SHX16_2 = SHX2_2.x
    SHX17_2 = SHX5_2 * SHX13_2
    SHX16_2 = SHX16_2 + SHX17_2
    SHX17_2 = SHX2_2.y
    SHX18_2 = SHX6_2 * SHX13_2
    SHX17_2 = SHX17_2 + SHX18_2
    SHX18_2 = SHX2_2.z
    SHX19_2 = false
    SHX20_2 = false
    SHX21_2 = false
    SHX22_2 = false
    SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
    SHX14_2 = Wait
    SHX15_2 = SHX7_2
    SHX14_2(SHX15_2)
  end
  SHX9_2 = GetOffsetFromEntityInWorldCoords
  SHX10_2 = SHX0_2.entity
  SHX11_2 = 0.5
  SHX12_2 = 1.5
  SHX13_2 = 0.0
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX10_2 = Wait
  SHX11_2 = GetAnimDuration
  SHX12_2 = "promt@jail_4"
  SHX13_2 = "jail_exit_open_ped"
  SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
  SHX11_2 = SHX11_2 * 1000
  SHX11_2 = SHX11_2 - 7000
  SHX10_2(SHX11_2)
  SHX10_2 = GetOffsetFromEntityInWorldCoords
  SHX11_2 = SHX0_2.entity
  SHX12_2 = 0.5
  SHX13_2 = -1.0
  SHX14_2 = 0.0
  SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX4_2 = SHX10_2
  SHX10_2 = SetEntityCoordsNoOffset
  SHX11_2 = PlayerPedId
  SHX11_2 = SHX11_2()
  SHX12_2 = SHX4_2.x
  SHX13_2 = SHX4_2.y
  SHX14_2 = SHX4_2.z
  SHX15_2 = false
  SHX16_2 = false
  SHX17_2 = false
  SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX10_2 = SHX7_1
  SHX11_2 = PlayerPedId
  SHX11_2 = SHX11_2()
  SHX12_2 = "promt@jail_5"
  SHX13_2 = "jail_exit_ped"
  SHX10_2(SHX11_2, SHX12_2, SHX13_2)
  SHX10_2 = SetEntityHeading
  SHX11_2 = PlayerPedId
  SHX11_2 = SHX11_2()
  SHX12_2 = SHX1_2
  SHX10_2(SHX11_2, SHX12_2)
  SHX10_2 = SetEntityCollision
  SHX11_2 = SHX0_2.entity
  SHX12_2 = false
  SHX13_2 = false
  SHX10_2(SHX11_2, SHX12_2, SHX13_2)
  SHX10_2 = Wait
  SHX11_2 = GetAnimDuration
  SHX12_2 = "promt@jail_5"
  SHX13_2 = "jail_exit_ped"
  SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
  SHX11_2 = SHX11_2 * 1000
  SHX10_2(SHX11_2)
  SHX10_2 = SetEntityCoordsNoOffset
  SHX11_2 = PlayerPedId
  SHX11_2 = SHX11_2()
  SHX12_2 = SHX9_2.x
  SHX13_2 = SHX9_2.y
  SHX14_2 = SHX9_2.z
  SHX15_2 = false
  SHX16_2 = false
  SHX17_2 = false
  SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX10_2 = SetEntityHeading
  SHX11_2 = PlayerPedId
  SHX11_2 = SHX11_2()
  SHX12_2 = SHX1_2 + 180.0
  SHX10_2(SHX11_2, SHX12_2)
  SHX10_2 = SetEntityCollision
  SHX11_2 = SHX0_2.entity
  SHX12_2 = true
  SHX13_2 = true
  SHX10_2(SHX11_2, SHX12_2, SHX13_2)
  SHX10_2 = SHX7_1
  SHX11_2 = PlayerPedId
  SHX11_2 = SHX11_2()
  SHX12_2 = "prompt@jail"
  SHX13_2 = "jail_exit_close"
  SHX10_2(SHX11_2, SHX12_2, SHX13_2)
  SHX10_2 = Wait
  SHX11_2 = 2500
  SHX10_2(SHX11_2)
  SHX10_2 = GetEntityCoords
  SHX11_2 = SHX0_2.entity
  SHX10_2 = SHX10_2(SHX11_2)
  SHX11_2 = GetOffsetFromEntityInWorldCoords
  SHX12_2 = SHX0_2.entity
  SHX13_2 = 0.5
  SHX14_2 = 0.0
  SHX15_2 = 0.0
  SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX4_2 = SHX11_2
  SHX11_2 = SHX4_2.x
  SHX12_2 = SHX10_2.x
  SHX5_2 = SHX11_2 - SHX12_2
  SHX11_2 = SHX4_2.y
  SHX12_2 = SHX10_2.y
  SHX6_2 = SHX11_2 - SHX12_2
  SHX11_2 = 1
  SHX12_2 = SHX8_2
  SHX13_2 = 1
  for SHX14_2 = SHX11_2, SHX12_2, SHX13_2 do
    SHX15_2 = SHX14_2 / SHX8_2
    SHX16_2 = SetEntityCoords
    SHX17_2 = SHX0_2.entity
    SHX18_2 = SHX10_2.x
    SHX19_2 = SHX5_2 * SHX15_2
    SHX18_2 = SHX18_2 + SHX19_2
    SHX19_2 = SHX10_2.y
    SHX20_2 = SHX6_2 * SHX15_2
    SHX19_2 = SHX19_2 + SHX20_2
    SHX20_2 = SHX10_2.z
    SHX21_2 = false
    SHX22_2 = false
    SHX23_2 = false
    SHX24_2 = false
    SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
    SHX16_2 = Wait
    SHX17_2 = SHX7_2
    SHX16_2(SHX17_2)
  end
  SHX11_2 = Wait
  SHX12_2 = GetAnimDuration
  SHX13_2 = "prompt@jail"
  SHX14_2 = "jail_exit_close"
  SHX12_2 = SHX12_2(SHX13_2, SHX14_2)
  SHX12_2 = SHX12_2 * 1000
  SHX12_2 = SHX12_2 - 2500
  SHX12_2 = SHX12_2 - 2000
  SHX11_2(SHX12_2)
end
SHX9_1.playExitSequence = SHX10_1
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = SetNuiFocus
  SHX2_2 = false
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SHX0_2.camera
  if SHX1_2 then
    SHX1_2 = SHX0_2.camera
    SHX2_2 = SHX1_2
    SHX1_2 = SHX1_2.destroy
    SHX1_2(SHX2_2)
    SHX0_2.camera = nil
  end
  SHX1_2 = DetachEntity
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = true
  SHX4_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = GetEntityHeading
  SHX2_2 = SHX0_2.entity
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = GetOffsetFromEntityInWorldCoords
  SHX3_2 = SHX0_2.entity
  SHX4_2 = 0.0
  SHX5_2 = 0.0
  SHX6_2 = 0.55
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = SetEntityCoordsNoOffset
  SHX4_2 = PlayerPedId
  SHX4_2 = SHX4_2()
  SHX5_2 = SHX2_2.x
  SHX6_2 = SHX2_2.y
  SHX7_2 = SHX2_2.z
  SHX8_2 = false
  SHX9_2 = false
  SHX10_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX3_2 = SetEntityHeading
  SHX4_2 = PlayerPedId
  SHX4_2 = SHX4_2()
  SHX5_2 = SHX1_2 - 173.0
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SHX7_1
  SHX4_2 = PlayerPedId
  SHX4_2 = SHX4_2()
  SHX5_2 = "promt@jail_2"
  SHX6_2 = "jail_enter_off_ped"
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = Wait
  SHX4_2 = 1000
  SHX3_2(SHX4_2)
  SHX3_2 = SHX0_2.screwDriver
  if SHX3_2 then
    SHX3_2 = DoesEntityExist
    SHX4_2 = SHX0_2.screwDriver
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      SHX3_2 = DeleteEntity
      SHX4_2 = SHX0_2.screwDriver
      SHX3_2(SHX4_2)
      SHX0_2.screwDriver = nil
    end
  end
  SHX3_2 = Wait
  SHX4_2 = GetAnimDuration
  SHX5_2 = "promt@jail_2"
  SHX6_2 = "jail_enter_off_ped"
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SHX4_2 * 1000
  SHX4_2 = SHX4_2 - 1000
  SHX3_2(SHX4_2)
end
SHX9_1.cancelWithAnimation = SHX10_1
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2.isRunning = false
  SHX0_2.isInMinigame = false
  SHX1_2 = SHX9_1.activeInstance
  if SHX1_2 == SHX0_2 then
    SHX9_1.activeInstance = nil
  end
  SHX1_2 = SetNuiFocus
  SHX2_2 = false
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SHX0_2.screwDriver
  if SHX1_2 then
    SHX1_2 = DoesEntityExist
    SHX2_2 = SHX0_2.screwDriver
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = DeleteEntity
      SHX2_2 = SHX0_2.screwDriver
      SHX1_2(SHX2_2)
      SHX0_2.screwDriver = nil
    end
  end
  SHX1_2 = SHX0_2.screwObject
  if SHX1_2 then
    SHX1_2 = DoesEntityExist
    SHX2_2 = SHX0_2.screwObject
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = SetEntityDrawOutline
      SHX2_2 = SHX0_2.screwObject
      SHX3_2 = false
      SHX1_2(SHX2_2, SHX3_2)
      SHX1_2 = DeleteEntity
      SHX2_2 = SHX0_2.screwObject
      SHX1_2(SHX2_2)
      SHX0_2.screwObject = nil
    end
  end
  SHX1_2 = SHX0_2.camera
  if SHX1_2 then
    SHX1_2 = SHX0_2.camera
    SHX2_2 = SHX1_2
    SHX1_2 = SHX1_2.destroy
    SHX1_2(SHX2_2)
    SHX0_2.camera = nil
  end
  SHX1_2 = DetachEntity
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = true
  SHX4_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = SHX0_2.animator
  if SHX1_2 then
    SHX1_2 = SHX0_2.animator
    SHX2_2 = SHX1_2
    SHX1_2 = SHX1_2.stop
    SHX1_2(SHX2_2)
    SHX0_2.animator = nil
  end
end
SHX9_1.cleanup = SHX10_1
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2
  SHX1_2 = false
  SHX0_2.isRunning = true
  SHX9_1.activeInstance = SHX0_2
  SHX3_2 = SHX0_2
  SHX2_2 = SHX0_2.createObjects
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    SHX3_2 = SHX0_2
    SHX2_2 = SHX0_2.cleanup
    SHX2_2(SHX3_2)
    return
  end
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = ClearPedTasks
  SHX4_2 = SHX2_2
  SHX3_2(SHX4_2)
  SHX3_2 = GetOffsetFromEntityInWorldCoords
  SHX4_2 = SHX0_2.entity
  SHX5_2 = 0.0
  SHX6_2 = -0.5
  SHX7_2 = 0.55
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = SetEntityCoordsNoOffset
  SHX5_2 = SHX2_2
  SHX6_2 = SHX3_2.x
  SHX7_2 = SHX3_2.y
  SHX8_2 = SHX3_2.z
  SHX9_2 = false
  SHX10_2 = false
  SHX11_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX4_2 = SetEntityHeading
  SHX5_2 = SHX2_2
  SHX6_2 = GetEntityHeading
  SHX7_2 = SHX0_2.entity
  SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2 = SHX6_2(SHX7_2)
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
  SHX4_2 = GetAnimDuration
  SHX5_2 = "promt@jail_3"
  SHX6_2 = "jail_enter_ped"
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  if not SHX4_2 then
    SHX4_2 = 0.0
  end
  SHX4_2 = SHX4_2 * 1000
  if SHX4_2 <= 0 then
    SHX4_2 = 2000
  end
  SHX5_2 = SHX7_1
  SHX6_2 = SHX2_2
  SHX7_2 = "promt@jail_3"
  SHX8_2 = "jail_enter_ped"
  SHX9_2 = 8.0
  SHX10_2 = -8.0
  SHX11_2 = -1
  SHX12_2 = 2
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX5_2 = Wait
  SHX6_2 = 2000
  SHX5_2(SHX6_2)
  SHX6_2 = SHX0_2
  SHX5_2 = SHX0_2.attachScrewdriver
  SHX7_2 = 1
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = math
  SHX5_2 = SHX5_2.max
  SHX6_2 = 0
  SHX7_2 = SHX4_2 - 2000
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
  SHX6_2 = Wait
  SHX7_2 = SHX5_2
  SHX6_2(SHX7_2)
  SHX6_2 = AttachEntityToEntity
  SHX7_2 = SHX2_2
  SHX8_2 = SHX0_2.entity
  SHX9_2 = 0
  SHX10_2 = 0.0
  SHX11_2 = 0.0
  SHX12_2 = 0.55
  SHX13_2 = 0.0
  SHX14_2 = 0.0
  SHX15_2 = 0.0
  SHX16_2 = false
  SHX17_2 = false
  SHX18_2 = true
  SHX19_2 = false
  SHX20_2 = 2
  SHX21_2 = true
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.TriggerServerCallback
  SHX7_2 = "343493b5b7"
  SHX6_2 = SHX6_2(SHX7_2)
  if not SHX6_2 then
    SHX6_2 = {}
  end
  while true do
    SHX7_2 = SHX0_2.isRunning
    if not SHX7_2 then
      break
    end
    SHX7_2 = #SHX6_2
    if not (SHX7_2 < 4) then
      break
    end
    SHX8_2 = SHX0_2
    SHX7_2 = SHX0_2.selectScrew
    SHX9_2 = SHX6_2
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
    if not SHX7_2 then
      SHX9_2 = SHX0_2
      SHX8_2 = SHX0_2.cancelWithAnimation
      SHX8_2(SHX9_2)
      SHX0_2.isRunning = false
      break
    end
    SHX8_2 = AttachEntityToEntity
    SHX9_2 = SHX2_2
    SHX10_2 = SHX0_2.entity
    SHX11_2 = 0
    SHX12_2 = 0.0
    SHX13_2 = 0.0
    SHX14_2 = 0.55
    SHX15_2 = 0.0
    SHX16_2 = 0.0
    SHX17_2 = -180.0
    SHX18_2 = false
    SHX19_2 = false
    SHX20_2 = true
    SHX21_2 = false
    SHX22_2 = 2
    SHX23_2 = true
    SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
    SHX9_2 = SHX0_2
    SHX8_2 = SHX0_2.handleScrewMinigame
    SHX10_2 = SHX7_2
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
    SHX9_2 = SHX0_2.camera
    if SHX9_2 then
      SHX9_2 = SHX0_2.camera
      SHX10_2 = SHX9_2
      SHX9_2 = SHX9_2.destroy
      SHX9_2(SHX10_2)
      SHX0_2.camera = nil
    end
    if not SHX8_2 then
      break
    end
    SHX9_2 = CMG
    SHX9_2 = SHX9_2.TriggerServerCallback
    SHX10_2 = "2a18065f82"
    SHX11_2 = SHX7_2
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
    if not SHX9_2 then
      break
    end
    SHX9_2 = table
    SHX9_2 = SHX9_2.insert
    SHX10_2 = SHX6_2
    SHX11_2 = SHX7_2
    SHX9_2(SHX10_2, SHX11_2)
    SHX9_2 = #SHX6_2
    if SHX9_2 < 4 then
      SHX9_2 = SHX3_1.new
      SHX10_2 = SHX0_2.entity
      SHX9_2 = SHX9_2(SHX10_2)
      SHX0_2.camera = SHX9_2
    end
  end
  SHX7_2 = SHX0_2.screwDriver
  if SHX7_2 then
    SHX7_2 = DoesEntityExist
    SHX8_2 = SHX0_2.screwDriver
    SHX7_2 = SHX7_2(SHX8_2)
    if SHX7_2 then
      SHX7_2 = DeleteEntity
      SHX8_2 = SHX0_2.screwDriver
      SHX7_2(SHX8_2)
      SHX0_2.screwDriver = nil
    end
  end
  SHX7_2 = SHX0_2.screwObject
  if SHX7_2 then
    SHX7_2 = DoesEntityExist
    SHX8_2 = SHX0_2.screwObject
    SHX7_2 = SHX7_2(SHX8_2)
    if SHX7_2 then
      SHX7_2 = SetEntityDrawOutline
      SHX8_2 = SHX0_2.screwObject
      SHX9_2 = false
      SHX7_2(SHX8_2, SHX9_2)
    end
  end
  SHX7_2 = #SHX6_2
  if SHX7_2 >= 4 then
    SHX7_2 = false
    SHX8_2 = SHX0_1.toiletEscape
    if SHX8_2 then
      SHX9_2 = SHX8_2.instructionsEscape
      if SHX9_2 then
        goto SHX_LABEL_197
      end
    end
    SHX9_2 = "[E] - Escape   [X] - Cancel"
    -- [FIX IF ERROR] Move ::SHX_LABEL_197:: outside nested blocks until all 'goto SHX_LABEL_197' can see it
    ::SHX_LABEL_197::
    SHX10_2 = CreateThread
    function SHX11_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
      SHX0_3 = GetGameTimer
      SHX0_3 = SHX0_3()
      SHX0_3 = SHX0_3 + 30000
      while true do
        SHX1_3 = SHX0_2.isRunning
        if not SHX1_3 then
          break
        end
        SHX1_3 = GetGameTimer
        SHX1_3 = SHX1_3()
        if not (SHX0_3 > SHX1_3) then
          break
        end
        SHX1_3 = BeginTextCommandDisplayHelp
        SHX2_3 = "STRING"
        SHX1_3(SHX2_3)
        SHX1_3 = AddTextComponentSubstringPlayerName
        SHX2_3 = SHX9_2
        SHX1_3(SHX2_3)
        SHX1_3 = EndTextCommandDisplayHelp
        SHX2_3 = 0
        SHX3_3 = false
        SHX4_3 = false
        SHX5_3 = -1
        SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3)
        SHX1_3 = IsDisabledControlJustPressed
        SHX2_3 = 0
        SHX3_3 = 38
        SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
        if SHX1_3 then
          SHX1_3 = SHX0_2
          SHX2_3 = SHX1_3
          SHX1_3 = SHX1_3.playExitSequence
          SHX1_3(SHX2_3)
          SHX1_3 = true
          SHX7_2 = SHX1_3
          break
        end
        SHX1_3 = IsDisabledControlJustPressed
        SHX2_3 = 0
        SHX3_3 = 73
        SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
        if SHX1_3 then
          SHX1_3 = SHX0_2
          SHX2_3 = SHX1_3
          SHX1_3 = SHX1_3.cancelWithAnimation
          SHX1_3(SHX2_3)
          SHX0_2.isRunning = false
          break
        end
        SHX1_3 = Wait
        SHX2_3 = 0
        SHX1_3(SHX2_3)
      end
    end
    SHX10_2(SHX11_2)
    while true do
      SHX10_2 = SHX0_2.isRunning
      if not SHX10_2 or SHX7_2 then
        break
      end
      SHX10_2 = Wait
      SHX11_2 = 100
      SHX10_2(SHX11_2)
    end
    SHX1_2 = SHX7_2
  end
  if SHX1_2 then
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.TriggerServerCallback
    SHX8_2 = "a44731beab"
    SHX7_2(SHX8_2)
  else
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.TriggerServerCallback
    SHX8_2 = "87baecbdcf"
    SHX7_2(SHX8_2)
  end
  SHX8_2 = SHX0_2
  SHX7_2 = SHX0_2.cleanup
  SHX7_2(SHX8_2)
end
SHX9_1.start = SHX10_1
SHX10_1 = _G
SHX10_1.CMG_PrisonToiletScrewGame = SHX9_1
