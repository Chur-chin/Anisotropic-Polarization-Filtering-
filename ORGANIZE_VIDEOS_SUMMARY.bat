@echo off
chcp 65001 >nul
cd /d "%~dp0"
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0ORGANIZE_VIDEOS_SUMMARY.ps1"
pause
