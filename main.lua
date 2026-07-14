local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/jadpy/suki/refs/heads/main/orion"))()
local Window = OrionLib:MakeWindow({Name = "てらHub v1.0", HidePremium = false, SaveConfig = true, ConfigFolder = "TeraHubConfig"})

-- メメインタブ
local MainTab = Window:MakeTab({
	Name = "メイン機能",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

-- セクション
MainTab:AddSection({
	Name = "プレイヤー強化"
})

-- スピード変更スライダー
MainTab:AddSlider({
	Name = "移動速度 (WalkSpeed)",
	Min = 16,
	Max = 500,
	Default = 16,
	Color = Color3.fromRGB(85, 255, 127),
	Increment = 1,
	ValueName = "Speed",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})

-- ジャンプ力変更スライダー
MainTab:AddSlider({
	Name = "ジャンプ力 (JumpPower)",
	Min = 50,
	Max = 1000,
	Default = 50,
	Color = Color3.fromRGB(85, 170, 255),
	Increment = 1,
	ValueName = "Power",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end    
})

-- 通知を出す（起動成功メッセージ）
OrionLib:MakeNotification({
	Name = "てらHub 起動成功！",
	Content = "楽しんでいってね！",
	Image = "rbxassetid://4483345998",
	Time = 5
})

OrionLib:Init()
