<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Display Flights</title>
<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    body {
        background: #aad;
        font-family: Arial, sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 150vh;
        background-image: url('image/aero_6.jpg');
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
    }

    .flight-results {
        background: rgba(255, 255, 255, 0.9); /* Slightly transparent background */
        width: 90%;
        max-width: 800px; /* Set a maximum width for better readability */
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
    }

    h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #333; /* Darkened the heading color for better contrast */
        font-size: 28px; /* Increased font size for emphasis */
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }

    table, th, td {
        border: 1px solid #ccc;
    }

    th, td {
        padding: 12px; /* Increased padding for better spacing */
        text-align: center; /* Center-align table cells */
    }

    th {
        background-color: #007BFF;
        color: #fff;
        font-weight: bold; /* Added font weight for better visibility */
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    a {
        text-decoration: none;
        color: #007BFF;
        font-weight: bold;
        transition: color 0.3s; /* Smooth color transition on hover */
    }

    a:hover {
        color: #0056b3; /* Darkened blue color on hover */
        text-decoration: underline; /* Underline on hover */
    }
</style>
</head>
<body>
    <div class="flight-results">
        <h2>Flight Search Results</h2>
        <table>
            <tr>
                <th>Airlines</th>
                <th>Departure City</th>
                <th>Arrival City</th>
                <th>Departure Time</th>
                <th>Select Flight</th>
            </tr>
            <c:forEach items="${findFlights}" var="flight">
                <tr>
                    <td>${flight.operatingAirlines}</td>
                    <td>${flight.departureCity}</td>
                    <td>${flight.arrivalCity}</td>
                    <td>${flight.estimatedDepartureTime}</td>
                    <td><a href="showCompleteReservation?flightId=${flight.id}">Select</a></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>