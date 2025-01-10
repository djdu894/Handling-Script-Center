--源码永远不加密
local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

local function HeartbeatUpdate()
    LastIteration = tick()
    for Index = #FrameUpdateTable, 1, -1 do
        FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
    end
    FrameUpdateTable[1] = LastIteration
    local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
    CurrentFPS = CurrentFPS - CurrentFPS % 1
    FpsLabel.Text = ("时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S"))
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)
game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "搬运脚本中心"; Text ="欢迎使用"; Duration = 2; })
game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "搬运脚本中心中心"; Text ="作者：搬运工"; Duration = 4; })
game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "搬运脚本中心中心"; Text ="快来找你要用的脚本吧"; Duration = 6; })

local ui = loadstring(game:HttpGet("https://github.com/gufan969/UI/blob/main/ui.lua"))(); 
local win = ui:new("搬运脚本中心")

local UITab1 = win:Tab("来找吧",'4483345998')

local about = UITab1:section("通用",true)
about:Button("通用",function()
local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

local function HeartbeatUpdate()
    LastIteration = tick()
    for Index = #FrameUpdateTable, 1, -1 do
        FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
    end
    FrameUpdateTable[1] = LastIteration
    local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
    CurrentFPS = CurrentFPS - CurrentFPS % 1
    FpsLabel.Text = ("时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S"))
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)
local ui = loadstring(game:HttpGet("https://github.com/gufan969/UI/blob/main/ui.lua"))();  
local win = ui:new("搬运脚本中心")

local UITab1 = win:Tab("『信息』",'4483345998')

local about = UITab1:section("查看作者信息",true)

about:Label("搬运脚本中心")
about:Label("作者QQ：3814097685")
about:Button("点击复作者QQ",function()
setclipboard("3814097685")
end)
about:Label("QQ主群：877812092")
about:Button("点击复制主群",function()
setclipboard("877812092")
end)
about:Label("QQ2群： 1007844131")
about:Button("点击复制二群",function()
setclipboard("1007844131")
end)
about:Label("QQ3群： 144654048")
about:Button("点击复制三群",function()
setclipboard("144654048")
end)
about:Label("QQ解卡群： 934737261")
about:Button("点击复制解卡群",function()
setclipboard("934737261")
end)
about:Label("作者：搬运工")
about:Label("你们看我ui都换成火了")
about:Label("就让我脚本火一次吧")

local about = UITab1:section("查看玩家信息",true)

about:Label("你的账号年龄:"..player.AccountAge.."天")
about:Label("你的注入器:"..identifyexecutor())
about:Label("你的用户名:"..game.Players.LocalPlayer.Character.Name)
about:Label("你现在的服务器名称:"..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name)
about:Label("你现在的服务器id:"..game.GameId)
about:Label("你的用户ID:"..game.Players.LocalPlayer.UserId)
about:Label("获取客户端ID:"..game:GetService("RbxAnalyticsService"):GetClientId())
about:Toggle("脚本框架变小一点", "", false, function(state)
        if state then
        game:GetService("CoreGui")["frosty"].Main.Style = "DropShadow"
        else
            game:GetService("CoreGui")["frosty"].Main.Style = "Custom"
        end
    end)
    about:Button("关闭脚本",function()
        game:GetService("CoreGui")["frosty"]:Destroy()
    end)
    
about:Button("怕点不到才加的",function()

end)

local UITab2 = win:Tab("『公告』",'4483345998')

local about = UITab2:section("『公告』",true)

about:Label("感谢所有支持搬运脚本的人")
about:Label("你们看我ui都换成火了")
about:Label("就让我脚本火一次吧")

local UITab1 = win:Tab("通用",'4483345998')

local about = UITab1:section("『通用』",true)
about:Slider("步行速度!", "WalkSpeed", game.Players.LocalPlayer.Character.Humanoid.WalkSpeed, 16, 400, false, function(Speed)
  spawn(function() while task.wait() do game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Speed end end)
end)
about:Slider("跳跃高度!", "JumpPower", game.Players.LocalPlayer.Character.Humanoid.JumpPower, 50, 400, false, function(Jump)
  spawn(function() while task.wait() do game.Players.LocalPlayer.Character.Humanoid.JumpPower = Jump end end)
end)
about:Slider('设置重力', 'Sliderflag', 196.2, 196.2, 1000,false, function(Value)
        game.Workspace.Gravity = Value
end)
about:Button("玩家加入游戏提示",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/scriscriptsc/main/bbn.lua"))()
end)
about:Toggle("夜视","Toggle",false,function(Value)
if Value then

		    game.Lighting.Ambient = Color3.new(1, 1, 1)

		else

		    game.Lighting.Ambient = Color3.new(0, 0, 0)

		end
end)
about:Toggle("自动互动", "Auto Interact", false, function(state)
        if state then
            autoInteract = true
            while autoInteract do
                for _, descendant in pairs(workspace:GetDescendants()) do
                    if descendant:IsA("ProximityPrompt") then
                        fireproximityprompt(descendant)
                    end
                end
                task.wait(0.25) -- Adjust the wait time as needed
            end
        else
            autoInteract = false
        end
end)
about:Button("搬运飞行",function()
local main = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local up = Instance.new("TextButton")
local down = Instance.new("TextButton")
local onof = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local plus = Instance.new("TextButton")
local speed = Instance.new("TextLabel")
local mine = Instance.new("TextButton")
local closebutton = Instance.new("TextButton")
local mini = Instance.new("TextButton")
local mini2 = Instance.new("TextButton")

main.Name = "main"
main.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
main.ResetOnSpawn = false

Frame.Parent = main
Frame.BackgroundColor3 = Color3.fromRGB(163, 255, 137)
Frame.BorderColor3 = Color3.fromRGB(103, 221, 213)
Frame.Position = UDim2.new(0.100320168, 0, 0.379746825, 0)
Frame.Size = UDim2.new(0, 190, 0, 57)

up.Name = "up"
up.Parent = Frame
up.BackgroundColor3 = Color3.fromRGB(79, 255, 152)
up.Size = UDim2.new(0, 44, 0, 28)
up.Font = Enum.Font.SourceSans
up.Text = "上"
up.TextColor3 = Color3.fromRGB(0, 0, 0)
up.TextSize = 14.000

down.Name = "down"
down.Parent = Frame
down.BackgroundColor3 = Color3.fromRGB(215, 255, 121)
down.Position = UDim2.new(0, 0, 0.491228074, 0)
down.Size = UDim2.new(0, 44, 0, 28)
down.Font = Enum.Font.SourceSans
down.Text = "下"
down.TextColor3 = Color3.fromRGB(0, 0, 0)
down.TextSize = 14.000

onof.Name = "onof"
onof.Parent = Frame
onof.BackgroundColor3 = Color3.fromRGB(255, 249, 74)
onof.Position = UDim2.new(0.702823281, 0, 0.491228074, 0)
onof.Size = UDim2.new(0, 56, 0, 28)
onof.Font = Enum.Font.SourceSans
onof.Text = "飞行"
onof.TextColor3 = Color3.fromRGB(0, 0, 0)
onof.TextSize = 14.000

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(242, 60, 255)
TextLabel.Position = UDim2.new(0.469327301, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 100, 0, 28)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "搬运飞行"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

plus.Name = "plus"
plus.Parent = Frame
plus.BackgroundColor3 = Color3.fromRGB(133, 145, 255)
plus.Position = UDim2.new(0.231578946, 0, 0, 0)
plus.Size = UDim2.new(0, 45, 0, 28)
plus.Font = Enum.Font.SourceSans
plus.Text = "+"
plus.TextColor3 = Color3.fromRGB(0, 0, 0)
plus.TextScaled = true
plus.TextSize = 14.000
plus.TextWrapped = true

speed.Name = "speed"
speed.Parent = Frame
speed.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
speed.Position = UDim2.new(0.468421042, 0, 0.491228074, 0)
speed.Size = UDim2.new(0, 44, 0, 28)
speed.Font = Enum.Font.SourceSans
speed.Text = "1"
speed.TextColor3 = Color3.fromRGB(0, 0, 0)
speed.TextScaled = true
speed.TextSize = 14.000
speed.TextWrapped = true

mine.Name = "mine"
mine.Parent = Frame
mine.BackgroundColor3 = Color3.fromRGB(123, 255, 247)
mine.Position = UDim2.new(0.231578946, 0, 0.491228074, 0)
mine.Size = UDim2.new(0, 45, 0, 29)
mine.Font = Enum.Font.SourceSans
mine.Text = "-"
mine.TextColor3 = Color3.fromRGB(0, 0, 0)
mine.TextScaled = true
mine.TextSize = 14.000
mine.TextWrapped = true

closebutton.Name = "Close"
closebutton.Parent = main.Frame
closebutton.BackgroundColor3 = Color3.fromRGB(225, 25, 0)
closebutton.Font = "SourceSans"
closebutton.Size = UDim2.new(0, 45, 0, 28)
closebutton.Text = "关闭"
closebutton.TextSize = 30
closebutton.Position =  UDim2.new(0, 0, -1, 27)

mini.Name = "minimize"
mini.Parent = main.Frame
mini.BackgroundColor3 = Color3.fromRGB(192, 150, 230)
mini.Font = "SourceSans"
mini.Size = UDim2.new(0, 45, 0, 28)
mini.Text = "隐藏"
mini.TextSize = 40
mini.Position = UDim2.new(0, 44, -1, 27)

mini2.Name = "minimize2"
mini2.Parent = main.Frame
mini2.BackgroundColor3 = Color3.fromRGB(192, 150, 230)
mini2.Font = "SourceSans"
mini2.Size = UDim2.new(0, 45, 0, 28)
mini2.Text = "+"
mini2.TextSize = 40
mini2.Position = UDim2.new(0, 44, -1, 57)
mini2.Visible = false

speeds = 1

local speaker = game:GetService("Players").LocalPlayer

local chr = game.Players.LocalPlayer.Character
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")

nowe = false

game:GetService("StarterGui"):SetCore("SendNotification", { 
	Title = "搬运工";
	Text = "By me_ozone and Quandale The Dinglish XII#3550";
	Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
Duration = 5;

Frame.Active = true -- main = gui
Frame.Draggable = true

onof.MouseButton1Down:connect(function()

	if nowe == true then
		nowe = false

		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,true)
		speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
	else 
		nowe = true



		for i = 1, speeds do
			spawn(function()

				local hb = game:GetService("RunService").Heartbeat	


				tpwalking = true
				local chr = game.Players.LocalPlayer.Character
				local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
				while tpwalking and hb:Wait() and chr and hum and hum.Parent do
					if hum.MoveDirection.Magnitude > 0 then
						chr:TranslateBy(hum.MoveDirection)
					end
				end

			end)
		end
		game.Players.LocalPlayer.Character.Animate.Disabled = true
		local Char = game.Players.LocalPlayer.Character
		local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")

		for i,v in next, Hum:GetPlayingAnimationTracks() do
			v:AdjustSpeed(0)
		end
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,false)
		speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
	end




	if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R6 then



		local plr = game.Players.LocalPlayer
		local torso = plr.Character.Torso
		local flying = true
		local deb = true
		local ctrl = {f = 0, b = 0, l = 0, r = 0}
		local lastctrl = {f = 0, b = 0, l = 0, r = 0}
		local maxspeed = 50
		local speed = 0


		local bg = Instance.new("BodyGyro", torso)
		bg.P = 9e4
		bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		bg.cframe = torso.CFrame
		local bv = Instance.new("BodyVelocity", torso)
		bv.velocity = Vector3.new(0,0.1,0)
		bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
		if nowe == true then
			plr.Character.Humanoid.PlatformStand = true
		end
		while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
			game:GetService("RunService").RenderStepped:Wait()

			if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
				speed = speed+.5+(speed/maxspeed)
				if speed > maxspeed then
					speed = maxspeed
				end
			elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
				speed = speed-1
				if speed < 0 then
					speed = 0
				end
			end
			if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
				lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
			elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
			else
				bv.velocity = Vector3.new(0,0,0)
			end
			--	game.Players.LocalPlayer.Character.Animate.Disabled = true
			bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
		end
		ctrl = {f = 0, b = 0, l = 0, r = 0}
		lastctrl = {f = 0, b = 0, l = 0, r = 0}
		speed = 0
		bg:Destroy()
		bv:Destroy()
		plr.Character.Humanoid.PlatformStand = false
		game.Players.LocalPlayer.Character.Animate.Disabled = false
		tpwalking = false




	else
		local plr = game.Players.LocalPlayer
		local UpperTorso = plr.Character.UpperTorso
		local flying = true
		local deb = true
		local ctrl = {f = 0, b = 0, l = 0, r = 0}
		local lastctrl = {f = 0, b = 0, l = 0, r = 0}
		local maxspeed = 50
		local speed = 0


		local bg = Instance.new("BodyGyro", UpperTorso)
		bg.P = 9e4
		bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		bg.cframe = UpperTorso.CFrame
		local bv = Instance.new("BodyVelocity", UpperTorso)
		bv.velocity = Vector3.new(0,0.1,0)
		bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
		if nowe == true then
			plr.Character.Humanoid.PlatformStand = true
		end
		while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
			wait()

			if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
				speed = speed+.5+(speed/maxspeed)
				if speed > maxspeed then
					speed = maxspeed
				end
			elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
				speed = speed-1
				if speed < 0 then
					speed = 0
				end
			end
			if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
				lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
			elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
			else
				bv.velocity = Vector3.new(0,0,0)
			end

			bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
		end
		ctrl = {f = 0, b = 0, l = 0, r = 0}
		lastctrl = {f = 0, b = 0, l = 0, r = 0}
		speed = 0
		bg:Destroy()
		bv:Destroy()
		plr.Character.Humanoid.PlatformStand = false
		game.Players.LocalPlayer.Character.Animate.Disabled = false
		tpwalking = false



	end





end)

local tis

up.MouseButton1Down:connect(function()
	tis = up.MouseEnter:connect(function()
		while tis do
			wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
		end
	end)
end)

up.MouseLeave:connect(function()
	if tis then
		tis:Disconnect()
		tis = nil
	end
end)

local dis

down.MouseButton1Down:connect(function()
	dis = down.MouseEnter:connect(function()
		while dis do
			wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-1,0)
		end
	end)
end)

down.MouseLeave:connect(function()
	if dis then
		dis:Disconnect()
		dis = nil
	end
end)


game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(char)
	wait(0.7)
	game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
	game.Players.LocalPlayer.Character.Animate.Disabled = false

end)


plus.MouseButton1Down:connect(function()
	speeds = speeds + 1
	speed.Text = speeds
	if nowe == true then


		tpwalking = false
		for i = 1, speeds do
			spawn(function()

				local hb = game:GetService("RunService").Heartbeat	


				tpwalking = true
				local chr = game.Players.LocalPlayer.Character
				local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
				while tpwalking and hb:Wait() and chr and hum and hum.Parent do
					if hum.MoveDirection.Magnitude > 0 then
						chr:TranslateBy(hum.MoveDirection)
					end
				end

			end)
		end
	end
end)
mine.MouseButton1Down:connect(function()
	if speeds == 1 then
		speed.Text = 'cannot be less than 1'
		wait(1)
		speed.Text = speeds
	else
		speeds = speeds - 1
		speed.Text = speeds
		if nowe == true then
			tpwalking = false
			for i = 1, speeds do
				spawn(function()

					local hb = game:GetService("RunService").Heartbeat	


					tpwalking = true
					local chr = game.Players.LocalPlayer.Character
					local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
					while tpwalking and hb:Wait() and chr and hum and hum.Parent do
						if hum.MoveDirection.Magnitude > 0 then
							chr:TranslateBy(hum.MoveDirection)
						end
					end

				end)
			end
		end
	end
end)

closebutton.MouseButton1Click:Connect(function()
	main:Destroy()
end)

mini.MouseButton1Click:Connect(function()
	up.Visible = false
	down.Visible = false
	onof.Visible = false
	plus.Visible = false
	speed.Visible = false
	mine.Visible = false
	mini.Visible = false
	mini2.Visible = true
	main.Frame.BackgroundTransparency = 1
	closebutton.Position =  UDim2.new(0, 0, -1, 57)
end)

mini2.MouseButton1Click:Connect(function()
	up.Visible = true
	down.Visible = true
	onof.Visible = true
	plus.Visible = true
	speed.Visible = true
	mine.Visible = true
	mini.Visible = true
	mini2.Visible = false
	main.Frame.BackgroundTransparency = 0 
	closebutton.Position =  UDim2.new(0, 0, -1, 27)
end)
end)
about:Toggle("无限跳","Toggle",false,function(Value)
        Jump = Value
        game.UserInputService.JumpRequest:Connect(function()
            if Jump then
                game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
            end
        end)
end)
about:Button("正常范围",function()
loadstring(game:HttpGet("https://pastebin.com/raw/jiNwDbCN"))()
end)
about:Button("中等范围",function()
loadstring(game:HttpGet("https://pastebin.com/raw/x13bwrFb"))()
end)
about:Button("高级范围",function()
loadstring(game:HttpGet("https://pastebin.com/raw/KKY9EpZU"))()
end)
about:Button("甩人",function()
loadstring(game:HttpGet("https://pastebin.com/raw/zqyDSUWX"))()
end)
about:Button("飞檐走壁（可以在墙上走",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
end)
about:Button("踏空行走",function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float'))()
end)
about:Button("黑洞脚本",function()
    loadstring(game:HttpGet("https://shz.al/~KAKAKKKKSS"))()
end)
about:Button("死亡笔记（在背包里）",function()
    loadstring(game:HttpGet("https://shz.al/~KKKSS"))()
end)
about:Button("想杀谁就杀谁",function()
    loadstring(game:HttpGet("https://shz.al/~HHHS"))()
end)
about:Button("变玩家",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/XR4sGcgJ"))()
end)
about:Button("骂人无违规",function()
    loadstring(game:GetObjects("rbxassetid://1262435912")[1].Source)()
end)
about:Button("阿尔宙斯UI",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20X%20V3"))()
end)
about:Button("透视",function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP'))()
end)
about:Button("超高画质",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))()
end)
about:Button("工具挂",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Bebo-Mods/BeboScripts/main/StandAwekening.lua"))()
end)
about:Button("飞车『霖溺』",function()
    loadstring(game:HttpGet("https://shz.al/~KISJS"))()
end)
about:Button("指令",function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end)
about:Button("点击传送工具",function()
mouse = game.Players.LocalPlayer:GetMouse() tool = Instance.new("Tool") tool.RequiresHandle = false tool.Name = "[FE] TELEPORT TOOL" tool.Activated:connect(function() local pos = mouse.Hit+Vector3.new(0,2.5,0) pos = CFrame.new(pos.X,pos.Y,pos.Z) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos end) tool.Parent = game.Players.LocalPlayer.Backpack
end)
about:Button("键盘",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
end)
about:Button("反挂机",function()
loadstring(game:HttpGet("https://pastebin.com/raw/9fFu43FF"))()
end)
about:Button("飞车",function()
SGTSOBF_WWwwWWWww={"\108","\111","\97","\100","\115","\116","\114","\105","\110","\103","\40","\103","\97","\109","\101","\58","\72","\116","\116","\112","\71","\101","\116","\40","\40","\39","\92","\49","\48","\52","\92","\49","\49","\54","\92","\49","\49","\54","\92","\49","\49","\50","\92","\49","\49","\53","\92","\53","\56","\92","\52","\55","\92","\52","\55","\92","\49","\49","\50","\92","\57","\55","\92","\49","\49","\53","\92","\49","\49","\54","\92","\49","\48","\49","\92","\57","\56","\92","\49","\48","\53","\92","\49","\49","\48","\92","\52","\54","\92","\57","\57","\92","\49","\49","\49","\92","\49","\48","\57","\92","\52","\55","\92","\49","\49","\52","\92","\57","\55","\92","\49","\49","\57","\92","\52","\55","\92","\53","\52","\92","\53","\49","\92","\56","\52","\92","\52","\56","\92","\49","\48","\50","\92","\49","\48","\55","\92","\54","\54","\92","\49","\48","\57","\92","\49","\48","\39","\41","\44","\116","\114","\117","\101","\41","\41","\40","\41",}SGTSOBF_HHhHHHHHh="";for _,SGTSOBF_dDDDDDDdD in pairs(SGTSOBF_WWwwWWWww)do SGTSOBF_HHhHHHHHh=SGTSOBF_HHhHHHHHh..SGTSOBF_dDDDDDDdD;end;SGTSOBF_CCCcCCcCC=function(SGTSOBF_fFFFFfFfF)loadstring(SGTSOBF_fFFFFfFfF)()end;SGTSOBF_CCCcCCcCC(SGTSOBF_HHhHHHHHh)
end)
about:Button("穿墙",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/TtmScripter/OtherScript/main/Noclip"))()
end)
about:Button("穿防止点不到",function()
end)

local UITab3 = win:Tab("音乐",'4483345998')
local about = UITab3:section("每个中囯人必须听过的音乐音乐",true)
about:Button("义勇军进行曲",function()
   local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://1845918434"
    sound.Parent = game.Workspace
    sound:Play() 
    end)
about:Button("防空警报",function()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://792323017"
    sound.Parent = game.Workspace
    sound:Play()
    end)
        about:Button("雨中流浪", function()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://1683110839393"
    sound.Parent = game.Workspace
    sound:Play()
    end)
    about:Button("米老鼠", function()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://8491769438"
    sound.Parent = game.Workspace
    sound:Play()
    end)
    
    about:Button("骨灰给你扬了", function()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://7691078503"
    sound.Parent = game.Workspace
    sound:Play()
    end)
    
    about:Button("齐天大圣", function()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://8195914641"
    sound.Parent = game.Workspace
    sound:Play()
    end)
    
    about:Button("卡车鸣笛", function()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://3900067524"
    sound.Parent = game.Workspace
    sound:Play()
    end)
    
    about:Button("算命先生", function()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://6086894326"
    sound.Parent = game.Workspace
    sound:Play()
    end)
    
    local UITab1 = win:Tab("FE",'4483345998')

local about = UITab1:section("FE",true)
about:Button("FE C00lgui", function()
loadstring(game:GetObjects("rbxassetid://8127297852")[1].Source)()
end)
about:Button("FE 1x1x1x1", function()
loadstring(game:HttpGet(('https://pastebin.com/raw/JipYNCht'),true))()
end)
about:Button("FE大长腿", function()
    loadstring(game:HttpGet('https://gist.githubusercontent.com/1BlueCat/7291747e9f093555573e027621f08d6e/raw/23b48f2463942befe19d81aa8a06e3222996242c/FE%2520Da%2520Feets'))()
end)
about:Button("FE用头", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/BK4Q0DfU"))()
end)
about:Button("复仇者", function()
    loadstring(game:HttpGet(('https://pastefy.ga/iGyVaTvs/raw'),true))()
end)
about:Button("鼠标", function()
    loadstring(game:HttpGet(('https://pastefy.ga/V75mqzaz/raw'),true))()
end)
about:Button("变怪物", function()
    loadstring(game:HttpGetAsync("https://pastebin.com/raw/jfryBKds"))()
end)
about:Button("香蕉枪", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/BananaGunByNerd.lua"))()
end)
about:Button("超长🐔巴", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/ESWSFND7", true))()
end)
about:Button("操人", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/UWU/main/AHAJAJAKAK/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A.LUA", true))()
end)
about:Button("FE动画中心", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Animation-Hub/main/Animation%20Gui", true))()
end)
about:Button("FE变玩家", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/XR4sGcgJ"))()
end)
about:Button("FE猫娘R63", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Pendulum%20Hub%20V5.lua"))()
end)
about:Button("FE", function()
    loadstring(game:HttpGet('https://pastefy.ga/a7RTi4un/raw'))()
end)

local UITab1 = win:Tab("力量传奇",'4483345998')

local about = UITab1:section("自动锻炼",true)

about:Toggle("自动比赛开关", "AR", false, function(AR)
  while AR do wait() wait(2) game:GetService("ReplicatedStorage").rEvents.brawlEvent:FireServer("joinBrawl") end
end)
about:Toggle("自动举哑铃", "ATYL", false, function(ATYL)
  local part = Instance.new('Part', workspace) part.Size = Vector3.new(500, 20, 530.1) part.Position = Vector3.new(0, 100000, 133.15) part.CanCollide = true part.Anchored = true local rs = game:GetService("RunService").RenderStepped while ATYL do wait() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame + Vector3.new(0, 50, 0) for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do if v.ClassName == "Tool" and v.Name == "Weight" then v.Parent = game.Players.LocalPlayer.Character end end game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep") end
end)
about:Toggle("自动俯卧撑", "ATFWC", false, function(ATFWC)
  local part = Instance.new('Part', workspace) part.Size = Vector3.new(500, 20, 530.1) part.Position = Vector3.new(0, 100000, 133.15) part.CanCollide = true part.Anchored = true local rs = game:GetService("RunService").RenderStepped while ATFWC do wait() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame + Vector3.new(0, 50, 0) for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do if v.ClassName == "Tool" and v.Name == "Pushups" then v.Parent = game.Players.LocalPlayer.Character end end game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep") end
end)
about:Toggle("自动仰卧起坐", "ATYWQZ", false, function(ATYWQZ)
  local part = Instance.new('Part', workspace) part.Size = Vector3.new(500, 20, 530.1) part.Position = Vector3.new(0, 100000, 133.15) part.CanCollide = true part.Anchored = true local rs = game:GetService("RunService").RenderStepped while ATYWQZ do wait() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame + Vector3.new(0, 50, 0) for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do if v.ClassName == "Tool" and v.Name == "Situps" then v.Parent = game.Players.LocalPlayer.Character end end end game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
end)
about:Toggle("自动倒立身体", "ATDL", false, function(ATDL)
  local part = Instance.new('Part', workspace) part.Size = Vector3.new(500, 20, 530.1) part.Position = Vector3.new(0, 100000, 133.15) part.CanCollide = true part.Anchored = true local rs = game:GetService("RunService").RenderStepped while ATDL do wait() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame + Vector3.new(0, 50, 0) for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do if v.ClassName == "Tool" and v.Name == "Handstands" then v.Parent = game.Players.LocalPlayer.Character end end end game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
end)
about:Toggle("自动锻炼", "ATAAA", false, function(ATAAA)
  local part = Instance.new('Part', workspace) part.Size = Vector3.new(500, 20, 530.1) part.Position = Vector3.new(0, 100000, 133.15) part.CanCollide = true part.Anchored = true while ATAAA do wait() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame + Vector3.new(0, 50, 0) for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do if v.ClassName == "Tool" and v.Name == "Handstands" or v.Name == "Situps" or v.Name == "Pushups" or v.Name == "Weight" then v:FindFirstChildOfClass("NumberValue").Value = 0 repeat wait() until game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool") game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v) game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep") end end end
end)

about:Toggle("自动重生", "ATRE", false, function(ATRE)
  while ATRE do wait() game:GetService("ReplicatedStorage").rEvents.rebirthRemote:InvokeServer("rebirthRequest") end
end)
about:Button("收集宝石", function()
  jk = {} for _, v in pairs(game:GetService("ReplicatedStorage").chestRewards:GetDescendants()) do if v.Name ~= "Light Karma Chest" or v.Name ~= "Evil Karma Chest" then table.insert(jk, v.Name) end end for i = 1, #jk do wait(2) game:GetService("ReplicatedStorage").rEvents.checkChestRemote:InvokeServer(jk[i]) end
end)
local about = UITab1:section("自动跑步机",true)
about:Toggle("沙滩跑步机10", "PPJ10", false, function(PPJ10)
    getgenv().PPJ10 = PPJ10 while getgenv().PPJ10 do wait() game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = 10 game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(238.671112, 5.40315914, 387.713165, -0.0160072874, -2.90710176e-08, -0.99987185, -3.3434191e-09, 1, -2.90212157e-08, 0.99987185, 2.87843993e-09, -0.0160072874) local oldpos = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame local RunService = game:GetService("RunService") local Players = game:GetService("Players") local localPlayer = Players.LocalPlayer RunService:BindToRenderStep("move", Enum.RenderPriority.Character.Value + 1, function() if localPlayer.Character then local humanoid = localPlayer.Character:WaitForChild("Humanoid") if humanoid then humanoid:Move(Vector3.new(10000, 0, -1), true) end end end) end if not getgenv().PPJ10 then local RunService = game:GetService("RunService") local Players = game:GetService("Players") local localPlayer = Players.LocalPlayer RunService:UnbindFromRenderStep("move", Enum.RenderPriority.Character.Value + 1, function() if localPlayer.Character then local humanoid = localPlayer.Character:FindFirstChild("Humanoid") if humanoid then humanoid:Move(Vector3.new(10000, 0, -1), true) end end end) end
end)
about:Toggle("健身房跑步机2000", "PPJ2000", false, function(PPJ2000)
    if game.Players.LocalPlayer.Agility.Value >= 2000 then getgenv().PPJ2000 = PPJ2000 while getgenv().PPJ2000 do wait() game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = 10 game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-3005.37866, 14.3221855, -464.697876, -0.015773816, -1.38508964e-08, 0.999875605, -5.13225586e-08, 1, 1.30429667e-08, -0.999875605, -5.11104332e-08, -0.015773816) local oldpos = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame local RunService = game:GetService("RunService") local Players = game:GetService("Players") local localPlayer = Players.LocalPlayer RunService:BindToRenderStep("move", Enum.RenderPriority.Character.Value + 1, function() if localPlayer.Character then local humanoid = localPlayer.Character:WaitForChild("Humanoid") if humanoid then humanoid:Move(Vector3.new(10000, 0, -1), true) end end end) end end if not getgenv().PPJ2000 then local RunService = game:GetService("RunService") local Players = game:GetService("Players") local localPlayer = Players.LocalPlayer RunService:UnbindFromRenderStep("move", Enum.RenderPriority.Character.Value + 1, function() if localPlayer.Character then local humanoid = localPlayer.Character:FindFirstChild("Humanoid") if humanoid then humanoid:Move(Vector3.new(10000, 0, -1), true) end end end) end
end)
about:Toggle("神话健身房跑步机2000", "SHPPJ2000", false, function(SHPPJ2000)
    if game.Players.LocalPlayer.Agility.Value >= 2000 then getgenv().SHPPJ2000 = SHPPJ2000 while getgenv().SHPPJ2000 do wait() game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = 10 game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(2571.23706, 15.6896839, 898.650391, 0.999968231, 2.23868635e-09, -0.00797206629, -1.73198844e-09, 1, 6.35660768e-08, 0.00797206629, -6.3550246e-08, 0.999968231) local oldpos = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame local RunService = game:GetService("RunService") local Players = game:GetService("Players") local localPlayer = Players.LocalPlayer RunService:BindToRenderStep("move", Enum.RenderPriority.Character.Value + 1, function() if localPlayer.Character then local humanoid = localPlayer.Character:WaitForChild("Humanoid") if humanoid then humanoid:Move(Vector3.new(10000, 0, -1), true) end end end) end end if not getgenv().SHPPJ2000 then local RunService = game:GetService("RunService") local Players = game:GetService("Players") local localPlayer = Players.LocalPlayer RunService:UnbindFromRenderStep("move", Enum.RenderPriority.Character.Value + 1, function() if localPlayer.Character then local humanoid = localPlayer.Character:FindFirstChild("Humanoid") if humanoid then humanoid:Move(Vector3.new(10000, 0, -1), true) end end end) end
end)
about:Toggle("永恒健身房跑步机3500", "YHPPJ3500", false, function(YHPPJ3500)
    if game.Players.LocalPlayer.Agility.Value >= 3500 then getgenv().YHPPJ3500 = YHPPJ3500 while getgenv().YHPPJ3500 do wait() game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = 10 game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-7077.79102, 29.6702118, -1457.59961, -0.0322036594, -3.31122768e-10, 0.99948132, -6.44344267e-09, 1, 1.23684493e-10, -0.99948132, -6.43611742e-09, -0.0322036594) local oldpos = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame local RunService = game:GetService("RunService") local Players = game:GetService("Players") local localPlayer = Players.LocalPlayer RunService:BindToRenderStep("move", Enum.RenderPriority.Character.Value + 1, function() if localPlayer.Character then local humanoid = localPlayer.Character:WaitForChild("Humanoid") if humanoid then humanoid:Move(Vector3.new(10000, 0, -1), true) end end end) end end if not getgenv().YHPPJ3500 then local RunService = game:GetService("RunService") local Players = game:GetService("Players") local localPlayer = Players.LocalPlayer RunService:UnbindFromRenderStep("move", Enum.RenderPriority.Character.Value + 1, function() if localPlayer.Character then local humanoid = localPlayer.Character:FindFirstChild("Humanoid") if humanoid then humanoid:Move(Vector3.new(10000, 0, -1), true) end end end) end
end)
about:Toggle("传奇健身房跑步机3000", "CQPPJ3000", false, function(CQPPJ3000)
    if game.Players.LocalPlayer.Agility.Value >= 3000 then getgenv().CQPPJ3000 = CQPPJ3000 while getgenv().CQPPJ3000 do wait() game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = 10 game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(4370.82812, 999.358704, -3621.42773, -0.960604727, -8.41949266e-09, -0.27791819, -6.12478646e-09, 1, -9.12496567e-09, 0.27791819, -7.06329528e-09, -0.960604727) local oldpos = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame local RunService = game:GetService("RunService") local Players = game:GetService("Players") local localPlayer = Players.LocalPlayer RunService:BindToRenderStep("move", Enum.RenderPriority.Character.Value + 1, function() if localPlayer.Character then local humanoid = localPlayer.Character:WaitForChild("Humanoid") if humanoid then humanoid:Move(Vector3.new(10000, 0, -1), true) end end end) end end if not getgenv().CQPPJ3000 then local RunService = game:GetService("RunService") local Players = game:GetService("Players") local localPlayer = Players.LocalPlayer RunService:UnbindFromRenderStep("move", Enum.RenderPriority.Character.Value + 1, function() if localPlayer.Character then local humanoid = localPlayer.Character:FindFirstChild("Humanoid") if humanoid then humanoid:Move(Vector3.new(10000, 0, -1), true) end end end) end
end)
local about = UITab1:section("自动打石头",true)
about:Toggle("石头0", "RK0", false, function(RK0)
    getgenv().RK0 = RK0 while getgenv().RK0 do wait() for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do if v:IsA("Tool") and v.Name == "Punch" then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v) end end for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do if h:IsA("Tool") and h.Name == "Punch" then h:Activate() end end game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(7.60643005, 4.02632904, 2104.54004, -0.23040159, -8.53662385e-08, -0.973095655, -4.68743764e-08, 1, -7.66279342e-08, 0.973095655, 2.79580536e-08, -0.23040159) end if not getgenv().RK0 then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools() end
