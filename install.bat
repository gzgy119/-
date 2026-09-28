@echo off
echo ============================================
echo   Code Typer v0.5.0 - Installer
echo ============================================
where code >nul 2>nul
if errorlevel 1 (
  echo [ERROR] VSCode command "code" not found in PATH.
  echo Option A: reinstall VSCode and tick "Add to PATH".
  echo Option B: in VSCode - Extensions panel - "..." menu
  echo           - Install from VSIX - select code-typer-0.5.0.vsix
  pause
  exit /b 1
)
code --install-extension "%~dp0code-typer-0.5.0.vsix" --force
if errorlevel 1 ( pause & exit /b 1 )
echo.
echo Done. In VSCode run: Developer: Reload Window
echo Then Ctrl+Shift+P and type "Code Typer".
pause