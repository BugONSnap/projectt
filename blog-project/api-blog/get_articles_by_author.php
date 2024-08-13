<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: Content-Type, Authorization, X-Requested-With");
header("Access-Control-Allow-Methods: POST, OPTIONS");
header("Content-Type: application/json; charset=UTF-8");

if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
    // Handle preflight request
    exit(0);
}

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "bolgdb";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    http_response_code(500);
    echo json_encode(["error" => "Database connection failed: " . $conn->connect_error]);
    exit();
}

$data = json_decode(file_get_contents("php://input"), true);

if (isset($data['unique_id'])) {
    $unique_id = $conn->real_escape_string($data['unique_id']);

    $sql = "SELECT * FROM articles WHERE author_unique_id = '$unique_id'";
    $result = $conn->query($sql);

    if ($result === false) {
        http_response_code(500);
        echo json_encode(["error" => "Error executing query: " . $conn->error]);
        $conn->close();
        exit();
    }

    if ($result->num_rows > 0) {
        $articles = [];
        while ($row = $result->fetch_assoc()) {
            $articles[] = $row;
        }
        echo json_encode(["articles" => $articles]);
    } else {
        echo json_encode(["articles" => []]);
    }
} else {
    http_response_code(400);
    echo json_encode(["error" => "Invalid input"]);
}

$conn->close();
?>