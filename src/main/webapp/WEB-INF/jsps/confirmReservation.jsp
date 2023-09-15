<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Confirmation</title>
<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    body {
        background: #f5f5f5;
        font-family: Arial, sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        background-image: url('image/aero_5.jpg');
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
    }

    .confirmation-message {
        background: rgba(255, 255, 255, 0.9); /* Slightly transparent background */
        width: 400px;
        padding: 20px;
        border-radius: 8px; /* Increased border-radius for a softer look */
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
        text-align: center;
    }

    h2 {
        margin-bottom: 20px;
        color: #333; /* Darkened the heading color for better contrast */
        font-size: 24px;
    }

    p {
        font-size: 18px;
        color: #555; /* Adjusted text color for readability */
        margin-bottom: 10px;
    }

    .reservation-id {
        font-weight: bold;
        color: #007BFF;
        font-size: 28px; /* Increased font size for emphasis */
    }

    .go-back-link {
        text-decoration: none;
        color: #007BFF;
        font-weight: bold;
        display: inline-block;
        margin-top: 20px;
        padding: 8px 16px;
        border-radius: 4px; /* Added border-radius for the link */
        background-color: #fff; /* Added background color for better visibility */
        transition: background-color 0.3s, color 0.3s; /* Smooth transitions on hover */
    }

    .go-back-link:hover {
        background-color: #007BFF;
        color: #fff;
    }
</style>
</head>
<body>
    <div class="confirmation-message">
        <h2>Confirmation</h2>
        <p>Your ticket is booked.</p>
        <p>Your Reservation ID is: <span class="reservation-id">${reservationId}</span></p>
        <p>Your ticket is saved in your system.</p>
        <a href="index.html" class="go-back-link">Go Back to Home Page</a>
    </div>
</body>
</html>