<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reservation Details</title>
<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    body {
        background: #826f6f;
        font-family: Arial, sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 170vh;
        background-image: url('image/aero_3.jpg');
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
    }

    .reservation-details {
        background: rgba(255, 255, 255, 0.9); /* Slightly transparent background */
        width: 90%;
        max-width: 400px; /* Set a maximum width for better readability */
        padding: 20px;
        border-radius: 8px; /* Increased border-radius for a softer look */
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
    }

    h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #333; /* Darkened the heading color for better contrast */
        font-size: 24px; /* Adjusted font size for better readability */
    }

    label {
        font-weight: bold;
        color: #555; /* Adjusted label color for readability */
    }

    input[type="text"],
    input[type="hidden"] {
        width: 100%;
        padding: 12px; /* Increased padding for better spacing */
        border: 1px solid #ccc;
        border-radius: 6px; /* Increased border-radius for a softer look */
        margin-bottom: 12px; /* Adjusted margin for better spacing */
        font-size: 16px; /* Adjusted font size for better readability */
    }

    input[type="submit"] {
        background-color: #007BFF;
        color: #fff;
        border: none;
        border-radius: 6px; /* Increased border-radius for consistency */
        padding: 12px 24px; /* Increased padding for better button size */
        font-size: 18px; /* Adjusted font size for better readability */
        cursor: pointer;
        transition: background-color 0.3s; /* Smooth transition on hover */
    }

    input[type="submit"]:hover {
        background-color: #0056b3; /* Darkened blue on hover */
    }

    /* Improved spacing for flight details */
    .flight-details {
        margin-bottom: 20px;
    }
</style>
</head>
<body>
    <div class="reservation-details">
        <h2>Flight Details</h2>
        <div class="flight-details">
            Flight Number: ${flight.flightNumber}<br>
            Operating Airlines: ${flight.operatingAirlines}<br>
            Departure City: ${flight.departureCity}<br>
            Arrival City: ${flight.arrivalCity}<br>
            Departure Date: ${flight.dateOfDeparture}<br>
        </div>
        
        <h2>Enter Passenger Details</h2>
        <form action="confirmReservation" method="post">
            <label for="firstName">First Name:</label>
            <input type="text" name="firstName" required />

            <label for="middleName">Middle Name:</label>
            <input type="text" name="middleName" />

            <label for="lastName">Last Name:</label>
            <input type="text" name="lastName" required />

            <label for="email">Email:</label>
            <input type="text" name="email" required />

            <label for="phone">Phone:</label>
            <input type="text" name="phone" required />

            <input type="hidden" name="flightId" value="${flight.id}" />

            <h2>Enter Payment Details</h2>
            <label for="cardNumber">Card Number:</label>
            <input type="text" name="cardNumber" required />

            <label for="nameOnTheCard">Name on the Card:</label>
            <input type="text" name="nameOnTheCard" required />

            <label for="cvv">CVV:</label>
            <input type="text" name="cvv" required />

            <label for="expiryDate">Expiry Date:</label>
            <input type="text" name="expiryDate" required />

            <input type="submit" value="Complete Reservation" />
        </form>
    </div>
</body>
</html>