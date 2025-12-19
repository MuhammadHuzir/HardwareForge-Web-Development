# 🛠️ HardwareForge
## A Comprehensive PC Building Platform
HardwareForge is a web-based platform designed to help users build custom PCs, compare hardware, and generate optimized builds based on budget. It centralizes PC hardware data from multiple sources and provides an intuitive experience for both beginners and enthusiasts.

## 🚀 Features

### 🔧 Custom PC Builder
* Select individual components (CPU, GPU, motherboard, RAM, storage, PSU, case)
  
* Automatically calculate total build price
  
* Prevents incompatible selections (based on stored component data)

### 🎲 Random PC Build Generator

* Generate a complete PC build based on a user-defined budget

* Useful for inspiration, entry-level users, or quick recommendations

### 📊 Hardware Comparison Tool

* Compare CPUs or GPUs side-by-side

* Filter by category (budget, mid-range, high-end)

* View key specs such as cores, threads, clock speeds, wattage, and price

### 🏷️ Brand Insight Notes

* Displays brand strengths (e.g., AMD GPUs as a strong budget option)

* Helps users make informed decisions beyond raw specs

### 💾 Build Management

* Save completed builds to the database

* View, manage, and revisit saved builds

### 🌐 Centralized Hardware Data

* Hardware data stored in MySQL

* Product data scraped automatically from external hardware retailers

## 🧰 Tech Stack
### Frontend

* HTML5

* CSS3

* Bootstrap

* JavaScript

### Backend

* Node.js

* Express.js

### Database

* MySQL

## 🗄️ Database Structure (Overview)

* builds
* build_comments
* build_ratings
* cases
* completed_builds
* cpucoolers
* cpus
* gpus
* motherboards
* psus
* rams
* replies
* storages
* threads
* users

Each build links components via foreign keys, allowing flexible and scalable build configurations.

## 📦 Installation & Setup
### 1️⃣ Clone the Repository

git clone https://github.com/MuhammadHuzir/HardwareForge-Web-Development.git

cd coding

cd backend

### 2️⃣ Install Dependencies

npm install

### 3️⃣ Configure Database

* Create a MySQL database
* import the provided SQL schema
* Update database credentials in your backend config file

### 4️⃣ Run the Server
node server.js

## 🎯 Target Users

* PC building beginners
  
* Enthusiasts comparing hardware
  
* Students learning full-stack web development

* Anyone planning a PC build within a budget

## 🔮 Future Improvements

* User accounts & authentication

* Performance estimation (gaming & productivity)

* Real-time price updates

* PC part compatibility checker (socket, PSU wattage, clearance)

* Reviews and ratings system

* Export builds as PDF or shareable links

## 📄 License
This project is for educational and personal use.
