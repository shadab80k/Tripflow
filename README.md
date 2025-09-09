# 🌍 Tripflow - Plan Your Perfect Adventure

A modern, full-stack trip planning application built with React and FastAPI. Create detailed itineraries, manage activities with drag-and-drop functionality, and track expenses across multiple currencies.

## ✨ Features

### 🎯 Core Functionality
- **Interactive Trip Planning**: Create and manage multi-day trips
- **Drag & Drop Activities**: Intuitive activity scheduling across days
- **Multi-Currency Support**: Support for USD ($), EUR (€), GBP (£), INR (₹), JPY (¥), CAD ($), AUD ($)
- **Real-time Cost Tracking**: Dynamic expense calculation per day and total
- **Activity Categories**: Organize activities by type (Food, Sightseeing, Transport, etc.)
- **Time Conflict Detection**: Visual warnings for overlapping activities

### 🔧 Technical Features
- **Responsive Design**: Works seamlessly across desktop and mobile
- **Modern UI/UX**: Built with Tailwind CSS and Radix UI components
- **RESTful API**: FastAPI backend with automatic API documentation
- **Real-time Updates**: Live synchronization between frontend and backend
- **Export Functionality**: Generate PDF reports of your itinerary

## 🛠️ Tech Stack

### Frontend
- **React 19** - Modern UI framework
- **Tailwind CSS** - Utility-first CSS framework
- **Radix UI** - Accessible component library
- **@dnd-kit** - Drag and drop functionality
- **React Router** - Client-side routing
- **Axios** - HTTP client
- **Lucide React** - Beautiful icons

### Backend
- **FastAPI** - Modern Python web framework
- **MongoDB** - NoSQL database with Motor async driver
- **Pydantic** - Data validation and settings management
- **Uvicorn** - Lightning-fast ASGI server
- **Python 3.13** - Latest Python features

### Development Tools
- **CRACO** - Create React App Configuration Override
- **ESLint** - Code linting
- **Git** - Version control
- **PowerShell** - Automation scripts

## 🚀 Quick Start

### Prerequisites
- **Node.js** (v16 or higher)
- **Python** (3.8 or higher)
- **MongoDB** (local or cloud instance)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/tripflow.git
   cd tripflow
   ```

2. **Backend Setup**
   ```bash
   cd backend
   pip install -r requirements.txt
   ```

3. **Frontend Setup**
   ```bash
   cd frontend
   npm install --legacy-peer-deps
   ```

4. **Environment Configuration**
   
   Backend (`backend/.env`):
   ```
   MONGO_URL="mongodb://localhost:27017"
   DB_NAME="tripflow_dev"
   CORS_ORIGINS="*"
   ```
   
   Frontend (`frontend/.env`):
   ```
   REACT_APP_BACKEND_URL=http://localhost:8000
   WDS_SOCKET_PORT=0
   ```

### Running the Application

**Option 1: Use the startup script**
```powershell
.\start-tripflow.ps1
```

**Option 2: Manual startup**
```bash
# Terminal 1 - Backend
cd backend
uvicorn server:app --reload --host 0.0.0.0 --port 8000

# Terminal 2 - Frontend
cd frontend
npm start
```

### Access URLs
- **Frontend**: http://localhost:3000
- **Backend API**: http://localhost:8000/api/
- **API Documentation**: http://localhost:8000/docs

## 📱 Usage

### Creating Your First Trip
1. Click **"New Trip"** on the homepage
2. Enter trip details (title, dates, currency)
3. Click **"Create Trip"**

### Managing Activities
1. Click **"Add Activity"** on any day column
2. Fill in activity details (title, time, location, cost, category)
3. **Drag and drop** activities between days or reorder within a day
4. Edit or delete activities using the action buttons

### Tracking Expenses
- View **real-time cost calculations** per day
- See **total trip cost** in your selected currency
- Access **detailed statistics** in the Stats tab

## 🏗️ Project Structure

```
tripflow/
├── backend/
│   ├── server.py          # FastAPI application
│   ├── requirements.txt   # Python dependencies
│   └── .env              # Backend configuration
├── frontend/
│   ├── src/
│   │   ├── App.js        # Main React application
│   │   ├── components/   # Reusable UI components
│   │   └── hooks/        # Custom React hooks
│   ├── public/           # Static assets
│   ├── package.json      # Node.js dependencies
│   └── .env             # Frontend configuration
├── start-tripflow.ps1    # Startup script
└── README.md            # Project documentation
```

## 🎨 Key Improvements Made

- ✅ **Dynamic Currency Display**: Proper symbols (₹, €, £, ¥) based on trip currency
- ✅ **Clean Branding**: Removed third-party watermarks
- ✅ **Enhanced UX**: Improved user interface and interactions
- ✅ **Modern Architecture**: Scalable full-stack design
- ✅ **Comprehensive Testing**: Automated testing capabilities

## 📊 API Endpoints

### Trips
- `GET /api/trips` - List all trips
- `POST /api/trips` - Create a new trip
- `GET /api/trips/{trip_id}` - Get trip with details
- `DELETE /api/trips/{trip_id}` - Delete a trip

### Activities
- `POST /api/trips/{trip_id}/days/{day_id}/activities` - Create activity
- `PUT /api/activities/{activity_id}` - Update activity
- `DELETE /api/activities/{activity_id}` - Delete activity
- `POST /api/activities/reorder` - Reorder activities

### Days
- `POST /api/trips/{trip_id}/days` - Create a day

## 🚧 Future Enhancements

- [ ] User authentication and profiles
- [ ] Social sharing of trip itineraries
- [ ] Integration with mapping services
- [ ] Weather information integration
- [ ] Collaboration features for group trips
- [ ] Mobile app development
- [ ] Advanced analytics and insights

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👨‍💻 Author

**Your Name**
- GitHub: [@yourusername](https://github.com/yourusername)
- LinkedIn: [Your LinkedIn](https://linkedin.com/in/yourprofile)
- Portfolio: [yourwebsite.com](https://yourwebsite.com)

## 🙏 Acknowledgments

- Built with modern web technologies
- Inspired by the need for better trip planning tools
- Thanks to the open-source community for amazing libraries

---

⭐ **Star this repo if you found it helpful!**
