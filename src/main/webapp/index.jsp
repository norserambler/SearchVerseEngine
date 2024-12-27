<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet"> <!-- Link to Google Fonts -->
    <link rel="stylesheet" href="styles.css"> <!-- Link to the CSS file -->
    <title>Search Page</title>
</head>
<style>/* General reset for margin and padding */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

/* Set the body to use full height and apply a background image */
body {
    height: 100vh; /* Full height of the viewport */
    display: flex; /* Use flexbox to center content */
    align-items: center; /* Center vertically */
    justify-content: center; /* Center horizontally */
    background-image: url('images/search-background.jpg'); /* Path to your background image */
    background-size: cover; /* Cover the entire body */
    background-position: center; /* Center the image */
}

/* Container to wrap the title, search box, and button */
.container {
    text-align: center; /* Center the text within the container */
    background: rgba(255, 255, 255, 0.8); /* Semi-transparent white background */
    border-radius: 8px; /* Rounded corners */
    padding: 20px; /* Space inside the container */
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2); /* Shadow effect */
}

/* Style for the title */
.title {
    font-family: 'Pacifico', cursive; /* Use the Pacifico font */
    font-size: 48px; /* Large font size for the title */
    margin-bottom: 20px; /* Space below the title */
    color: #ff6347; /* Tomato color for the title text */
}

/* Style for the search input box */
.search-box {
    width: 300px; /* Fixed width */
    height: 40px; /* Height of the text box */
    padding: 10px; /* Inner spacing */
    border: 1px solid #ccc; /* Light gray border */
    border-radius: 4px; /* Slightly rounded corners */
    font-size: 16px; /* Font size */
}

/* Style for the search button */
.search-button {
    height: 40px; /* Height of the button */
    margin-left: 10px; /* Space between the text box and button */
    padding: 0 20px; /* Inner spacing */
    border: none; /* Remove default border */
    background-color: #007bff; /* Bootstrap primary color */
    color: white; /* Text color */
    font-size: 16px; /* Font size */
    border-radius: 4px; /* Rounded corners */
    cursor: pointer; /* Pointer cursor on hover */
}

/* Button hover effect */
.search-button:hover {
    background-color: #0056b3; /* Darker shade on hover */
}
</style>
<body>
    <div class="container">
	<h1 class="title">SearchVerse</h1> <!-- New title added here -->
		<form action="Search"> <!-- whenever we submit this form this will redirect to the search servlet
(i.e. Search.java) -->
    <input type = "text" class="search-box" name="keyword"></input>
    <button type = "submit" class="search-button">Search</button>
</form>
    </div>
</body>
</html>