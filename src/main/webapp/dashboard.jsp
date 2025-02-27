<!DOCTYPE html>
<html>
<head>
    <title>E-Learning Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
        }
        header {
            background-color: #4CAF50;
            color: white;
            padding: 15px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        header h1 {
            margin: 0;
            font-size: 1.8em;
        }
        header nav a {
            color: white;
            text-decoration: none;
            margin: 0 10px;
            font-size: 1.1em;
        }
        header nav a:hover {
            text-decoration: underline;
        }
        .sidebar {
            width: 250px;
            background-color: #333;
            color: white;
            position: fixed;
            top: 70px;
            bottom: 0;
            padding: 20px;
        }
        .sidebar ul {
            list-style: none;
            padding: 0;
        }
        .sidebar ul li {
            margin: 15px 0;
        }
        .sidebar ul li a {
            color: white;
            text-decoration: none;
            font-size: 1.1em;
        }
        .sidebar ul li a:hover {
            text-decoration: underline;
        }
        .main-content {
            margin-left: 270px;
            padding: 20px;
        }
        .card {
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            margin: 20px 0;
            padding: 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .card h3 {
            margin: 0;
        }
        .card p {
            margin: 5px 0;
            color: #555;
        }
        .card button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 4px;
            cursor: pointer;
        }
        .card button:hover {
            background-color: #45a049;
        }
        footer {
            background-color: #4CAF50;
            color: white;
            text-align: center;
            padding: 10px 0;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>
    <header>
        <h1>E-Learning Platform</h1>
        <nav>
            <a href="#">Home</a>
            <a href="#">My Courses</a>
            <a href="#">Profile</a>
        </nav>
    </header>
    <aside class="sidebar">
        <h2>Dashboard</h2>
        <ul>
            <li><a href="#">Overview</a></li>
            <li><a href="#">My Courses</a></li>
            <li><a href="#">Messages</a></li>
            <li><a href="#">Achievements</a></li>
            <li><a href="#">Settings</a></li>
        </ul>
    </aside>
    <main class="main-content">
        <h2>Welcome, User!</h2>
        <p>Here are your latest updates:</p>
        
        <div class="card">
            <div>
                <h3>Course: Introduction to Java</h3>
                <p>Progress: 70%</p>
            </div>
            <button>Continue</button>
        </div>

        <div class="card">
            <div>
                <h3>Course: Data Structures and Algorithms</h3>
                <p>Progress: 45%</p>
            </div>
            <button>Continue</button>
        </div>

        <div class="card">
            <div>
                <h3>Upcoming Assignment</h3>
                <p>Due Date: December 10, 2024</p>
            </div>
            <button>View Details</button>
        </div>
    </main>
    <footer>
        <p>&copy; 2024 E-Learning Platform. All Rights Reserved.</p>
    </footer>
</body>
</html>