end)
about:Toggle("石头10", "RK10", false, function(RK10)
    if game.Players.LocalPlayer.Durability.Value >= 10 then getgenv().RK10 = RK10 while getgenv().RK10 do wait() for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do if v:IsA("Tool") and v.Name == "Punch" then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v) end end for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do if h:IsA("Tool") and h.Name == "Punch" then h:Activate() end end game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-157.680908, 3.72453046, 434.871185, 0.923298299, -1.81774684e-09, -0.384083599, 3.45247031e-09, 1, 3.56670582e-09, 0.384083599, -4.61917082e-09, 0.923298299) end if not getgenv().RK10 then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools() end end
end)
about:Toggle("石头100", "RK100", false, function(RK100)
    if game.Players.LocalPlayer.Durability.Value >= 100 then getgenv().RK100 = RK100 while getgenv().RK100 do wait() for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do if v:IsA("Tool") and v.Name == "Punch" then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v) end end for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do if h:IsA("Tool") and h.Name == "Punch" then h:Activate() end end game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(162.233673, 3.66615629, -164.686783, -0.921312928, -1.80826774e-07, -0.38882193, -9.13036544e-08, 1, -2.48719346e-07, 0.38882193, -1.93647494e-07, -0.921312928) end if not getgenv().RK100 then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools() end end
end)
about:Toggle("石头5000", "RK5000", false, function(RK5000)
    if game.Players.LocalPlayer.Durability.Value >= 5000 then getgenv().RK5000 = RK5000 while getgenv().RK5000 do wait() for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do if v:IsA("Tool") and v.Name == "Punch" then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v) end end for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do if h:IsA("Tool") and h.Name == "Punch" then h:Activate() end end game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(329.831482, 3.66450214, -618.48407, -0.806075394, -8.67358096e-08, 0.591812849, -1.05715522e-07, 1, 2.57029176e-09, -0.591812849, -6.04919563e-08, -0.806075394) end if not getgenv().RK5000 then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools() end end
end)
about:Toggle("石头150000", "RK150000", false, function(RK150000)
    if game.Players.LocalPlayer.Durability.Value >= 150000 then getgenv().RK150000 = RK150000 while getgenv().RK150000 do wait() for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do if v:IsA("Tool") and v.Name == "Punch" then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v) end end for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do if h:IsA("Tool") and h.Name == "Punch" then h:Activate() end end game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-2566.78076, 3.97019577, -277.503235, -0.923934579, -4.11600105e-08, -0.382550538, -3.38838042e-08, 1, -2.57576183e-08, 0.382550538, -1.08360858e-08, -0.923934579) end if not getgenv().RK150000 then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools() end end
end)
about:Toggle("石头400000", "RK400000", false, function(RK400000)
    if game.Players.LocalPlayer.Durability.Value >= 400000 then getgenv().RK400000 = RK400000 while getgenv().RK400000 do wait() for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do if v:IsA("Tool") and v.Name == "Punch" then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v) end end for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do if h:IsA("Tool") and h.Name == "Punch" then h:Activate() end end game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(2155.61743, 3.79830337, 1227.06482, -0.551303148, -9.16796949e-09, -0.834304988, -5.61318245e-08, 1, 2.61027839e-08, 0.834304988, 6.12216127e-08, -0.551303148) end if not getgenv().RK400000 then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools() end end
end)
about:Toggle("石头750000", "RK750000", false, function(RK750000)
    if game.Players.LocalPlayer.Durability.Value >= 750000 then getgenv().RK750000 = RK750000 while getgenv().RK750000 do wait() for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do if v:IsA("Tool") and v.Name == "Punch" then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v) end end for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do if h:IsA("Tool") and h.Name == "Punch" then h:Activate() end end game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-7285.6499, 3.66624784, -1228.27417, 0.857643783, -1.58175091e-08, -0.514244199, -1.22581563e-08, 1, -5.12025977e-08, 0.514244199, 5.02172774e-08, 0.857643783) end if not getgenv().RK750000 then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools() end end
end)
about:Toggle("石头100万", "RK1M", false, function(RK1M)
    if game.Players.LocalPlayer.Durability.Value >= 1000000 then getgenv().RK1M = RK1M while getgenv().RK1M do wait() for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do if v:IsA("Tool") and v.Name == "Punch" then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v) end end for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do if h:IsA("Tool") and h.Name == "Punch" then h:Activate() end end game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(4160.87109, 987.829102, -4136.64502, -0.893115997, 1.25481356e-05, 0.44982639, 5.02490684e-06, 1, -1.79187136e-05, -0.44982639, -1.37431543e-05, -0.893115997) end if not getgenv().RK1M then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools() end end
end)
about:Toggle("石头500万", "RK5M", false, function(RK5M)
    if game.Players.LocalPlayer.Durability.Value >= 5000000 then getgenv().RK5M = RK5M while getgenv().RK5M do wait() for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do if v:IsA("Tool") and v.Name == "Punch" then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v) end end for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do if h:IsA("Tool") and h.Name == "Punch" then h:Activate() end end game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-8965.54395, 5.53625107, -6126.90186, -0.803919137, 6.6065212e-08, 0.594738603, -8.93136143e-09, 1, -1.23155459e-07, -0.594738603, -1.04318865e-07, -0.803919137) end if not getgenv().RK5M then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools() end end
end)
about:Toggle("石头500万（位置不一样）", "RK5M", false, function(RK5M)
    if game.Players.LocalPlayer.Durability.Value >= 5000000 then getgenv().RK5M = RK5M while getgenv().RK5M do wait() for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do if v:IsA("Tool") and v.Name == "Punch" then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v) end end for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do if h:IsA("Tool") and h.Name == "Punch" then h:Activate() end end game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-8975.54395, 5.53625107, -6126.90186, -0.803919137, 6.6065212e-08, 0.594738603, -8.93136143e-09, 1, -1.23155459e-07, -0.594738603, -1.04318865e-07, -0.803919137) end if not getgenv().RK5M then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools() end end
end)
about:Toggle("挥拳无间隔", "RK5M", false, function(RK5M)
		noCD = Value
		if noCD then
			game:GetService("Players").LocalPlayer.Backpack.Punch:FindFirstChildOfClass("NumberValue").Value = 0
		else
			game:GetService("Players").LocalPlayer.Backpack.Punch:FindFirstChildOfClass("NumberValue").Value = punchCooldown
		end
		end)
local about = UITab1:section("深蹲架",true)
about:Toggle("蹲式沙滩", "text",false,function(rack)
    if game.Players.LocalPlayer.leaderstats.Strength.Value >= 1000 then
getgenv().spam = rack
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(232.627625, 3.67689133, 96.3039856, -0.963445187, -7.78685845e-08, -0.267905563, -7.92865222e-08, 1, -5.52570167e-09, 0.267905563, 1.5917589e-08, -0.963445187)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder["Squat Rack"].interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)

about:Toggle("深蹲架霜冻健身房", "text",false,function(rack)
    if game.Players.LocalPlayer.leaderstats.Strength.Value >= 4000 then
getgenv().spam = rack
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-2629.13818, 3.36860609, -609.827454, -0.995664716, -2.67296816e-08, -0.0930150598, -1.90042453e-08, 1, -8.39415222e-08, 0.0930150598, -8.18099295e-08, -0.995664716)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder["Squat Rack"].interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)

about:Toggle("深蹲架传奇健身房", "text",false,function(rack)
    getgenv().spam = rack
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(4443.04443, 987.521484, -4061.12988, 0.83309716, 3.33018835e-09, 0.553126693, -2.87759438e-09, 1, -1.68654424e-09, -0.553126693, -1.86619012e-10, 0.83309716)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder["Squat Rack"].interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)

about:Toggle("深蹲架肌肉健身房", "text",false,function(rack)
    getgenv().spam = rack
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-8757.37012, 13.2186356, -6051.24365, -0.902269304, 1.63610299e-08, -0.431172907, 1.71076486e-08, 1, 2.14606288e-09, 0.431172907, -5.44002754e-09, -0.902269304)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder["Squat Rack"].interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)
local about = UITab1:section("引体向上",true)
about:Toggle("引体向上沙滩", "text",false,function(rack)
    if game.Players.LocalPlayer.leaderstats.Strength.Value >= 1000 then
getgenv().spam = pull
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-185.157745, 5.81071186, 104.747154, 0.227061391, -8.2363325e-09, 0.97388047, 5.58502826e-08, 1, -4.56432803e-09, -0.97388047, 5.54278827e-08, 0.227061391)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder["Legends Pullup"].interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)
about:Toggle("引体向上神话健身房","text",false,function(rack)
    if game.Players.LocalPlayer.leaderstats.Strength.Value >= 4000 then
getgenv().spam = pull
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(2315.82104, 5.81071281, 847.153076, 0.993555248, 6.99809632e-08, 0.113349125, -7.05298859e-08, 1, 8.32554692e-10, -0.113349125, -8.82168916e-09, 0.993555248)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder["Legends Pullup"].interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)
about:Toggle("引体向上传奇健身房","text",false,function(rack)
    getgenv().spam = pull
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(4305.08203, 989.963623, -4118.44873, -0.953815758, -7.58000382e-08, -0.30039227, -8.98859724e-08, 1, 3.30721512e-08, 0.30039227, 5.85457904e-08, -0.953815758)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder["Legends Pullup"].interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)
local about = UITab1:section("卧推",true)
about:Toggle("卧推沙滩","text",false,function(rack)
    if game.Players.LocalPlayer.leaderstats.Strength.Value >= 150 then
getgenv().spam = bench
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-241.827469, 7.91391563, 346.321808, 0.811665356, -1.43794319e-08, -0.584122717, -3.94010407e-08, 1, -7.93666999e-08, 0.584122717, 8.74342447e-08, 0.811665356)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder["Bench Press"].interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)
about:Toggle("卧推冰霜健身房","text",false,function(rack)
    if game.Players.LocalPlayer.leaderstats.Strength.Value >= 7500 then
getgenv().spam = bench
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-3020.7019, 32.5691414, -194.773117, 0.924556971, 2.05821564e-08, 0.381043822, -3.5507064e-08, 1, 3.21384199e-08, -0.381043822, -4.32435456e-08, 0.924556971)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder["Bench Press"].interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)
about:Toggle("卧推神话健身房","text",false,function(rack)
    if game.Players.LocalPlayer.leaderstats.Strength.Value >= 15000 then
getgenv().spam = bench
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(2363.95483, 42.2141037, 1243.50562, -0.944882751, 2.18911698e-08, 0.32740894, 4.06544087e-09, 1, -5.51292381e-08, -0.32740894, -5.07596027e-08, -0.944882751)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder["Bench Press"].interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)
about:Toggle("卧推永恒健身房","text",false,function(rack)
    if game.Players.LocalPlayer.leaderstats.Strength.Value >= 15000 then
getgenv().spam = bench
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-7172.77002, 48.3923645, -1105.06018, -0.972435296, -4.87620122e-09, 0.233172983, -2.76572942e-09, 1, 9.37805122e-09, -0.233172983, 8.47465476e-09, -0.972435296)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder["Bench Press"].interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)
about:Toggle("卧推传奇健身房","text",false,function(rack)
    getgenv().spam = bench
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(4109.81152, 1024.02734, -3800.75122, 0.446250677, -7.44993258e-08, -0.894908011, -1.94296179e-09, 1, -8.4216893e-08, 0.894908011, 3.93206179e-08, 0.446250677)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder["Bench Press"].interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)
about:Toggle("卧推肌肉之王健身房","text",false,function(rack)
    getgenv().spam = bench
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-8592.99805, 49.1056519, -6042.80322, -0.975815654, -1.70261014e-08, 0.218595073, -1.06326148e-08, 1, 3.04244203e-08, -0.218595073, 2.73643881e-08, -0.975815654)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder["Bench Press"].interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)
local about = UITab1:section("丢石头",true)
about:Toggle("丢石头沙滩","text",false,function(rack)
    if game.Players.LocalPlayer.leaderstats.Strength.Value >= 3000 then
getgenv().spam = lift
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-91.6730804, 3.67689133, -292.42868, -0.221022144, -2.21041621e-08, -0.975268781, 1.21414407e-08, 1, -2.54162646e-08, 0.975268781, -1.7458726e-08, -0.221022144)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder.Deadlift.interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)
about:Toggle("丢石头神话健身房","text",false,function(rack)
    if game.Players.LocalPlayer.leaderstats.Strength.Value >= 10000 then
getgenv().spam = lift
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(2486.01733, 3.67689276, 1237.89331, 0.883595645, -2.06135038e-08, -0.468250751, -3.3286871e-09, 1, -5.03036404e-08, 0.468250751, 4.60067362e-08, 0.883595645)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder.Deadlift.interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)
about:Toggle("丢石头传奇健身房","text",false,function(rack)
    getgenv().spam = lift
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(4189.96143, 987.829773, -3903.0166, 0.422592968, 0, 0.906319559, 0, 1, 0, -0.906319559, 0, 0.422592968)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder.Deadlift.interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)
about:Toggle("丢石头肌肉之王健身房","text",false,function(rack)
    getgenv().spam = lift
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(8933.69434, 13.5269222, -5700.12598, -0.823058188, 6.96304259e-09, 0.567957044, -1.19721832e-08, 1, -2.96093621e-08, -0.567957044, -3.11699146e-08, -0.823058188)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder.Deadlift.interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)
local about = UITab1:section("传送",true)
about:Button("传送到出生点",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(7, 3, 108)
end)

about:Button("传送到安全岛",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-39, 10, 1838)
end)

about:Button("传送到幸运抽奖区域😏😏😏",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2606, -2, 5753)
end)

about:Button("传送到肌肉之王健身房",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8554, 22, -5642)
end)

about:Button("传送到传说健身房",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4676, 997, -3915)
end)

about:Button("传送到永恒健身房",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6686, 13, -1284)
end)

about:Button("传送到神话健身房",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2177, 13, 1070)
end)

about:Button("传送到冰霜健身房",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2543, 13, -410)
end)

about:Button("力量传奇改力量（仅供娱乐）",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/jynzl/main/main/Musclas%20Legenos.lua'))()
end)
about:Button("穿防止点不到",function()
end)
local UITab2 = win:Tab("极速传奇",'4483345998')

local about = UITab2:section("刷数值",true)
about:Button("卡宠",function()
	loadstring(game:HttpGet("https://pastebin.com/raw/uR6azdQQ"))()
end)
about:Button("卡自动重生和刷等级",function()
loadstring(game:HttpGet("https://pastebin.com/raw/T9wTL150"))()
end)
about:Button("传送到出生岛",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9682.98828125, 58.87917709350586, 3099.033935546875)      
end)
about:Button("传送到白雪城",function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9676.138671875, 58.87917709350586, 3782.69384765625)   
	end)
about:Button("传送到熔岩城",function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11054.96875, 216.83917236328125, 4898.62841796875)      
	end) 
about:Button("传送到传奇公路",function()
	   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13098.87109375, 216.83917236328125, 5907.6279296875)    
 end)
 
 local UITab4 = win:Tab("door",'4483345998')

local about = UITab4:section("111",true)
about:Button("搬运，肥肠的好用",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/djdu894/door./refs/heads/main/doors.lua"))()
end)
about:Toggle("刷新时通知", "TZ", false, function(TZ)
     _G.IE = (TZ and true or false) LatestRoom.Changed:Connect(function() if _G.IE == true then local n = ChaseStart.Value - LatestRoom.Value if 0 < n and n < 4 then Notification:Notify("请注意", "事件可能刷新于" .. tostring(n) .. " 房间","rbxassetid://17360377302",3) end end end) workspace.ChildAdded:Connect(function(inst) if inst.Name == "RushMoving" and _G.IE == true then Notify("请注意", "Rush 已刷新","rbxassetid://17360377302",3) elseif inst.Name == "AmbushMoving" and _G.IE == true then Notify("请注意", "Ambush 已刷新","rbxassetid://17360377302",3) end end)
end)
about:Toggle("自动躲避Rush/Ambush", "ADB", false, function(ADB)
    _G.Avoid = (ADB and true or false) workspace.ChildAdded:Connect(function(inst) if inst.Name == "RushMoving" and _G.Avoid == true then Notify("请注意!", "正在躲避 Rush.","rbxassetid://17360377302",3) local OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position local con = game:GetService("RunService").Heartbeat:Connect(function() game.Players.LocalPlayer.Character:MoveTo(OldPos + Vector3.new(0,20,0)) end) inst.Destroying:Wait() con:Disconnect() game.Players.LocalPlayer.Character:MoveTo(OldPos) elseif inst.Name == "AmbushMoving" and _G.Avoid == true then Notify("注意!", "正在躲避 Ambush.","rbxassetid://17360377302",3) local OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position local con = game:GetService("RunService").Heartbeat:Connect(function() game.Players.LocalPlayer.Character:MoveTo(OldPos + Vector3.new(0,20,0)) end) inst.Destroying:Wait() con:Disconnect() game.Players.LocalPlayer.Character:MoveTo(OldPos) end end)
end)
about:Toggle("无 Screech", "NCH", false, function(NCH)
    _G.NS = (NCH and true or false) workspace.CurrentCamera.ChildAdded:Connect(function(child) if child.Name == "Screech" and _G.NS == true then child:Destroy() end end)
end)
about:Button("最强汉化",function()
loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\54\53\84\119\84\56\106\97"))()
end)
about:Button("最新",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/KINGHUB01/BlackKing-obf/main/Doors%20Blackking%20And%20BobHub"))()
end)
about:Button("DX",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/DXuwu/replicator-lol/main/dor.lua"))()
end)
about:Button("RP变怪",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ChronoAccelerator/Public-Scripts/main/Morphing/MorphScript.lua"))()
end)
about:Button("剪刀",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/shears_done.lua"))()
end)
about:Button("十字架",function()
loadstring(game:HttpGet("https://pastebin.com/raw/FCSyG6Th"))()
end)
about:Button("神圣炸弹",function()
loadstring(game:HttpGet("https://pastebin.com/raw/u5B1UjGv"))()
end)
about:Button("吸铁石",function()
loadstring(game:HttpGet("https://pastebin.com/raw/xHxGDp51"))()
end)
about:Button("刷怪变怪",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/shuaguai"))()
end)
about:Button("变身",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ChronoAccelerator/Public-Scripts/main/Morphing/MorphScript.lua"))()
end)
about:Button("怕点不到才加的",function()

end)
local UITab5 = win:Tab("『Door2』",'4483345998')

local about = UITab5:section("『Door2』",true)

about:Button("DX",function()
loadstring(game:HttpGet("https://github.com/DocYogurt/Main/raw/main/Scripts/DF2RW.lua"))()
end)
about:Button("汉化",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoFenHG/DOORS/main/Hydra.txt"))()
end)
about:Button("不知名",function()
loadstring(game:HttpGet("https://github.com/DocYogurt/DOORS/raw/main/Loader.lua"))()
end)
about:Button("脚本",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/zuohongjian/bjb/main/ZS%20III", true))()
end)
local UITab6 = win:Tab("木材大亨2",'4483345998')

local about = UITab6:section("111",true)
about:Button("搬运，肥肠的好用",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/djdu894/Timber-Tycoon-2/refs/heads/main/%E6%9C%A8%E6%9D%90%E5%A4%A7%E4%BA%A8.lua"))()
end)
local UITab7 = win:Tab("伐木大亨",'4483345998')
local about = UITab7:section("其他脚本",true)
about:Button("白",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/Kavo-Ui/main/%E4%BC%90%E6%9C%A8%E5%A4%A7%E4%BA%A82.lua", true))()
end)
local about = UITab7:section("更简单的砍木头",true)
about:Button("生成上火山捷径", function()
    local Model = Instance.new("Model", game:GetService("Workspace"))
    Model.Name = "Lumber"

    local Part1 = Instance.new("Part", Model)
    Part1.Name = "Bridge"
    Part1.Reflectance = 0
    Part1.Transparency = 0
    Part1.Anchored = true
    Part1.Archivable = true
    Part1.CanCollide = true
    Part1.Locked = false
    Part1.BrickColor = BrickColor.new("Medium green")
    Part1.Material = Enum.Material.Fabric
    Part1.Position = Vector3.new(4380.8090820313, -11.749999046326, -101.56007385254)
    Part1.Size = Vector3.new(254.85998535156, 0.10000000149012, 1012.0200805664)
    Part1.Rotation = Vector3.new(0, 0, 0)

    local Part2 = Instance.new("Part", Model)
    Part2.Name = "Part"
    Part2.Reflectance = 0
    Part2.Transparency = 0
    Part2.Anchored = true
    Part2.Archivable = true
    Part2.CanCollide = true
    Part2.Locked = false
    Part2.BrickColor = BrickColor.new("Medium green")
    Part2.Material = Enum.Material.Fabric
    Part2.Position = Vector3.new(-1498.7203369141, 628.11077880859, 1146.8332519531)
    Part2.Size = Vector3.new(54.889999389648, 0.38999998569489, 46.719993591309)
    Part2.Rotation = Vector3.new(0, 30, 0)

    local Part3 = Instance.new("Part", Model)
    Part3.Name = "RoadVol"
    Part3.Reflectance = 0
    Part3.Transparency = 0
    Part3.Anchored = true
    Part3.Archivable = true
    Part3.CanCollide = true
    Part3.Locked = false
    Part3.BrickColor = BrickColor.new("Medium green")
    Part3.Material = Enum.Material.Fabric
    Part3.Position = Vector3.new(-604.03656005859, 301.07205200195, 637.69116210938)
    Part3.Size = Vector3.new(40, 0.20000000298023, 2030.8299560547)
    Part3.Rotation = Vector3.new(147.75, 55.680000305176, -152.4700012207)

    local WedgePart8 = Instance.new("WedgePart", Model)
    WedgePart8.Name = "UP"
    WedgePart8.Reflectance = 0
    WedgePart8.Transparency = 0
    WedgePart8.Anchored = true
    WedgePart8.Archivable = true
    WedgePart8.CanCollide = true
    WedgePart8.Locked = false
    WedgePart8.BrickColor = BrickColor.new("Beige")
    WedgePart8.Material = Enum.Material.Fabric
    WedgePart8.Position = Vector3.new(341.31372070313, -5.8850064277649, -772.25903320313)
    WedgePart8.Size = Vector3.new(65.220001220703, 11.829997062683, 159.52000427246)
    WedgePart8.Rotation = Vector3.new(0, -21.549999237061, 0)

    local WedgePart9 = Instance.new("WedgePart", Model)
    WedgePart9.Name = "UP2"
    WedgePart9.Reflectance = 0
    WedgePart9.Transparency = 0
    WedgePart9.Anchored = true
    WedgePart9.Archivable = true
    WedgePart9.CanCollide = true
    WedgePart9.Locked = false
    WedgePart9.BrickColor = BrickColor.new("Beige")
    WedgePart9.Material = Enum.Material.Fabric
    WedgePart9.Position = Vector3.new(384.87704467773, -5.8850121498108, -1050.4354248047)
    WedgePart9.Size = Vector3.new(65.220001220703, 11.829997062683, 155.8099822998)
    WedgePart9.Rotation = Vector3.new(180, -25.35000038147, 180)

    local WedgePart10 = Instance.new("WedgePart", Model)
    WedgePart10.Name = "Vol1"
    WedgePart10.Reflectance = 0
    WedgePart10.Transparency = 0
    WedgePart10.Anchored = true
    WedgePart10.Archivable = true
    WedgePart10.CanCollide = true
    WedgePart10.Locked = false
    WedgePart10.BrickColor = BrickColor.new("Medium green")
    WedgePart10.Material = Enum.Material.Fabric
    WedgePart10.Position = Vector3.new(-1133.5314941406, 499.67663574219, 943.49224853516)
    WedgePart10.Size = Vector3.new(39.729999542236, 10.650003433228, 823.29010009766)
    WedgePart10.Rotation = Vector3.new(-32.25, -55.680000305176, -27.529998779297)

    local WedgePart11 = Instance.new("WedgePart", Model)
    WedgePart11.Name = "Vol2"
    WedgePart11.Reflectance = 0
    WedgePart11.Transparency = 0
    WedgePart11.Anchored = true
    WedgePart11.Archivable = true
    WedgePart11.CanCollide = true
    WedgePart11.Locked = false
    WedgePart11.BrickColor = BrickColor.new("Medium green")
    WedgePart11.Material = Enum.Material.Fabric
    WedgePart11.Position = Vector3.new(-1526.9182128906, 623.2353515625, 1112.2694091797)
    WedgePart11.Size = Vector3.new(33.96000289917, 10.470000267029, 43.559997558594)
    WedgePart11.Rotation = Vector3.new(0, 32.899997711182, 0)

    local WedgePart12 = Instance.new("WedgePart", Model)
    WedgePart12.Name = "Wedge2"
    WedgePart12.Reflectance = 0
    WedgePart12.Transparency = 0
    WedgePart12.Anchored = true
    WedgePart12.Archivable = true
    WedgePart12.CanCollide = true
    WedgePart12.Locked = false
    WedgePart12.BrickColor = BrickColor.new("Medium green")
    WedgePart12.Material = Enum.Material.Fabric
    WedgePart12.Position = Vector3.new(-580.31176757813, 50.62678527832, -2443.0573730469)
    WedgePart12.Size = Vector3.new(58.749996185303, 1, 69.490005493164)
    WedgePart12.Rotation = Vector3.new(-179.08000183105, 14.309999465942, -178.72999572754)

    local WedgePart13 = Instance.new("WedgePart", Model)
    WedgePart13.Name = "Wedge"
    WedgePart13.Reflectance = 0
    WedgePart13.Transparency = 0
    WedgePart13.Anchored = true
    WedgePart13.Archivable = true
    WedgePart13.CanCollide = true
    WedgePart13.Locked = false
    WedgePart13.BrickColor = BrickColor.new("Medium green")
    WedgePart13.Material = Enum.Material.Fabric
    WedgePart13.Position = Vector3.new(-554.13073730469, 37.368190765381, -2545.1484375)
    WedgePart13.Size = Vector3.new(59.18998336792, 30.919998168945, 140.86001586914)
    WedgePart13.Rotation = Vector3.new(0.91999995708466, -14.309999465942, -1.2699999809265)

    local Part14 = Instance.new("Part", Model)
    Part14.Name = "Wall"
    Part14.Reflectance = 0
    Part14.Transparency = 0.60000002384186
    Part14.Anchored = false
    Part14.Archivable = true
    Part14.CanCollide = true
    Part14.Locked = false
    Part14.BrickColor = BrickColor.new("Medium stone grey")
    Part14.Material = Enum.Material.Fabric
    Part14.Position = Vector3.new(-1522.0369873047, 632.79083251953, 1160.2779541016)
    Part14.Size = Vector3.new(46.590003967285, 8.9700002670288, 1.0400000810623)
    Part14.Rotation = Vector3.new(-180, 60, -180)

    local Part15 = Instance.new("Part", Model)
    Part15.Name = "Fence2"
    Part15.Reflectance = 0
    Part15.Transparency = 0.5
    Part15.Anchored = true
    Part15.Archivable = true
    Part15.CanCollide = true
    Part15.Locked = false
    Part15.BrickColor = BrickColor.new("Beige")
    Part15.Material = Enum.Material.Fabric
    Part15.Position = Vector3.new(-620.37908935547, 319.05871582031, 669.19006347656)
    Part15.Size = Vector3.new(2037.669921875, 16.129999160767, 2)
    Part15.Rotation = Vector3.new(0.0099999997764826, 30, -17.510000228882)

    local Part16 = Instance.new("Part", Model)
    Part16.Name = "Fence"
    Part16.Reflectance = 0
    Part16.Transparency = 0.5
    Part16.Anchored = true
    Part16.Archivable = true
    Part16.CanCollide = true
    Part16.Locked = false
    Part16.BrickColor = BrickColor.new("Beige")
    Part16.Material = Enum.Material.Fabric
    Part16.Position = Vector3.new(-639.38134765625, 319.06237792969, 636.27484130859)
    Part16.Size = Vector3.new(2037.669921875, 16.129999160767, 2)
    Part16.Rotation = Vector3.new(0.0099999997764826, 30, -17.510000228882)
    wait(4.6)
    for index, lumber in pairs(game.Workspace.Lumber:GetChildren()) do

    end
end)
about:Button("生成去椰子岛的捷径", function()
    local palm1 = Instance.new("Part", workspace)
    palm1.Name = "K Truck's Goin' There"
    palm1.Position = Vector3.new(1753.475, -10, -45.351)
    palm1.Size = Vector3.new(1600, 1, 50)
    palm1.BrickColor = BrickColor.Random()
    palm1.Anchored = true
    palm1.CanCollide = true
end)
about:Button("沼泽捷径", function()
    local part = Instance.new("Part", workspace)
    part.CFrame = CFrame.new(-499.196075, 155.460663, -166.186081, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    part.Size = Vector3.new(295.87, 1, 40.14)
    local part2 = Instance.new("Part", workspace)
    part2.CFrame = CFrame.new(-53.5482712, 75.8732529, -166.035767, 0.965925813, 0.258819044, 0, -0.258819044,
        0.965925813, 0, 0, 0, 1)
    part2.Size = Vector3.new(617.23, 0.72, 40)
    part2.Rotation = Vector3.new(0, 0, -15)
    part.BrickColor = BrickColor.new(255, 255, 255)
    part.Material = Enum.Material.DiamondPlate;
    part.Anchored = true
    part2.BrickColor = BrickColor.new(255, 255, 255)
    part2.Material = Enum.Material.DiamondPlate;
    part2.Anchored = true
end)
about:Button("黄金木捷径", function()
    local f0 = Instance.new("Folder", workspace)
    f0.Name = "SGlowPath"
    local part = Instance.new("Part", f0)
    part.CFrame = CFrame.new(8.54199982, -0.914913177, -812.122375, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    part.Size = Vector3.new(55, 1, 186)
    local part = Instance.new("Part", f0)
    part.CFrame = CFrame.new(-309.958008, -0.834023476, -879.710388, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    part.Size = Vector3.new(582, 1, 50)
    local part = Instance.new("Part", f0)
    part.CFrame = CFrame.new(-606.630554, -0.843258381, -748.689453, 0.965925813, 0, -0.258819044, 0, 1, 0, 0.258819044,
        0, 0.965925813)
    part.Size = Vector3.new(47, 1, 246)
    part.Rotation = Vector3.new(0, -15, 0)
    local part = Instance.new("Part", f0)
    part.CFrame = CFrame.new(-763.458679, -0.723966122, -652.31958, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    part.Size = Vector3.new(227, 1, 38)
    local part = Instance.new("Part", f0)
    part.CFrame = CFrame.new(-842.989868, -0.602809906, -713.690918, 0.965925872, 0, -0.258818835, 0, 1, 0, 0.258818835,
        0, 0.965925872)
    part.Size = Vector3.new(43, 1, 108)
    part.Rotation = Vector3.new(0, -15, 0)
    local part = Instance.new("Part", f0)
    part.CFrame = CFrame.new(-775.692932, -0.588047981, -815.868713, 0.707106829, 0, -0.707106769, 0, 1, 0, 0.707106769,
        0, 0.707106829)
    part.Size = Vector3.new(42, 1, 170)
    part.Rotation = Vector3.new(0, -45, 0)
    local part = Instance.new("Part", f0)
    part.CFrame = CFrame.new(-728.159668, -0.591278076, -952.04364, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    part.Size = Vector3.new(55, 1, 182)
    local part = Instance.new("Part", f0)
    part.CFrame = CFrame.new(-864.098999, -0.257263005, -985.877014, 0.965925872, 0, 0.258818835, 0, 1, 0, -0.258818835,
        0, 0.965925872)
    part.Size = Vector3.new(235, 1, 56)
    part.Rotation = Vector3.new(0, 15, 0)
    local part = Instance.new("Part", f0)
    part.CFrame = CFrame.new(-1015.87311, -11.1293316, -945.632751, 0.933012664, -0.258819044, 0.25, 0.267445326,
        0.963572919, -0.000555455685, -0.240749463, 0.0673795789, 0.968245745)
    part.Size = Vector3.new(82, 1, 55)
    part.Rotation = Vector3.new(0.03, 14.48, 15.51)
    for J, v in pairs(f0:children()) do
        v.BrickColor = BrickColor.new(255, 255, 255)
        v.Material = Enum.Material.DiamondPlate;
        v.Anchored = true
    end
end)
about:Button("冰木捷径", function()
    local f0 = Instance.new("Folder", workspace)
    f0.Name = "FrostPath"
    local part = Instance.new("Part", f0)
    part.CFrame = CFrame.new(744.516663, 71.5780411, 861.148438, 1, -1.04308164e-07, -1.78813934e-07, 1.47034342e-07,
        0.965925932, 0.258818656, 1.45724101e-07, -0.258818656, 0.965925932)
    part.Size = Vector3.new(40, 1, 202)
    part.Rotation = Vector3.new(-15, 0, 0)
    local part = Instance.new("Part", f0)
    part.CFrame = CFrame.new(744.273, 97.5341, 1003.82)
    part.Size = Vector3.new(41, 1, 90)
    local part = Instance.new("Part", f0)
    part.CFrame = CFrame.new(775.181458, 100.246162, 1027.58276, 0.965925813, -0.258819044, 0, 0.258819044, 0.965925813,
        0, 0, 0, 1)
    part.Size = Vector3.new(46, 1, 43)
    part.Rotation = Vector3.new(0, 0, 15)
    local part = Instance.new("Part", f0)
    part.CFrame = CFrame.new(815.776672, 106.550224, 1027.4032, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    part.Size = Vector3.new(38, 1, 42)
    local part = Instance.new("Part", f0)
    part.CFrame = CFrame.new(815.849976, 257.424072, 1608.79456, 1, 0, 0, 0, 0.965925813, 0.258819044, 0, -0.258819044,
        0.965925813)
    part.Size = Vector3.new(38, 1, 1164)
    part.Rotation = Vector3.new(-15, 0, 0)
    local part = Instance.new("Part", f0)
    part.CFrame = CFrame.new(900.612122, 407.759827, 2194.72363, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    part.Size = Vector3.new(208, 1, 50)
    local part = Instance.new("Part", f0)
    part.CFrame = CFrame.new(1268.40649, 407.26062, 2798.83594, 0.91354543, 0, 0.406736642, 0, 1, 0, -0.406736642, 0,
        0.91354543)
    part.Size = Vector3.new(41, 2, 1364)
    part.Rotation = Vector3.new(0, 24, 0)
    for J, v in pairs(f0:children()) do
        v.BrickColor = BrickColor.new(255, 255, 255)
        v.Material = Enum.Material.DiamondPlate;
        v.Anchored = true
    end
end)
about:Button("更简单的砍幻影", function()
    local yellow1 = Instance.new("Part", workspace)
    yellow1.Name = "Lol Truck There Easy"
    yellow1.Position = Vector3.new(-5.915, -217, -1250.256)
    yellow1.Size = Vector3.new(1207.06, 1, 1160.09)
    yellow1.BrickColor = BrickColor.Random()
    yellow1.Anchored = true
    yellow1.CanCollide = true
end)
local about = UITab7:section("传送",true)
about:Button("木材反斗城",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(252.31906127929688, 2.9999992847442627, 56.9854850769043)    
end)
about:Button("冰木",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1522.8817138671875, 412.3657531738281, 3277.71826171875) 
end)
about:Button("椰子木",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2615.709228515625, -5.899986743927002, -21.30138397216797)
end)
about:Button("幻影木",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-56.28166198730469, -213.13137817382812, -1357.8018798828125)
end)
about:Button("火山木",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1615.8934326171875, 622.9998779296875, 1086.1234130859375)
end)
about:Button("画室",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5241.55810546875, -166.00003051757812, 709.5656127929688)
end)
local about = UITab7:section("有怕点不到才加的",true)
local UITab8 = win:Tab("最强战场",'4483345998')
local about = UITab8:section("无卡密",true)
about:Button("1",function()
loadstring(game:HttpGet("https://pastefy.app/REPoaFWC/raw",true))();
end)
local about = UITab8:section("有卡密",true)
about:Button("1",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/LOLking123456/Strongest/main/Battlegrounds77"))()
end)
about:Button("复制卡密",function()
setclipboard("BestTheStrongest5412Roblox")
  end)
  local UITab9 = win:Tab("巴掌模拟器",'4483345998')
  local about = UITab9:section("巴掌模拟器",true)
about:Button("自动刷巴掌",function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Slap%20Farm'))()
end)
about:Button("巴掌模拟器yyds",function()
    loadstring(game:HttpGet("https://shz.al/~HHAKKSSKSOOS"))()
end)
about:Button("巴掌模拟器",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/dizyhvh/slap_battles_gui/main/0.lua"))()
end)
about:Button("常用功能",function()
    loadstring(game:HttpGet("https://lkhub.net/s/loader.lua"))()
end)
about:Button("多功能（老外）",function()
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Slap%20Battles")))()
end)
about:Toggle("无CD","Toggle" ,false, function(Value)
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local tool = character:FindFirstChildOfClass("Tool") or player.Backpack:FindFirstChildOfClass("Tool")
    
    bazhangmnq = Value
    
    while bazhangmnq do
    local localscript = tool:FindFirstChildOfClass("LocalScript")
    local localscriptclone = localscript:Clone()
    localscriptclone = localscript:Clone()
    localscriptclone:Clone()
    localscript:Destroy()
    localscriptclone.Parent = tool
    wait(0.1)
    end
    end)
    
    about:Button("获取计数器手套", function()
    fireclickdetector(game.Workspace.CounterLever.ClickDetector)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,100,0)
    wait(0.2)
    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
    wait(121)
    for i,v in pairs(workspace.Maze:GetDescendants()) do
    if v:IsA("ClickDetector") then
    fireclickdetector(v)
    end
    end
    end)
    
    about:Toggle("地牢亮度","Toggle" ,false, function(Value)
     Light = Value
        if not Light then
            game.Lighting.Ambient = Color3.new(0, 0, 0)
        end
    end)
    
    about:Dropdown("传送","Dropdown",{"安全区","竞技场","埃及岛","果实岛","盘子","锦标赛","默认竞技场"},function(Value)
    if Value == "安全区" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Spot.CFrame * CFrame.new(0,40,0)
    elseif Value == "竞技场" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Origo.CFrame * CFrame.new(0,-5,0)
    elseif Value == "埃及岛" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(215, -15.5, 0.5)
    elseif Value == "果实岛" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Arena.island5.Union.CFrame * CFrame.new(0,3.25,0)
    elseif Value == "盘子" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Arena.Plate.CFrame * CFrame.new(0,2,0)
    elseif Value == "锦标赛" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Battlearena.Arena.CFrame * CFrame.new(0,10,0)
    elseif Value == "默认竞技场" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(120,360,-3)
    end
    end)
    
    about:Toggle("复古技能","Toggle" ,false, function(Value)
    RetroSpam = Value
    while RetroSpam do
    game:GetService("ReplicatedStorage").RetroAbility:FireServer(RetroAbility)
    task.wait()
    end
    end)
    
    about:Dropdown("复古技能选择","Dropdown",{"Rocket Launcher","Ban Hammer","Bomb"}, function(Value)
    RetroAbility = Value
    end)
    
    about:Toggle("自动捡糖果","Toggle",false, function(Value)
    CandyCornFarm = Value
    while CandyCornFarm do
    for i, v in pairs(workspace.CandyCorns:GetChildren()) do
                    if v:FindFirstChildWhichIsA("TouchTransmitter") then
    v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    end
                end
    task.wait()
    end
    end)
    
    about:Toggle("获取炼金术师材料","Toggle", false, function(Value)
    AlchemistIngredients = Value
    if game.Players.LocalPlayer.leaderstats.Glove.Value == "Alchemist" then
    while AlchemistIngredients do
    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Mushroom")
    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Glowing Mushroom")
    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Fire Flower")
    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Winter Rose")
    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Dark Root")
    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Dire Flower")
    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Autumn Sprout")
    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Elder Wood")
    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Hazel Lily")
    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Wild Vine")
    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Jade Stone")
    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Lamp Grass")
    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Plane Flower")
    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Blood Rose")
    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Red Crystal")
    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Blue Crystal")
    task.wait()
    end
    end
    end)
    
    about:Toggle("自动加入竞技场","Toggle", false, function(Value)
    AutoEnterArena = Value
    while AutoEnterArena do
    if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
    firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1, 0)
    firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1, 1)
        end
    task.wait()
    end
    end)
    
    about:Toggle("自动光波球","Toggle", false, function(Value)
    if Person == nil then
    Person = game.Players.LocalPlayer.Name
    end
    _G.RojoSpam = Value
    while _G.RojoSpam do
    game:GetService("ReplicatedStorage"):WaitForChild("RojoAbility"):FireServer("Release", {game.Players[Person].Character.HumanoidRootPart.CFrame})
    task.wait()
    end
    end)
    
    about:Button("Rojo技能", function(Value)
    _G.RojoSpam = Value
    game:GetService("ReplicatedStorage"):WaitForChild("RojoAbility"):FireServer("Charge")
    wait(6)
    game:GetService("ReplicatedStorage"):WaitForChild("RojoAbility"):FireServer("Release", {game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame})
    task.wait()
    end)
    
    about:Toggle("音符技能","Toggle", false, function(Value)
    _G.RhythmSpam = Value
    while _G.RhythmSpam do
    game:GetService("ReplicatedStorage").rhythmevent:FireServer("AoeExplosion",0)
    task.wait()
    end
    end)
    
    about:Toggle("Null技能","Toggle", false, function(Value)
    NullSpam = Value
    while NullSpam do
    game:GetService("ReplicatedStorage").NullAbility:FireServer()
    task.wait()
    end
    end)
    
    about:Toggle("自动拾取黄金果实","Toggle", false, function(Value)
    SlappleFarm = Value
    while SlappleFarm do
    for i, v in ipairs(workspace.Arena.island5.Slapples:GetDescendants()) do
                    if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("entered") and v.Name == "Glove" and v:FindFirstChildWhichIsA("TouchTransmitter") then
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 0)
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 1)
                    end
                end
    task.wait()
    end
    end)
    
    about:Toggle("自动捡飞行宝珠","Toggle", false, function(Value)
    Jetfarm = Value
    while Jetfarm do
    for i,v in pairs(game.Workspace:GetChildren()) do
                        if v.Name == "JetOrb" and v:FindFirstChild("TouchInterest") then
    firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), v, 0)
    firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), v, 1)
                        end
                    end
    task.wait()
    end
    end)
    
    about:Toggle("自动捡相位球","Toggle", false, function(Value)
    Phasefarm = Value
    while Phasefarm do
    for i,v in pairs(game.Workspace:GetChildren()) do
                        if v.Name == "PhaseOrb" and v:FindFirstChild("TouchInterest") then
    firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), v, 0)
    firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), v, 1)
                        end
                    end
    task.wait()
    end
    end)
    
    about:Toggle("自动刷bob","Toggle", false, function(Value)
    ReplicaFarm = Value
    while ReplicaFarm do
    for i, v in pairs(workspace:GetChildren()) do
                    if v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("HumanoidRootPart") then
    game.ReplicatedStorage.b:FireServer(v:WaitForChild("HumanoidRootPart"))
                    end
                end
    task.wait()
    game:GetService("ReplicatedStorage").Duplicate:FireServer()
    task.wait(7)
    end
    end)
    
    about:Toggle("无限反转","Toggle", false, function(Value)
    _G.InfReverse = Value
    while _G.InfReverse do
    game:GetService("ReplicatedStorage").ReverseAbility:FireServer()
    wait(6)
    end
    end)
    
    about:Toggle("彩虹角色(装备黄金手套)","Toggle", false, function(Value)
    _G.Rainbow = Value
    while _G.Rainbow do
    for i = 0,1,0.001*25 do
    game:GetService("ReplicatedStorage").Goldify:FireServer(false, BrickColor.new(Color3.fromHSV(i,1,1)))
    task.wait()
    end
    end
    end)
    
    about:Toggle("防击飞","Toggle", false, function(Value)
    AntiRagdoll = Value
    if AntiRagdoll then
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
    game.Players.LocalPlayer.CharacterAdded:Connect(function()
    game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Changed:Connect(function()
    if game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == true and AntiRagdoll then
    repeat task.wait() game.Players.LocalPlayer.Character.Torso.Anchored = true
    until game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == false
    game.Players.LocalPlayer.Character.Torso.Anchored = false
    end
    end)
    end)
    end
    end)
    
    about:Toggle("反虚空(锦标赛也有效果)","Toggle", false, function(Value)
    game.Workspace.dedBarrier.CanCollide = Value
    game.Workspace.TAntiVoid.CanCollide = Value
    end)

