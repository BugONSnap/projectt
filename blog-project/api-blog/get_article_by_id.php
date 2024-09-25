<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: Content-Type, Authorization, X-Requested-With");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
header("Content-Type: application/json; charset=UTF-8");

if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
    exit(0);
}

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "bolgdb";

try {
    $conn = new mysqli($servername, $username, $password, $dbname);

    if ($conn->connect_error) {
        throw new Exception("Database connection failed: " . $conn->connect_error);
    }

    error_log("Request received: " . print_r($_GET, true)); // Debugging

    if (isset($_GET['id']) && is_numeric($_GET['id'])) {
        $article_id = intval($_GET['id']);
        $stmt = $conn->prepare("SELECT * FROM articles WHERE id = ?");
        if (!$stmt) {
            throw new Exception("Prepare statement failed: " . $conn->error);
        }
        $stmt->bind_param("i", $article_id);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($result->num_rows > 0) {
            $article = $result->fetch_assoc();
            echo json_encode($article);
        } else {
            http_response_code(404);
            echo json_encode(["error" => "Article not found"]);
        }

        $stmt->close();
    } else {
        http_response_code(400);
        echo json_encode(["error" => "Invalid article ID"]);
    }

    $conn->close();
} catch (Exception $e) {
    http_response_code(500);
    echo json_encode(["error" => $e->getMessage()]);
    error_log("Error: " . $e->getMessage());
}
?>