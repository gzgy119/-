@echo off
chcp 65001 >nul
echo ============================================
echo   Code Typer v0.5.0  一键安装
echo ============================================
where code >nul 2>nul
if errorlevel 1 (
  echo [错误] 未找到 code 命令。
  echo 请先安装 Visual Studio Code，并勾选"添加到 PATH"；
  echo 或在 VSCode 里用 扩展面板右上角菜单 -^> 从VSIX安装。
  pause
  exit /b 1
)
code --install-extension "%~dp0code-typer-0.5.0.vsix" --force
if errorlevel 1 ( pause & exit /b 1 )
echo.
echo 安装完成！请在 VSCode 中执行 Developer: Reload Window
echo 然后按 Ctrl+Shift+P 输入 Code Typer 即可使用。
pause