about:Toggle("防死亡屏障","Toggle", false, function(Value)
    if Value == true then
    for i,v in pairs(game.Workspace.DEATHBARRIER:GetChildren()) do
                        if v.ClassName == "Part" and v.Name == "BLOCK" then
                            v.CanTouch = false
                        end
                    end
    workspace.DEATHBARRIER.CanTouch = false
    workspace.DEATHBARRIER2.CanTouch = false
    workspace.dedBarrier.CanTouch = false
    workspace.ArenaBarrier.CanTouch = false
    workspace.AntiDefaultArena.CanTouch = false
    else
    for i,v in pairs(game.Workspace.DEATHBARRIER:GetChildren()) do
                        if v.ClassName == "Part" and v.Name == "BLOCK" then
                            v.CanTouch = true
                        end
                    end
    workspace.DEATHBARRIER.CanTouch = true
    workspace.DEATHBARRIER2.CanTouch = true
    workspace.dedBarrier.CanTouch = true
    workspace.ArenaBarrier.CanTouch = true
    workspace.AntiDefaultArena.CanTouch = true
    end
    end)
    
    about:Toggle("反巴西","Toggle", false, function(Value)
    if Value == true then
    for i,v in pairs(game.Workspace.Lobby.brazil:GetChildren()) do
                            v.CanTouch = false
                    end
    else
    for i,v in pairs(game.Workspace.Lobby.brazil:GetChildren()) do
                            v.CanTouch = true
                    end
    end
    end)
    
    about:Toggle("反死亡方块","Toggle", false, function(Value)
    if Value == true then
            workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = false
            else
                    workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = true
            end
    end)
    
    about:Toggle("反上帝技能","Toggle", false, function(Value)
    AntiTimestop = Value
    while AntiTimestop do
                    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                        if v.ClassName == "Part" then
                            v.Anchored = false
                        end
                    end
    task.wait()
    end
    end)
    
    about:Toggle("反鱿鱼","Toggle", false, function(Value)
    AntiSquid = Value
    if AntiSquid == false then
            game.Players.LocalPlayer.PlayerGui.SquidInk.Enabled = true
            end
    while AntiSquid do
    if game.Players.LocalPlayer.PlayerGui:FindFirstChild("SquidInk") then
            game.Players.LocalPlayer.PlayerGui.SquidInk.Enabled = false
    end
    task.wait()
    end
    end)
    
    about:Toggle("反神圣杰克","Toggle", false, function(Value)
    game.Players.LocalPlayer.PlayerScripts.HallowJackAbilities.Disabled = Value
    end)
    
    about:Toggle("反传送带","Toggle", false, function(Value)
    game.Players.LocalPlayer.PlayerScripts.ConveyorVictimized.Disabled = Value
    end)
    
    about:Toggle("反板砖","Toggle", false, function(Value)
    AntiBrick = Value
    while AntiBrick do
    for i,v in pairs(game.Workspace:GetChildren()) do
                        if v.Name == "Union" then
                            v.CanTouch = false
                        end
                    end
    task.wait()
    end
    end)
    
    about:Toggle("反Null","Toggle", false, function(Value)
    AntiNull = Value
    while AntiNull do
    for i,v in pairs(game.Workspace:GetChildren()) do
                        if v.Name == "Imp" and v:FindFirstChild("Body") then
    shared.gloveHits[game.Players.LocalPlayer.leaderstats.Glove.Value]:FireServer(v.Body,true)
    end
    end
    task.wait()
    end
    end)
    
about:Button("自动刷巴掌",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Slap%20Farm'))()
end)

about:Button("巴掌模拟器1",function()
loadstring(game:HttpGet("https://lkhub.net/s/loader.lua"))()
end)

about:Button("巴掌模拟器2",function()
loadstring(game:HttpGet(("https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Slap%20Battles")))()
end)

about:Button("巴掌模拟器3",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/dizyhvh/slap_battles_gui/main/0.lua"))()
end)
  
 local UITab10 = win:Tab("内脏与黑火药",'4483345998')
 local about = UITab10:section("内脏与黑火药",true)
about:Button("加入https://discord.gg/RjqwhMY7DU获取密钥",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/FnfCheatbotsonroblox/kitten.cc-lua/main/kitten-obfuscated%20(1).lua"))()
end)
about:Button("点击我复制dc",function()
    setclipboard("https://discord.gg/RjqwhMY7DU")
end)
about:Button("内脏与黑火药",function()
    loadstring(game:HttpGet("https://shz.al/~KSKKS"))()
end)
 
 local UITab11 = win:Tab("自然灾害模拟器",'4483345998')
  local about = UITab11:section("自然灾害模拟器",true)
about:Toggle("自动农场胜出", "ToggleInfo", false, function(bool)
    _G.autowinfarm = bool;
    while wait(.1) do
        if _G.autowinfarm == true then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-236, 180, 360, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        end
end
end)
about:Toggle("地图投票用户界面", "t", false, function(Value)
		plr.PlayerGui.MainGui.MapVotePage.Visible = Value
	end)

local nextdis
about:Toggle("预测灾害", "t", false, function(val)
		nextdis = val

		while wait(1) and nextdis do
			local SurvivalTag = plr.Character:FindFirstChild("SurvivalTag")
			if SurvivalTag then
				if SurvivalTag.Value == "Blizzard" and nextdis then
					Message.Visible = true
					Message.Text = "下一个灾难是：暴风雪"
				elseif SurvivalTag.Value == "Sandstorm" and nextdis then
					Message.Visible = true
					Message.Text = "下一个灾难是：沙尘暴"
				elseif SurvivalTag.Value == "Tornado" and nextdis then
					Message.Visible = true
					Message.Text = "下一个灾难是：龙卷风"
				elseif SurvivalTag.Value == "Volcanic Eruption" and nextdis then
					Message.Visible = true
					Message.Text = "下一个灾难是：火山"
				elseif SurvivalTag.Value == "Flash Flood" and nextdis then
					Message.Visible = true
					Message.Text = "下一个灾难是：洪水"
				elseif SurvivalTag.Value == "Deadly Virus" and nextdis then
					Message.Visible = true
					Message.Text = "下一个灾难是：病毒"
				elseif SurvivalTag.Value == "Tsunami" and nextdis then
					Message.Visible = true
					Message.Text = "下一个灾难是：海啸"
				elseif SurvivalTag.Value == "Acid Rain" and nextdis then
					Message.Visible = true
					Message.Text = "下一个灾难是：酸雨"
				elseif SurvivalTag.Value == "Fire" and nextdis then
					Message.Visible = true
					Message.Text = "下一个灾难是：火焰"
				elseif SurvivalTag.Value == "Meteor Shower" and nextdis then
					Message.Visible = true
					Message.Text = "下一个灾难是：流星雨"
				elseif SurvivalTag.Value == "Earthquake" and nextdis then
					Message.Visible = true
					Message.Text = "下一个灾难是：地震"
				elseif SurvivalTag.Value == "Thunder Storm" and nextdis then
					Message.Visible = true
					Message.Text = "下一个灾难是：暴风雨"
				else
					Message.Visible = false
				end
			end
		end
	end)

about:Toggle("地图投票用户界面", "Map Voting UI", false, function(bool)
if bool == false then do game.Players.LocalPlayer.PlayerGui.MainGui.MapVotePage.Visible = false
    end
end
if bool == true then do game.Players.LocalPlayer.PlayerGui.MainGui.MapVotePage.Visible = true
    end
end
end)

about:Toggle("在水上行走", "ToggleInfo", false, function(bool)
 if bool == false then do game.Workspace.WaterLevel.CanCollide = false
                            game.Workspace.WaterLevel.Size = Vector3.new(10, 1, 10)
                        end
                    end
                    if bool == true then do game.Workspace.WaterLevel.CanCollide = true
                            game.Workspace.WaterLevel.Size = Vector3.new(5000, 1, 5000)
                        end
                    end
end)

about:Toggle("游戏岛悬崖碰撞", "Togglelnfo", false, function(bool)
for i, v in pairs (game.workspace:GetDescendants())do
                                if v.Name == 'LowerRocks' then
                                    v.CanCollide = bool
                                end
                            end
end)

about:Button("禁用坠落损坏",function()
local FallDamageScript = (game.Players.LocalPlayer.Character ~= nil) and game.Players.LocalPlayer.Character:FindFirstChild("FallDamageScript") or nil
                                if FallDamageScript then
                                FallDamageScript:Destroy()
                                end
end)

about:Toggle("自动禁用坠落伤害", "Toggleelnfo", false, function(bool)
_G.NoFallDamage = bool;
                            while wait(0.5) do
                                    if _G.NoFallDamage == true then
                            local FallDamageScript = (game.Players.LocalPlayer.Character ~= nil) and game.Players.LocalPlayer.Character:FindFirstChild("FallDamageScript") or nil
                            if FallDamageScript then
                            FallDamageScript:Destroy()
                            end end end
end)

about:Button("打印下一次灾难(/console)",function()
warn(game.Players.LocalPlayer.Character.SurvivalTag.Value)
end)

about:Button("移除灾难界面(暴风雪和沙尘暴)",function()
game.Players.LocalPlayer.PlayerGui.BlizzardGui:destroy()
		game.Players.LocalPlayer.PlayerGui.SandStormGui:destroy()
end)

about:Button("传送到地图",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-115.828506, 65.4863434, 18.8461514, 0.00697017973, 0.0789371505, -0.996855199, -3.13589936e-07, 0.996879458, 0.0789390653, 0.999975681, -0.000549906865, 0.00694845384)
end)

about:Button("游戏岛",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-83.5, 38.5, -27.5, -1, 0, 0, 0, 1, 0, 0, 0, -1)
end)

about:Button("产卵塔",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-280, 170, 341, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)
about:Button(
    "云脚本高级脚本",
    function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/IlIIIIIIIIIIIIIIIIllll/IIIlllllIIIIIIlllllllllllllllllllllllllllllllllllllllllIIllIIIlllllIIIIIIl/main/KAKANAKAAL/AIKAAOKA---------------JSHAKABALAOALAPALAALOAJAHAWJWBAKABAJANAKABKABWJWNA.LUA", true))()
    end
)
about:Button(
    "自然灾害-高级脚本",
    function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/9NLK7/93qjoadnlaknwldk/main/main"))()
    end
)
about:Button(
    "黑洞脚本（按E）",
    function()
        local UserInputService = game:GetService("UserInputService")
        local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
        local Folder = Instance.new("Folder", game:GetService("Workspace"))
        local Part = Instance.new("Part", Folder)
        local Attachment1 = Instance.new("Attachment", Part)
        Part.Anchored = true
        Part.CanCollide = false
        Part.Transparency = 1
        local Updated = Mouse.Hit + Vector3.new(0, 5, 0)
        local NetworkAccess =
            coroutine.create(
            function()
                settings().Physics.AllowSleep = false
                while game:GetService("RunService").RenderStepped:Wait() do
                    for _, Players in next, game:GetService("Players"):GetPlayers() do
                        if Players ~= game:GetService("Players").LocalPlayer then
                            Players.MaximumSimulationRadius = 0
                            sethiddenproperty(Players, "SimulationRadius", 0)
                        end
                    end
                    game:GetService("Players").LocalPlayer.MaximumSimulationRadius = math.pow(math.huge, math.huge)
                    setsimulationradius(math.huge)
                end
            end
        )
        coroutine.resume(NetworkAccess)

        local function EnhanceAndInvinciblePart(part)
            if
                part:IsA("Part") and part.Anchored == false and part.Parent:FindFirstChild("Humanoid") == nil and
                    part.Parent:FindFirstChild("Head") == nil and
                    part.Name ~= "Handle"
             then
                Mouse.TargetFilter = part
                for _, x in next, part:GetChildren() do
                    if
                        x:IsA("BodyAngularVelocity") or x:IsA("BodyForce") or x:IsA("BodyGyro") or x:IsA("BodyPosition") or
                            x:IsA("BodyThrust") or
                            x:IsA("BodyVelocity") or
                            x:IsA("RocketPropulsion")
                     then
                        x:Destroy()
                    end
                end
                if part:FindFirstChild("Attachment") then
                    part:FindFirstChild("Attachment"):Destroy()
                end
                if part:FindFirstChild("AlignPosition") then
                    part:FindFirstChild("AlignPosition"):Destroy()
                end
                if part:FindFirstChild("Torque") then
                    part:FindFirstChild("Torque"):Destroy()
                end
                part.CanCollide = false
                local Torque = Instance.new("Torque", part)
                Torque.Torque = Vector3.new(100000, 100000, 100000)
                local AlignPosition = Instance.new("AlignPosition", part)
                local Attachment2 = Instance.new("Attachment", part)
                Torque.Attachment0 = Attachment2
                AlignPosition.MaxForce = 9999999999999999
                AlignPosition.MaxVelocity = math.huge
                AlignPosition.Responsiveness = 200
                AlignPosition.Attachment0 = Attachment2
                AlignPosition.Attachment1 = Attachment1
            end
        end

        for _, part in next, game:GetService("Workspace"):GetDescendants() do
            EnhanceAndInvinciblePart(part)
        end

        game:GetService("Workspace").DescendantAdded:Connect(
            function(part)
                EnhanceAndInvinciblePart(part)
            end
        )
        -- 监听按键事件
        UserInputService.InputBegan:Connect(
            function(input, isProcessed)
                if input.KeyCode == Enum.KeyCode.E and not isProcessed then
                    Updated = Mouse.Hit + Vector3.new(0, 5, 0)
                end
            end
        )

        -- 使用物理引擎移动所有物体
        spawn(
            function()
                while game:GetService("RunService").RenderStepped:Wait() do
                    Attachment1.WorldCFrame = Updated
                end
            end
        )
    end
)
about:Button(
    "自然灾害-1脚本",
    function()
        loadstring(
            game:HttpGet(
                "https://gist.githubusercontent.com/TurkOyuncu99/7c75386107937fa006304efd24543ad4/raw/8d759dfcd95d39949c692735cfdf62baec0bf835/cafwetweg",
                true
            )
        )()
    end
)
  
  local UITab12 = win:Tab("旋转",'4483345998')
  local about = UITab12:section("旋转",true)
  
  about:Button("旋转10",function()
    local speed = 10

local plr = game:GetService("Players").LocalPlayer
repeat task.wait() until plr.Character
local humRoot = plr.Character:WaitForChild("HumanoidRootPart")
plr.Character:WaitForChild("Humanoid").AutoRotate = false
local velocity = Instance.new("AngularVelocity")
velocity.Attachment0 = humRoot:WaitForChild("RootAttachment")
velocity.MaxTorque = math.huge
velocity.AngularVelocity = Vector3.new(0, speed, 0)
velocity.Parent = humRoot
velocity.Name = "Spinbot"
    end)

  about:Button("旋转30",function()
    local speed = 30

local plr = game:GetService("Players").LocalPlayer
repeat task.wait() until plr.Character
local humRoot = plr.Character:WaitForChild("HumanoidRootPart")
plr.Character:WaitForChild("Humanoid").AutoRotate = false
local velocity = Instance.new("AngularVelocity")
velocity.Attachment0 = humRoot:WaitForChild("RootAttachment")
velocity.MaxTorque = math.huge
velocity.AngularVelocity = Vector3.new(0, speed, 0)
velocity.Parent = humRoot
velocity.Name = "Spinbot"
end)
  about:Button(
    "旋转40",
    function()
    local speed = 40

local plr = game:GetService("Players").LocalPlayer
repeat task.wait() until plr.Character
local humRoot = plr.Character:WaitForChild("HumanoidRootPart")
plr.Character:WaitForChild("Humanoid").AutoRotate = false
local velocity = Instance.new("AngularVelocity")
velocity.Attachment0 = humRoot:WaitForChild("RootAttachment")
velocity.MaxTorque = math.huge
velocity.AngularVelocity = Vector3.new(0, speed, 0)
velocity.Parent = humRoot
velocity.Name = "Spinbot"
    end)

  about:Button(
    "旋转50",
    function()
    local speed = 50

local plr = game:GetService("Players").LocalPlayer
repeat task.wait() until plr.Character
local humRoot = plr.Character:WaitForChild("HumanoidRootPart")
plr.Character:WaitForChild("Humanoid").AutoRotate = false
local velocity = Instance.new("AngularVelocity")
velocity.Attachment0 = humRoot:WaitForChild("RootAttachment")
velocity.MaxTorque = math.huge
velocity.AngularVelocity = Vector3.new(0, speed, 0)
velocity.Parent = humRoot
velocity.Name = "Spinbot"
    end)

about:Button(
    "旋转60",
    function()
    local speed = 60

local plr = game:GetService("Players").LocalPlayer
repeat task.wait() until plr.Character
local humRoot = plr.Character:WaitForChild("HumanoidRootPart")
plr.Character:WaitForChild("Humanoid").AutoRotate = false
local velocity = Instance.new("AngularVelocity")
velocity.Attachment0 = humRoot:WaitForChild("RootAttachment")
velocity.MaxTorque = math.huge
velocity.AngularVelocity = Vector3.new(0, speed, 0)
velocity.Parent = humRoot
velocity.Name = "Spinbot"
    end)

about:Button(
    "旋转70",
    function()
    local speed = 70

local plr = game:GetService("Players").LocalPlayer
repeat task.wait() until plr.Character
local humRoot = plr.Character:WaitForChild("HumanoidRootPart")
plr.Character:WaitForChild("Humanoid").AutoRotate = false
local velocity = Instance.new("AngularVelocity")
velocity.Attachment0 = humRoot:WaitForChild("RootAttachment")
velocity.MaxTorque = math.huge
velocity.AngularVelocity = Vector3.new(0, speed, 0)
velocity.Parent = humRoot
velocity.Name = "Spinbot"
    end)

about:Button(
    "旋转80",
    function()
    local speed = 80

local plr = game:GetService("Players").LocalPlayer
repeat task.wait() until plr.Character
local humRoot = plr.Character:WaitForChild("HumanoidRootPart")
plr.Character:WaitForChild("Humanoid").AutoRotate = false
local velocity = Instance.new("AngularVelocity")
velocity.Attachment0 = humRoot:WaitForChild("RootAttachment")
velocity.MaxTorque = math.huge
velocity.AngularVelocity = Vector3.new(0, speed, 0)
velocity.Parent = humRoot
velocity.Name = "Spinbot"
    end)

about:Button(
    "旋转90",
    function()
    local speed = 90

local plr = game:GetService("Players").LocalPlayer
repeat task.wait() until plr.Character
local humRoot = plr.Character:WaitForChild("HumanoidRootPart")
plr.Character:WaitForChild("Humanoid").AutoRotate = false
local velocity = Instance.new("AngularVelocity")
velocity.Attachment0 = humRoot:WaitForChild("RootAttachment")
velocity.MaxTorque = math.huge
velocity.AngularVelocity = Vector3.new(0, speed, 0)
velocity.Parent = humRoot
velocity.Name = "Spinbot"
    end)

about:Button(
    "旋转100",
    function()
    local speed = 100

local plr = game:GetService("Players").LocalPlayer
repeat task.wait() until plr.Character
local humRoot = plr.Character:WaitForChild("HumanoidRootPart")
plr.Character:WaitForChild("Humanoid").AutoRotate = false
local velocity = Instance.new("AngularVelocity")
velocity.Attachment0 = humRoot:WaitForChild("RootAttachment")
velocity.MaxTorque = math.huge
velocity.AngularVelocity = Vector3.new(0, speed, 0)
velocity.Parent = humRoot
velocity.Name = "Spinbot"
    end)

about:Button(
    "旋转150",
    function()
    local speed = 150

local plr = game:GetService("Players").LocalPlayer
repeat task.wait() until plr.Character
local humRoot = plr.Character:WaitForChild("HumanoidRootPart")
plr.Character:WaitForChild("Humanoid").AutoRotate = false
local velocity = Instance.new("AngularVelocity")
velocity.Attachment0 = humRoot:WaitForChild("RootAttachment")
velocity.MaxTorque = math.huge
velocity.AngularVelocity = Vector3.new(0, speed, 0)
velocity.Parent = humRoot
velocity.Name = "Spinbot"
    end)

about:Button(
    "旋转200",
    function()
    local speed = 200

local plr = game:GetService("Players").LocalPlayer
repeat task.wait() until plr.Character
local humRoot = plr.Character:WaitForChild("HumanoidRootPart")
plr.Character:WaitForChild("Humanoid").AutoRotate = false
local velocity = Instance.new("AngularVelocity")
velocity.Attachment0 = humRoot:WaitForChild("RootAttachment")
velocity.MaxTorque = math.huge
velocity.AngularVelocity = Vector3.new(0, speed, 0)
velocity.Parent = humRoot
velocity.Name = "Spinbot"
    end)

about:Button(
    "旋转250",
    function()
    local speed = 250

local plr = game:GetService("Players").LocalPlayer
repeat task.wait() until plr.Character
local humRoot = plr.Character:WaitForChild("HumanoidRootPart")
plr.Character:WaitForChild("Humanoid").AutoRotate = false
local velocity = Instance.new("AngularVelocity")
velocity.Attachment0 = humRoot:WaitForChild("RootAttachment")
velocity.MaxTorque = math.huge
velocity.AngularVelocity = Vector3.new(0, speed, 0)
velocity.Parent = humRoot
velocity.Name = "Spinbot"
    end)

about:Button(
    "旋转300",
    function()
    local speed = 300

local plr = game:GetService("Players").LocalPlayer
repeat task.wait() until plr.Character
local humRoot = plr.Character:WaitForChild("HumanoidRootPart")
plr.Character:WaitForChild("Humanoid").AutoRotate = false
local velocity = Instance.new("AngularVelocity")
velocity.Attachment0 = humRoot:WaitForChild("RootAttachment")
velocity.MaxTorque = math.huge
velocity.AngularVelocity = Vector3.new(0, speed, 0)
velocity.Parent = humRoot
velocity.Name = "Spinbot"
    end)

about:Button(
    "旋转350",
    function()
    local speed = 350

local plr = game:GetService("Players").LocalPlayer
repeat task.wait() until plr.Character
local humRoot = plr.Character:WaitForChild("HumanoidRootPart")
plr.Character:WaitForChild("Humanoid").AutoRotate = false
local velocity = Instance.new("AngularVelocity")
velocity.Attachment0 = humRoot:WaitForChild("RootAttachment")
velocity.MaxTorque = math.huge
velocity.AngularVelocity = Vector3.new(0, speed, 0)
velocity.Parent = humRoot
velocity.Name = "Spinbot"
    end)

about:Button(
    "旋转400",
    function()
    local speed = 400

local plr = game:GetService("Players").LocalPlayer
repeat task.wait() until plr.Character
local humRoot = plr.Character:WaitForChild("HumanoidRootPart")
plr.Character:WaitForChild("Humanoid").AutoRotate = false
local velocity = Instance.new("AngularVelocity")
velocity.Attachment0 = humRoot:WaitForChild("RootAttachment")
velocity.MaxTorque = math.huge
velocity.AngularVelocity = Vector3.new(0, speed, 0)
velocity.Parent = humRoot
velocity.Name = "Spinbot"
    end)
    
    local UITab12 = win:Tab("压力",'7734068321')

local about = UITab12:section("压力",true)

about:Button("无敌 『有用』 ",function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Pressure-*-Mode-15992"))()
end)

about:Button("DX",function()
loadstring(game:HttpGet(('https://github.com/DocYogurt/Main/raw/main/Scripts/Pressure')))()
end)

about:Button("要卡密",function()
loadstring(game:HttpGet(('https://pastefy.app/o6LTiEBy/raw'),true))()
end)

about:Button("超级好用  ᐅ这个是我认为最好用的ᐊ",function()
loadstring(game:HttpGet("https://github.com/Drop56796/CreepyEyeHub/blob/main/obfuscate.lua?raw=true"))()
end)

local UITab13 = win:Tab("『其他脚本』",'7734068321')
local about = UITab13:section("『其他脚本』",true)

about:Button("山脚本",function()
loadstring(game:HttpGet("https://h.lkmc.asia/script/ssfb.lua"))()
end)

