# 贡献指南

感谢你的兴趣！🎉

## 如何贡献

### 报告 Bug

1. 搜索 [Issues](https://github.com/mangiapanejohn-dev/marcstar/issues) 是否已存在
2. 如果没有，创建新 Issue，包含：
   - 复现步骤
   - 预期行为
   - 实际行为
   - macOS 版本

### 添加功能

1. Fork 项目
2. 创建分支：`git checkout -b feature/your-feature`
3. 开发
4. 确保编译通过：`xcodebuild -project MarcBrowser.xcodeproj -scheme MarcBrowser build`
5. 提交并推送
6. 创建 Pull Request

### 代码风格

- 使用 Swift 官方格式
- 4空格缩进
- 驼峰命名
- 添加有意义的注释

## 开发环境

```bash
# 需要
- Xcode 15.0+
- XcodeGen
- macOS 13.0+

# 安装 XcodeGen
brew install xcodegen
```

## 本地运行

```bash
git clone https://github.com/mangiapanejohn-dev/marcstar.git
cd marcstar
xcodegen generate
open MarcBrowser.xcodeproj
# 按 Cmd+R 运行
```

---

有问题？发 Issue 或 PR 👋