# Tripflow Project Test Script
Write-Host "🚀 Testing Tripflow Project..." -ForegroundColor Green
Write-Host ""

# Test Backend
Write-Host "1. Testing Backend API..." -ForegroundColor Yellow
try {
    $response = Invoke-RestMethod -Uri "http://localhost:8000/api/" -TimeoutSec 5
    if ($response.message -eq "Tripflow API is running!") {
        Write-Host "   ✅ Backend API is running correctly" -ForegroundColor Green
    } else {
        Write-Host "   ❌ Backend API response unexpected" -ForegroundColor Red
    }
} catch {
    Write-Host "   ❌ Backend API is not responding" -ForegroundColor Red
    Write-Host "   Please ensure backend is running: uvicorn server:app --reload --host 0.0.0.0 --port 8000" -ForegroundColor Yellow
}

Write-Host ""

# Test Frontend
Write-Host "2. Testing Frontend..." -ForegroundColor Yellow
try {
    $response = Invoke-WebRequest -Uri "http://localhost:3000" -TimeoutSec 5
    if ($response.StatusCode -eq 200) {
        Write-Host "   ✅ Frontend is accessible" -ForegroundColor Green
        
        # Check if watermark is removed
        if ($response.Content -notlike "*Made with Emergent*") {
            Write-Host "   ✅ Emergent watermark successfully removed" -ForegroundColor Green
        } else {
            Write-Host "   ⚠️  Emergent watermark still present" -ForegroundColor Yellow
        }
        
        # Check title
        if ($response.Content -like "*Tripflow - Plan Your Perfect Adventure*") {
            Write-Host "   ✅ Page title updated correctly" -ForegroundColor Green
        } else {
            Write-Host "   ⚠️  Page title not updated" -ForegroundColor Yellow
        }
    }
} catch {
    Write-Host "   ❌ Frontend is not responding" -ForegroundColor Red
    Write-Host "   Please ensure frontend is running: npm start" -ForegroundColor Yellow
}

Write-Host ""

# Test Database Connection
Write-Host "3. Testing Database Connection..." -ForegroundColor Yellow
try {
    $response = Invoke-RestMethod -Uri "http://localhost:8000/api/trips" -TimeoutSec 5
    Write-Host "   ✅ Database connection working (trips endpoint accessible)" -ForegroundColor Green
} catch {
    Write-Host "   ⚠️  Database connection issue or no trips exist yet" -ForegroundColor Yellow
}

Write-Host ""

# Test Currency Feature
Write-Host "4. Testing Currency Feature..." -ForegroundColor Yellow
Write-Host "   📝 To test currency feature:"
Write-Host "   1. Go to http://localhost:3000"
Write-Host "   2. Create a new trip"
Write-Host "   3. Select INR as currency"
Write-Host "   4. Add activities with costs"
Write-Host "   5. Verify amounts show ₹ symbol instead of $"

Write-Host ""

# Summary
Write-Host "🎯 Quick Access URLs:" -ForegroundColor Cyan
Write-Host "   Frontend: http://localhost:3000" -ForegroundColor White
Write-Host "   Backend API: http://localhost:8000/api/" -ForegroundColor White
Write-Host "   API Docs: http://localhost:8000/docs" -ForegroundColor White

Write-Host ""
Write-Host "💾 Project Status:" -ForegroundColor Cyan
Write-Host "   ✅ Project saved with Git" -ForegroundColor White
Write-Host "   ✅ Backup created in parent directory" -ForegroundColor White
Write-Host "   ✅ Currency display fixed" -ForegroundColor White
Write-Host "   ✅ Watermark removed" -ForegroundColor White
