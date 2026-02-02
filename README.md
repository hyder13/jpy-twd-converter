# 日圓轉台幣 - JPY to TWD Converter

一個簡潔的即時匯率換算 PWA 應用。

## 功能

- 💱 即時日圓轉台幣匯率換算
- 🔄 自動抓取最新匯率（每 30 分鐘更新）
- 📱 PWA 支援，可安裝到主畫面
- ⚡ 快速按鈕（常用金額一鍵輸入）
- 🎨 美觀的漸層設計

## 部署到 Railway

### 方式一：GitHub + Railway（推薦）

1. 在 GitHub 建立新 Repository
2. 上傳這些檔案：
   - `index.html`
   - `manifest.json`
   - `railway.json`
3. 登入 [Railway](https://railway.app)
4. 點擊 **New Project** → **Deploy from GitHub repo**
5. 選擇你的 Repository，直接部署

### 方式二：Railway CLI

```bash
# 安裝 Railway CLI
npm install -g @railway/cli

# 登入
railway login

# 初始化專案
cd jpy-twd-converter
railway init

# 部署
railway up
```

### 方式三：直接上傳（最快）

1. 登入 [Railway](https://railway.app)
2. 點擊 **New Project** → **Empty Project**
3. 點擊 **+ New** → **Upload**
4. 選擇這個資料夾的所有檔案上傳
5. 自動部署完成！

## 安裝到手機主畫面

### iOS (Safari)
1. 開啟網站
2. 點擊分享按鈕 ⬆️
3. 選擇「加入主畫面」
4. 點擊「加入」

### Android (Chrome)
1. 開啟網站
2. 點擊右上角選單 ⋮
3. 選擇「安裝應用程式」或「加到主畫面」

## 自定義匯率

預設使用 exchangerate-api.com 的免費 API。如需使用自己的 API：

編輯 `index.html` 中的 `loadExchangeRate()` 函數。

## 技術棧

- HTML5 / CSS3 / Vanilla JavaScript
- PWA (Progressive Web App)
- exchangerate-api.com (匯率資料)

## License

MIT
