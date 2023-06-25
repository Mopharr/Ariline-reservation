<?php
require './helpers/init_conn_db.php';

if (isset($_POST['add_car'])) {
    $ownerName = $_POST['owner_name'];
    $licencesNumber = $_POST['licences_number'];
    $carBrand = $_POST['car_brand'];
    $checkInTime = $_POST['check_in_time'];
    $checkOutTime = $_POST['check_out_time'];
    echo $passengers = $_POST['passengers'];

    // Insert the form data into the cars table
    $sql = "INSERT INTO cars (owner_name, licences_number, car_brand, check_in_time, check_out_time, passengers) VALUES (?, ?, ?, ?, ?, ?)";
    
    $stmt = mysqli_stmt_init($conn);
    mysqli_stmt_prepare($stmt, $sql);
    mysqli_stmt_bind_param($stmt, "sssssi", $ownerName, $licencesNumber, $carBrand, $checkInTime, $checkOutTime, $passengers);
    mysqli_stmt_execute($stmt);

    if (mysqli_stmt_affected_rows($stmt) > 0) {
        echo '<script>alert("Car registered successfully")</script>';
        header('Location: ./parkings.php');
    } else {
        echo '<script>alert("Failed to register car")</script>';
    }
}