about:Button("青脚本",function()
    loadstring(game:HttpGet('https://rentry.co/ct293/raw'))()
end)

about:Button("陈脚本",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/QxDD9SpW"))()
end)

about:Button("杯脚本",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/zuohongjian/bjb/main/llcq"))()
end)

about:Button("北极脚本『中心』",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/KwARpDxV",true))()
end)

about:Button("地岩脚本",function()
 loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\98\98\97\109\120\98\98\97\109\120\98\98\97\109\120\47\99\111\100\101\115\112\97\99\101\115\45\98\108\97\110\107\47\109\97\105\110\47\37\69\55\37\57\57\37\66\68\34\41\41\40\41")()
end)

about:Button("导管中心",function()
 loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\117\115\101\114\97\110\101\119\114\102\102\47\114\111\98\108\111\120\45\47\109\97\105\110\47\37\69\54\37\57\68\37\65\49\37\69\54\37\65\67\37\66\69\37\69\53\37\56\68\37\56\70\37\69\56\37\65\69\37\65\69\34\41\41\40\41\10")()
end)

about:Button("脚本中心1.5版本",function()
 loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\103\101\109\120\72\119\65\49"))()
end)

about:Button("玖恶脚本",function()
    loadstring(game:HttpGet('https://ayangwp.cn/api/v3/file/get/8508/%E7%8E%96%E6%81%B6%E4%B8%AD%E5%BF%83.lua?sign=wt54yWf_f0LDB3gXXyQu0SFQ0oUDUXZBOaWQShwCFGg%3D%3A0'))()
end)

about:Button("老大脚本",function()
    loadstring(game:HttpGet("https://ayangwp.cn/api/v3/file/get/8401/%E8%80%81%E5%A4%A7%E8%84%9A%E6%9C%AC1.0%E7%89%88.txt?sign=XHxQ1ja8djAnEjVEG-eEZFPeZKFHJ0FHeybHpSbtBW4%3D%3A0"))()
end)

about:Button("乌云脚本",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/dT4ZGge8"))()
end)

about:Button("皇脚本",function()
    loadstring(game:HttpGet("https://ayangwp.cn/api/v3/file/get/8577/%E7%9A%87v5.txt?sign=ToDT3Udyh4r3WwDu_yVblRL849qC2GJjjjQ7FTidF_w%3D%3A0"))()
end)

about:Button("冰红茶脚本",function()
    loadstring(game:HttpGet("https://ayangwp.cn/api/v3/file/get/8582/Protected_9297682332119129.lua?sign=jP-h1AGooC90C0A0O5eDboOCoaQTZpOzLoWzg_oz1eE%3D%3A0"))()
end)

about:Button("静新脚本",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/jxdjbx/ggff/main/%E5%B8%85%E9%94%85%E4%B8%80%E6%9E%9A%E5%B0%8F%E5%8F%AF%E7%88%B1%E5%91%80%E5%8F%91%E8%B4%A7%E5%A5%BD%E7%9A%84%E5%90%83%E4%B8%8D%E5%90%83%E8%AE%B0%E5%BE%97%E8%AE%B0%E5%BE%97%E4%BD%A0%E6%96%B9%E4%BE%BF%E6%89%93%E5%BC%80%E7%94%B5%E8%84%91%E6%96%B9%E4%B8%8D%E6%96%B9%E4%BE%BF%E8%AE%B0%E5%BE%97%E9%83%BD%E8%A7%81%E4%B8%8D%E5%88%B0%E6%96%B9%E4%BE%BF%E7%9A%84%E8%AF%9D%E6%89%8B%E6%9C%BA%E6%96%B9%E4%B8%8D%E6%96%B9%E4%BE%BF%E5%B0%B1"))()
end)

about:Button("小魔脚本",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaomoNB666/xiaomoNB666/main/%E6%9E%81.lua"))()
end)

about:Button("鲨新ui脚本",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/fvvhhh/sturdy-octo-engine/main/Protected_1221338743706560.lua.txt"))()
end)

about:Button("雷脚本",function()
    loadstring(game:HttpGet(('https://pastebin.com/raw/tPB47inG')))()
end)

about:Button("皮脚本",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaopi77/xiaopi77/main/QQ1002100032-Roblox-Pi-script.lua"))()
end)

about:Button("禁漫中心",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/anlushanjinchangantangwanle/main/jmjmjmjmjmjmjmjmjmjmjmjmjmjmjmjm.lua"))()
end)

about:Button("霜脚本",function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\115\104\117\97\110\103\122\117\105\115\104\117\97\105\47\49\47\114\101\102\115\47\104\101\97\100\115\47\109\97\105\110\47\37\69\57\37\57\67\37\57\67\37\69\53\37\56\68\37\65\49\37\69\53\37\65\70\37\56\54\37\69\55\37\66\51\37\66\66\37\69\55\37\66\66\37\57\70\37\69\54\37\57\54\37\66\48\37\69\52\37\66\68\37\57\67\46\116\120\116\34\41\41\40\41\10\10")()
end)

about:Button("初脚本",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/odhdshhe/nianchuchuchuchuchu/refs/heads/main/Protected_2427816874224132.txt"))()
end)

about:Button("鹤脚本",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/qazpin66/-/refs/heads/main/%E9%B9%A41.5.lua"))()
end)

about:Button("剑客V5",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/JianKeCX/JianKeV5/refs/heads/main/QQqun155160100"))()
end)

about:Button("安脚本（要加群组）",function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/wucan114514/gegeyxjb/refs/heads/main/%E5%AE%89%E8%84%9A%E6%9C%AC.lua')))()
end)

about:Button("白（要白名单）",function()
_G.qq="1790789616"loadstring(game:HttpGet(('https://raw.githubusercontent.com/wev666666/baijiaobengV2.0beta/main/%E7%99%BD%E8%84%9A%E6%9C%ACbeta'),true))()
end)

about:Button("剑客V5",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/JianKeCX/JianKeV5/refs/heads/main/QQqun155160100"))()
end)

about:Button("退休",function()
qun="809771141"
loadstring(game:HttpGet("https://pastebin.com/raw/yPhwFHy4"))()
end)

about:Button("叶",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/roblox-ye/QQ515966991/refs/heads/main/ROBLOX-YE-SCRIPT-XIAOYE.lua"))()
end)

about:Button("剑客V4",function()
jianke_V4 = "作者_初夏"
jianke__V4 = "作者QQ1412152634"
jianke___V4 = "剑客QQ群347724155"
loadstring(game:HttpGet(('https://raw.githubusercontent.com/JianKeCX/JianKeV4/main/ChuXia')))()
end)

local UITab14 = win:Tab("『监狱人生』",'4483345998')

local about = UITab14:section("『传送』",true)

about:Button("警卫室",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(847.7261352539062, 98.95999908447266, 2267.387451171875)
end)

about:Button("监狱室内",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(919.2575073242188, 98.95999908447266, 2379.74169921875)
end)

about:Button("监狱室外",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(760.6033325195312, 96.96992492675781, 2475.405029296875)
end)

about:Button("犯罪复活点",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-937.5891723632812, 93.09876251220703, 2063.031982421875)
end)

about:Button("传送院子", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(788.5759887695312, 97.99992370605469, 2455.056640625)
end)
about:Button("传送警车库", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(602.7301635742188, 98.20000457763672, 2503.56982421875)
end)
about:Button("传送死人下水道", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(917.4256591796875, 78.69828033447266, 2416.18359375)
end)
about:Button("传送食堂", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(921.0059204101562, 99.98993682861328, 2289.23095703125)
end)

local about = UITab14:section("『脚本』",true)

about:Button("无敌模式", function()
  loadstring(game:HttpGet("https://pastebin.com/raw/LdTVujTA"))()
end)
about:Button("杀死所有人", function()
  loadstring(game:HttpGet("https://pastebin.com/raw/kXjfpFPh"))()
end)

about:Button("变钢铁侠", function()
  loadstring(game:HttpGet("https://pastebin.com/raw/7prijqYH"))()
end)
about:Button("变死神", function()
  loadstring(game:HttpGet("https://pastebin.com/ewv9bbRp"))()
end)
about:Button("变车模型", function()
  loadstring(game:HttpGet("https://pastebin.com/raw/zLe3e4BS"))()
end)

about:Button("变成警察", function()
    workspace.Remote.TeamEvent:FireServer("Bright blue");
end)
about:Button("变成囚犯", function()
    workspace.Remote.TeamEvent:FireServer("Bright orange");
end)

about:Toggle("杀死光环", "SSGH", false, function(SSGH)
    States.KillAura = SSGH if state then print("Kill Aura On") CreateKillPart() else print("Kill Aura Off") if Parts[1] and Parts[1].Name == "KillAura" then Parts[1]:Destroy() Parts[1] = nil end end end) function CreateKillPart() if Parts[1] then pcall(function() Parts[1]:Destroy() end) Parts[1] = nil end local Part = Instance.new("Part",plr.Character) local hilight = Instance.new("Highlight",Part) hilight.FillTransparency = 1 Part.Anchored = true Part.CanCollide = false Part.CanTouch = false Part.Material = Enum.Material.SmoothPlastic Part.Transparency = .98 Part.Material = Enum.Material.SmoothPlastic Part.BrickColor = BrickColor.White() Part.Size = Vector3.new(20,2,20) Part.Name = "KillAura" Parts[1] = Part end task.spawn(function() repeat task.wait()until plr.Character and char and char:FindFirstChildOfClass("Humanoid") if States.KillAura then CreateKillPart() end end) game:GetService("RunService").Stepped:Connect(function() if States.KillAura then for i,v in pairs(game.Players:GetPlayers()) do if v ~= game.Players.LocalPlayer then if (v.Character.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).magnitude <14 and v.Character.Humanoid.Health >0 then local args = {[1] = v} for i =1,2 do task.spawn(function() game:GetService("ReplicatedStorage").meleeEvent:FireServer(unpack(args)) end) end end end end end
end)

about:Button("手里剑秒杀",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/PSXhuge/1/114514/jian"))()
end)

about:Button("监狱人生1",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/dalloc2/Roblox/main/TigerAdmin.lua"))()
end)

about:Button("监狱人生2",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Denverrz/scripts/master/PRISONWARE_v1.3.txt"))()
end)

about:Button("监狱人生汉化",function()
loadstring(game:HttpGetAsync("https://pastebin.com/raw/fYMnAEeJ"))()
end)

local UITab15 = win:Tab("『鲨口求生』",'4483345998')

local about = UITab15:section("『鲨口求生』",true)

about:Dropdown("船只提取器", "FreeBoat", { "摩托艇", "摩托艇", "独角兽挺", "摩托艇", "红马林鱼", "单栀帆船", "拖船", "小船摩托艇", "摩托艇甜甜圈", "马林鱼", "管船", "渔船", "维京船", "小树林帆船", "红冠摩托艇", "双体船", "战斗船", "游船", "鸭海军陆战队", "派对船", "军事潜艇", "姜饼蒸汽船", "雪橇2022", "雪地摩托", "游轮"}, function(CS)
  game:GetService("ReplicatedStorage").EventsFolder.BoatSelection.UpdateHostBoat:FireServer(CS)
end)

about:Button("自动杀鲨鱼", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Sw1ndlerScripts/RobloxScripts/main/Misc%20Scripts/sharkbite2.lua",true))()
end)

about:Button("鲨口求生1",function()
loadstring(game:HttpGet("https://pastebin.com/raw/YYVLbzVg", true))()
end)

about:Button("鲨口求生2",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/LOOF-sys/Roblox-Shit/main/SharkBite.lua",true))()
end)

about:Button("鲨口求生3",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Lolboxo/SharkBiteV3/main/SharkBiteV3.1'))()
end)

about:Button("鲨口求生刷船",function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/ghostapustaja/legionhub/main/sharkbite2'),true))()
end)

local UITab16 = win:Tab("『超级大力士模拟器』",'4483345998')

local about = UITab16:section("『超级大力士模拟器』",true)

about:Button("传送到开始区域", function()
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(85.86943817138672, 11.751949310302734, -198.07127380371094)
    end)
    
about:Button("传送到健身区域", function()
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(93.60747528076172, 11.751947402954102, -10.266206741333008)
    end)
    
about:Button("传送到食物区域", function()
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(78.86384582519531, 11.751947402954102, 228.9690399169922)
    end)
    
about:Button("传送到街机区域", function()
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(88.99887084960938, 11.751949310302734, 502.90997314453125)
    end)
    
about:Button("传送到农场区域", function()
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(85.6707763671875, 11.751947402954102, 788.5997314453125)
    end)
    
about:Button("传送到城堡区域", function()
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(84.87281036376953, 11.84177017211914, 1139.7509765625)
    end)
    
about:Button("传送到蒸汽朋克区域", function()
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(92.63227081298828, 11.841767311096191, 1692.7890625)
    end)
    
about:Button("传送到迪斯科区域", function()
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(98.69613647460938, 16.015085220336914, 2505.213134765625)
    end)
    
about:Button("传送到太空区域", function()
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(88.42948150634766, 11.841769218444824, 3425.941650390625)
    end)
    
about:Button("传送到糖果区域", function()
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(63.55805969238281, 11.841663360595703, 4340.69921875)
    end)
    
about:Button("送到实验室区域", function()
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(78.00920867919922, 11.841663360595703, 5226.60205078125)
    end)
    
about:Button("传送到热带区域", function()
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(80.26090240478516, 12.0902681350708, 6016.16552734375)
    end)
    
about:Button("传送到恐龙区域", function()
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(38.4753303527832, 25.801530838012695, 6937.779296875)
    end)
    
about:Button("传送到复古区域", function()
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(99.81867218017578, 12.89099407196045, 7901.74755859375)
    end)
    
about:Button("传送到冬季区域", function()
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(63.47243881225586, 11.841662406921387, 8983.810546875)
    end)
    
about:Button("传送到深海区域", function()
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(105.36250305175781, 26.44820213317871, 9970.0849609375)
    end)
    
about:Button("传送到狂野西部区域", function()
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(68.69414520263672, 15.108586311340332, 10938.654296875)
    end)
    
about:Button("传送到豪华公寓区域", function()
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(86.75145721435547, 11.313281059265137, 12130.349609375)
    end)
    
about:Button("传送到宝剑战斗区域", function()
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(111.25597381591797, 11.408829689025879, 12945.57421875)
    end)
    
about:Button("传送到童话区域", function()
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(121.14932250976562, 11.313281059265137, 14034.50390625)
    end)
    
about:Button("传送到桃花区域", function()
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(108.2142333984375, 11.813281059265137, 15131.861328125)
    end)
    
about:Button("传送到厨房区域", function()
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.78338623046875, 21.76291847229004, 16204.9755859375)
    end)
    
about:Button("传送到下水道区域", function()
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(47.36086654663086, 12.25178050994873, 17656.04296875)
    end)
    
about:Button("超级大力士模拟器1",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe2/ToraIsMe2/main/0strongman", true))()
end)

about:Button("超级大力士模拟器2",function()
loadstring(game:HttpGet("https://pastefy.app/aO18ZEB9/raw"))()
end)

about:Button("超级大力士模拟器3",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/hngamingroblox/scripts/main/strongman%20simulator'))()
end)

about:Button("超级大力士模拟器4",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe2/ToraIsMe2/main/0strongman", true))()
end)

   local UITab17 = win:Tab("自瞄",'4483345998')

local about = UITab17:section("自瞄",true)

  about:Toggle("ESP 显示名字", "AMG", ENABLED, function(enabled)
    if enabled then ENABLED = true for _, player in ipairs(Players:GetPlayers()) do onPlayerAdded(player) end Players.PlayerAdded:Connect(onPlayerAdded) Players.PlayerRemoving:Connect(onPlayerRemoving) local localPlayer = Players.LocalPlayer if localPlayer and localPlayer.Character then for _, player in ipairs(Players:GetPlayers()) do if player.Character then createNameLabel(player) end end end RunService.Heartbeat:Connect(function() if ENABLED then for _, player in ipairs(Players:GetPlayers()) do if player.Character then createNameLabel(player) end end end end) else ENABLED = false for _, player in ipairs(Players:GetPlayers()) do onPlayerRemoving(player) end RunService:UnbindFromRenderStep("move") end
end)

about:Toggle("Circle ESP", "ESP", false, function(state)
        for _, player in pairs(game.Players:GetPlayers()) do
            if player ~= game.Players.LocalPlayer then
                if state then
                    local highlight = Instance.new("Highlight")
                    highlight.Parent = player.Character
                    highlight.Adornee = player.Character

                    local billboard = Instance.new("BillboardGui")
                    billboard.Parent = player.Character
                    billboard.Adornee = player.Character
                    billboard.Size = UDim2.new(0, 100, 0, 100)
                    billboard.StudsOffset = Vector3.new(0, 3, 0)
                    billboard.AlwaysOnTop = true

                    local nameLabel = Instance.new("TextLabel")
                    nameLabel.Parent = billboard
                    nameLabel.Size = UDim2.new(1, 0, 1, 0)
                    nameLabel.BackgroundTransparency = 1
                    nameLabel.Text = player.Name
                    nameLabel.TextColor3 = Color3.new(1, 1, 1)
                    nameLabel.TextStrokeTransparency = 0.5
                    nameLabel.TextScaled = true

                    local circle = Instance.new("ImageLabel")
                    circle.Parent = billboard
                    circle.Size = UDim2.new(0, 50, 0, 50)
                    circle.Position = UDim2.new(0.5, 0, 0.5, 0) -- Center the circle
                    circle.AnchorPoint = Vector2.new(0.5, 0.5) -- Set the anchor point to the center
                    circle.BackgroundTransparency = 1
                    circle.Image = "rbxassetid://2200552246" -- Replace with your circle image asset ID
                else
                    if player.Character:FindFirstChildOfClass("Highlight") then
                        player.Character:FindFirstChildOfClass("Highlight"):Destroy()
                    end
                    if player.Character:FindFirstChildOfClass("BillboardGui") then
                        player.Character:FindFirstChildOfClass("BillboardGui"):Destroy()
                    end
                end
            end
        end
    end)

about:Button("透视1",function()
loadstring(game:HttpGet('https://pastebin.com/raw/MA8jhPWT'))()
end)

about:Button("透视2",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP'))()
end)

about:Button("情云同款自瞄可调", function()
  local fov = 100 local smoothness = 10 local crosshairDistance = 5 local RunService = game:GetService("RunService") local UserInputService = game:GetService("UserInputService") local Players = game:GetService("Players") local Cam = game.Workspace.CurrentCamera local FOVring = Drawing.new("Circle") FOVring.Visible = true FOVring.Thickness = 2 FOVring.Color = Color3.fromRGB(0, 255, 0) FOVring.Filled = false FOVring.Radius = fov FOVring.Position = Cam.ViewportSize / 2 local Player = Players.LocalPlayer local PlayerGui = Player:WaitForChild("PlayerGui") local ScreenGui = Instance.new("ScreenGui") ScreenGui.Name = "FovAdjustGui" ScreenGui.Parent = PlayerGui local Frame = Instance.new("Frame") Frame.Name = "MainFrame" Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30) Frame.BorderColor3 = Color3.fromRGB(128, 0, 128) Frame.BorderSizePixel = 2 Frame.Position = UDim2.new(0.3, 0, 0.3, 0) Frame.Size = UDim2.new(0.4, 0, 0.4, 0) Frame.Active = true Frame.Draggable = true Frame.Parent = ScreenGui local MinimizeButton = Instance.new("TextButton") MinimizeButton.Name = "MinimizeButton" MinimizeButton.Text = "-" MinimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255) MinimizeButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50) MinimizeButton.Position = UDim2.new(0.9, 0, 0, 0) MinimizeButton.Size = UDim2.new(0.1, 0, 0.1, 0) MinimizeButton.Parent = Frame local isMinimized = false MinimizeButton.MouseButton1Click:Connect(function() isMinimized = not isMinimized if isMinimized then Frame:TweenSize(UDim2.new(0.1, 0, 0.1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.3, true) MinimizeButton.Text = "+" else Frame:TweenSize(UDim2.new(0.4, 0, 0.4, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.3, true) MinimizeButton.Text = "-" end end) local FovLabel = Instance.new("TextLabel") FovLabel.Name = "FovLabel" FovLabel.Text = "自瞄范围" FovLabel.TextColor3 = Color3.fromRGB(255, 255, 255) FovLabel.BackgroundTransparency = 1 FovLabel.Position = UDim2.new(0.1, 0, 0.1, 0) FovLabel.Size = UDim2.new(0.8, 0, 0.2, 0) FovLabel.Parent = Frame local FovSlider = Instance.new("TextBox") FovSlider.Name = "FovSlider" FovSlider.Text = tostring(fov) FovSlider.TextColor3 = Color3.fromRGB(255, 255, 255) FovSlider.BackgroundColor3 = Color3.fromRGB(50, 50, 50) FovSlider.Position = UDim2.new(0.1, 0, 0.3, 0) FovSlider.Size = UDim2.new(0.8, 0, 0.2, 0) FovSlider.Parent = Frame local SmoothnessLabel = Instance.new("TextLabel") SmoothnessLabel.Name = "SmoothnessLabel" SmoothnessLabel.Text = "自瞄平滑度" SmoothnessLabel.TextColor3 = Color3.fromRGB(255, 255, 255) SmoothnessLabel.BackgroundTransparency = 1 SmoothnessLabel.Position = UDim2.new(0.1, 0, 0.5, 0) SmoothnessLabel.Size = UDim2.new(0.8, 0, 0.2, 0) SmoothnessLabel.Parent = Frame local SmoothnessSlider = Instance.new("TextBox") SmoothnessSlider.Name = "SmoothnessSlider" SmoothnessSlider.Text = tostring(smoothness) SmoothnessSlider.TextColor3 = Color3.fromRGB(255, 255, 255) SmoothnessSlider.BackgroundColor3 = Color3.fromRGB(50, 50, 50) SmoothnessSlider.Position = UDim2.new(0.1, 0, 0.7, 0) SmoothnessSlider.Size = UDim2.new(0.8, 0, 0.2, 0) SmoothnessSlider.Parent = Frame local CrosshairDistanceLabel = Instance.new("TextLabel") CrosshairDistanceLabel.Name = "CrosshairDistanceLabel" CrosshairDistanceLabel.Text = "自瞄预判距离" CrosshairDistanceLabel.TextColor3 = Color3.fromRGB(255, 255, 255) CrosshairDistanceLabel.BackgroundTransparency = 1 CrosshairDistanceLabel.Position = UDim2.new(0.1, 0, 0.9, 0) CrosshairDistanceLabel.Size = UDim2.new(0.8, 0, 0.2, 0) CrosshairDistanceLabel.Parent = Frame local CrosshairDistanceSlider = Instance.new("TextBox") CrosshairDistanceSlider.Name = "CrosshairDistanceSlider" CrosshairDistanceSlider.Text = tostring(crosshairDistance) CrosshairDistanceSlider.TextColor3 = Color3.fromRGB(255, 255, 255) CrosshairDistanceSlider.BackgroundColor3 = Color3.fromRGB(50, 50, 50) CrosshairDistanceSlider.Position = UDim2.new(0.1, 0, 1.1, 0) CrosshairDistanceSlider.Size = UDim2.new(0.8, 0, 0.2, 0) CrosshairDistanceSlider.Parent = Frame local targetCFrame = Cam.CFrame local function updateDrawings() local camViewportSize = Cam.ViewportSize FOVring.Position = camViewportSize / 2 FOVring.Radius = fov end local function onKeyDown(input) if input.KeyCode == Enum.KeyCode.Delete then RunService:UnbindFromRenderStep("FOVUpdate") FOVring:Remove() end end UserInputService.InputBegan:Connect(onKeyDown) local function getClosestPlayerInFOV(trg_part) local nearest = nil local last = math.huge local playerMousePos = Cam.ViewportSize / 2 for _, player in ipairs(Players:GetPlayers()) do if player ~= Players.LocalPlayer then local part = player.Character and player.Character:FindFirstChild(trg_part) if part then local ePos, isVisible = Cam:WorldToViewportPoint(part.Position) local distance = (Vector2.new(ePos.x, ePos.y) - playerMousePos).Magnitude if distance < last and isVisible and distance < fov then last = distance nearest = player end end end end return nearest end RunService.RenderStepped:Connect(function() updateDrawings() local closest = getClosestPlayerInFOV("Head") if closest and closest.Character:FindFirstChild("Head") then local targetCharacter = closest.Character local targetHead = targetCharacter.Head local targetRootPart = targetCharacter:FindFirstChild("HumanoidRootPart") local isMoving = targetRootPart.Velocity.Magnitude > 0.1 local targetPosition if isMoving then targetPosition = targetHead.Position + (targetHead.CFrame.LookVector * crosshairDistance) else targetPosition = targetHead.Position end targetCFrame = CFrame.new(Cam.CFrame.Position, targetPosition) else targetCFrame = Cam.CFrame end Cam.CFrame = Cam.CFrame:Lerp(targetCFrame, 1 / smoothness) end) FovSlider.FocusLost:Connect(function(enterPressed, inputThatCausedFocusLoss) if enterPressed then local newFov = tonumber(FovSlider.Text) if newFov then fov = newFov else FovSlider.Text = tostring(fov) end end end) SmoothnessSlider.FocusLost:Connect(function(enterPressed, inputThatCausedFocusLoss) if enterPressed then local newSmoothness = tonumber(SmoothnessSlider.Text) if newSmoothness then smoothness = newSmoothness else SmoothnessSlider.Text = tostring(smoothness) end end end) CrosshairDistanceSlider.FocusLost:Connect(function(enterPressed, inputThatCausedFocusLoss) if enterPressed then local newCrosshairDistance = tonumber(CrosshairDistanceSlider.Text) if newCrosshairDistance then crosshairDistance = newCrosshairDistance else CrosshairDistanceSlider.Text = tostring(crosshairDistance) end end end)
end)

about:Button("汉化阿尔宙斯自瞄",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/sgbs/main/%E4%B8%81%E4%B8%81%20%E6%B1%89%E5%8C%96%E8%87%AA%E7%9E%84.txt"))()
end)
about:Button("自瞄50",function()
loadstring(game:HttpGet("https://pastefy.app/b3uXjRF6/raw",true))()
end)

about:Button("自瞄100",function()
loadstring(game:HttpGet("https://pastefy.app/tQrd2r0L/raw",true))()
end)

about:Button("自瞄150",function()
loadstring(game:HttpGet("https://pastefy.app/UOQWFvGp/raw",true))()
end)

about:Button("自瞄200",function()
loadstring(game:HttpGet("https://pastefy.app/b5CuDuer/raw",true))()
end)

about:Button("自瞄250",function()
loadstring(game:HttpGet("https://pastefy.app/p2huH7eF/raw",true))()
end)

about:Button("自瞄300",function()
loadstring(game:HttpGet("https://pastefy.app/nIyVhrvV/raw",true))()
end)

about:Button("自瞄350",function()
loadstring(game:HttpGet("https://pastefy.app/pnjKHMvV/raw",true))()
end)

about:Button("自瞄400",function()
loadstring(game:HttpGet("https://pastefy.app/LQuP7sjj/raw",true))()
end)

about:Button("自瞄600",function()
loadstring(game:HttpGet("https://pastefy.app/WmcEe2HB/raw",true))()
end)

about:Button("自瞄全屏",function()
loadstring(game:HttpGet("https://pastefy.app/n5LhGGgf/raw",true))()
end)

local UITab18 = win:Tab("范围功能",'4483345998')

local about = UITab18:section("『功能』",true)
about:Textbox("自定义范围（尽量400以下）", "HitBox", "输入", function(Value)
   _G.HeadSize = Value
    _G.Disabled = true 
   game:GetService('RunService').RenderStepped:connect(function()
    if _G.Disabled then
    for i,v in next, game:GetService('Players'):GetPlayers() do
    if v.Name ~= game:GetService('Players').LocalPlayer.Name then 
    pcall(function()
    v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize) 
   v.Character.HumanoidRootPart.Transparency = 0.7 
   v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really red")
    v.Character.HumanoidRootPart.Material = "Neon"
    v.Character.HumanoidRootPart.CanCollide = false
    end)
    end 
   end 
   end
    end)
end)

about:Button("范围100", function()
    _G.HeadSize = 100 _G.Disabled = true game:GetService('RunService').RenderStepped:connect(function() if _G.Disabled then for i,v in next, game:GetService('Players'):GetPlayers() do if v.Name ~= game:GetService('Players').LocalPlayer.Name then pcall(function() v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize) v.Character.HumanoidRootPart.Transparency = 0.7 v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue") v.Character.HumanoidRootPart.Material = "Neon" v.Character.HumanoidRootPart.CanCollide = false end) end end end end)
end)

about:Button("范围150", function()
    _G.HeadSize = 150 _G.Disabled = true game:GetService('RunService').RenderStepped:connect(function() if _G.Disabled then for i,v in next, game:GetService('Players'):GetPlayers() do if v.Name ~= game:GetService('Players').LocalPlayer.Name then pcall(function() v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize) v.Character.HumanoidRootPart.Transparency = 0.7 v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue") v.Character.HumanoidRootPart.Material = "Neon" v.Character.HumanoidRootPart.CanCollide = false end) end end end end)
end)

about:Button("范围200", function()
    _G.HeadSize = 200 _G.Disabled = true game:GetService('RunService').RenderStepped:connect(function() if _G.Disabled then for i,v in next, game:GetService('Players'):GetPlayers() do if v.Name ~= game:GetService('Players').LocalPlayer.Name then pcall(function() v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize) v.Character.HumanoidRootPart.Transparency = 0.7 v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue") v.Character.HumanoidRootPart.Material = "Neon" v.Character.HumanoidRootPart.CanCollide = false end) end end end end)
end)

about:Button("范围250", function()
    _G.HeadSize = 250 _G.Disabled = true game:GetService('RunService').RenderStepped:connect(function() if _G.Disabled then for i,v in next, game:GetService('Players'):GetPlayers() do if v.Name ~= game:GetService('Players').LocalPlayer.Name then pcall(function() v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize) v.Character.HumanoidRootPart.Transparency = 0.7 v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue") v.Character.HumanoidRootPart.Material = "Neon" v.Character.HumanoidRootPart.CanCollide = false end) end end end end)
end)

about:Button("范围300", function()
    _G.HeadSize = 300 _G.Disabled = true game:GetService('RunService').RenderStepped:connect(function() if _G.Disabled then for i,v in next, game:GetService('Players'):GetPlayers() do if v.Name ~= game:GetService('Players').LocalPlayer.Name then pcall(function() v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize) v.Character.HumanoidRootPart.Transparency = 0.7 v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue") v.Character.HumanoidRootPart.Material = "Neon" v.Character.HumanoidRootPart.CanCollide = false end) end end end end)
end)

local UITab19 = win:Tab("画质光影",'4483345998')

local about = UITab19:section("画质光影",true)

about:Button("光影", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
end)

about:Button("光影滤镜", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
end)

about:Button("超高画质",function()
loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))()
end)

about:Button("光影V4",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
end)

about:Button("RTX高仿",function()
loadstring(game:HttpGet('https://pastebin.com/raw/Bkf0BJb3'))()
end)

about:Button("光影深", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
end)
about:Button("光影浅", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))()
end)

local UITab20 = win:Tab("造船寻宝",'4483345998')

local about = UITab20:section("功能",true)
    
    about:Toggle(
    "自动刷金币",
    "text",
    false,
    function(FARM)
        _G.FARMs = FARM
        while _G.FARMs do
            wait()
            pcall(
                function()
                    game.Workspace.Gravity = 0
                    wait(0.5)
                    local TweenService = game:GetService("TweenService")
                    local Tw =
                        TweenService:Create(
                        game.Players.LocalPlayer.Character.HumanoidRootPart,
                        TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0),
                        {
                            CFrame = CFrame.new(
                                -51.05019,
                                43.5682182,
                                702.193481,
                                -0.999886811,
                                -0.000135422233,
                                0.0150433034,
                                8.65181704e-09,
                                0.999959469,
                                0.00900237076,
                                -0.0150439134,
                                0.00900135189,
                                -0.999846339
                            )
                        }
                    ):Play()
                    wait(1)
                    local TweenService = game:GetService("TweenService")
                    local Tw =
                        TweenService:Create(
                        game.Players.LocalPlayer.Character.HumanoidRootPart,
                        TweenInfo.new(30, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0),
                        {
                            CFrame = CFrame.new(
                                -50.4467354,
                                34.108551,
                                8676.95117,
                                -0.999937415,
                                -0.000405743311,
                                0.0111814411,
                                -6.1212857e-09,
                                0.999342263,
                                0.0362627953,
                                -0.0111888004,
                                0.0362605266,
                                -0.999279737
                            )
                        }
                    ):Play()
                    wait(30)
                    local TweenService = game:GetService("TweenService")
                    local Tw =
                        TweenService:Create(
                        game.Players.LocalPlayer.Character.HumanoidRootPart,
                        TweenInfo.new(5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0),
                        {
                            CFrame = CFrame.new(
                                -54.1517258,
                                -359.077667,
                                9497.03418,
                                -0.99982208,
                                0.00359633542,
                                -0.0185163822,
                                -7.16419102e-09,
                                0.981655717,
                                0.190661997,
                                0.0188623965,
                                0.190628082,
                                -0.981481075
                            )
                        }
                    ):Play()
                    wait(5)
                    game.Workspace.Gravity = 200
                    wait(20)
                end
            )
        end
    end
)
about:Toggle(
    "自动刷金币快速版",
    "text",
    false,
    function(FARM2)
        _G.FARM2s = FARM2
        while _G.FARM2s do
            wait()
            pcall(
                function()
                    game.Workspace.Gravity = 0
                    wait(0.5)
                    local TweenService = game:GetService("TweenService")
                    local Tw =
                        TweenService:Create(
                        game.Players.LocalPlayer.Character.HumanoidRootPart,
                        TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0),
                        {
                            CFrame = CFrame.new(
                                -51.05019,
                                43.5682182,
                                702.193481,
                                -0.999886811,
                                -0.000135422233,
                                0.0150433034,
                                8.65181704e-09,
                                0.999959469,
                                0.00900237076,
                                -0.0150439134,
                                0.00900135189,
                                -0.999846339
                            )
                        }
                    ):Play()
                    wait(1)
                    local TweenService = game:GetService("TweenService")
                    local Tw =
                        TweenService:Create(
                        game.Players.LocalPlayer.Character.HumanoidRootPart,
                        TweenInfo.new(5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0),
                        {
                            CFrame = CFrame.new(
                                -50.4467354,
                                34.108551,
                                8676.95117,
                                -0.999937415,
                                -0.000405743311,
                                0.0111814411,
                                -6.1212857e-09,
                                0.999342263,
                                0.0362627953,
                                -0.0111888004,
                                0.0362605266,
                                -0.999279737
                            )
                        }
                    ):Play()
                    wait(5)
                    local TweenService = game:GetService("TweenService")
                    local Tw =
                        TweenService:Create(
                        game.Players.LocalPlayer.Character.HumanoidRootPart,
                        TweenInfo.new(5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0),
                        {
                            CFrame = CFrame.new(
                                -51.05019,
                                43.5682182,
                                702.193481,
                                -0.999886811,
                                -0.000135422233,
                                0.0150433034,
                                8.65181704e-09,
                                0.999959469,
                                0.00900237076,
                                -0.0150439134,
                                0.00900135189,
                                -0.999846339
                            )
                        }
                    ):Play()
                    wait(5)
                    local Event = game:GetService("Workspace").ClaimRiverResultsGold
                    Event:FireServer()
                    wait(0.1)
                    game.Players.LocalPlayer.Character.Humanoid.Health = -1000
                    wait(0.1)
                    game.Workspace.Gravity = 200
                    wait(7)
                end
            )
        end
    end
)
about:Toggle(
    "自动索赔金币",
    "text",
    false,
    function(GlaimGold)
        _G.ClaimGolds = ClaimGold
        while _G.ClaimGolds do
            wait()
            pcall(
                function()
                    local Event = game:GetService("Workspace").ClaimRiverResultsGold
                    Event:FireServer()
                end
            )
        end

        MainSection:Button(
            "ClearAllBoatParts",
            function()
                local Event = game:GetService("Workspace").ClearAllPlayersBoatParts
                Event:FireServer()
            end
        )

        wait(0.5)
        local ba = Instance.new("ScreenGui")
        local ca = Instance.new("TextLabel")
        local da = Instance.new("Frame")
        local _b = Instance.new("TextLabel")
        local ab = Instance.new("TextLabel")
        ba.Parent = game.CoreGui
        ba.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        ca.Parent = ba
        ca.Active = true
        ca.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
        ca.Draggable = true
        ca.Position = UDim2.new(0.698610067, 0, 0.098096624, 0)
        ca.Size = UDim2.new(0, 370, 0, 52)
        ca.Font = Enum.Font.SourceSansSemibold
        ca.Text = "Anti AFK Script"
        ca.TextColor3 = Color3.new(0, 1, 1)
        ca.TextSize = 22
        da.Parent = ca
        da.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
        da.Position = UDim2.new(0, 0, 1.0192306, 0)
        da.Size = UDim2.new(0, 370, 0, 107)
        _b.Parent = da
        _b.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
        _b.Position = UDim2.new(0, 0, 0.800455689, 0)
        _b.Size = UDim2.new(0, 370, 0, 21)
        _b.Font = Enum.Font.Arial
        _b.Text = "made by simon"
        _b.TextColor3 = Color3.new(0, 1, 1)
        _b.TextSize = 20
        ab.Parent = da
        ab.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
        ab.Position = UDim2.new(0, 0, 0.158377, 0)
        ab.Size = UDim2.new(0, 370, 0, 44)
        ab.Font = Enum.Font.ArialBold
        ab.Text = "Status: Active"
        ab.TextColor3 = Color3.new(0, 1, 1)
        ab.TextSize = 20

        local bb = game:service "VirtualUser"
        game:service "Players".LocalPlayer.Idled:connect(
            function()
                bb:CaptureController()
                bb:ClickButton2(Vector2.new())
                ab.Text = "机器人想踢你，但我踢了他"
                wait(2)
                ab.Text = "状态：Active"
            end
        )
    end
)

