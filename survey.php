<?php
// PHP section to handle form submission and display feedback
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $rating = $_POST['rating'];
    $comments = $_POST['comments'];
    
    // Check if rating is selected
    if (empty($rating)) {
        $errorMessage = "Please select a rating before submitting.";
    } else {
        // Save feedback to a file or database (Here, we'll just display it for simplicity)
        $feedback = "Rating: " . $rating . "\nComments: " . $comments . "\n\n";
        file_put_contents('feedback.txt', $feedback, FILE_APPEND);
    
        // Display a thank you message
        $thankYouMessage = "Thank you for your feedback!";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback Form - Laboratory/Blood Collection Center</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 60%;
            margin: 50px auto;
            padding: 20px;
            background-color: #ffffff;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

 .center {
  margin: auto;
  width: 50%;
}

	button{display:block;margin:10px; padding:5px;align:center;}
        h1 {
            text-align: center;
            color: #4CAF50;
        }
        .rating-buttons {
            text-align: center;
            justify-content: space-evenly;
            margin: 20px 0;;
        }
        .rating-buttons button {
            text-align: center;
            font-size: 36px;
            background: lightgray;
            border: 2px solid red;
            cursor: pointer;
            transition: transform 0.3s ease;
		padding:10px;
        }
        .rating-buttons button:hover {
            transform: scale(1.1);
            background: lightgreen;
		
        }
        textarea {
            width: 100%;
            height: 100px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
            margin-top: 10px;
        }
        .submit-btn {
            display: block;
            margin: 20px auto;
            background-color: #4CAF50;
            color: red;
            padding: 10px 20px;
            border: 2px solid black;
            border-radius: 5px;
            font-size: 18px;
            cursor: pointer;
        }
        .submit-btn:hover {
            background-color: green;
        }
        .thank-you {
            text-align: center;
            font-size: 20px;
            color: #4CAF50;
            margin-top: 20px;
        }
        .error-message {
            color: red;
            text-align: center;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Feedback (Stem Cell OPD Sample Collection Center)</h1>

    <?php //if (isset($thankYouMessage)) { echo "<div class='thank-you'>$thankYouMessage</div>"; } 
	?>
    <?php //if (isset($errorMessage)) { echo "<div class='error-message'>$errorMessage</div>"; } 
	?>

    <form method="POST" action="survey_response.php">
<!--
        <div class="rating-buttons">
            <button type="submit" name="rating" value="😍">😍</button>
            <button type="submit" name="rating" value="🙂">🙂</button>
            <button type="submit" name="rating" value="😐">😐</button>
            <button type="submit" name="rating" value="😡">��</button>
            <button type="submit" name="rating" value="😕">😕</button>
        </div>
-->

        <div class="rating-buttons">
	    <input type=text name="uid" style="font-size:36px;" placeholder=sample_id />
            <button class=center type="submit" name="rating" value=1>&#9733;</button>
            <button class=center type="submit" name="rating" value=2>&#9733;&#9733;</button>
            <button class=center type="submit" name="rating" value=3>&#9733;&#9733;&#9733;</button>
            <button class=center type="submit" name="rating" value=4>&#9733;&#9733;&#9733;&#9733;</button>
            <button class=center type="submit" name="rating" value=5>&#9733;&#9733;&#9733;&#9733;&#9733;</button>
        </div>

<!--        <textarea name="comments" placeholder="Additional comments..."></textarea> 

        <button type="submit" class="submit-btn">Submit Feedback</button> -->
    </form>
</div>

</body>
</html>
