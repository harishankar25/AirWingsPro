<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Flight</title>
<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    body {
        background: #501515;
        font-family: Arial, sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        background-image: url('image/aero_2.jpg');
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
    }

    .search-form {
        background: rgba(255, 255, 255, 0.9); /* Slightly transparent background */
        width: 400px;
        padding: 20px;
        border-radius: 8px; /* Increased border-radius for a softer look */
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
    }

    h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #333; /* Darkened the heading color for better contrast */
        font-size: 28px; /* Increased font size for emphasis */
    }

    .form-group {
        margin-bottom: 20px;
    }

    label {
        display: block;
        margin-bottom: 5px;
        font-weight: bold;
        color: #555; /* Adjusted label color for readability */
    }

    input[type="text"] {
        width: 100%;
        padding: 12px; /* Increased padding for better spacing */
        border: 1px solid #ccc;
        border-radius: 6px; /* Increased border-radius for a softer look */
        font-size: 18px; /* Increased font size for better readability */
    }

    input[type="submit"] {
        background-color: #007BFF;
        color: #fff;
        border: none;
        border-radius: 6px; /* Increased border-radius for consistency */
        padding: 12px 24px; /* Increased padding for better button size */
        font-size: 20px; /* Increased font size for emphasis */
        cursor: pointer;
        transition: background-color 0.3s; /* Smooth transition on hover */
    }

    input[type="submit"]:hover {
        background-color: #0056b3; /* Darkened blue on hover */
    }
</style>
</head>
<body>
    <div class="search-form">
        <h2>Find Flights</h2>
        <form action="findFlights" method="post">
            <div class="form-group">
                <label for="from">From:</label>
                <input type="text" id="from" name="from" placeholder="Enter departure location" />
            </div>
            <div class="form-group">
                <label for="to">To:</label>
                <input type="text" id="to" name="to" placeholder="Enter destination" />
            </div>
            <div class="form-group">
                <label for="departureDate">Departure Date:</label>
                <input type="text" id="departureDate" name="departureDate" placeholder="MM-DD-YYYY" />
            </div>
            <input type="submit" name="search" value="Search" />
        </form>
    </div>
</body>
</html>