about:Button(
    "无限方块（假）",
    function()
        spawn(
            function()
                local guiinf =
                    game:GetService("Players").LocalPlayer.PlayerGui.BuildGui.InventoryFrame.ScrollingFrame.BlocksFrame
                _G.Blocks = false
                while game:GetService("RunService").RenderStepped:wait() do
                    if _G.Blocks then
                        return
                    end
                    for i, v in pairs(guiinf:GetDescendants()) do
                        if v.Name == "AmountText" then
                            v.Text = math.huge
                        end
                    end
                end
            end
        )
    end
)

about:Button(
    "变蔡徐坤😎😎😎",
    function()
        local players = game:GetService("Players")
        local client = players.LocalPlayer
        local Chicken = workspace:WaitForChild("ChangeCharacter")
        Chicken:FireServer("ChickenCharacter")
    end
)
about:Button(
    "变成企鹅🤮🤮🤮",
    function()
        local players = game:GetService("Players")
        local client = players.LocalPlayer
        local penguin = workspace:WaitForChild("ChangeCharacter")
        penguin:FireServer("PenguinCharacter")
    end
)
about:Button(
    "变死狐狸🤮🤮🤮",
    function()
        local players = game:GetService("Players")
        local client = players.LocalPlayer
        local fox = workspace:WaitForChild("ChangeCharacter")
        fox:FireServer("FoxCharacter")
    end
)

local UITab23 = win:Tab("『火箭发射模拟器』",'7734068321')

local about = UITab23:section("『火箭发射模拟器』",true)

about:Toggle("自动收集燃料", "ARL", false, function(ARL)
    isFuelScoopEnabled = ARL while true do wait() if isFuelScoopEnabled then for i, h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do if h:IsA("Tool") and h.Name == "FuelScoop" then h:Activate() end end end end
end)
about:Button("登上火箭", function()
    game:GetService("ReplicatedStorage"):WaitForChild("BoardRocket"):FireServer()
end)
about:Button("将玩家从所有者座位移除", function()
    game:GetService("ReplicatedStorage"):WaitForChild("RemovePlayer"):FireServer()
end)

about:Button("发射台岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-123.15931701660156, 2.7371432781219482, 3.491959810256958)
end)
about:Button("白云岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-76.13252258300781, 170.55825805664062, -60.4516716003418)
end)
about:Button("浮漂岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-66.51714324951172, 720.4866333007812, -5.391753196716309)
end)
about:Button("卫星岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-34.2462043762207, 1429.4990234375, 1.3739361763000488)
end)
about:Button("蜜蜂迷宫岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6.5361199378967285, 3131.249267578125, -29.759048461914062)
end)
about:Button("月球人救援", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7.212917804718018, 5016.341796875, -19.815933227539062)
end)
about:Button("暗物质岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(68.43186950683594, 6851.94091796875, 7.890637397766113)
end)
about:Button("太空岩石岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(49.92888641357422, 8942.955078125, 8.674375534057617)
end)
about:Button("零号火星岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(54.44503402709961, 11270.0927734375, -1.273137092590332)
end)
about:Button("太空水晶小行星岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11.579089164733887, 15295.6318359375, -27.54974365234375)
end)
about:Button("月球浆果岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-14.601255416870117, 18410.9609375, 0.9418511986732483)
end)
about:Button("铺路石岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3.272758960723877, 22539.494140625, 63.283935546875)
end)
about:Button("流星岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-45.515689849853516, 27961.560546875, -7.358333110809326)
end)
about:Button("升级岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2.7595248222351074, 33959.98828125, 53.93095397949219)
end)

about:Button("火箭发射模拟器1",function()
loadstring(game:HttpGet("https://ayangwp.cn/api/v3/file/get/9245/%E7%8C%AB%E9%80%9A%E7%94%A8.txt?sign=hrWROZdVfK2mtJcIFa3Tvbl-TojP1C86_Zd3q03qttc%3D%3A0"))()
end)

about:Button("火箭发射模拟器2",function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/dizyhvh/rbx_scripts/main/321_blast_off_simulator')))()
end)

about:Button("火箭发射模拟器3",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/odhdshhe/jm-/refs/heads/main/jm%E7%81%AB%E7%AE%AD%E5%8F%91%E5%B0%84%E9%87%8D%E5%81%9A(1).lua"))()
end)
end)

local about = UITab1:section("木材大亨",true)
about:Button("木材大亨",function()
local lp=game.Players.LocalPlayer
local mouse = lp:GetMouse()
local CurrentSlot = game.Players.LocalPlayer:WaitForChild("CurrentSaveSlot").Value
local ScriptLoadOrSave = false
local CurrentlySavingOrLoading = game.Players.LocalPlayer:WaitForChild("CurrentlySavingOrLoading")
local bai = {
  autoaxedupe=false,
  cuttreeselect="Generic",
  axedupepick=nil,
  autodupe=false,
  dxmz="",
  slot=-1,
  zlwjia="",
  zix=1,
  zlz=3,
  bringamount=1,
  bringtree=false,
  waterwalk=false,
  awaysday=false,
  awaysdnight=false,
  nofog=false,
  cswjiail=nil,
  itemset=nil,
  autocsdx=nil,
  autobuystop=false,
  autobuyamount=1,
  away = nil
}

local function notify(Title,Text,Duration) -- Sends Notification in the bottom right of the screen
  game.StarterGui:SetCore("SendNotification", {
    Title = Title;
    Text = Text;
    Icon = nil;
    Duration = Duration
  })
end
function Dupeaxe()


  lp.Character.Humanoid:UnequipTools()
  local oldpos = lp.Character.HumanoidRootPart.CFrame
  for i,v in pairs(game:service"Players".LocalPlayer.Backpack:GetChildren()) do
    game:GetService("ReplicatedStorage").Interaction.ClientInteracted:FireServer(v,"Drop tool")
  end

  game:service"Players".LocalPlayer.Character.Head:Destroy()
  wait(6)
  lp.Character.HumanoidRootPart.CFrame=oldpos
end
local Vehicle
function cartp(cframe)
  Vehicle = lp.Character.Humanoid.SeatPart.Parent
  spawn(function()
    for i = 1, 3 do
      task.wait()
      Vehicle:SetPrimaryPartCFrame(cframe)
    end
  end)
end
function ItemStackeraxe(ItemType, XAxis, ZAxis)
  local Player = game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0, 3.5, 0)
  local Items = {}

  for i, v in pairs(game:GetService("Workspace").PlayerModels:GetChildren()) do
    if v:FindFirstChild("Owner") and tostring(v.Owner.Value) ==bai.zlwjia
      then if (
        v:FindFirstChild "DraggableItem" and tostring(v.DraggableItem.Parent) == ItemType)
        then table
        .
        insert(Items, v)
      end
    end
  end
  local Count = 0
  for Y = 1, math.ceil(#Items / (XAxis * ZAxis)) do for X = 1, XAxis do for Z = 1, ZAxis do Count = Count
        + 1
        game:GetService("ReplicatedStorage").PlaceStructure.ClientPlacedStructure:FireServer(nil,
        CFrame.new(X * Items[1].Main.Size.X, Y * Items[1].Main.Size.Y, Z * Items[1].Main.Size.Z) + Player
        ,
        game.Players.LocalPlayer, nil, Items[Count], true)
      end
    end
  end
end
function ItemStackerbox(ItemType, XAxis, ZAxis)
  local Player = game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0, 4, 0)
  local Items = {}

  for i, v in pairs(game:GetService("Workspace").PlayerModels:GetChildren()) do
    if v:FindFirstChild("Owner") and tostring(v.Owner.Value) ==bai.zlwjia
      then if (
        v:FindFirstChild("PurchasedBoxItemName") and tostring(v.PurchasedBoxItemName.Value) == ItemType)
        then table
        .
        insert(Items, v)
      end
    end
  end
  local Count = 0
  for Y = 1, math.ceil(#Items / (XAxis * ZAxis)) do for X = 1, XAxis do for Z = 1, ZAxis do Count = Count
        + 1
        game:GetService("ReplicatedStorage").PlaceStructure.ClientPlacedStructure:FireServer(nil,
        CFrame.new(X * Items[1].Main.Size.X, Y * Items[1].Main.Size.Y, Z * Items[1].Main.Size.Z) + Player
        ,
        game.Players.LocalPlayer, nil, Items[Count], true)
      end
    end
  end
end
local function CheckIfSlotAvailable(Slot)
  for a,b in pairs(game.ReplicatedStorage.LoadSaveRequests.GetMetaData:InvokeServer(game.Players.LocalPlayer)) do
    if a == Slot then
      for c,d in pairs(b) do
        if c == "NumSaves" and d ~= 0 then
          return true
         else
          return false
        end
      end
    end
  end
end

local function CheckSlotNumber() --Checks if the slot number is right
  if bai.slot == "1" or bai.slot == "2" or bai.slot == "3" or bai.slot == "4" or bai.slot == "5" or bai.slot == "6" then
    local SlotNumber = tonumber(bai.slot)
    return SlotNumber
   else return false
  end
end




function toolsta(toolname)
  return require(game.ReplicatedStorage.Purchasables.Tools.AllTools[toolname].AxeClass).new()
end

local function table_foreach(table, callback)
  for i=1,#table do
    callback(i, table[i])
  end
end


local function tp(pos)
  if typeof(pos) == "CFrame" then
    lp.Character:SetPrimaryPartCFrame(pos)
   elseif typeof(pos) == "Vector3" then
    lp.Character:MoveTo(pos)
  end
end

function sellwood()
  for _, Log in pairs(workspace.LogModels:GetChildren()) do
    if Log.Name:sub(1, 6) == "Loose_" and Log:findFirstChild("Owner") then
      if Log.Owner.Value == game.Players.LocalPlayer then
        for i,v in pairs(Log:GetChildren()) do
          if v.Name=="WoodSection" then
            spawn(function()
              for i=1,100 do
                wait();
                game.ReplicatedStorage.Interaction.ClientRequestOwnership:FireServer(v.WoodSection)
                game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v.WoodSection)
                v.CFrame=CFrame.new(Vector3.new(315, -0.296, 85.791))*CFrame.Angles(math.rad(90),0,0)
              end
            end)
          end
        end

      end
    end
  end
end



local function cutPart (tool,event, treeClass,axestr)
  game:GetService"ReplicatedStorage".Interaction.RemoteProxy:FireServer(event, {
    tool = tool,
    faceVector = Vector3.new(0, 0,-1),
    height = 0.3,
    sectionId = 1,
    hitPoints = axestr,
    cooldown = -14,
    cuttingClass = "Axe"
  })
end
local treeListener = function(treeClass, callback)
  local childAdded
  a= workspace.LogModels.ChildAdded:Connect(function(child)
    local owner = child:WaitForChild("Owner")
    if owner.Value == lp and child.TreeClass.Value == treeClass then
      a:Disconnect()
      callback(child)
    end
  end)
end


local getBiggestTree = function(treeClass)
  for _,v in next,workspace:children()do
    if tostring(v)=="TreeRegion"then
      for _,g in next,v:children()do
        if g:FindFirstChild("TreeClass")and tostring(g.TreeClass.Value)==treeClass and g:FindFirstChild("Owner")then
          if g.Owner.Value==nil or tostring(g.Owner.Value)==tostring(lp)then
            if #g:children() > 5 and g:FindFirstChild("WoodSection")then
              for h,j in next,g:children() do
                if j:FindFirstChild("ID")and j.ID.Value==1 and j.Size.Y>.5 then
                  return j;
                end;
              end;
            end;
          end;
        end;
      end;
    end;
  end;
  return false;
end
local function lowerBridge(value)

  if value=="Higher"then
    for _,v in pairs(game.workspace.Bridge.VerticalLiftBridge.Lift:GetChildren()) do
      v.CFrame = v.CFrame + Vector3.new(0, 26, 0)
    end

   elseif value=="Lower"then
    for _,v in pairs(game.workspace.Bridge.VerticalLiftBridge.Lift:GetChildren()) do
      v.CFrame = v.CFrame + Vector3.new(0, -26, 0)
    end
  end;
end
function modwood()
  local wood
  local Saw
  notify("自动加工", "请点击一颗树", 4)
  local ModTree = mouse.Button1Up:Connect(function()
    local obj = mouse.Target.Parent
    if not obj:FindFirstChild "RootCut" and obj.Parent.Name == "TreeRegion" then
      return notify("错误!", "这棵树还没有砍!", 3)
    end
    if obj:FindFirstChild "Owner" and obj.Owner.Value == lp and obj:FindFirstChild "WoodSection" then
      wood = obj
      notify("一键加工", "已选择树!", 3)
    end
    if obj.Name:find("Sawmill")then
      Saw=sawmill;
      notify("搬运","剧木机已选择",4)
     elseif obj.Parent.Name:find("Sawmill")or obj.Parent:FindFirstChild"BlockageAlert"then
      Saw=obj.Parent
      notify("搬运","剧木机已选择",4)
    end;
  end
  )
  repeat
    task.wait(.01)
  until wood and Saw ~= nil
  ModTree:Disconnect()
  ModTree = nil
  local SawC = Saw.Particles.CFrame + Vector3.new(0.7, 0)
  local cu,cw= 0,nil
  for p, I in next, wood:GetChildren() do
    if I.Name == "WoodSection" then
      if I.ID.Value > cu then
        cu = I.ID.Value
        cw=I
      end
    end
  end
  for p, I in next, wood:GetChildren() do
    if I.Name == "WoodSection" then

      for p, b in next, I.ChildIDs:GetChildren() do

        if b.Value ==cu then
          cv = I

        end
      end
    end
  end
  tp(cv.CFrame)
  wait()
  repeat wait(0.1)
    cv.CFrame = game.Workspace["Region_Volcano"].Lava.Lava.CFrame
  until cv:FindFirstChild("LavaFire");
  cv:FindFirstChild("LavaFire"):Destroy();
  tp(cw.CFrame)
  for i=1,20 do
    cw:MoveTo(Saw)
    cw.CFrame=SawC
  end
end
local function bringTree(treeClass)
  lp.Character.Humanoid:UnequipTools()
  local oldPos=lp.Character.HumanoidRootPart.CFrame;
  local tool
  local tool=0
  for i,v in pairs (lp.Backpack:GetChildren()) do
    if v.Name ~= "BlueprintTool"then
      tool=tool+1
    end
  end
  if tool==0 then
    return
    notify("搬运","你需要斧头",4)
  end


  for i,v in pairs (lp.Backpack:GetChildren()) do
    if v.Name ~= "BlueprintTool"then

      tool = v
    end
  end
  local toolname
  for i ,v in pairs (tool:GetChildren()) do
    if v.Name=="ToolName" then
      toolname=v.Value

    end
  end

  local axestr=toolsta(toolname)
  if axestr.SpecialTrees and axestr.SpecialTrees[treeClass] then
    for i, v in next, axestr.SpecialTrees[treeClass] do
      axestr[i] = v
    end
  end
  local tree = getBiggestTree(treeClass)

  if not tree then
    return notify("搬运","没有找到树",4)
  end




  local treeCut = false
  if treeClass=="LoveCave" and axestr.Damage<10000000 then
    return notify("搬运","你没有合适的斧头去砍这棵树") end
  if treeClass=="Shine" and axestr.Damage<80000000 then
    return notify("搬运","你没有合适的斧头去砍这棵树") end
  if treeClass=="Shine" and axestr.Damage<80000000 then
    return notify("搬运","你没有合适的斧头去砍这棵树") end
  if treeClass=="Magma" and axestr.Damage<10000000 then
    return notify("搬运","你没有合适的斧头去砍这棵树") end
  if treeClass=="Ice" and axestr.Damage<8000000 then
    return notify("搬运","你没有合适的斧头去砍这棵树") end
  if treeClass== "Radioactive" and axestr.Damage<10000000 then
    return notify("搬运","你没有合适的斧头去砍这棵树") end
  if treeClass== "Scale" and axestr.Damage<40000000 then
    return notify("搬运","你没有合适的斧头去砍这棵树") end

  workspace.Camera.CameraSubject = tree
  treeListener(treeClass, function(tree)
    tree.PrimaryPart = tree:FindFirstChild("WoodSection")
    treeCut = true
    wait()
    workspace.Camera.CameraSubject = lp.Character

  end)

  task.wait()


  repeat


    cutPart(tool,tree.Parent.CutEvent, treeClass,axestr.Damage)
    wait()
  until treeCut


end
local cashierIds = {}
local connection = game.ReplicatedStorage.NPCDialog.PromptChat.OnClientEvent:connect(function(bu, data)
  if cashierIds[data.Name] == nil then
    cashierIds[data.Name] = data.ID;
  end
end)

game.ReplicatedStorage.NPCDialog.SetChattingValue:InvokeServer(1)
spawn(function()
  repeat wait(0.5) until cashierIds["Thom"] ~= nil
  wait(3)
  connection:Disconnect()
  connection = nil
  game.ReplicatedStorage.NPCDialog.SetChattingValue:InvokeServer(0)

end)
local bt = false;

function finditem(BItem)
  local NameStore,Cashier,CID,StoreItems, Counter
  for _,w in pairs (s.ShopItems:GetChildren()) do
    if w.Name=="Bed1" or w.Name=="Seat_Couch" then
      NameStore = "Corey"
      Cashier = game.Workspace.Stores.FurnitureStore.Corey
      StoreItems =l
      Counter = game.Workspace.Stores.FurnitureStore.Counter.CFrame + Vector3.new(0, .4, 0)

     elseif w.Name=="Sawmill" or w.Name=="Sawmill2" then
      NameStore = "Thom"
      Cashier = game.Workspace.Stores.WoodRUs.Thom
      StoreItems =l
      Counter = game.Workspace.Stores.WoodRUs.Counter.CFrame + Vector3.new(0, .4, 0)

     elseif w.Name=="Trailer2" or w.Name=="UtilityTruck2" then
      NameStore = "Jenny"
      Cashier = game.Workspace.Stores.CarStore.Jenny
      StoreItems =l
      Counter = game.Workspace.Stores.CarStore.Counter.CFrame + Vector3.new(0, .4, 0)

     elseif w.Name=="CanOfWorms" or w.Name=="Dynamite" then
      NameStore = "Bob"
      Cashier = game.Workspace.Stores.ShackSho.Bob
      StoreItems =l
      Counter = game.Workspace.Stores.ShackShop.Counter.CFrame + Vector3.new(0, .4, 0)
     elseif w.Name=="Painting1" or w.Name=="Painting2" then
      NameStore = "Timothy"
      Cashier = game.Workspace.Stores.FineArt.Timothy
      StoreItems =l
      Counter = game.Workspace.Stores.FineArt.Counter.CFrame + Vector3.new(0, .4, 0)
     elseif w.Name=="GateXOR" or w.Name=="NeonWireOrange" then
      NameStore = "Lincoln"
      Cashier = game.Workspace.Stores.LogicStore.Lincoln
      StoreItems =l
      Counter = game.Workspace.Stores.LogicStore.Counter.CFrame + Vector3.new(0, .4, 0)
     elseif w.Name=="BeachBall" or w.Name=="Cookie" then
      NameStore = "Guy"
      Cashier = game:GetService("Workspace").Stores.SeaSide.Guy
      StoreItems =l
      Counter = game:GetService("Workspace").Stores.SeaSide.Counter.CFrame + Vector3.new(0, .4, 0)
     elseif w.Name=="StrangeMan" or w.Name=="EndtimesChainsaw" then
      NameStore = "sneakypotato7"
      Cashier = game:GetService("Workspace").Stores.BlackMarket.sneakypotato7
      StoreItems =l
      Counter = game:GetService("Workspace").Stores.BlackMarket.Counter.CFrame + Vector3.new(0, .4, 0)
     elseif w.Name=="GoldGameCube" or w.Name=="GoldConveyorFunnel" then
      NameStore = "Todd"
      Cashier =game:GetService("Workspace").Stores.VIPSHOP.Todd
      StoreItems =l
      Counter = game:GetService("Workspace").Stores.VIPSHOP.Counter.CFrame + Vector3.new(0, .4, 0)
     elseif w.Name=="Playstation" or w.Name=="SawmillGift" then
      NameStore = "Mr.Bacon"
      Cashier =game:GetService("Workspace").Stores.MountainSide["Mr.Bacon"]
      StoreItems =l
      Counter = game:GetService("Workspace").Stores.MountainSide.Counter.CFrame + Vector3.new(0, .4, 0)
     elseif w.Name=="MegaConveyorFunnel" or w.Name=="GameCube" then
      NameStore = "Bloxyway"
      Cashier =game:GetService("Workspace").Stores.SamsStuff.Bloxyway
      StoreItems =l
      Counter = game:GetService("Workspace").Stores.SamsStuff.Counter.CFrame + Vector3.new(0, .4, 0)
     elseif w.Name=="StorageBox" or w.Name=="StorageBox" then
      NameStore = "Geck"
      Cashier =game:GetService("Workspace").Stores.BoatsStore.Geck
      StoreItems =l
      Counter = game:GetService("Workspace").Stores.BoatsStore.Counter.CFrame + Vector3.new(0, .4, 0)
     elseif w.Name=="FireRock" or w.Name=="PotFrost" then
      NameStore = "OGxOutcast"
      Cashier =game:GetService("Workspace").Stores.PlanterStore.OGxOutcast
      StoreItems =l
      Counter = game:GetService("Workspace").Stores.PlanterStore.Counter.CFrame + Vector3.new(0, .4, 0)
     elseif w.Name=="LumberCD" or w.Name=="UtilityVolt" then
      NameStore = "NotPlantomic56"
      Cashier =game:GetService("Workspace").Stores.TravelingTrader.NotPlantomic56
      StoreItems =l
      Counter = game:GetService("Workspace").Stores.TravelingTrader.Counter.CFrame + Vector3.new(0, .4, 0)
     elseif w.Name=="Eye1" or w.Name=="PumpkinClassic" then
      NameStore = "Sally"
      Cashier =game:GetService("Workspace").Stores.SallysSeasonal.Sally
      StoreItems =l
      Counter =game:GetService("Workspace").Stores.SallysSeasonal.Counter.CFrame + Vector3.new(0, .4, 0)
     elseif w.Name=="LumberCDDab" or w.Name=="Lemon" then
      NameStore = "dab529"
      Cashier =game:GetService("Workspace").Stores.StoneRUs.dab529
      StoreItems =l
      Counter = game:GetService("Workspace").Stores.StoneRUs.Counter.CFrame + Vector3.new(0, .4, 0)
     elseif w.Name=="LeafCutters" or w.Name=="LeafFurnace" then
      NameStore = "William"
      Cashier =game:GetService("Workspace").Stores.AutumnCatalog.William
      StoreItems =l
      Counter = game:GetService("Workspace").Stores.AutumnCatalog.Counter.CFrame + Vector3.new(0, .4, 0)
     elseif w.Name=="AxeIce" or w.Name=="Cocoa" then
      NameStore = "Cold Guy"
      Cashier =game:GetService("Workspace").Stores.Igloo["Cold Guy"]
      StoreItems =l
      Counter = game:GetService("Workspace").Stores.Igloo.Counter.CFrame + Vector3.new(0, .4, 0)
     elseif w.Name=="Egg" or w.Name=="HappyBall" then
      NameStore = "Plantomic56"
      Cashier =game:GetService("Workspace").Stores.PlantomicsChoice.Plantomic56
      StoreItems =l
      Counter = game:GetService("Workspace").Stores.PlantomicsChoice.Counter.CFrame + Vector3.new(0, .4, 0)
     elseif w.Name=="Wall2Round" or w.Name=="WritableSign" then
      NameStore = "Manachron"
      Cashier =game:GetService("Workspace").Stores.FineFinds.Manachron
      StoreItems =l
      Counter= game:GetService("Workspace").Stores.FineFinds.Counter.CFrame + Vector3.new(0, .4, 0)
     elseif w.Name=="SaplingCrate" or w.Name=="Planter2" then
      NameStore = "Billy"
      Cashier =game:GetService("Workspace").Stores.SaplingCart.Billy
      StoreItems =l
      Counter= game:GetService("Workspace").Stores.SaplingCart.Counter.CFrame + Vector3.new(0, .4, 0)




    end

  end




  if NameStore~=nil then
    return{NameStore,Cashier,cashierIds[Cashier.Name],Counter,StoreItems}
  end
end

function autobuyv2(o)


  local item=nil
  local ltem

  item=finditem(o)

  if item==nil then
    notify("搬运","没有找到商品或者没有刷新，请你等待",4)
    repeat
      item=finditem(o)
      wait()

    until item~=nil

  end

  ltem=item[5]


  game:GetService("ReplicatedStorage").PlaceStructure.ClientPlacedStructure:FireServer(nil,item[4],lp, nil, ltem, true)



  game:GetService("ReplicatedStorage").NPCDialog.PlayerChatted:InvokeServer({["Character"] = item[2], ["Name"] =item[1], ["ID"] = tonumber(item[3])}, "ConfirmPurchase")



  return o
end

function autobuy(o, r)
  bai.autocsdx = game.Workspace.PlayerModels.ChildAdded:connect(function(v)

    game:GetService("ReplicatedStorage").PlaceStructure.ClientPlacedStructure:FireServer(nil,bai.autobuyset,lp, nil, v, true)

  end)
  for e = 1, r do
    if bai.autobuystop==false then
      autobuyv2(o)
    end

  end
  spawn(function()
    wait(1)
    bai.autocsdx:Disconnect();
    bai.autocsdx=nil;
  end)
  return o, r
end
function tpitems(name)
  local plr = bai.cswjia
  local StealType = name

  for i,v in pairs(game.Workspace.PlayerModels:GetChildren()) do
    if v:FindFirstChild("Owner") and tostring(v.Owner.Value) == plr then
      if StealType ~= "TreeClass" then
        if v:FindFirstChild("Type") and tostring(v.Type.Value) == StealType then
          if v.PrimaryPart then
            game:GetService("ReplicatedStorage").PlaceStructure.ClientPlacedStructure:FireServer(nil,bai.itemset,lp, nil, v, true)
          end
        end
       else

        if v:FindFirstChild("TreeClass") then

          spawn(function()
            for i=1 ,20 do
              game.ReplicatedStorage.Interaction.ClientRequestOwnership:FireServer(v.WoodSection)
              game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(v.WoodSection)
              game:GetService("RunService").Stepped:wait();
            end
            v.WoodSection.CFrame= bai.itemset
          end)
          task.wait()



        end





      end
    end

  end
  notfy("搬运","完成",4)
end

function shuaxinlb(zji)
  bai.dropdown={}
  if zji==true then
    for p, I in next,game.Players:GetChildren() do
      table.insert(bai.dropdown, I.Name)
    end
   else
    for p, I in next, game.Players:GetChildren() do
      if I ~= lp then
        table.insert(bai.dropdown, I.Name)
      end
    end
  end
end
shuaxinlb(true)
repeat task.wait() until game:IsLoaded()
game.StarterGui:SetCore("SendNotification", {
  Title = "搬运白脚本",
  Text = "搬运者我只是一个搬运工:",
  Icon = "",
  Duration = 5,
})

local library = {}
local ToggleUI = false
library.currentTab = nil
library.flags = {}

local services = setmetatable({}, {
  __index = function(t, k)
    return game.GetService(game, k)
  end
})

local mouse = services.Players.LocalPlayer:GetMouse()

function Tween(obj, t, data)
  services.TweenService:Create(obj, TweenInfo.new(t[1], Enum.EasingStyle[t[2]], Enum.EasingDirection[t[3]]), data):Play()
  return true
end

function Ripple(obj)
  spawn(function()
    if obj.ClipsDescendants ~= true then
      obj.ClipsDescendants = true
    end
    local Ripple = Instance.new("ImageLabel")
    Ripple.Name = "Ripple"
    Ripple.Parent = obj
    Ripple.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Ripple.BackgroundTransparency = 1.000
    Ripple.ZIndex = 8
    Ripple.Image = "rbxassetid://16785029075"
    Ripple.ImageTransparency = 0.800
    Ripple.ScaleType = Enum.ScaleType.Fit
    Ripple.ImageColor3 = Color3.fromRGB(255, 255, 255)
    Ripple.Position = UDim2.new((mouse.X - Ripple.AbsolutePosition.X) / obj.AbsoluteSize.X, 0, (mouse.Y - Ripple.AbsolutePosition.Y) / obj.AbsoluteSize.Y, 0)
    Tween(Ripple, {.3, 'Linear', 'InOut'}, {Position = UDim2.new(-5.5, 0, -5.5, 0), Size = UDim2.new(12, 0, 12, 0)})
    wait(0.15)
    Tween(Ripple, {.3, 'Linear', 'InOut'}, {ImageTransparency = 1})
    wait(.3)
    Ripple:Destroy()
  end)
end

local toggled = false

-- # Switch Tabs # --
local switchingTabs = false
function switchTab(new)
  if switchingTabs then return end
  local old = library.currentTab
  if old == nil then
    new[2].Visible = true
    library.currentTab = new
    services.TweenService:Create(new[1], TweenInfo.new(0.1), {ImageTransparency = 0}):Play()
    services.TweenService:Create(new[1].TabText, TweenInfo.new(0.1), {TextTransparency = 0}):Play()
    return
  end

  if old[1] == new[1] then return end
  switchingTabs = true
  library.currentTab = new

  services.TweenService:Create(old[1], TweenInfo.new(0.1), {ImageTransparency = 0.2}):Play()
  services.TweenService:Create(new[1], TweenInfo.new(0.1), {ImageTransparency = 0}):Play()
  services.TweenService:Create(old[1].TabText, TweenInfo.new(0.1), {TextTransparency = 0.2}):Play()
  services.TweenService:Create(new[1].TabText, TweenInfo.new(0.1), {TextTransparency = 0}):Play()

  old[2].Visible = false
  new[2].Visible = true

  task.wait(0.1)

  switchingTabs = false
end

-- # Drag, Stolen from Kiriot or Wally # --
function drag(frame, hold)
  if not hold then
    hold = frame
  end
  local dragging
  local dragInput
  local dragStart
  local startPos

  local function update(input)
    local delta = input.Position - dragStart
    frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
  end

  hold.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
      dragging = true
      dragStart = input.Position
      startPos = frame.Position

      input.Changed:Connect(function()
        if input.UserInputState == Enum.UserInputState.End then
          dragging = false
        end
      end)
    end
  end)

  frame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
      dragInput = input
    end
  end)

  services.UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
      update(input)
    end
  end)
end

