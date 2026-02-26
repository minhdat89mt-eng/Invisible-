-- [[ INVISIBLE FE SCRIPT - PRO VERSION ]] --
local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character
local Root = Character:WaitForChild("HumanoidRootPart")

-- 1. Lưu lại vị trí cũ để làm điểm neo
local Pos = Root.CFrame

-- 2. Tạo một thông báo nhỏ (Chỉ mình bạn thấy)
print("Đang kích hoạt tàng hình FE... Đợi xíu nhé!")

-- 3. CƠ CHẾ CHÍNH: Phá hủy khớp nối (Joints)
-- Việc này làm Server tưởng rằng bạn không còn tồn tại nguyên vẹn
if Character:FindFirstChild("LowerTorso") then
    Character.LowerTorso:RootJoint():Destroy() -- Cho R15
elseif Character:FindFirstChild("Torso") then
    Character.Torso:FindFirstChild("Root Joint"):Destroy() -- Cho R6
end

-- 4. Làm mờ nhân vật của bạn (Bạn thấy 70%, người ta thấy 0%)
for _, v in pairs(Character:GetDescendants()) do
    if v:IsA("BasePart") or v:IsA("Decal") then
        v.Transparency = 0.5
    end
end

-- 5. Xóa Nametag (Tên trên đầu)
local function hideName()
    for _, v in pairs(Character:GetDescendants()) do
        if v:IsA("BillboardGui") or v:IsA("ForceField") then
            v:Destroy()
        end
    end
end
hideName()

-- 6. Giữ cho nhân vật không bị chết (Reset) khi phá khớp nối
Character.Humanoid.Name = "InvisHumanoid" 

print("Kích hoạt THÀNH CÔNG! Bạn đã tàng hình với Server.")
