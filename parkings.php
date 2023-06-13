<?php
require 'helpers/init_conn_db.php';

// Fetch all cars data
$query = "SELECT * FROM cars";
$result = mysqli_query($conn, $query);

// Check if query execution was successful
if ($result) {
    // Fetch all rows as an associative array
    $cars = mysqli_fetch_all($result, MYSQLI_ASSOC);
} else {
    echo "Error retrieving data from the database.";
}

// Close the database connection
mysqli_close($conn);
?>

<!DOCTYPE html>
<html>
<head>
    <title>Car Listing</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }
        th, td {
            text-align: left;
            padding: 8px;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <h2>Car Listing</h2>
    <?php if (isset($cars) && !empty($cars)) : ?>
        <table>
            <tr>
                <th>ID</th>
                <th>Owner Name</th>
                <th>License Number</th>
                <th>Car Brand</th>
                <th>Check-in Time</th>
                <th>Check-out Time</th>
                <th>Passengers</th>
            </tr>
            <?php foreach ($cars as $car) : ?>
                <tr>
                    <td><?php echo $car['id']; ?></td>
                    <td><?php echo $car['owner_name']; ?></td>
                    <td><?php echo $car['licences_number']; ?></td>
                    <td><?php echo $car['car_brand']; ?></td>
                    <td><?php echo $car['check_in_time']; ?></td>
                    <td><?php echo $car['check_out_time']; ?></td>
                    <td><?php echo $car['passengers']; ?></td>
                </tr>
            <?php endforeach; ?>
        </table>
    <?php else : ?>
        <p>No cars found.</p>
    <?php endif; ?>
</body>
</html>
