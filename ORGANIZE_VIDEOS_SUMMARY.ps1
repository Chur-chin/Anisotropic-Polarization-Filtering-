# 동영상 + serpentine_summary 만 정리 (삭제 없이 git mv)
$ErrorActionPreference = 'Stop'
$repo = $PSScriptRoot
$git  = 'C:\Users\Administrator\AppData\Local\GitHubDesktop\app-3.5.11\resources\app\git\cmd\git.exe'
if (-not (Test-Path $git)) {
    $git = (Get-ChildItem "$env:LOCALAPPDATA\GitHubDesktop\app-*\resources\app\git\cmd\git.exe" | Select-Object -First 1).FullName
}
Set-Location $repo

Write-Host '=== 1) 원격과 동기화 ===' -ForegroundColor Cyan
& $git -C $repo fetch origin main
& $git -C $repo reset --hard origin/main

Write-Host '=== 2) 폴더 준비 ===' -ForegroundColor Cyan
$videoDir = Join-Path $repo 'media\videos\repeat\20260527'
$docsDir  = Join-Path $repo 'docs'
New-Item -ItemType Directory -Path $videoDir -Force | Out-Null
New-Item -ItemType Directory -Path $docsDir -Force | Out-Null

Write-Host '=== 3) 동영상 이동 (git mv, 25개) ===' -ForegroundColor Cyan
$mp4s = Get-ChildItem -Path $repo -Filter '*.mp4' -File
if ($mp4s.Count -eq 0) {
    Write-Host '루트에 mp4 없음 — 이미 이동했거나 fetch 필요' -ForegroundColor Yellow
    $mp4s = Get-ChildItem -Path $videoDir -Filter '*.mp4' -File -ErrorAction SilentlyContinue
}
foreach ($f in $mp4s) {
    if ($f.DirectoryName -eq $videoDir) { continue }
    $dest = Join-Path $videoDir $f.Name
    & $git -C $repo mv -- $f.Name ("media/videos/repeat/20260527/" + $f.Name)
    Write-Host "  OK: $($f.Name)"
}
$count = (Get-ChildItem $videoDir -Filter '*.mp4' -File -ErrorAction SilentlyContinue).Count
Write-Host "  mp4 count in media folder: $count" -ForegroundColor Green

Write-Host '=== 4) summary PDF 이동 ===' -ForegroundColor Cyan
$pdfRoot = Join-Path $repo 'serpentine_summary.pdf'
$pdfDocs = Join-Path $docsDir 'serpentine_summary.pdf'
if (Test-Path $pdfRoot) {
    & $git -C $repo mv -- serpentine_summary.pdf docs/serpentine_summary.pdf
    Write-Host '  OK: serpentine_summary.pdf -> docs/'
} elseif (Test-Path $pdfDocs) {
    Write-Host '  Already in docs/' -ForegroundColor Green
} else {
    Write-Host '  WARN: serpentine_summary.pdf not found' -ForegroundColor Yellow
}

Write-Host '=== 5) README 반영 & 커밋 ===' -ForegroundColor Cyan
& $git -C $repo add README.md .gitignore
& $git -C $repo add -A
& $git -C $repo status
$msg = @'
chore: organize videos and serpentine summary only

- Move 25 mp4 to media/videos/repeat/20260527/ (filenames unchanged)
- Move serpentine_summary.pdf to docs/
- Simplify README
'@
& $git -C $repo -c user.name=Chur-chin -c user.email=tpotaoai@gmail.com commit -m $msg
Write-Host ''
Write-Host '=== 완료. GitHub Desktop에서 Push 하세요. ===' -ForegroundColor Green
& $git -C $repo log -1 --oneline