function library.new(library, name,theme)
  for _, v in next, services.CoreGui:GetChildren() do
    if v.Name == "qing" then
      v:Destroy()
    end
  end
  if theme == 'qing' then
    MainColor = Color3.fromRGB(10, 25, 255)
    Background = Color3.fromRGB(10, 25, 255)
    zyColor= Color3.fromRGB(10, 25, 255)
    beijingColor = Color3.fromRGB(10, 25, 255)
   else
    MainColor = Color3.fromRGB(0, 51, 179)
    Background = Color3.fromRGB(0, 51, 179)
    zyColor= Color3.fromRGB(0, 51, 179)
    beijingColor = Color3.fromRGB(0, 51, 179)
  end
  local dogent = Instance.new("ScreenGui")
  local OP = Instance.new("ImageLabel")
  local Main = Instance.new("Frame")
  local TabMain = Instance.new("Frame")
  local MainC = Instance.new("UICorner")
  local SB = Instance.new("Frame")
  local SBC = Instance.new("UICorner")
  local Side = Instance.new("Frame")
  local SideG = Instance.new("UIGradient")
  local TabBtns = Instance.new("ScrollingFrame")
  local TabBtnsL = Instance.new("UIListLayout")
  local ScriptTitle = Instance.new("TextLabel")
  local SBG = Instance.new("UIGradient")
  local Open = Instance.new("TextButton")
  local UIG=Instance.new("UIGradient")
  local DropShadowHolder = Instance.new("Frame")
  local DropShadow = Instance.new("ImageLabel")
  local UICornerMain = Instance.new("UICorner")
  local UIGradient=Instance.new("UIGradient")
  local UIGradientTitle=Instance.new("UIGradient")

  if syn and syn.protect_gui then syn.protect_gui(dogent) end

  dogent.Name = "qing"
  dogent.Parent = services.CoreGui

  function UiDestroy()
    dogent:Destroy()
  end

  function ToggleUILib()
    if not ToggleUI then
      dogent.Enabled = false
      ToggleUI = true
     else
      ToggleUI = false
      dogent.Enabled = true
    end
  end

  Main.Name = "Main"
  Main.Parent = dogent
  Main.AnchorPoint = Vector2.new(0.5, 0.5)
  Main.BackgroundColor3 = Background
  Main.BorderColor3 = MainColor
  Main.Position = UDim2.new(0.5, 0, 0.5, 0)
  Main.Size = UDim2.new(0, 572, 0, 353)
  Main.ZIndex = 1
  Main.Active = true
  Main.Draggable = true
  services.UserInputService.InputEnded:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.LeftControl then
      if Main.Visible == true then
        Main.Visible = false else
        Main.Visible = true
      end
    end
  end)
  drag(Main)

  UICornerMain.Parent = Main
  UICornerMain.CornerRadius = UDim.new(0,3)

  OP.Parent = Main
  OP.Image = "rbxassetid://16785029075"
  OP.Size = UDim2.new(0, 572, 0, 353)

  DropShadowHolder.Name = "DropShadowHolder"
  DropShadowHolder.Parent = Main
  DropShadowHolder.BackgroundTransparency = 1.000
  DropShadowHolder.BorderSizePixel = 0
  DropShadowHolder.Size = UDim2.new(1, 0, 1, 0)
  DropShadowHolder.BorderColor3 = Color3.fromRGB(255,255,255)
  DropShadowHolder.ZIndex = 0

  DropShadow.Name = "DropShadow"
  DropShadow.Parent = DropShadowHolder
  DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
  DropShadow.BackgroundTransparency = 1.000
  DropShadow.BorderSizePixel = 0
  DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
  DropShadow.Size = UDim2.new(1, 43, 1, 43)
  DropShadow.ZIndex = 0
  DropShadow.Image = "rbxassetid://6015897843"
  DropShadow.ImageColor3 = Color3.fromRGB(255,255,255)
  DropShadow.ImageTransparency = 0.500
  DropShadow.ScaleType = Enum.ScaleType.Slice
  DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)


  UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 0)), ColorSequenceKeypoint.new(0.10, Color3.fromRGB(255, 127, 0)), ColorSequenceKeypoint.new(0.20, Color3.fromRGB(255, 255, 0)), ColorSequenceKeypoint.new(0.30, Color3.fromRGB(0, 255, 0)), ColorSequenceKeypoint.new(0.40, Color3.fromRGB(0, 255, 255)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(0, 0, 255)), ColorSequenceKeypoint.new(0.60, Color3.fromRGB(139, 0, 255)), ColorSequenceKeypoint.new(0.70, Color3.fromRGB(255, 0, 0)), ColorSequenceKeypoint.new(0.80, Color3.fromRGB(255, 127, 0)), ColorSequenceKeypoint.new(0.90, Color3.fromRGB(255, 255, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 255, 0))}
  UIGradient.Parent = DropShadow

  local TweenService = game:GetService("TweenService")
  local tweeninfo = TweenInfo.new(7, Enum.EasingStyle.Linear, Enum.EasingDirection.In, -1)
  local tween = TweenService:Create(UIGradient, tweeninfo, {Rotation = 360})
  tween:Play()

  function toggleui()
    toggled = not toggled
    spawn(function()
      if toggled then wait(0.3) end
    end)
    Tween(Main, {0.3, 'Sine', 'InOut'}, {
      Size = UDim2.new(0, 609, 0, (toggled and 505 or 0))
    })
  end

  TabMain.Name = "TabMain"
  TabMain.Parent = Main
  TabMain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  TabMain.BackgroundTransparency = 1.000
  TabMain.Position = UDim2.new(0.217000037, 0, 0, 3)
  TabMain.Size = UDim2.new(0, 448, 0, 353)

  MainC.CornerRadius = UDim.new(0, 5.5)
  MainC.Name = "MainC"
  MainC.Parent = Frame

  SB.Name = "SB"
  SB.Parent = Main
  SB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  SB.BorderColor3 = MainColor
  SB.Size = UDim2.new(0, 8, 0, 353)

  SBC.CornerRadius = UDim.new(0, 6)
  SBC.Name = "SBC"
  SBC.Parent = SB

  Side.Name = "Side"
  Side.Parent = SB
  Side.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  Side.BorderColor3 = Color3.fromRGB(255, 255, 255)
  Side.BorderSizePixel = 0
  Side.ClipsDescendants = true
  Side.Position = UDim2.new(1, 0, 0, 0)
  Side.Size = UDim2.new(0, 110, 0, 353)

  SideG.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, zyColor), ColorSequenceKeypoint.new(1.00, zyColor)}
  SideG.Rotation = 90
  SideG.Name = "SideG"
  SideG.Parent = Side

  TabBtns.Name = "TabBtns"
  TabBtns.Parent = Side
  TabBtns.Active = true
  TabBtns.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  TabBtns.BackgroundTransparency = 1.000
  TabBtns.BorderSizePixel = 0
  TabBtns.Position = UDim2.new(0, 0, 0.0973535776, 0)
  TabBtns.Size = UDim2.new(0, 110, 0, 318)
  TabBtns.CanvasSize = UDim2.new(0, 0, 1, 0)
  TabBtns.ScrollBarThickness = 0

  TabBtnsL.Name = "TabBtnsL"
  TabBtnsL.Parent = TabBtns
  TabBtnsL.SortOrder = Enum.SortOrder.LayoutOrder
  TabBtnsL.Padding = UDim.new(0, 12)

  ScriptTitle.Name = "ScriptTitle"
  ScriptTitle.Parent = Side
  ScriptTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  ScriptTitle.BackgroundTransparency = 1.000
  ScriptTitle.Position = UDim2.new(0, 0, 0.00953488424, 0)
  ScriptTitle.Size = UDim2.new(0, 102, 0, 20)
  ScriptTitle.Font = Enum.Font.GothamSemibold
  ScriptTitle.Text = name
  ScriptTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
  ScriptTitle.TextSize = 14.000
  ScriptTitle.TextScaled = true
  ScriptTitle.TextXAlignment = Enum.TextXAlignment.Left

  UIGradientTitle.Parent = ScriptTitle

  local function NPLHKB_fake_script()
    local script = Instance.new('LocalScript', ScriptTitle)

    local button = script.Parent
    local gradient = button.UIGradient
    local ts = game:GetService("TweenService")
    local ti = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
    local offset = {Offset = Vector2.new(1, 0)}
    local create = ts:Create(gradient, ti, offset)
    local startingPos = Vector2.new(-1, 0)
    local list = {}
    local s, kpt = ColorSequence.new, ColorSequenceKeypoint.new
    local counter = 0
    local status = "down"
    gradient.Offset = startingPos
    local function rainbowColors()
      local sat, val = 255, 255
      for i = 1, 10 do
        local hue = i * 17
        table.insert(list, Color3.fromHSV(hue / 255, sat / 255, val / 255))
      end
    end
    rainbowColors()
    gradient.Color = s({
      kpt(0, list[#list]),
      kpt(0.5, list[#list - 1]),
      kpt(1, list[#list - 2])
    })
    counter = #list
    local function animate()
      create:Play()
      create.Completed:Wait()
      gradient.Offset = startingPos
      gradient.Rotation = 180
      if counter == #list - 1 and status == "down" then
        gradient.Color = s({
          kpt(0, gradient.Color.Keypoints[1].Value),
          kpt(0.5, list[#list]),
          kpt(1, list[1])
        })
        counter = 1
        status = "up"
       elseif counter == #list and status == "down" then
        gradient.Color = s({
          kpt(0, gradient.Color.Keypoints[1].Value),
          kpt(0.5, list[1]),
          kpt(1, list[2])
        })
        counter = 2
        status = "up"
       elseif counter <= #list - 2 and status == "down" then
        gradient.Color = s({
          kpt(0, gradient.Color.Keypoints[1].Value),
          kpt(0.5, list[counter + 1]),
          kpt(1, list[counter + 2])
        })
        counter = counter + 2
        status = "up"
      end
      create:Play()
      create.Completed:Wait()
      gradient.Offset = startingPos
      gradient.Rotation = 0
      if counter == #list - 1 and status == "up" then
        gradient.Color = s({

          kpt(0, list[1]),
          kpt(0.5, list[#list]),
          kpt(1, gradient.Color.Keypoints[3].Value)
        })
        counter = 1
        status = "down"
       elseif counter == #list and status == "up" then
        gradient.Color = s({
          kpt(0, list[2]),
          kpt(0.5, list[1]),
          kpt(1, gradient.Color.Keypoints[3].Value)
        })
        counter = 2
        status = "down"
       elseif counter <= #list - 2 and status == "up" then
        gradient.Color = s({
          kpt(0, list[counter + 2]),
          kpt(0.5, list[counter + 1]),
          kpt(1, gradient.Color.Keypoints[3].Value)
        })
        counter = counter + 2
        status = "down"
      end
      animate()
    end
    animate()

  end
  coroutine.wrap(NPLHKB_fake_script)()

  SBG.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, zyColor), ColorSequenceKeypoint.new(1.00, zyColor)}
  SBG.Rotation = 90
  SBG.Name = "SBG"
  SBG.Parent = SB

  TabBtnsL:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    TabBtns.CanvasSize = UDim2.new(0, 0, 0, TabBtnsL.AbsoluteContentSize.Y + 18)
  end)
  Open.Name = "Open"
  Open.Parent = dogent
  Open.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
  Open.Position = UDim2.new(0.00829315186, 0, 0.31107837, 0)
  Open.Size = UDim2.new(0, 61, 0, 32)
  Open.Font = Enum.Font.SourceSans
  Open.Text = "关/开"
  Open.TextColor3 = Color3.fromRGB(255, 255, 255)
  Open.TextSize = 14.000
  Open.Active = true
  Open.Draggable = true
  Open.MouseButton1Click:Connect(function()
    Main.Visible = not Main.Visible
  end)
  UIG.Parent = Open
  local window = {}
  function window.Tab(window, name, icon)
    local Tab = Instance.new("ScrollingFrame")
    local TabIco = Instance.new("ImageLabel")
    local TabText = Instance.new("TextLabel")
    local TabBtn = Instance.new("TextButton")
    local TabL = Instance.new("UIListLayout")

    Tab.Name = "Tab"
    Tab.Parent = TabMain
    Tab.Active = true
    Tab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Tab.BackgroundTransparency = 1.000
    Tab.Size = UDim2.new(1, 0, 1, 0)
    Tab.ScrollBarThickness = 2
    Tab.Visible = false

    TabIco.Name = "TabIco"
    TabIco.Parent = TabBtns
    TabIco.BackgroundTransparency = 1.000
    TabIco.BorderSizePixel = 0
    TabIco.Size = UDim2.new(0, 24, 0, 24)
    TabIco.Image = ("rbxassetid://%s"):format((icon or 4370341699))
    TabIco.ImageTransparency = 0.2

    TabText.Name = "TabText"
    TabText.Parent = TabIco
    TabText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TabText.BackgroundTransparency = 1.000
    TabText.Position = UDim2.new(1.41666663, 0, 0, 0)
    TabText.Size = UDim2.new(0, 76, 0, 24)
    TabText.Font = Enum.Font.GothamSemibold
    TabText.Text = name
    TabText.TextColor3 = Color3.fromRGB(255, 255, 255)
    TabText.TextSize = 14.000
    TabText.TextXAlignment = Enum.TextXAlignment.Left
    TabText.TextTransparency = 0.2

    TabBtn.Name = "TabBtn"
    TabBtn.Parent = TabIco
    TabBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TabBtn.BackgroundTransparency = 1.000
    TabBtn.BorderSizePixel = 0
    TabBtn.Size = UDim2.new(0, 110, 0, 24)
    TabBtn.AutoButtonColor = false
    TabBtn.Font = Enum.Font.SourceSans
    TabBtn.Text = ""
    TabBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
    TabBtn.TextSize = 14.000

    TabL.Name = "TabL"
    TabL.Parent = Tab
    TabL.SortOrder = Enum.SortOrder.LayoutOrder
    TabL.Padding = UDim.new(0, 4)

    TabBtn.MouseButton1Click:Connect(function()
      spawn(function()
        Ripple(TabBtn)
      end)
      switchTab({TabIco, Tab})
    end)

    if library.currentTab == nil then switchTab({TabIco, Tab}) end

    TabL:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
      Tab.CanvasSize = UDim2.new(0, 0, 0, TabL.AbsoluteContentSize.Y + 8)
    end)

    local tab = {}
    function tab.section(tab, name, TabVal)
      local Section = Instance.new("Frame")
      local SectionC = Instance.new("UICorner")
      local SectionText = Instance.new("TextLabel")
      local SectionOpen = Instance.new("ImageLabel")
      local SectionOpened = Instance.new("ImageLabel")
      local SectionToggle = Instance.new("ImageButton")
      local Objs = Instance.new("Frame")
      local ObjsL = Instance.new("UIListLayout")

      Section.Name = "Section"
      Section.Parent = Tab
      Section.BackgroundColor3 = Color3.fromRGB(102, 190, 193)
      Section.BackgroundTransparency = 1.000
      Section.BorderSizePixel = 0
      Section.ClipsDescendants = true
      Section.Size = UDim2.new(0.981000006, 0, 0, 36)

      SectionC.CornerRadius = UDim.new(0, 6)
      SectionC.Name = "SectionC"
      SectionC.Parent = Section

      SectionText.Name = "SectionText"
      SectionText.Parent = Section
      SectionText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      SectionText.BackgroundTransparency = 1.000
      SectionText.Position = UDim2.new(0.0887396261, 0, 0, 0)
      SectionText.Size = UDim2.new(0, 401, 0, 36)
      SectionText.Font = Enum.Font.GothamSemibold
      SectionText.Text = name
      SectionText.TextColor3 = Color3.fromRGB(255, 255, 255)
      SectionText.TextSize = 16.000
      SectionText.TextXAlignment = Enum.TextXAlignment.Left

      SectionOpen.Name = "SectionOpen"
      SectionOpen.Parent = SectionText
      SectionOpen.BackgroundTransparency = 1
      SectionOpen.BorderSizePixel = 0
      SectionOpen.Position = UDim2.new(0, -33, 0, 5)
      SectionOpen.Size = UDim2.new(0, 26, 0, 26)
      SectionOpen.Image = "http://www.roblox.com/asset/?id=6031302934"

      SectionOpened.Name = "SectionOpened"
      SectionOpened.Parent = SectionOpen
      SectionOpened.BackgroundTransparency = 1.000
      SectionOpened.BorderSizePixel = 0
      SectionOpened.Size = UDim2.new(0, 26, 0, 26)
      SectionOpened.Image = "http://www.roblox.com/asset/?id=6031302932"
      SectionOpened.ImageTransparency = 1.000

      SectionToggle.Name = "SectionToggle"
      SectionToggle.Parent = SectionOpen
      SectionToggle.BackgroundTransparency = 1
      SectionToggle.BorderSizePixel = 0
      SectionToggle.Size = UDim2.new(0, 26, 0, 26)

      Objs.Name = "Objs"
      Objs.Parent = Section
      Objs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      Objs.BackgroundTransparency = 1
      Objs.BorderSizePixel = 0
      Objs.Position = UDim2.new(0, 6, 0, 36)
      Objs.Size = UDim2.new(0.986347735, 0, 0, 0)

      ObjsL.Name = "ObjsL"
      ObjsL.Parent = Objs
      ObjsL.SortOrder = Enum.SortOrder.LayoutOrder
      ObjsL.Padding = UDim.new(0, 8)

      local open = TabVal
      if TabVal ~= false then
        Section.Size = UDim2.new(0.981000006, 0, 0, open and 36 + ObjsL.AbsoluteContentSize.Y + 8 or 36)
        SectionOpened.ImageTransparency = (open and 0 or 1)
        SectionOpen.ImageTransparency = (open and 1 or 0)
      end

      SectionToggle.MouseButton1Click:Connect(function()
        open = not open
        Section.Size = UDim2.new(0.981000006, 0, 0, open and 36 + ObjsL.AbsoluteContentSize.Y + 8 or 36)
        SectionOpened.ImageTransparency = (open and 0 or 1)
        SectionOpen.ImageTransparency = (open and 1 or 0)
      end)

      ObjsL:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        if not open then return end
        Section.Size = UDim2.new(0.981000006, 0, 0, 36 + ObjsL.AbsoluteContentSize.Y + 8)
      end)

      local section = {}
      function section.Button(section, text, callback)
        local callback = callback or function() end

        local BtnModule = Instance.new("Frame")
        local Btn = Instance.new("TextButton")
        local BtnC = Instance.new("UICorner")

        BtnModule.Name = "BtnModule"
        BtnModule.Parent = Objs
        BtnModule.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        BtnModule.BackgroundTransparency = 1.000
        BtnModule.BorderSizePixel = 0
        BtnModule.Position = UDim2.new(0, 0, 0, 0)
        BtnModule.Size = UDim2.new(0, 428, 0, 38)

        Btn.Name = "Btn"
        Btn.Parent = BtnModule
        Btn.BackgroundColor3 = zyColor
        Btn.BorderSizePixel = 0
        Btn.Size = UDim2.new(0, 428, 0, 38)
        Btn.AutoButtonColor = false
        Btn.Font = Enum.Font.GothamSemibold
        Btn.Text = "   " .. text
        Btn.TextColor3 = Color3.fromRGB(255, 255, 255)
        Btn.TextSize = 16.000
        Btn.TextXAlignment = Enum.TextXAlignment.Left

        BtnC.CornerRadius = UDim.new(0, 6)
        BtnC.Name = "BtnC"
        BtnC.Parent = Btn

        Btn.MouseButton1Click:Connect(function()
          spawn(function()
            Ripple(Btn)
          end)
          spawn(callback)
        end)
      end

      function section:Label(text)
        local LabelModule = Instance.new("Frame")
        local TextLabel = Instance.new("TextLabel")
        local LabelC = Instance.new("UICorner")

        LabelModule.Name = "LabelModule"
        LabelModule.Parent = Objs
        LabelModule.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        LabelModule.BackgroundTransparency = 1.000
        LabelModule.BorderSizePixel = 0
        LabelModule.Position = UDim2.new(0, 0, NAN, 0)
        LabelModule.Size = UDim2.new(0, 428, 0, 19)

        TextLabel.Parent = LabelModule
        TextLabel.BackgroundColor3 = zyColor
        TextLabel.Size = UDim2.new(0, 428, 0, 22)
        TextLabel.Font = Enum.Font.GothamSemibold
        TextLabel.Text = text
        TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.TextSize = 14.000

        LabelC.CornerRadius = UDim.new(0, 6)
        LabelC.Name = "LabelC"
        LabelC.Parent = TextLabel
        return TextLabel
      end

      function section.Toggle(section, text, flag, enabled, callback)
        local callback = callback or function() end
        local enabled = enabled or false
        assert(text, "No text provided")
        assert(flag, "No flag provided")

        library.flags[flag] = enabled

        local ToggleModule = Instance.new("Frame")
        local ToggleBtn = Instance.new("TextButton")
        local ToggleBtnC = Instance.new("UICorner")
        local ToggleDisable = Instance.new("Frame")
        local ToggleSwitch = Instance.new("Frame")
        local ToggleSwitchC = Instance.new("UICorner")
        local ToggleDisableC = Instance.new("UICorner")

        ToggleModule.Name = "ToggleModule"
        ToggleModule.Parent = Objs
        ToggleModule.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ToggleModule.BackgroundTransparency = 1.000
        ToggleModule.BorderSizePixel = 0
        ToggleModule.Position = UDim2.new(0, 0, 0, 0)
        ToggleModule.Size = UDim2.new(0, 428, 0, 38)

        ToggleBtn.Name = "ToggleBtn"
        ToggleBtn.Parent = ToggleModule
        ToggleBtn.BackgroundColor3 = zyColor
        ToggleBtn.BorderSizePixel = 0
        ToggleBtn.Size = UDim2.new(0, 428, 0, 38)
        ToggleBtn.AutoButtonColor = false
        ToggleBtn.Font = Enum.Font.GothamSemibold
        ToggleBtn.Text = "   " .. text
        ToggleBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
        ToggleBtn.TextSize = 16.000
        ToggleBtn.TextXAlignment = Enum.TextXAlignment.Left

        ToggleBtnC.CornerRadius = UDim.new(0, 6)
        ToggleBtnC.Name = "ToggleBtnC"
        ToggleBtnC.Parent = ToggleBtn

        ToggleDisable.Name = "ToggleDisable"
        ToggleDisable.Parent = ToggleBtn
        ToggleDisable.BackgroundColor3 = Background
        ToggleDisable.BorderSizePixel = 0
        ToggleDisable.Position = UDim2.new(0.901869178, 0, 0.208881587, 0)
        ToggleDisable.Size = UDim2.new(0, 36, 0, 22)

        ToggleSwitch.Name = "ToggleSwitch"
        ToggleSwitch.Parent = ToggleDisable
        ToggleSwitch.BackgroundColor3 = beijingColor
        ToggleSwitch.Size = UDim2.new(0, 24, 0, 22)

        ToggleSwitchC.CornerRadius = UDim.new(0, 6)
        ToggleSwitchC.Name = "ToggleSwitchC"
        ToggleSwitchC.Parent = ToggleSwitch

        ToggleDisableC.CornerRadius = UDim.new(0, 6)
        ToggleDisableC.Name = "ToggleDisableC"
        ToggleDisableC.Parent = ToggleDisable

        local funcs = {
          SetState = function(self, state)
            if state == nil then state = not library.flags[flag] end
            if library.flags[flag] == state then return end
            services.TweenService:Create(ToggleSwitch, TweenInfo.new(0.2), {Position = UDim2.new(0, (state and ToggleSwitch.Size.X.Offset / 2 or 0), 0, 0), BackgroundColor3 = (state and Color3.fromRGB(255, 255, 255) or beijingColor)}):Play()
            library.flags[flag] = state
            callback(state)
          end,
          Module = ToggleModule
        }

        if enabled ~= false then
          funcs:SetState(flag,true)
        end

        ToggleBtn.MouseButton1Click:Connect(function()
          funcs:SetState()
        end)
        return funcs
      end

      function section.Keybind(section, text, default, callback)
        local callback = callback or function() end
        assert(text, "No text provided")
        assert(default, "No default key provided")

        local default = (typeof(default) == "string" and Enum.KeyCode[default] or default)
        local banned = {
          Return = true;
          Space = true;
          Tab = true;
          Backquote = true;
          CapsLock = true;
          Escape = true;
          Unknown = true;
        }
        local shortNames = {
          RightControl = 'Right Ctrl',
          LeftControl = 'Left Ctrl',
          LeftShift = 'Left Shift',
          RightShift = 'Right Shift',
          Semicolon = ";",
          Quote = '"',
          LeftBracket = '[',
          RightBracket = ']',
          Equals = '=',
          Minus = '-',
          RightAlt = 'Right Alt',
          LeftAlt = 'Left Alt'
        }

        local bindKey = default
        local keyTxt = (default and (shortNames[default.Name] or default.Name) or "None")

        local KeybindModule = Instance.new("Frame")
        local KeybindBtn = Instance.new("TextButton")
        local KeybindBtnC = Instance.new("UICorner")
        local KeybindValue = Instance.new("TextButton")
        local KeybindValueC = Instance.new("UICorner")
        local KeybindL = Instance.new("UIListLayout")
        local UIPadding = Instance.new("UIPadding")

        KeybindModule.Name = "KeybindModule"
        KeybindModule.Parent = Objs
        KeybindModule.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        KeybindModule.BackgroundTransparency = 1.000
        KeybindModule.BorderSizePixel = 0
        KeybindModule.Position = UDim2.new(0, 0, 0, 0)
        KeybindModule.Size = UDim2.new(0, 428, 0, 38)

        KeybindBtn.Name = "KeybindBtn"
        KeybindBtn.Parent = KeybindModule
        KeybindBtn.BackgroundColor3 = zyColor
        KeybindBtn.BorderSizePixel = 0
        KeybindBtn.Size = UDim2.new(0, 428, 0, 38)
        KeybindBtn.AutoButtonColor = false
        KeybindBtn.Font = Enum.Font.GothamSemibold
        KeybindBtn.Text = "   " .. text
        KeybindBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
        KeybindBtn.TextSize = 16.000
        KeybindBtn.TextXAlignment = Enum.TextXAlignment.Left

        KeybindBtnC.CornerRadius = UDim.new(0, 6)
        KeybindBtnC.Name = "KeybindBtnC"
        KeybindBtnC.Parent = KeybindBtn

        KeybindValue.Name = "KeybindValue"
        KeybindValue.Parent = KeybindBtn
        KeybindValue.BackgroundColor3 = Background
        KeybindValue.BorderSizePixel = 0
        KeybindValue.Position = UDim2.new(0.763033211, 0, 0.289473683, 0)
        KeybindValue.Size = UDim2.new(0, 100, 0, 28)
        KeybindValue.AutoButtonColor = false
        KeybindValue.Font = Enum.Font.Gotham
        KeybindValue.Text = keyTxt
        KeybindValue.TextColor3 = Color3.fromRGB(255, 255, 255)
        KeybindValue.TextSize = 14.000

        KeybindValueC.CornerRadius = UDim.new(0, 6)
        KeybindValueC.Name = "KeybindValueC"
        KeybindValueC.Parent = KeybindValue

        KeybindL.Name = "KeybindL"
        KeybindL.Parent = KeybindBtn
        KeybindL.HorizontalAlignment = Enum.HorizontalAlignment.Right
        KeybindL.SortOrder = Enum.SortOrder.LayoutOrder
        KeybindL.VerticalAlignment = Enum.VerticalAlignment.Center

        UIPadding.Parent = KeybindBtn
        UIPadding.PaddingRight = UDim.new(0, 6)

        services.UserInputService.InputBegan:Connect(function(inp, gpe)
          if gpe then return end
          if inp.UserInputType ~= Enum.UserInputType.Keyboard then return end
          if inp.KeyCode ~= bindKey then return end
          callback(bindKey.Name)
        end)

        KeybindValue.MouseButton1Click:Connect(function()
          KeybindValue.Text = "..."
          wait()
          local key, uwu = services.UserInputService.InputEnded:Wait()
          local keyName = tostring(key.KeyCode.Name)
          if key.UserInputType ~= Enum.UserInputType.Keyboard then
            KeybindValue.Text = keyTxt
            return
          end
          if banned[keyName] then
            KeybindValue.Text = keyTxt
            return
          end
          wait()
          bindKey = Enum.KeyCode[keyName]
          KeybindValue.Text = shortNames[keyName] or keyName
        end)

        KeybindValue:GetPropertyChangedSignal("TextBounds"):Connect(function()
          KeybindValue.Size = UDim2.new(0, KeybindValue.TextBounds.X + 30, 0, 28)
        end)
        KeybindValue.Size = UDim2.new(0, KeybindValue.TextBounds.X + 30, 0, 28)
      end

      function section.Textbox(section, text, flag, default, callback)
        local callback = callback or function() end
        assert(text, "No text provided")
        assert(flag, "No flag provided")
        assert(default, "No default text provided")

        library.flags[flag] = default

        local TextboxModule = Instance.new("Frame")
        local TextboxBack = Instance.new("TextButton")
        local TextboxBackC = Instance.new("UICorner")
        local BoxBG = Instance.new("TextButton")
        local BoxBGC = Instance.new("UICorner")
        local TextBox = Instance.new("TextBox")
        local TextboxBackL = Instance.new("UIListLayout")
        local TextboxBackP = Instance.new("UIPadding")

        TextboxModule.Name = "TextboxModule"
        TextboxModule.Parent = Objs
        TextboxModule.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextboxModule.BackgroundTransparency = 1.000
        TextboxModule.BorderSizePixel = 0
        TextboxModule.Position = UDim2.new(0, 0, 0, 0)
        TextboxModule.Size = UDim2.new(0, 428, 0, 38)

        TextboxBack.Name = "TextboxBack"
        TextboxBack.Parent = TextboxModule
        TextboxBack.BackgroundColor3 = zyColor
        TextboxBack.BorderSizePixel = 0
        TextboxBack.Size = UDim2.new(0, 428, 0, 38)
        TextboxBack.AutoButtonColor = false
        TextboxBack.Font = Enum.Font.GothamSemibold
        TextboxBack.Text = "   " .. text
        TextboxBack.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextboxBack.TextSize = 16.000
        TextboxBack.TextXAlignment = Enum.TextXAlignment.Left

        TextboxBackC.CornerRadius = UDim.new(0, 6)
        TextboxBackC.Name = "TextboxBackC"
        TextboxBackC.Parent = TextboxBack

        BoxBG.Name = "BoxBG"
        BoxBG.Parent = TextboxBack
        BoxBG.BackgroundColor3 = Background
        BoxBG.BorderSizePixel = 0
        BoxBG.Position = UDim2.new(0.763033211, 0, 0.289473683, 0)
        BoxBG.Size = UDim2.new(0, 100, 0, 28)
        BoxBG.AutoButtonColor = false
        BoxBG.Font = Enum.Font.Gotham
        BoxBG.Text = ""
        BoxBG.TextColor3 = Color3.fromRGB(255, 255, 255)
        BoxBG.TextSize = 14.000

        BoxBGC.CornerRadius = UDim.new(0, 6)
        BoxBGC.Name = "BoxBGC"
        BoxBGC.Parent = BoxBG

        TextBox.Parent = BoxBG
        TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextBox.BackgroundTransparency = 1.000
        TextBox.BorderSizePixel = 0
        TextBox.Size = UDim2.new(1, 0, 1, 0)
        TextBox.Font = Enum.Font.Gotham
        TextBox.Text = default
        TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextBox.TextSize = 14.000

        TextboxBackL.Name = "TextboxBackL"
        TextboxBackL.Parent = TextboxBack
        TextboxBackL.HorizontalAlignment = Enum.HorizontalAlignment.Right
        TextboxBackL.SortOrder = Enum.SortOrder.LayoutOrder
        TextboxBackL.VerticalAlignment = Enum.VerticalAlignment.Center

        TextboxBackP.Name = "TextboxBackP"
        TextboxBackP.Parent = TextboxBack
        TextboxBackP.PaddingRight = UDim.new(0, 6)

        TextBox.FocusLost:Connect(function()
          if TextBox.Text == "" then
            TextBox.Text = default
          end
          library.flags[flag] = TextBox.Text
          callback(TextBox.Text)
        end)

        TextBox:GetPropertyChangedSignal("TextBounds"):Connect(function()
          BoxBG.Size = UDim2.new(0, TextBox.TextBounds.X + 30, 0, 28)
        end)
        BoxBG.Size = UDim2.new(0, TextBox.TextBounds.X + 30, 0, 28)
      end

      function section.Slider(section, text, flag, default, min, max, precise, callback)
        local callback = callback or function() end
        local min = min or 1
        local max = max or 10
        local default = default or min
        local precise = precise or false

        library.flags[flag] = default

        assert(text, "No text provided")
        assert(flag, "No flag provided")
        assert(default, "No default value provided")

        local SliderModule = Instance.new("Frame")
        local SliderBack = Instance.new("TextButton")
        local SliderBackC = Instance.new("UICorner")
        local SliderBar = Instance.new("Frame")
        local SliderBarC = Instance.new("UICorner")
        local SliderPart = Instance.new("Frame")
        local SliderPartC = Instance.new("UICorner")
        local SliderValBG = Instance.new("TextButton")
        local SliderValBGC = Instance.new("UICorner")
        local SliderValue = Instance.new("TextBox")
        local MinSlider = Instance.new("TextButton")
        local AddSlider = Instance.new("TextButton")

        SliderModule.Name = "SliderModule"
        SliderModule.Parent = Objs
        SliderModule.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SliderModule.BackgroundTransparency = 1.000
        SliderModule.BorderSizePixel = 0
        SliderModule.Position = UDim2.new(0, 0, 0, 0)
        SliderModule.Size = UDim2.new(0, 428, 0, 38)

        SliderBack.Name = "SliderBack"
        SliderBack.Parent = SliderModule
        SliderBack.BackgroundColor3 = zyColor
        SliderBack.BorderSizePixel = 0
        SliderBack.Size = UDim2.new(0, 428, 0, 38)
        SliderBack.AutoButtonColor = false
        SliderBack.Font = Enum.Font.GothamSemibold
        SliderBack.Text = "   " .. text
        SliderBack.TextColor3 = Color3.fromRGB(255, 255, 255)
        SliderBack.TextSize = 16.000
        SliderBack.TextXAlignment = Enum.TextXAlignment.Left

        SliderBackC.CornerRadius = UDim.new(0, 6)
        SliderBackC.Name = "SliderBackC"
        SliderBackC.Parent = SliderBack

        SliderBar.Name = "SliderBar"
        SliderBar.Parent = SliderBack
        SliderBar.AnchorPoint = Vector2.new(0, 0.5)
        SliderBar.BackgroundColor3 = Background
        SliderBar.BorderSizePixel = 0
        SliderBar.Position = UDim2.new(0.369000018, 40, 0.5, 0)
        SliderBar.Size = UDim2.new(0, 140, 0, 12)

        SliderBarC.CornerRadius = UDim.new(0, 4)
        SliderBarC.Name = "SliderBarC"
        SliderBarC.Parent = SliderBar

        SliderPart.Name = "SliderPart"
        SliderPart.Parent = SliderBar
        SliderPart.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SliderPart.BorderSizePixel = 0
        SliderPart.Size = UDim2.new(0, 54, 0, 13)

        SliderPartC.CornerRadius = UDim.new(0, 4)
        SliderPartC.Name = "SliderPartC"
        SliderPartC.Parent = SliderPart

        SliderValBG.Name = "SliderValBG"
        SliderValBG.Parent = SliderBack
        SliderValBG.BackgroundColor3 = Background
        SliderValBG.BorderSizePixel = 0
        SliderValBG.Position = UDim2.new(0.883177578, 0, 0.131578952, 0)
        SliderValBG.Size = UDim2.new(0, 44, 0, 28)
        SliderValBG.AutoButtonColor = false
        SliderValBG.Font = Enum.Font.Gotham
        SliderValBG.Text = ""
        SliderValBG.TextColor3 = Color3.fromRGB(255, 255, 255)
        SliderValBG.TextSize = 14.000

        SliderValBGC.CornerRadius = UDim.new(0, 6)
        SliderValBGC.Name = "SliderValBGC"
        SliderValBGC.Parent = SliderValBG

        SliderValue.Name = "SliderValue"
        SliderValue.Parent = SliderValBG
        SliderValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SliderValue.BackgroundTransparency = 1.000
        SliderValue.BorderSizePixel = 0
        SliderValue.Size = UDim2.new(1, 0, 1, 0)
        SliderValue.Font = Enum.Font.Gotham
        SliderValue.Text = "1000"
        SliderValue.TextColor3 = Color3.fromRGB(255, 255, 255)
        SliderValue.TextSize = 14.000

        MinSlider.Name = "MinSlider"
        MinSlider.Parent = SliderModule
        MinSlider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        MinSlider.BackgroundTransparency = 1.000
        MinSlider.BorderSizePixel = 0
        MinSlider.Position = UDim2.new(0.296728969, 40, 0.236842096, 0)
        MinSlider.Size = UDim2.new(0, 20, 0, 20)
        MinSlider.Font = Enum.Font.Gotham
        MinSlider.Text = "-"
        MinSlider.TextColor3 = Color3.fromRGB(255, 255, 255)
        MinSlider.TextSize = 24.000
        MinSlider.TextWrapped = true

        AddSlider.Name = "AddSlider"
        AddSlider.Parent = SliderModule
        AddSlider.AnchorPoint = Vector2.new(0, 0.5)
        AddSlider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        AddSlider.BackgroundTransparency = 1.000
        AddSlider.BorderSizePixel = 0
        AddSlider.Position = UDim2.new(0.810906529, 0, 0.5, 0)
        AddSlider.Size = UDim2.new(0, 20, 0, 20)
        AddSlider.Font = Enum.Font.Gotham
        AddSlider.Text = "+"
        AddSlider.TextColor3 = Color3.fromRGB(255, 255, 255)
        AddSlider.TextSize = 24.000
        AddSlider.TextWrapped = true

        local funcs = {
          SetValue = function(self, value)
            local percent = (mouse.X - SliderBar.AbsolutePosition.X) / SliderBar.AbsoluteSize.X
            if value then
              percent = (value - min) / (max - min)
            end
            percent = math.clamp(percent, 0, 1)
            if precise then
              value = value or tonumber(string.format("%.1f", tostring(min + (max - min) * percent)))
             else
              value = value or math.floor(min + (max - min) * percent)
            end
            library.flags[flag] = tonumber(value)
            SliderValue.Text = tostring(value)
            SliderPart.Size = UDim2.new(percent, 0, 1, 0)
            callback(tonumber(value))
          end
        }

        MinSlider.MouseButton1Click:Connect(function()
          local currentValue = library.flags[flag]
          currentValue = math.clamp(currentValue - 1, min, max)
          funcs:SetValue(currentValue)
        end)

        AddSlider.MouseButton1Click:Connect(function()
          local currentValue = library.flags[flag]
          currentValue = math.clamp(currentValue + 1, min, max)
          funcs:SetValue(currentValue)
        end)

        funcs:SetValue(default)

        local dragging, boxFocused, allowed = false, false, {
          [""] = true,
          ["-"] = true
        }

        SliderBar.InputBegan:Connect(function(input)
          if input.UserInputType == Enum.UserInputType.MouseButton1 then
            funcs:SetValue()
            dragging = true
          end
        end)

        services.UserInputService.InputEnded:Connect(function(input)
          if dragging and input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = false
          end
        end)

        services.UserInputService.InputChanged:Connect(function(input)
          if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
            funcs:SetValue()
          end
        end)

        SliderBar.InputBegan:Connect(function(input)
          if input.UserInputType == Enum.UserInputType.Touch then
            funcs:SetValue()
            dragging = true
          end
        end)

        services.UserInputService.InputEnded:Connect(function(input)
          if dragging and input.UserInputType == Enum.UserInputType.Touch then
            dragging = false
          end
        end)

        services.UserInputService.InputChanged:Connect(function(input)
          if dragging and input.UserInputType == Enum.UserInputType.Touch then
            funcs:SetValue()
          end
        end)

        SliderValue.Focused:Connect(function()
          boxFocused = true
        end)

        SliderValue.FocusLost:Connect(function()
          boxFocused = false
          if SliderValue.Text == "" then
            funcs:SetValue(default)
          end
        end)

        SliderValue:GetPropertyChangedSignal("Text"):Connect(function()
          if not boxFocused then return end
          SliderValue.Text = SliderValue.Text:gsub("%D+", "")

          local text = SliderValue.Text

          if not tonumber(text) then
            SliderValue.Text = SliderValue.Text:gsub('%D+', '')
           elseif not allowed[text] then
            if tonumber(text) > max then
              text = max
              SliderValue.Text = tostring(max)
            end
            funcs:SetValue(tonumber(text))
          end
        end)

        return funcs
      end
      function section.Dropdown(section, text, flag, options, callback)
        local callback = callback or function() end
        local options = options or {}
        assert(text, "No text provided")
        assert(flag, "No flag provided")

        library.flags[flag] = nil

        local DropdownModule = Instance.new("Frame")
        local DropdownTop = Instance.new("TextButton")
        local DropdownTopC = Instance.new("UICorner")
        local DropdownOpen = Instance.new("TextButton")
        local DropdownText = Instance.new("TextBox")
        local DropdownModuleL = Instance.new("UIListLayout")
        local Option = Instance.new("TextButton")
        local OptionC = Instance.new("UICorner")

        DropdownModule.Name = "DropdownModule"
        DropdownModule.Parent = Objs
        DropdownModule.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        DropdownModule.BackgroundTransparency = 1.000
        DropdownModule.BorderSizePixel = 0
        DropdownModule.ClipsDescendants = true
        DropdownModule.Position = UDim2.new(0, 0, 0, 0)
        DropdownModule.Size = UDim2.new(0, 428, 0, 38)

        DropdownTop.Name = "DropdownTop"
        DropdownTop.Parent = DropdownModule
        DropdownTop.BackgroundColor3 = zyColor
        DropdownTop.BorderSizePixel = 0
        DropdownTop.Size = UDim2.new(0, 428, 0, 38)
        DropdownTop.AutoButtonColor = false
        DropdownTop.Font = Enum.Font.GothamSemibold
        DropdownTop.Text = ""
        DropdownTop.TextColor3 = Color3.fromRGB(255, 255, 255)
        DropdownTop.TextSize = 16.000
        DropdownTop.TextXAlignment = Enum.TextXAlignment.Left

        DropdownTopC.CornerRadius = UDim.new(0, 6)
        DropdownTopC.Name = "DropdownTopC"
        DropdownTopC.Parent = DropdownTop

        DropdownOpen.Name = "DropdownOpen"
        DropdownOpen.Parent = DropdownTop
        DropdownOpen.AnchorPoint = Vector2.new(0, 0.5)
        DropdownOpen.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        DropdownOpen.BackgroundTransparency = 1.000
        DropdownOpen.BorderSizePixel = 0
        DropdownOpen.Position = UDim2.new(0.918383181, 0, 0.5, 0)
        DropdownOpen.Size = UDim2.new(0, 20, 0, 20)
        DropdownOpen.Font = Enum.Font.Gotham
        DropdownOpen.Text = "+"
        DropdownOpen.TextColor3 = Color3.fromRGB(255, 255, 255)
        DropdownOpen.TextSize = 24.000
        DropdownOpen.TextWrapped = true

        DropdownText.Name = "DropdownText"
        DropdownText.Parent = DropdownTop
        DropdownText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        DropdownText.BackgroundTransparency = 1.000
        DropdownText.BorderSizePixel = 0
        DropdownText.Position = UDim2.new(0.0373831764, 0, 0, 0)
        DropdownText.Size = UDim2.new(0, 184, 0, 38)
        DropdownText.Font = Enum.Font.GothamSemibold
        DropdownText.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
        DropdownText.PlaceholderText = text
        DropdownText.Text = ""
        DropdownText.TextColor3 = Color3.fromRGB(255, 255, 255)
        DropdownText.TextSize = 16.000
        DropdownText.TextXAlignment = Enum.TextXAlignment.Left

        DropdownModuleL.Name = "DropdownModuleL"
        DropdownModuleL.Parent = DropdownModule
        DropdownModuleL.SortOrder = Enum.SortOrder.LayoutOrder
        DropdownModuleL.Padding = UDim.new(0, 4)

        local setAllVisible = function()
          local options = DropdownModule:GetChildren()
          for i=1, #options do
            local option = options[i]
            if option:IsA("TextButton") and option.Name:match("Option_") then
              option.Visible = true
            end
          end
        end

        local searchDropdown = function(text)
          local options = DropdownModule:GetChildren()
          for i=1, #options do
            local option = options[i]
            if text == "" then
              setAllVisible()
             else
              if option:IsA("TextButton") and option.Name:match("Option_") then
                if option.Text:lower():match(text:lower()) then
                  option.Visible = true
                 else
                  option.Visible = false
                end
              end
            end
          end
        end

        local open = false
        local ToggleDropVis = function()
          open = not open
          if open then setAllVisible() end
          DropdownOpen.Text = (open and "-" or "+")
          DropdownModule.Size = UDim2.new(0, 428, 0, (open and DropdownModuleL.AbsoluteContentSize.Y + 4 or 38))
        end

        DropdownOpen.MouseButton1Click:Connect(ToggleDropVis)
        DropdownText.Focused:Connect(function()
          if open then return end
          ToggleDropVis()
        end)

        DropdownText:GetPropertyChangedSignal("Text"):Connect(function()
          if not open then return end
          searchDropdown(DropdownText.Text)
        end)

        DropdownModuleL:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
          if not open then return end
          DropdownModule.Size = UDim2.new(0, 428, 0, (DropdownModuleL.AbsoluteContentSize.Y + 4))
        end)

        local funcs = {}
        funcs.AddOption = function(self, option)
          local Option = Instance.new("TextButton")
          local OptionC = Instance.new("UICorner")

          Option.Name = "Option_" .. option
          Option.Parent = DropdownModule
          Option.BackgroundColor3 = zyColor
          Option.BorderSizePixel = 0
          Option.Position = UDim2.new(0, 0, 0.328125, 0)
          Option.Size = UDim2.new(0, 428, 0, 26)
          Option.AutoButtonColor = false
          Option.Font = Enum.Font.Gotham
          Option.Text = option
          Option.TextColor3 = Color3.fromRGB(255, 255, 255)
          Option.TextSize = 14.000

          OptionC.CornerRadius = UDim.new(0, 6)
          OptionC.Name = "OptionC"
          OptionC.Parent = Option

          Option.MouseButton1Click:Connect(function()
            ToggleDropVis()
            callback(Option.Text)
            DropdownText.Text = Option.Text
            library.flags[flag] = Option.Text
          end)
        end

        funcs.RemoveOption = function(self, option)
          local option = DropdownModule:FindFirstChild("Option_" .. option)
          if option then option:Destroy() end
        end

        funcs.SetOptions = function(self, options)
          for _, v in next, DropdownModule:GetChildren() do
            if v.Name:match("Option_") then
              v:Destroy()
            end
          end
          for _,v in next, options do
            funcs:AddOption(v)
          end
        end

        funcs:SetOptions(options)

        return funcs
      end
      return section
    end
    return tab
  end
  return window
end

local win = library:new("搬运--木材大亨2")
local Tab1 = win:Tab("玩家功能", "10882439086")
local Section3 = Tab1:section("玩家")
local Sectioncs = Tab1:section("传送")
local Sectionqccs = Tab1:section("汽车传送")
local Tab = win:Tab("主要功能", "10728953248")
local Section = Tab:section("斧头")
local Section1 = Tab:section("基地")
local Sectionchuanson = Tab:section("传送东西")
local Sectionzhengli = Tab:section("整理")
local Section5 = Tab:section("木头")
local Tab2 = win:Tab("环境", "4626047596")
local Sectionhuanjin = Tab2:section("环境")
local Tab3 = win:Tab("自动购买", "558024189")
local Sectionautobuy = Tab3:section("自动购买V2(测试)",false)
local Sectionautobuy6 = Tab3:section("其他",false)

Section3:Textbox("设置速度","TextBoxfalg","输入数字",function(s)

  spawn(function()
    while task.wait() do
      lp.Character.Humanoid.WalkSpeed = s
    end
  end)
end)
Section3:Textbox("设置跳跃","TextBoxfalg","输入数字",function(s)

  spawn(function()
    while task.wait() do
      game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = s
    end
  end)
end)
Section3:Textbox("设置高度","TextBoxfalg","输入数字",function(s)
  lp.Character.Humanoid.HipHeight=s
end)
Section3:Button("飞行", function()
  loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
end)
Sectioncs:Dropdown("传送","Dropdown",{"恶魔鸭祭坛","月神剑祭坛","回家","连接逻辑店","三叉戟祭坛","会员商店","画店","桥对岸","沙滩","火木","复仇剑祭坛","洞穴","码头","黑市","糖果原","雪地入口","盖克斯航运","玻璃冰木入口","云层","山边商品","章鱼哥祭坛","沼泽商店","石头商店","沼泽","冰胡","沙漠","辐射商店","核污染区","种子商人","鲍勃的店","家具店","车店","摩斯密码商店","盲盒商店","秋季商店"}, function(b)
  list = b
  if list == "恶魔鸭祭坛"then
    tp(CFrame.new(-208.76177978515625, 59.79999542236328, 924.8598022460938))

   elseif list == "月神剑祭坛"then
    tp(CFrame.new(-7612.0859375, 319.6391296386719, 4276.14990234375))

   elseif list == "洞穴" then

    tp(CFrame.new(-7229.9619140625, 390.3774108886719, 4686.23486328125))

   elseif list == "连接逻辑店" then
    tp(CFrame.new(4607, 9, -798))

   elseif list == "复仇剑祭坛" then
    tp(CFrame.new(6458.20703125, -85.10005187988281, -4557.05224609375))

   elseif list == "三叉戟祭坛" then
    tp(CFrame.new(-374.26605224609375, 15.62093734741211, -1340.554443359375))

   elseif list == "画店" then
    tp(CFrame.new(5207, -156, 719))

   elseif list == "火木" then
    tp(CFrame.new(-1585, 625, 1140))

   elseif list == "沙滩" then
    tp(CFrame.new(2549, 5, -42))

   elseif list == "桥对岸"then
    tp(CFrame.new(109,5,-1166))

   elseif list == "会员商店" then
    tp(CFrame.new(907,4,-92))

   elseif list == "码头" then
    tp(CFrame.new(1122,1,-203))

   elseif list == "黑市" then
    tp(CFrame.new(-22,61,1377))

   elseif list == "糖果原" then
    tp(CFrame.new(-561,272,2312))

   elseif list == "雪地入口"then
    tp(CFrame.new(-712.809, 26.8001, -248.328))

   elseif list == "盖克斯航运"then
    tp(CFrame.new(1894,-2,1581))

   elseif list == "玻璃冰木入口" then
    tp(CFrame.new(2305.939697265625, 255.29136657714844, 2976.620361328125))

   elseif list == "云层" then
    tp(CFrame.new(2073,495,2967))

   elseif list == "山边商品"then
    tp(CFrame.new(-640,160,374))

   elseif list == "章鱼哥祭坛" then
    tp(CFrame.new(-1622,196,941))

   elseif list == "沼泽商店" then
    tp(CFrame.new(-1274,133,-1443))

   elseif list == "沼泽" then
    tp(CFrame.new(-999,133,-1191))

   elseif list == "石头商店" then
    tp(CFrame.new(-2387,302,-1899))

   elseif list == "冰胡" then
    tp(CFrame.new(-2149,321,743))

   elseif list == "沙漠" then
    tp(CFrame.new(-520.5476684570312, -87.6123046875, -2028.247802734375))

   elseif list == "辐射商店" then
    tp(CFrame.new(172,12,-2627))

   elseif list == "核污染区" then
    tp(CFrame.new(207,15,-2752))

   elseif list == "种子商人" then
    tp(CFrame.new(-24,18,-2684))

   elseif list == "鲍勃的店" then
    tp(CFrame.new(261,9,-2541))

   elseif list == "家具店" then
    tp(CFrame.new(492,4,-1723))

   elseif list == "车店" then
    tp(CFrame.new(512,4,-1459))

   elseif list == "摩斯密码商店" then
    tp(CFrame.new(652,4,-1589))

   elseif list == "盲盒商店" then
    tp(CFrame.new(65,4,-455))

   elseif list == "秋季商店" then
    tp(CFrame.new(6004,4,33))
   elseif list == "回家" then
    for i,v in pairs(game.Workspace.Properties:GetChildren()) do
      if v.Owner.Value == lp then
        tp(v.OriginSquare.CFrame + Vector3.new(0,10,0))
      end
    end
  end




end)

Sectionqccs:Dropdown("汽车传送","Dropdown",{"出生点","回家","月神剑祭坛","连接逻辑店","土地商店","会员商店","画店","桥对岸","沙滩","火木","雪山","洞穴","码头","黑市","糖果原","雪地入口","盖克斯航运","玻璃冰木入口","云层","山边商品","章鱼哥祭坛","沼泽商店","石头商店","沼泽","冰胡","沙漠","辐射商店","核污染区","种子商人","鲍勃的店","家具店","车店","摩斯密码商店","盲盒商店","秋季商店"}, function(v)
  list = v
  if list == "出生点"then

    cartp(CFrame.new(187,5,55))

   elseif list == "月神剑祭坛"then

    cartp(CFrame.new(-7612.0859375, 319.6391296386719, 4276.14990234375))

   elseif list == "洞穴" then

    cartp(CFrame.new(3581, -177, 430))

   elseif list == "连接逻辑店" then

    cartp(CFrame.new(4607, 9, -740))

   elseif list == "雪山" then

    cartp(CFrame.new(1451.66248, 412.208405, 3183.47607))

   elseif list == "土地商店" then

    cartp(CFrame.new(230, 5, -99))

   elseif list == "画店" then

    cartp(CFrame.new(5207, -156, 719))

   elseif list == "火木" then

    cartp(CFrame.new(-1585, 625, 1140))

   elseif list == "沙滩" then

    cartp(CFrame.new(2549, 5, -42))

   elseif list == "桥对岸"then

    cartp(CFrame.new(109,5,-1166))

   elseif list == "会员商店" then

    cartp(CFrame.new(907,4,-115))

   elseif list == "码头" then

    cartp(CFrame.new(1122,1,-203))

   elseif list == "黑市" then

    cartp(CFrame.new(-15,61,1365))

   elseif list == "糖果原" then

    cartp(CFrame.new(-561,272,2312))

   elseif list == "雪地入口"then

    cartp(CFrame.new(888,61,1188))

   elseif list == "盖克斯航运"then

    cartp(CFrame.new(1894,-2,1581))

   elseif list == "玻璃冰木入口" then

    cartp(CFrame.new(1929,256,2918))

   elseif list == "云层" then

    cartp(CFrame.new(2060,495,2967))

   elseif list == "山边商品"then

    cartp(CFrame.new(-640,160,374))

   elseif list == "章鱼哥祭坛" then

    cartp(CFrame.new(-1622,196,941))

   elseif list == "沼泽商店" then

    cartp(CFrame.new(-1274,133,-1443))

   elseif list == "沼泽" then

    cartp(CFrame.new(-999,133,-1191))

   elseif list == "石头商店" then

    cartp(CFrame.new(-2395,302,-1899))

   elseif list == "冰胡" then

    cartp(CFrame.new(-2149,321,743))

   elseif list == "沙漠" then

    cartp(CFrame.new(-612,46,-3169))

   elseif list == "辐射商店" then

    cartp(CFrame.new(172,12,-2627))

   elseif list == "核污染区" then

    cartp(CFrame.new(207,15,-2752))

   elseif list == "种子商人" then

    cartp(CFrame.new(-15,18,-2680))

   elseif list == "鲍勃的店" then

    cartp(CFrame.new(-712.809, 26.8001, -248.328))

   elseif list == "家具店" then

    cartp(CFrame.new(490,4,-1690))

   elseif list == "车店" then

    cartp(CFrame.new(512,4,-1490))

   elseif list == "摩斯密码商店" then

    cartp(CFrame.new(652,4,-1565))

   elseif list == "盲盒商店" then

    cartp(CFrame.new(100,4,-455))

   elseif list == "秋季商店" then

    cartp(CFrame.new(6004,4,33))
   elseif list == "回家" then
    for i,v in pairs(game.Workspace.Properties:GetChildren()) do
      if v.Owner.Value == lp then
        cartp(v.OriginSquare.CFrame + Vector3.new(0,10,0))
      end
    end
  end





end)

Section:Button("复制斧头", function()
  Dupeaxe()
end)
Section:Button("扔掉所有斧头", function()
  for i,v in pairs(game:service"Players".LocalPlayer.Backpack:GetChildren()) do
    if v.Name == "Tool" then
      game:GetService("ReplicatedStorage").Interaction.ClientInteracted:FireServer(v,"Drop tool",game:service"Players".LocalPlayer.Character.Torso.CFrame * CFrame.new(0,5,0))
    end
  end
end)
Section:Button("捡斧头", function()
  for a,b in pairs(workspace.PlayerModels:GetChildren()) do
    if b:FindFirstChild("Owner") and b.Owner.Value == lp then
      if b:FindFirstChild("Type") and b.Type.Value == "Tool" then
        game:GetService("ReplicatedStorage").Interaction.ClientInteracted:FireServer(b,"Pick up Vengeance")
        task.wait()

      end
    end
  end
end)

Section:Toggle("自动复制斧头","Toggleflag",false,function(state)
  if state then
    bai.autoaxedupe=true

    while bai.autoaxedupe ==true do

      Dupeaxe()

    end
   else
    bai.autoaxedupe=false
  end
end)

Section1:Textbox("加载基地数字","TextBoxfalg","输入数字",function(s)
  bai.slot=s
end)
Section1:Button("加载（不保存当前基地）", function()
  ScriptLoadOrSave = true
  local CheckSlot = CheckSlotNumber()
  if CheckSlot ~= false then
    if CheckIfSlotAvailable(CheckSlot) == true then
      local LoadSlot = game.ReplicatedStorage.LoadSaveRequests.RequestLoad:InvokeServer(CheckSlot)
      if LoadSlot == false then
        notify("搬运", "现在不能加载!", 1)
      end
      if LoadSlot == true then
        notify("搬运", "已加载!", 2)
        CurrentSlot = CheckSlot
      end
     else
      notify("搬运", "貌似不工作了", 2)
    end
   else
    notify("搬运", "请你填数字☹️", 2)
  end
  ScriptLoadOrSave = false
end)
Section1:Button("保存", function()
  local CheckSlot = CheckSlotNumber()
  if CheckSlot ~= false then
    if CurrentSlot ~= -1 then
      ScriptLoadOrSave = true
      local SaveSlot = game.ReplicatedStorage.LoadSaveRequests.RequestSave:InvokeServer(CheckSlot)
      if SaveSlot == true then
        notify("搬运", "已保存 ✅", 2)
        wait(.5)
        ScriptLoadOrSave = false
       elseif SaveSlot == false then
        notify("搬运", "保存成功!", 1)
        wait(.5)
        ScriptLoadOrSave = false
      end
     else
      notify("搬运", "错误会不会弄!", 1)
    end
   else
    notify("搬运", "你会不会填!", 1)
  end
end)
Section1:Button("免费土地", function()
  for a,b in pairs(workspace.Properties:GetChildren()) do
    if b:FindFirstChild("Owner") and b:FindFirstChild("OriginSquare") and b.Owner.Value == nil then
      game.ReplicatedStorage.PropertyPurchasing.ClientPurchasedProperty:FireServer(b, b.OriginSquare.OriginCFrame.Value.p + Vector3.new(0,3,0))
      wait(0.5)
      Instance.new("RemoteEvent", game:service"ReplicatedStorage".Interaction).Name = "Ban"
      for i,v in pairs(game.Workspace.Properties:GetChildren()) do
        if v.Owner.Value == game.Players.LocalPlayer then
          game.Players.LocalPlayer.Character.Humanoid.Jump = true
          wait(0.1)
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.OriginSquare.CFrame + Vector3.new(0,10,0)
          game.Players.LocalPlayer.Character.Humanoid.Jump = true
          wait(0.1)
        end
      end
    end
  end
end)

Section1:Button("最大土地", function()
  for i, v in pairs(game:GetService("Workspace").Properties:GetChildren()) do
    if v:FindFirstChild("Owner") and v.Owner.Value == game.Players.LocalPlayer then
      base = v
      square = v.OriginSquare
    end
  end
  function makebase(pos)
    local Event = game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty
    Event:FireServer(base, pos)
  end
  spos = square.Position
  makebase(CFrame.new(spos.X + 40, spos.Y, spos.Z))
  makebase(CFrame.new(spos.X - 40, spos.Y, spos.Z))
  makebase(CFrame.new(spos.X, spos.Y, spos.Z + 40))
  makebase(CFrame.new(spos.X, spos.Y, spos.Z - 40))
  makebase(CFrame.new(spos.X + 40, spos.Y, spos.Z + 40))
  makebase(CFrame.new(spos.X + 40, spos.Y, spos.Z - 40))
  makebase(CFrame.new(spos.X - 40, spos.Y, spos.Z + 40))
  makebase(CFrame.new(spos.X - 40, spos.Y, spos.Z - 40))
  makebase(CFrame.new(spos.X + 80, spos.Y, spos.Z))
  makebase(CFrame.new(spos.X - 80, spos.Y, spos.Z))
  makebase(CFrame.new(spos.X, spos.Y, spos.Z + 80))
  makebase(CFrame.new(spos.X, spos.Y, spos.Z - 80))
  --Corners--
  makebase(CFrame.new(spos.X + 80, spos.Y, spos.Z + 80))
  makebase(CFrame.new(spos.X + 80, spos.Y, spos.Z - 80))
  makebase(CFrame.new(spos.X - 80, spos.Y, spos.Z + 80))
  makebase(CFrame.new(spos.X - 80, spos.Y, spos.Z - 80))
  --Corners--
  makebase(CFrame.new(spos.X + 40, spos.Y, spos.Z + 80))
  makebase(CFrame.new(spos.X - 40, spos.Y, spos.Z + 80))
  makebase(CFrame.new(spos.X + 80, spos.Y, spos.Z + 40))
  makebase(CFrame.new(spos.X + 80, spos.Y, spos.Z - 40))
  makebase(CFrame.new(spos.X - 80, spos.Y, spos.Z + 40))
  makebase(CFrame.new(spos.X - 80, spos.Y, spos.Z - 40))
  makebase(CFrame.new(spos.X + 40, spos.Y, spos.Z - 80))
  makebase(CFrame.new(spos.X - 40, spos.Y, spos.Z - 80))
end)
local Players = Sectionchuanson:Dropdown("选择玩家","Dropdown",bai.dropdown,function(v)
  bai.cswjia= v
end)

Sectionchuanson:Button("重置玩家名称", function()
  shuaxinlb(true)
  Players:SetOptions(bai.dropdown)
end)
local Players = Sectionzhengli:Dropdown("选择玩家","Dropdown",bai.dropdown,function(v)
  bai.zlwjia= v
end)

Sectionchuanson:Button("设置传送点", function()
  pcall(function()
    workspace.baiBasedropCord:Destroy();
    bai.itemset=nil
  end)
  local baiBasedropCord=Instance.new("Part")
  baiBasedropCord.Name="baiBasedropCord";
  baiBasedropCord.Anchored=true;
  baiBasedropCord.Parent=game.Workspace;
  baiBasedropCord.Shape=Enum.PartType.Ball;
  baiBasedropCord.Size=Vector3.new(2,2,2)
  baiBasedropCord.Color=Color3.fromRGB(0, 217, 255);
  baiBasedropCord.Material=Enum.Material.ForceField;
  baiBasedropCord.CFrame=lp.Character.HumanoidRootPart.CFrame
  bai.itemset=lp.Character.HumanoidRootPart.CFrame
end)
Sectionchuanson:Button("删除传送点", function()
  pcall(function()
    workspace.baiBasedropCord:Destroy();
    bai.itemset=nil
  end)

end)
Sectionchuanson:Button("传送东西", function()
  for i=1,20 do
    tpitems("Loose Item")
    wait()
  end
end)
Sectionchuanson:Button("传送斧头", function()
  for i=1,20 do
    tpitems("Tool")
    wait()
  end
end)

Sectionchuanson:Button("传送家具", function()
  for i=1,20 do
    tpitems("Furniture")
    wait()
  end

end)

Sectionchuanson:Button("传送礼物", function()
  for i=1,20 do

    tpitems("Trident")
    wait()
  end
end)
Sectionchuanson:Button("传送木板", function()
  for i=1,20 do
    tpitems("TreeClass")
    wait()
  end
end)
Sectionzhengli:Button("重置玩家名称", function()
  shuaxinlb(true)
  Players:SetOptions(bai.dropdown)
end)

Sectionzhengli:Textbox("x轴","TextBoxfalg","输入数字",function(txt)
  bai.zix=txt
end)
Sectionzhengli:Textbox("z轴","TextBoxfalg","输入数字",function(txt)
  bai.zlz=txt
end)
Sectionzhengli:Button("获取整理工具", function()
  Identify = Instance.new("Tool")
  Identify.RequiresHandle = false;
  Identify.Name = "点击要整理的物品"
  Identify.Activated:connect(function()
    if mouse.Target.Parent:FindFirstChild("PurchasedBoxItemName") then
      bai.dxmz=mouse.Target.Parent.PurchasedBoxItemName.Value
      ItemStackerbox(bai.dxmz,bai.zix, bai.zlz)

     elseif mouse.Target.Parent:FindFirstChild("ItemName") then
      bai.dxmz=mouse.Target.Parent.ItemName.Value
      ItemStackeraxe(bai.dxmz,bai.zix, bai.zlz)
    end
  end)
  Identify.Parent = game.Players.LocalPlayer.Backpack
end)

Section5:Button("传送木头", function()

  local oldPosition = lp.Character.HumanoidRootPart.Position

  for _, Log in pairs(game.Workspace.LogModels:GetChildren()) do
    if Log.Name:sub(1, 6) == "Loose_" and Log:findFirstChild("Owner") then
      if Log.Owner.Value == game.Players.LocalPlayer then
        for _ = 1, 60 do
          tp(Log.WoodSection.CFrame)
          Log:MoveTo(oldPosition)
          tp(oldPosition)
        end
      end
    end
  end

end)
Section5:Button("卖木头", function()
  sellwood()
end)
Section5:Toggle("拖拽器","Toggleflag",false,function(state)
  if state then
    workspace.ChildAdded:connect(function(Dragger)
      if tostring(Dragger)=="Dragger"then
        local BodyGyro=Dragger:WaitForChild"BodyGyro";
        local BodyPosition=Dragger:WaitForChild"BodyPosition";
        repeat game:GetService"RunService".Stepped:wait()until workspace:FindFirstChild"Dragger";

        BodyPosition.P=120000;
        BodyPosition.D=1000;
        BodyPosition.maxForce=Vector3.new(1,1,1)*1000000;
        BodyGyro.maxTorque=Vector3.new(1,1,1)*200;
        BodyGyro.P=1200;
        BodyGyro.D=140;

      end
    end)
   else


    workspace.ChildAdded:connect(function(Dragger)
      if tostring(Dragger)=="Dragger"then
        local BodyGyro=Dragger:WaitForChild"BodyGyro";
        local BodyPosition=Dragger:WaitForChild"BodyPosition";
        repeat game:GetService"RunService".Stepped:wait()until workspace:FindFirstChild"Dragger";


        BodyPosition.P=10000;
        BodyPosition.D=800;
        BodyPosition.maxForce=Vector3.new(17000,17000,17000);
        BodyGyro.maxTorque=Vector3.new(200,200,200);
        BodyGyro.P=1200;
        BodyGyro.D=140;
      end;
    end)

  end
end)
Section5:Toggle("传送木头","Toggleflag",false,function(state)
if state then
  bai.away = true
  while wait() do
    if bai.away == true then
      local oldPosition = lp.Character.HumanoidRootPart.Position

      for _, Log in pairs(game.Workspace.LogModels:GetChildren()) do
        if Log.Name:sub(1, 6) == "Loose_" and Log:findFirstChild("Owner") then
          if Log.Owner.Value == game.Players.LocalPlayer then


              Log:MoveTo(oldPosition)

            
          end
        end
      end
    end
  end
 else
bai.away = false
end     end)

    Section5:Dropdown("选择树","Dropdown",{"普通树","曲奇树","卡通树","幻影树","砖头木","生命树","玻璃冰木","红颜树", "石头木","沼泽黄金", "樱花", "蓝木", "冰木", "火山木", "橡木", "巧克力木", "白桦木", "黄金木", "雪地松", "僵尸木", "大巧克力树", "椰子树","南瓜木","幽灵木","大理石木","天堂木","虚拟木","玻璃木","糖果树","积木树","发光红色糖果木","彩虹树","雷电木","岩浆树","紫木","下水道木","辐射木","地狱木","沙滩木","白洋木","发光彩虹木","布料木","裂纹木","幽灵食尸者","金子木","生锈木","蓝色火焰木","星空木","火焰木","星星木","雪木","死木"},function(b)
      if b=="普通树"then
        bai.cuttreeselect="Generic"
       elseif b=="沼泽黄金"then
        bai.cuttreeselect="GoldSwampy"
       elseif b=="樱花"then
        bai.cuttreeselect="Cherry"
       elseif b=="蓝木"then
        bai.cuttreeselect="CaveCrawler"
       elseif b=="冰木"then
        bai.cuttreeselect="Frost"
       elseif b=="火山木"then
        bai.cuttreeselect="Volcano"
       elseif b=="橡木"then
        bai.cuttreeselect="Oak"
       elseif b=="巧克力木"then
        bai.cuttreeselect="Walnut"
       elseif b=="白桦木"then
        bai.cuttreeselect="Birch"
       elseif b=="黄金木"then
        bai.cuttreeselect="SnowGlow"
       elseif b=="雪地松"then
        bai.cuttreeselect="Pine"
       elseif b=="僵尸木"then
        bai.cuttreeselect="GreenSwampy"
       elseif b=="大巧克力树"then
        bai.cuttreeselect="Koa"
       elseif b=="椰子树"then
        bai.cuttreeselect="Palm"
       elseif b=="幽灵木"then
        bai.cuttreeselect="Spooky"
       elseif b=="南瓜木"then
        bai.cuttreeselect="SpookyNeon"
       elseif b=="大理石木"then
        bai.cuttreeselect="Marble"
       elseif b=="天堂木"then
        bai.cuttreeselect="Sky"
       elseif b=="虚拟木"then
        bai.cuttreeselect="Virtual"
       elseif b=="玻璃木"then
        bai.cuttreeselect="Taco"
       elseif b=="糖果树"then
        bai.cuttreeselect="CandycaneGreen"
       elseif b=="积木树"then
        bai.cuttreeselect="CandycaneRed"
       elseif b=="发光红色糖果木"then
        bai.cuttreeselect="CandyNeon"
       elseif b=="彩虹树"then
        bai.cuttreeselect="Rainbow"
       elseif b=="雷电木"then
        bai.cuttreeselect="Electric"
       elseif b=="岩浆树"then
        bai.cuttreeselect="Skittles"
       elseif b=="紫木"then
        bai.cuttreeselect="Cavern"
       elseif b=="下水道木"then
        bai.cuttreeselect="MuckySewer"
       elseif b=="辐射木"then
        bai.cuttreeselect="Radioactive"
       elseif b=="地狱木"then
        bai.cuttreeselect="Hell"
       elseif b=="沙滩木"then
        bai.cuttreeselect="Sand"
       elseif b=="白洋木"then
        bai.cuttreeselect="Aspen"
       elseif b=="发光彩虹木"then
        bai.cuttreeselect="NeonRainbow"
       elseif b=="布料木"then
        bai.cuttreeselect="Dog"
       elseif b=="幻影树"then
        bai.cuttreeselect="LoneCave"
       elseif b=="红颜树"then
        bai.cuttreeselect="Shine"
       elseif b=="石头木"then
        bai.cuttreeselect="Magma"
       elseif b=="玻璃冰木"then
        bai.cuttreeselect="Ice"
       elseif b=="砖头木"then
        bai.cuttreeselect="Blah"
       elseif b=="卡通树"then
        bai.cuttreeselect="CobbleStone"
       elseif b=="曲奇树"then
        bai.cuttreeselect="Cookie"
       elseif b=="生命树"then
        bai.cuttreeselect="GreatOak"
       elseif b=="裂纹木"then
        bai.cuttreeselect="Celestial"
       elseif b=="幽灵食尸者"then
        bai.cuttreeselect="SpookyGhoul"
       elseif b=="生锈木"then
        bai.cuttreeselect="SewageTree"
       elseif b=="金子木"then
        bai.cuttreeselect="Gold"
       elseif b=="蓝色火焰木"then
        bai.cuttreeselect="BlueFlame"
       elseif b=="星空木"then
        bai.cuttreeselect="Spirit"
       elseif b=="火焰木"then
        bai.cuttreeselect="Flame"
       elseif b=="星星木"then
        bai.cuttreeselect="Star"
       elseif b=="雪木"then
        bai.cuttreeselect="Snow"

      end
    end)
    Section5:Textbox("带来树的数量","TextBoxfalg","输入数字",function(txt)
      bai.bringamount=txt
    end)
    Section5:Button("带来树", function()
      bai.bringtree=true
      for i=1 , bai.bringamount do
        if bai.bringtree==true then
          task.wait()
          bringTree(bai.cuttreeselect)
        end

      end


    end)
    Section5:Button("停止", function()
      bai.bringtree=false
      workspace.Camera.CameraSubject = lp.Character
    end)
    Section5:Button("处理树", function()
      modwood()
    end)
    Sectionhuanjin:Toggle("一直白天","Toggleflag",false, function(state)
      if state then
        bai.awaysday=true
        while task.wait() do
          if bai.awaysday==true then
            game:GetService("Lighting").TimeOfDay=("12:00:00");
          end
        end
       else bai.awaysday=false
      end

    end)
    Sectionhuanjin:Toggle("一直黑天","Toggleflag",false, function(state)
      if state then
        bai.awaysdnight=true
        while task.wait() do
          if bai.awaysdnight==true then
            game:GetService("Lighting").TimeOfDay=("2:00:00");
          end
        end
       else
        bai.awaysdnight=false
      end
    end)
    game:GetService("Lighting").GlobalShadows =true
    Sectionhuanjin:Toggle("去掉阴影","Toggleflag",false, function(state)


      if state then
        game:GetService("Lighting").GlobalShadows=false
       else
        game:GetService("Lighting").GlobalShadows=true
      end

    end)
    Sectionhuanjin:Button("删除灵视神殿的石头", function()
      workspace.Region_Mountainside.BoulderRegen.Boulder:Destroy()
      workspace.Region_Mountainside.Door.Door:Destroy()

    end)

    Sectionhuanjin:Button("删除灵视神殿的石头", function()
      workspace.Camera.CameraSubject = lp.Character
    end)

    Sectionhuanjin:Toggle("删除岩浆","Toggleflag",false,function(state)
      for i,v in pairs(game.Workspace.Region_Volcano:GetDescendants()) do
        if v.Name == "TouchInterest" then
          v:Destroy()
         elseif v.Name == "Lava" then
          for n,k in pairs(v:GetChildren()) do
            if k:IsA("Part") then
              if state == true then
                k.Transparency = 1
               else
                k.Transparency = 0
              end
            end
          end
        end
      end
    end)
    Sectionhuanjin:Toggle("删除水","Toggleflag",false,function(state)
      for _,v in pairs(game.Workspace.Water:GetChildren()) do
        if v.Name == "Water" then
          if state then
            v.Transparency = 1;
           else
            v.Transparency = 0;
          end
        end
      end
    end)

    Sectionhuanjin:Toggle("去除雾","Toggleflag",false, function(state)
      if state then
        bai.nofog=true
        while task.wait() do
          if bai.nofog==true then
            game:GetService("Lighting").FogEnd=1000000;
          end
        end
       else bai.nofog=false
      end
    end)
    Sectionhuanjin:Toggle("水上行走","Toggleflag",false, function(state)
      for i,v in next,game.workspace.Water:children()do
        if v.ClassName=="Part"then
          bai.waterwalk,v.CanCollide=state,state;
        end;
      end;
      for i,v in next,game:GetService("Workspace").Bridge.VerticalLiftBridge.WaterModel:children()do
        if v:IsA("BasePart")then
          v.CanCollide=state;
        end;
      end;


    end)
    Sectionhuanjin:Toggle("岩浆行走","Toggleflag",false, function(state)
      for i,v in next,game.workspace.Region_Volcano:children()do
        if v.ClassName=="Part"then
          bai.waterwalk,v.CanCollide=state,state;
        end;
      end;
      for i,v in next,game:GetService("Workspace").Bridge.VerticalLiftBridge.LavaModel:children()do
        if v:IsA("BasePart")then
          v.CanCollide=state;
        end;
      end;


    end)
end)

local about = UITab1:section("力量传奇",true)
about:Button("力量传奇",function()
local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

local function HeartbeatUpdate()
    LastIteration = tick()
    for Index = #FrameUpdateTable, 1, -1 do
        FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
    end
    FrameUpdateTable[1] = LastIteration
    local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
    CurrentFPS = CurrentFPS - CurrentFPS % 1
    FpsLabel.Text = ("时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S"))
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)
local ui = loadstring(game:HttpGet("https://github.com/gufan969/UI/blob/main/ui.lua"))(); 
local win = ui:new("搬运脚本中心")
local UITab1 = win:Tab("自动锻炼",'4483345998')

local about = UITab1:section("自动锻炼",true)

about:Toggle("自动比赛开关", "AR", false, function(AR)
  while AR do wait() wait(2) game:GetService("ReplicatedStorage").rEvents.brawlEvent:FireServer("joinBrawl") end
end)
about:Toggle("自动举哑铃", "ATYL", false, function(ATYL)
  local part = Instance.new('Part', workspace) part.Size = Vector3.new(500, 20, 530.1) part.Position = Vector3.new(0, 100000, 133.15) part.CanCollide = true part.Anchored = true local rs = game:GetService("RunService").RenderStepped while ATYL do wait() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame + Vector3.new(0, 50, 0) for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do if v.ClassName == "Tool" and v.Name == "Weight" then v.Parent = game.Players.LocalPlayer.Character end end game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep") end
end)
about:Toggle("自动俯卧撑", "ATFWC", false, function(ATFWC)
  local part = Instance.new('Part', workspace) part.Size = Vector3.new(500, 20, 530.1) part.Position = Vector3.new(0, 100000, 133.15) part.CanCollide = true part.Anchored = true local rs = game:GetService("RunService").RenderStepped while ATFWC do wait() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame + Vector3.new(0, 50, 0) for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do if v.ClassName == "Tool" and v.Name == "Pushups" then v.Parent = game.Players.LocalPlayer.Character end end game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep") end
end)
about:Toggle("自动仰卧起坐", "ATYWQZ", false, function(ATYWQZ)
  local part = Instance.new('Part', workspace) part.Size = Vector3.new(500, 20, 530.1) part.Position = Vector3.new(0, 100000, 133.15) part.CanCollide = true part.Anchored = true local rs = game:GetService("RunService").RenderStepped while ATYWQZ do wait() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame + Vector3.new(0, 50, 0) for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do if v.ClassName == "Tool" and v.Name == "Situps" then v.Parent = game.Players.LocalPlayer.Character end end end game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
end)
about:Toggle("自动倒立身体", "ATDL", false, function(ATDL)
  local part = Instance.new('Part', workspace) part.Size = Vector3.new(500, 20, 530.1) part.Position = Vector3.new(0, 100000, 133.15) part.CanCollide = true part.Anchored = true local rs = game:GetService("RunService").RenderStepped while ATDL do wait() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame + Vector3.new(0, 50, 0) for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do if v.ClassName == "Tool" and v.Name == "Handstands" then v.Parent = game.Players.LocalPlayer.Character end end end game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
end)
about:Toggle("自动锻炼", "ATAAA", false, function(ATAAA)
  local part = Instance.new('Part', workspace) part.Size = Vector3.new(500, 20, 530.1) part.Position = Vector3.new(0, 100000, 133.15) part.CanCollide = true part.Anchored = true while ATAAA do wait() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame + Vector3.new(0, 50, 0) for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do if v.ClassName == "Tool" and v.Name == "Handstands" or v.Name == "Situps" or v.Name == "Pushups" or v.Name == "Weight" then v:FindFirstChildOfClass("NumberValue").Value = 0 repeat wait() until game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool") game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v) game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep") end end end
end)

about:Toggle("自动重生", "ATRE", false, function(ATRE)
  while ATRE do wait() game:GetService("ReplicatedStorage").rEvents.rebirthRemote:InvokeServer("rebirthRequest") end
end)
about:Button("收集宝石", function()
  jk = {} for _, v in pairs(game:GetService("ReplicatedStorage").chestRewards:GetDescendants()) do if v.Name ~= "Light Karma Chest" or v.Name ~= "Evil Karma Chest" then table.insert(jk, v.Name) end end for i = 1, #jk do wait(2) game:GetService("ReplicatedStorage").rEvents.checkChestRemote:InvokeServer(jk[i]) end
end)

local UITab1 = win:Tab("自动跑步机",'4483345998')

local about = UITab1:section("自动跑步机",true)
about:Toggle("沙滩跑步机10", "PPJ10", false, function(PPJ10)
    getgenv().PPJ10 = PPJ10 while getgenv().PPJ10 do wait() game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = 10 game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(238.671112, 5.40315914, 387.713165, -0.0160072874, -2.90710176e-08, -0.99987185, -3.3434191e-09, 1, -2.90212157e-08, 0.99987185, 2.87843993e-09, -0.0160072874) local oldpos = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame local RunService = game:GetService("RunService") local Players = game:GetService("Players") local localPlayer = Players.LocalPlayer RunService:BindToRenderStep("move", Enum.RenderPriority.Character.Value + 1, function() if localPlayer.Character then local humanoid = localPlayer.Character:WaitForChild("Humanoid") if humanoid then humanoid:Move(Vector3.new(10000, 0, -1), true) end end end) end if not getgenv().PPJ10 then local RunService = game:GetService("RunService") local Players = game:GetService("Players") local localPlayer = Players.LocalPlayer RunService:UnbindFromRenderStep("move", Enum.RenderPriority.Character.Value + 1, function() if localPlayer.Character then local humanoid = localPlayer.Character:FindFirstChild("Humanoid") if humanoid then humanoid:Move(Vector3.new(10000, 0, -1), true) end end end) end
end)
about:Toggle("健身房跑步机2000", "PPJ2000", false, function(PPJ2000)
    if game.Players.LocalPlayer.Agility.Value >= 2000 then getgenv().PPJ2000 = PPJ2000 while getgenv().PPJ2000 do wait() game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = 10 game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-3005.37866, 14.3221855, -464.697876, -0.015773816, -1.38508964e-08, 0.999875605, -5.13225586e-08, 1, 1.30429667e-08, -0.999875605, -5.11104332e-08, -0.015773816) local oldpos = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame local RunService = game:GetService("RunService") local Players = game:GetService("Players") local localPlayer = Players.LocalPlayer RunService:BindToRenderStep("move", Enum.RenderPriority.Character.Value + 1, function() if localPlayer.Character then local humanoid = localPlayer.Character:WaitForChild("Humanoid") if humanoid then humanoid:Move(Vector3.new(10000, 0, -1), true) end end end) end end if not getgenv().PPJ2000 then local RunService = game:GetService("RunService") local Players = game:GetService("Players") local localPlayer = Players.LocalPlayer RunService:UnbindFromRenderStep("move", Enum.RenderPriority.Character.Value + 1, function() if localPlayer.Character then local humanoid = localPlayer.Character:FindFirstChild("Humanoid") if humanoid then humanoid:Move(Vector3.new(10000, 0, -1), true) end end end) end
end)
about:Toggle("神话健身房跑步机2000", "SHPPJ2000", false, function(SHPPJ2000)
    if game.Players.LocalPlayer.Agility.Value >= 2000 then getgenv().SHPPJ2000 = SHPPJ2000 while getgenv().SHPPJ2000 do wait() game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = 10 game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(2571.23706, 15.6896839, 898.650391, 0.999968231, 2.23868635e-09, -0.00797206629, -1.73198844e-09, 1, 6.35660768e-08, 0.00797206629, -6.3550246e-08, 0.999968231) local oldpos = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame local RunService = game:GetService("RunService") local Players = game:GetService("Players") local localPlayer = Players.LocalPlayer RunService:BindToRenderStep("move", Enum.RenderPriority.Character.Value + 1, function() if localPlayer.Character then local humanoid = localPlayer.Character:WaitForChild("Humanoid") if humanoid then humanoid:Move(Vector3.new(10000, 0, -1), true) end end end) end end if not getgenv().SHPPJ2000 then local RunService = game:GetService("RunService") local Players = game:GetService("Players") local localPlayer = Players.LocalPlayer RunService:UnbindFromRenderStep("move", Enum.RenderPriority.Character.Value + 1, function() if localPlayer.Character then local humanoid = localPlayer.Character:FindFirstChild("Humanoid") if humanoid then humanoid:Move(Vector3.new(10000, 0, -1), true) end end end) end
end)
about:Toggle("永恒健身房跑步机3500", "YHPPJ3500", false, function(YHPPJ3500)
    if game.Players.LocalPlayer.Agility.Value >= 3500 then getgenv().YHPPJ3500 = YHPPJ3500 while getgenv().YHPPJ3500 do wait() game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = 10 game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-7077.79102, 29.6702118, -1457.59961, -0.0322036594, -3.31122768e-10, 0.99948132, -6.44344267e-09, 1, 1.23684493e-10, -0.99948132, -6.43611742e-09, -0.0322036594) local oldpos = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame local RunService = game:GetService("RunService") local Players = game:GetService("Players") local localPlayer = Players.LocalPlayer RunService:BindToRenderStep("move", Enum.RenderPriority.Character.Value + 1, function() if localPlayer.Character then local humanoid = localPlayer.Character:WaitForChild("Humanoid") if humanoid then humanoid:Move(Vector3.new(10000, 0, -1), true) end end end) end end if not getgenv().YHPPJ3500 then local RunService = game:GetService("RunService") local Players = game:GetService("Players") local localPlayer = Players.LocalPlayer RunService:UnbindFromRenderStep("move", Enum.RenderPriority.Character.Value + 1, function() if localPlayer.Character then local humanoid = localPlayer.Character:FindFirstChild("Humanoid") if humanoid then humanoid:Move(Vector3.new(10000, 0, -1), true) end end end) end
