-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1
SHX0_1 = {}
SHX1_1 = "Watch out, there is more recoil than usual in this city"
SHX2_1 = "Support CMG @store.cmgstudios.net for some cool VIP perks!"
SHX3_1 = "Support CMG @store.cmgstudios.net for some cool VIP perks!"
SHX4_1 = "Support CMG @store.cmgstudios.net for some cool VIP perks!"
SHX5_1 = "Support CMG @store.cmgstudios.net for some cool VIP perks!"
SHX6_1 = "Press L to open your inventory"
SHX7_1 = "KOS is only allowed at redzones!"
SHX8_1 = "You can point with B"
SHX9_1 = "You can make your minimap bigger with Z"
SHX10_1 = "You can perform CPR on your dead friends, with a small chance of resuscitation using /cpr"
SHX11_1 = "You can get your GP to take a look at you and restore your health at any Hospital"
SHX12_1 = "Check out our Website for whitelisted faction applications, https://www.cmgstudios.net"
SHX13_1 = "Want to join the PD? Apply at https://www.cmgstudios.net"
SHX14_1 = "Use /rp ask in character questions"
SHX15_1 = "To call an admin, type /calladmin"
SHX16_1 = "To report a player you can create a player report at https://www.cmgstudios.net/forums/"
SHX17_1 = "You can lock your car with the comma key [,]"
SHX18_1 = "If you are experiencing texture loss increase your Extended Texture Budget in video settings"
SHX19_1 = "F5 to see your gang menu"
SHX20_1 = "Join our discord for discussion & development news https://discord.gg/cmg"
SHX21_1 = "Join our discord for discussion & development news https://discord.gg/cmg"
SHX22_1 = "Join our discord for discussion & development news https://discord.gg/cmg"
SHX23_1 = "Join our discord for discussion & development news https://discord.gg/cmg"
SHX24_1 = "Register on our website for discussion and whitelisting applications https://www.cmgstudios.net"
SHX25_1 = "If you're having issues with your map going blurry, try typing /reset"
SHX26_1 = "If you're having issues with your map going blurry, try typing /reset"
SHX27_1 = "If you're having issues with your map going blurry, try typing /reset"
SHX28_1 = "If you're having issues with your map going blurry, try typing /reset"
SHX29_1 = "If you're having issues with your map going blurry, try typing /reset"
SHX30_1 = "You should use the dispute menu to resolve situations that require compensation. To open press 'ESC' then click 'Dispute'"
SHX31_1 = "You should use the dispute menu to resolve situations that require compensation. To open press 'ESC' then click 'Dispute'"
SHX32_1 = "You should use the dispute menu to resolve situations that require compensation. To open press 'ESC' then click 'Dispute'"
SHX33_1 = "You should use the dispute menu to resolve situations that require compensation. To open press 'ESC' then click 'Dispute'"
SHX34_1 = "You should use the dispute menu to resolve situations that require compensation. To open press 'ESC' then click 'Dispute'"
SHX35_1 = "Link your YouTube account to get a free \194\163500,000, type !linkyoutube in Discord to get started"
SHX36_1 = "Link your YouTube account to get a free \194\163500,000, type !linkyoutube in Discord to get started"
SHX37_1 = "Link your YouTube account to get a free \194\163500,000, type !linkyoutube in Discord to get started"
SHX38_1 = "Link your YouTube account to get a free \194\163500,000, type !linkyoutube in Discord to get started"
SHX39_1 = "Link your YouTube account to get a free \194\163500,000, type !linkyoutube in Discord to get started"
SHX0_1[1] = SHX1_1
SHX0_1[2] = SHX2_1
SHX0_1[3] = SHX3_1
SHX0_1[4] = SHX4_1
SHX0_1[5] = SHX5_1
SHX0_1[6] = SHX6_1
SHX0_1[7] = SHX7_1
SHX0_1[8] = SHX8_1
SHX0_1[9] = SHX9_1
SHX0_1[10] = SHX10_1
SHX0_1[11] = SHX11_1
SHX0_1[12] = SHX12_1
SHX0_1[13] = SHX13_1
SHX0_1[14] = SHX14_1
SHX0_1[15] = SHX15_1
SHX0_1[16] = SHX16_1
SHX0_1[17] = SHX17_1
SHX0_1[18] = SHX18_1
SHX0_1[19] = SHX19_1
SHX0_1[20] = SHX20_1
SHX0_1[21] = SHX21_1
SHX0_1[22] = SHX22_1
SHX0_1[23] = SHX23_1
SHX0_1[24] = SHX24_1
SHX0_1[25] = SHX25_1
SHX0_1[26] = SHX26_1
SHX0_1[27] = SHX27_1
SHX0_1[28] = SHX28_1
SHX0_1[29] = SHX29_1
SHX0_1[30] = SHX30_1
SHX0_1[31] = SHX31_1
SHX0_1[32] = SHX32_1
SHX0_1[33] = SHX33_1
SHX0_1[34] = SHX34_1
SHX0_1[35] = SHX35_1
SHX0_1[36] = SHX36_1
SHX0_1[37] = SHX37_1
SHX0_1[38] = SHX38_1
SHX0_1[39] = SHX39_1
CMGTips = SHX0_1
SHX0_1 = Citizen
SHX0_1 = SHX0_1.CreateThread
function SHX1_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = Wait
  SHX1_2 = 100000
  SHX0_2(SHX1_2)
  while true do
    SHX0_2 = math
    SHX0_2 = SHX0_2.randomseed
    SHX1_2 = GetGameTimer
    SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX1_2()
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    SHX0_2 = math
    SHX0_2 = SHX0_2.random
    SHX1_2 = 1
    SHX2_2 = CMGTips
    SHX2_2 = #SHX2_2
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    SHX1_2 = math
    SHX1_2 = SHX1_2.random
    SHX2_2 = 1
    SHX3_2 = CMGTips
    SHX3_2 = #SHX3_2
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    SHX0_2 = SHX1_2
    SHX1_2 = math
    SHX1_2 = SHX1_2.random
    SHX2_2 = 1
    SHX3_2 = CMGTips
    SHX3_2 = #SHX3_2
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    SHX0_2 = SHX1_2
    SHX1_2 = TriggerEvent
    SHX2_2 = "chatMessage"
    SHX3_2 = "^1[CMG Tips]^1  "
    SHX4_2 = "^5"
    SHX5_2 = CMGTips
    SHX5_2 = SHX5_2[SHX0_2]
    SHX6_2 = "^5"
    SHX3_2 = SHX3_2 .. SHX4_2 .. SHX5_2 .. SHX6_2
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = Wait
    SHX2_2 = 600000
    SHX1_2(SHX2_2)
  end
end
SHX0_1(SHX1_1)
