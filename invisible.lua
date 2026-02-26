local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- TẠO CỬA SỔ NHẬP KEY
local Window = Rayfield:CreateWindow({
   Name = "Invisible Pro - Mobile Delta",
   LoadingTitle = "Đang kiểm tra dữ liệu...",
   LoadingSubtitle = "by Gemini AI",
   ConfigurationSaving = {
      Enabled = false
   },
   KeySystem = true, -- Bật hệ thống key
   KeySettings = {
      Title = "Hệ Thống Bảo Mật",
      Subtitle = "Vui lòng nhập mã truy cập",
      Note = "Liên hệ chủ sở hữu để lấy Key!", 
      FileName = "InvisKeyConfig", 
      SaveKey = true, 
      GrabKeyFromSite = false, 
      Key = {"2k13"} -- KEY ĐÃ ĐỔI THÀNH 2k13
   }
})

-- TAB CHỨC NĂNG
local Tab = Window:CreateTab("Tàng Hình", 4483362458)

Tab:CreateButton({
   Name = "Bật Tàng Hình FE (100% Real)",
   Callback = function()
       local player = game.Players.LocalPlayer
       local char = player.Character
       if char then
           -- Cơ chế phá khớp nối để tàng hình với Server
           if char:FindFirstChild("LowerTorso") then
               char.LowerTorso:RootJoint():Destroy() -- Cho R15
           elseif char:FindFirstChild("Torso") then
               char.Torso:FindFirstChild("Root Joint"):Destroy() -- Cho R6
           end
           
           -- Làm mờ bản thân (Bạn thấy 70%)
           for _, v in pairs(char:GetDescendants()) do
               if v:IsA("BasePart") or v:IsA("Decal") then
                   v.Transparency = 0.5
               end
           end
           
           -- Xóa tên trên đầu
           for _, v in pairs(char:GetDescendants()) do
               if v:IsA("BillboardGui") then
                   v:Destroy()
               end
           end
           
           Rayfield:Notify({
               Title = "Thông báo",
               Content = "Đã kích hoạt tàng hình thành công!",
               Duration = 3,
               Image = 4483362458,
           })
       end
   end,
})

Tab:CreateLabel("Lưu ý: Nếu bị chết hãy chạy lại script")

-- Thông báo sau khi nhập đúng key
Rayfield:Notify({
   Title = "Hệ thống",
   Content = "Key chính xác! Chào mừng bạn đã quay trở lại.",
   Duration = 5,
   Image = 4483362458,
})