end)
about:Toggle("传奇健身房跑步机3000", "CQPPJ3000", false, function(CQPPJ3000)
    if game.Players.LocalPlayer.Agility.Value >= 3000 then getgenv().CQPPJ3000 = CQPPJ3000 while getgenv().CQPPJ3000 do wait() game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = 10 game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(4370.82812, 999.358704, -3621.42773, -0.960604727, -8.41949266e-09, -0.27791819, -6.12478646e-09, 1, -9.12496567e-09, 0.27791819, -7.06329528e-09, -0.960604727) local oldpos = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame local RunService = game:GetService("RunService") local Players = game:GetService("Players") local localPlayer = Players.LocalPlayer RunService:BindToRenderStep("move", Enum.RenderPriority.Character.Value + 1, function() if localPlayer.Character then local humanoid = localPlayer.Character:WaitForChild("Humanoid") if humanoid then humanoid:Move(Vector3.new(10000, 0, -1), true) end end end) end end if not getgenv().CQPPJ3000 then local RunService = game:GetService("RunService") local Players = game:GetService("Players") local localPlayer = Players.LocalPlayer RunService:UnbindFromRenderStep("move", Enum.RenderPriority.Character.Value + 1, function() if localPlayer.Character then local humanoid = localPlayer.Character:FindFirstChild("Humanoid") if humanoid then humanoid:Move(Vector3.new(10000, 0, -1), true) end end end) end
end)

