# Tripflow Startup Script
Write-Host "Starting Tripflow Application..." -ForegroundColor Green
Write-Host ""

# Start Backend
Write-Host "1. Starting Backend Server..." -ForegroundColor Yellow
Start-Process powershell -ArgumentList '-NoExit', '-Command', 'Set-Location backend; Write-Host "Backend Server Starting..." -ForegroundColor Green; uvicorn server:app --reload --host 0.0.0.0 --port 8000'

# Wait a moment
Start-Sleep -Seconds 3

# Start Frontend  
Write-Host "2. Starting Frontend Server..." -ForegroundColor Yellow
Start-Process powershell -ArgumentList '-NoExit', '-Command', 'Set-Location frontend; Write-Host "Frontend Server Starting..." -ForegroundColor Green; npm start'

Write-Host ""
Write-Host "Servers are starting up..." -ForegroundColor Green
Write-Host ""
Write-Host "Wait 30-60 seconds, then access:" -ForegroundColor Cyan
Write-Host "  Frontend: http://localhost:3000" -ForegroundColor White
Write-Host "  Backend:  http://localhost:8000/api/" -ForegroundColor White  
Write-Host "  API Docs: http://localhost:8000/docs" -ForegroundColor White
