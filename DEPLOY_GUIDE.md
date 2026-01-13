# 🚀 发布指南

## 快速发布步骤

### 1️⃣ 在 GitHub 创建仓库

1. 访问 https://github.com/new
2. 仓库名称：`china_cost_cal`
3. 选择 `Public`（GitHub Pages 免费版需要公开）
4. **不要**勾选 "Initialize this repository with a README"
5. 点击 `Create repository`

### 2️⃣ 执行部署脚本

在终端中执行：

```bash
cd /Users/yanbin/Desktop/cost_calc/china_cost_cal_repo
./deploy.sh
```

或者手动执行：

```bash
cd /Users/yanbin/Desktop/cost_calc/china_cost_cal_repo

# 初始化 git（如果还没有）
git init

# 添加文件
git add .

# 提交
git commit -m "Initial commit: 中国城市生活成本与薪资购买力计算器"

# 添加远程仓库
git remote add origin https://github.com/yanbigong2/china_cost_cal.git

# 推送
git branch -M main
git push -u origin main
```

### 3️⃣ 启用 GitHub Pages

1. 访问：https://github.com/yanbigong2/china_cost_cal
2. 点击 `Settings`（设置）
3. 左侧菜单找到 `Pages`
4. 在 `Source` 下选择：
   - Branch: `main`
   - Folder: `/ (root)`
5. 点击 `Save`
6. 等待 2-3 分钟，GitHub 会显示你的网站地址：
   ```
   https://yanbigong2.github.io/china_cost_cal/
   ```

## ✅ 完成！

发布成功后，你可以：
- 🌐 通过网页访问：https://yanbigong2.github.io/china_cost_cal/
- 📱 在微信中打开链接使用
- 🔗 分享给朋友使用

## 🔄 更新项目

修改代码后，执行：

```bash
cd /Users/yanbin/Desktop/cost_calc/china_cost_cal_repo
git add .
git commit -m "更新说明"
git push
```

GitHub Pages 会自动更新（可能需要几分钟）。

## 🐛 故障排除

### 推送失败

如果提示 "repository not found"：
- 确保已在 GitHub 创建了 `china_cost_cal` 仓库
- 确保仓库名称拼写正确
- 确保仓库是 Public

### GitHub Pages 显示 404

- 确保仓库是 `Public`
- 确保 `index.html` 在根目录
- 等待 5-10 分钟让 GitHub 完成部署

### 需要认证

如果提示需要登录：
```bash
# 使用 GitHub CLI（如果已安装）
gh auth login

# 或使用 Personal Access Token
git remote set-url origin https://YOUR_TOKEN@github.com/yanbigong2/china_cost_cal.git
```