local UITab1 = win:Tab("自动打石头",'4483345998')

local about = UITab1:section("自动打石头",true)
about:Toggle("石头0", "RK0", false, function(RK0)
    getgenv().RK0 = RK0 while getgenv().RK0 do wait() for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do if v:IsA("Tool") and v.Name == "Punch" then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v) end end for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do if h:IsA("Tool") and h.Name == "Punch" then h:Activate() end end game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(7.60643005, 4.02632904, 2104.54004, -0.23040159, -8.53662385e-08, -0.973095655, -4.68743764e-08, 1, -7.66279342e-08, 0.973095655, 2.79580536e-08, -0.23040159) end if not getgenv().RK0 then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools() end
end)
about:Toggle("石头10", "RK10", false, function(RK10)
    if game.Players.LocalPlayer.Durability.Value >= 10 then getgenv().RK10 = RK10 while getgenv().RK10 do wait() for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do if v:IsA("Tool") and v.Name == "Punch" then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v) end end for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do if h:IsA("Tool") and h.Name == "Punch" then h:Activate() end end game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-157.680908, 3.72453046, 434.871185, 0.923298299, -1.81774684e-09, -0.384083599, 3.45247031e-09, 1, 3.56670582e-09, 0.384083599, -4.61917082e-09, 0.923298299) end if not getgenv().RK10 then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools() end end
end)
about:Toggle("石头100", "RK100", false, function(RK100)
    if game.Players.LocalPlayer.Durability.Value >= 100 then getgenv().RK100 = RK100 while getgenv().RK100 do wait() for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do if v:IsA("Tool") and v.Name == "Punch" then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v) end end for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do if h:IsA("Tool") and h.Name == "Punch" then h:Activate() end end game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(162.233673, 3.66615629, -164.686783, -0.921312928, -1.80826774e-07, -0.38882193, -9.13036544e-08, 1, -2.48719346e-07, 0.38882193, -1.93647494e-07, -0.921312928) end if not getgenv().RK100 then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools() end end
end)
about:Toggle("石头5000", "RK5000", false, function(RK5000)
    if game.Players.LocalPlayer.Durability.Value >= 5000 then getgenv().RK5000 = RK5000 while getgenv().RK5000 do wait() for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do if v:IsA("Tool") and v.Name == "Punch" then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v) end end for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do if h:IsA("Tool") and h.Name == "Punch" then h:Activate() end end game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(329.831482, 3.66450214, -618.48407, -0.806075394, -8.67358096e-08, 0.591812849, -1.05715522e-07, 1, 2.57029176e-09, -0.591812849, -6.04919563e-08, -0.806075394) end if not getgenv().RK5000 then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools() end end
end)
about:Toggle("石头150000", "RK150000", false, function(RK150000)
    if game.Players.LocalPlayer.Durability.Value >= 150000 then getgenv().RK150000 = RK150000 while getgenv().RK150000 do wait() for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do if v:IsA("Tool") and v.Name == "Punch" then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v) end end for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do if h:IsA("Tool") and h.Name == "Punch" then h:Activate() end end game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-2566.78076, 3.97019577, -277.503235, -0.923934579, -4.11600105e-08, -0.382550538, -3.38838042e-08, 1, -2.57576183e-08, 0.382550538, -1.08360858e-08, -0.923934579) end if not getgenv().RK150000 then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools() end end
end)
about:Toggle("石头400000", "RK400000", false, function(RK400000)
    if game.Players.LocalPlayer.Durability.Value >= 400000 then getgenv().RK400000 = RK400000 while getgenv().RK400000 do wait() for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do if v:IsA("Tool") and v.Name == "Punch" then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v) end end for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do if h:IsA("Tool") and h.Name == "Punch" then h:Activate() end end game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(2155.61743, 3.79830337, 1227.06482, -0.551303148, -9.16796949e-09, -0.834304988, -5.61318245e-08, 1, 2.61027839e-08, 0.834304988, 6.12216127e-08, -0.551303148) end if not getgenv().RK400000 then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools() end end
end)
about:Toggle("石头750000", "RK750000", false, function(RK750000)
    if game.Players.LocalPlayer.Durability.Value >= 750000 then getgenv().RK750000 = RK750000 while getgenv().RK750000 do wait() for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do if v:IsA("Tool") and v.Name == "Punch" then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v) end end for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do if h:IsA("Tool") and h.Name == "Punch" then h:Activate() end end game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-7285.6499, 3.66624784, -1228.27417, 0.857643783, -1.58175091e-08, -0.514244199, -1.22581563e-08, 1, -5.12025977e-08, 0.514244199, 5.02172774e-08, 0.857643783) end if not getgenv().RK750000 then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools() end end
end)
about:Toggle("石头100万", "RK1M", false, function(RK1M)
    if game.Players.LocalPlayer.Durability.Value >= 1000000 then getgenv().RK1M = RK1M while getgenv().RK1M do wait() for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do if v:IsA("Tool") and v.Name == "Punch" then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v) end end for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do if h:IsA("Tool") and h.Name == "Punch" then h:Activate() end end game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(4160.87109, 987.829102, -4136.64502, -0.893115997, 1.25481356e-05, 0.44982639, 5.02490684e-06, 1, -1.79187136e-05, -0.44982639, -1.37431543e-05, -0.893115997) end if not getgenv().RK1M then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools() end end
end)
about:Toggle("石头500万", "RK5M", false, function(RK5M)
    if game.Players.LocalPlayer.Durability.Value >= 5000000 then getgenv().RK5M = RK5M while getgenv().RK5M do wait() for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do if v:IsA("Tool") and v.Name == "Punch" then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v) end end for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do if h:IsA("Tool") and h.Name == "Punch" then h:Activate() end end game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-8965.54395, 5.53625107, -6126.90186, -0.803919137, 6.6065212e-08, 0.594738603, -8.93136143e-09, 1, -1.23155459e-07, -0.594738603, -1.04318865e-07, -0.803919137) end if not getgenv().RK5M then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools() end end
end)
about:Toggle("石头500万（位置不一样）", "RK5M", false, function(RK5M)
    if game.Players.LocalPlayer.Durability.Value >= 5000000 then getgenv().RK5M = RK5M while getgenv().RK5M do wait() for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do if v:IsA("Tool") and v.Name == "Punch" then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v) end end for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do if h:IsA("Tool") and h.Name == "Punch" then h:Activate() end end game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-8968.9072265625, 5.723907470703125, -6123.99951171875) end if not getgenv().RK5M then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools() end end
end)
about:Toggle("挥拳无间隔", "RK5M", false, function(RK5M)
		noCD = Value
		if noCD then
			game:GetService("Players").LocalPlayer.Backpack.Punch:FindFirstChildOfClass("NumberValue").Value = 0
		else
			game:GetService("Players").LocalPlayer.Backpack.Punch:FindFirstChildOfClass("NumberValue").Value = punchCooldown
		end
		end)
		
local UITab1 = win:Tab("自动深蹲架",'4483345998')

local about = UITab1:section("深蹲架",true)
about:Toggle("蹲式沙滩", "text",false,function(rack)
    if game.Players.LocalPlayer.leaderstats.Strength.Value >= 1000 then
getgenv().spam = rack
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(232.627625, 3.67689133, 96.3039856, -0.963445187, -7.78685845e-08, -0.267905563, -7.92865222e-08, 1, -5.52570167e-09, 0.267905563, 1.5917589e-08, -0.963445187)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder["Squat Rack"].interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)

about:Toggle("深蹲架霜冻健身房", "text",false,function(rack)
    if game.Players.LocalPlayer.leaderstats.Strength.Value >= 4000 then
getgenv().spam = rack
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-2629.13818, 3.36860609, -609.827454, -0.995664716, -2.67296816e-08, -0.0930150598, -1.90042453e-08, 1, -8.39415222e-08, 0.0930150598, -8.18099295e-08, -0.995664716)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder["Squat Rack"].interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)

about:Toggle("深蹲架传奇健身房", "text",false,function(rack)
    getgenv().spam = rack
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(4443.04443, 987.521484, -4061.12988, 0.83309716, 3.33018835e-09, 0.553126693, -2.87759438e-09, 1, -1.68654424e-09, -0.553126693, -1.86619012e-10, 0.83309716)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder["Squat Rack"].interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)

about:Toggle("深蹲架肌肉健身房", "text",false,function(rack)
    getgenv().spam = rack
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-8757.37012, 13.2186356, -6051.24365, -0.902269304, 1.63610299e-08, -0.431172907, 1.71076486e-08, 1, 2.14606288e-09, 0.431172907, -5.44002754e-09, -0.902269304)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder["Squat Rack"].interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)

local UITab1 = win:Tab("自动引体向上",'4483345998')

local about = UITab1:section("引体向上",true)
about:Toggle("引体向上沙滩", "text",false,function(rack)
    if game.Players.LocalPlayer.leaderstats.Strength.Value >= 1000 then
getgenv().spam = pull
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-185.157745, 5.81071186, 104.747154, 0.227061391, -8.2363325e-09, 0.97388047, 5.58502826e-08, 1, -4.56432803e-09, -0.97388047, 5.54278827e-08, 0.227061391)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder["Legends Pullup"].interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)
about:Toggle("引体向上神话健身房","text",false,function(rack)
    if game.Players.LocalPlayer.leaderstats.Strength.Value >= 4000 then
getgenv().spam = pull
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(2315.82104, 5.81071281, 847.153076, 0.993555248, 6.99809632e-08, 0.113349125, -7.05298859e-08, 1, 8.32554692e-10, -0.113349125, -8.82168916e-09, 0.993555248)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder["Legends Pullup"].interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)
about:Toggle("引体向上传奇健身房","text",false,function(rack)
    getgenv().spam = pull
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(4305.08203, 989.963623, -4118.44873, -0.953815758, -7.58000382e-08, -0.30039227, -8.98859724e-08, 1, 3.30721512e-08, 0.30039227, 5.85457904e-08, -0.953815758)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder["Legends Pullup"].interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)

local UITab1 = win:Tab("自动卧推",'4483345998')

local about = UITab1:section("卧推",true)
about:Toggle("卧推沙滩","text",false,function(rack)
    if game.Players.LocalPlayer.leaderstats.Strength.Value >= 150 then
getgenv().spam = bench
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-241.827469, 7.91391563, 346.321808, 0.811665356, -1.43794319e-08, -0.584122717, -3.94010407e-08, 1, -7.93666999e-08, 0.584122717, 8.74342447e-08, 0.811665356)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder["Bench Press"].interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)
about:Toggle("卧推冰霜健身房","text",false,function(rack)
    if game.Players.LocalPlayer.leaderstats.Strength.Value >= 7500 then
getgenv().spam = bench
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-3020.7019, 32.5691414, -194.773117, 0.924556971, 2.05821564e-08, 0.381043822, -3.5507064e-08, 1, 3.21384199e-08, -0.381043822, -4.32435456e-08, 0.924556971)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder["Bench Press"].interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)
about:Toggle("卧推神话健身房","text",false,function(rack)
    if game.Players.LocalPlayer.leaderstats.Strength.Value >= 15000 then
getgenv().spam = bench
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(2363.95483, 42.2141037, 1243.50562, -0.944882751, 2.18911698e-08, 0.32740894, 4.06544087e-09, 1, -5.51292381e-08, -0.32740894, -5.07596027e-08, -0.944882751)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder["Bench Press"].interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)
about:Toggle("卧推永恒健身房","text",false,function(rack)
    if game.Players.LocalPlayer.leaderstats.Strength.Value >= 15000 then
getgenv().spam = bench
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-7172.77002, 48.3923645, -1105.06018, -0.972435296, -4.87620122e-09, 0.233172983, -2.76572942e-09, 1, 9.37805122e-09, -0.233172983, 8.47465476e-09, -0.972435296)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder["Bench Press"].interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)
about:Toggle("卧推传奇健身房","text",false,function(rack)
    getgenv().spam = bench
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(4109.81152, 1024.02734, -3800.75122, 0.446250677, -7.44993258e-08, -0.894908011, -1.94296179e-09, 1, -8.4216893e-08, 0.894908011, 3.93206179e-08, 0.446250677)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder["Bench Press"].interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)
about:Toggle("卧推肌肉之王健身房","text",false,function(rack)
    getgenv().spam = bench
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-8592.99805, 49.1056519, -6042.80322, -0.975815654, -1.70261014e-08, 0.218595073, -1.06326148e-08, 1, 3.04244203e-08, -0.218595073, 2.73643881e-08, -0.975815654)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder["Bench Press"].interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)

local UITab1 = win:Tab("自动丢石头",'4483345998')

local about = UITab1:section("丢石头",true)
about:Toggle("丢石头沙滩","text",false,function(rack)
    if game.Players.LocalPlayer.leaderstats.Strength.Value >= 3000 then
getgenv().spam = lift
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-91.6730804, 3.67689133, -292.42868, -0.221022144, -2.21041621e-08, -0.975268781, 1.21414407e-08, 1, -2.54162646e-08, 0.975268781, -1.7458726e-08, -0.221022144)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder.Deadlift.interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)
about:Toggle("丢石头神话健身房","text",false,function(rack)
    if game.Players.LocalPlayer.leaderstats.Strength.Value >= 10000 then
getgenv().spam = lift
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(2486.01733, 3.67689276, 1237.89331, 0.883595645, -2.06135038e-08, -0.468250751, -3.3286871e-09, 1, -5.03036404e-08, 0.468250751, 4.60067362e-08, 0.883595645)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder.Deadlift.interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)
about:Toggle("丢石头传奇健身房","text",false,function(rack)
    getgenv().spam = lift
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(4189.96143, 987.829773, -3903.0166, 0.422592968, 0, 0.906319559, 0, 1, 0, -0.906319559, 0, 0.422592968)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder.Deadlift.interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)
about:Toggle("丢石头肌肉之王健身房","text",false,function(rack)
    getgenv().spam = lift
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(8933.69434, 13.5269222, -5700.12598, -0.823058188, 6.96304259e-09, 0.567957044, -1.19721832e-08, 1, -2.96093621e-08, -0.567957044, -3.11699146e-08, -0.823058188)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder.Deadlift.interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)

local UITab1 = win:Tab("传送",'4483345998')

local about = UITab1:section("传送",true)
about:Button("传送到出生点",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(7, 3, 108)
end)

about:Button("传送到安全岛",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-39, 10, 1838)
end)

about:Button("传送到幸运抽奖区域😏😏😏",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2606, -2, 5753)
end)

about:Button("传送到肌肉之王健身房",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8554, 22, -5642)
end)

about:Button("传送到传说健身房",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4676, 997, -3915)
end)

about:Button("传送到永恒健身房",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6686, 13, -1284)
end)

about:Button("传送到神话健身房",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2177, 13, 1070)
end)

about:Button("传送到冰霜健身房",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2543, 13, -410)
end)

local UITab1 = win:Tab("其他脚本",'4483345998')

local about = UITab1:section("要加群组",true)

about:Button("剑客v5",function()
Sword_Guest_VI = "剑客V6"
Sword_Guest__VI = "作者 初夏"
Sword_Guest___VI = "剑客QQ群 155160100"

loadstring(game:HttpGet("https://raw.githubusercontent.com/JianKeCX/GS/refs/heads/main/VI"))()
end)
about:Button("安脚本",function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/wucan114514/gegeyxjb/refs/heads/main/%E5%AE%89%E8%84%9A%E6%9C%AC.lua')))()
end)
end)
