local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("ItsBlack Test", "DarkTheme")
local Tab = Window:NewTab("AutoFarm")
local Section = Tab:NewSection("Auto Farm Level")
local LocalPlayer = game:GetService("Players").LocalPlayer
local VirtualUser = game:GetService('VirtualUser')
 
_G.a = true
while G.a do wait(.1)
 
MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
if MyLevel == 2000 or MyLevel <= 2049 then
    Mon = "Living Zombie [Lv. 2000]"
    LevelQuest = 2
    NameQuest = "HauntedQuest1"
    NameMon = "StartQuest"
    CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
 
elseif MyLevel == 2050 or MyLevel <= 2100 then
    Mon = "Posessed Mummy [Lv. 2050]"
    LevelQuest = 2
    NameQuest = "HauntedQuest2"
    NameMon = "StartQuest"
    CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
end
if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
 
LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
 
wait(1.1) 
 
game:GetService("ReplicatedStorage").Remotes.CommF:InvokeServer("StartQuest" , NameQuest , LevelQuest)
 
 
elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    if v.Name == Mon then
        repeat wait()
        VirtualUser:CaptureController()
        VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
v.HumanoidRootPart.Size = Vector3.new(50,50,50)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 0, 20)
 
 
        until v.Humanoid.Health <= 0 or _G.a == false
 
    end
 
end
 
end
end
