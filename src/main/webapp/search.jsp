<%@page import = "java.util.ArrayList"%>
<%@page import = "com.SearchEngine.SearchResult"%>
<%@page import = "java.net.URL"%>
<%@page import = "java.net.URI"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css"> <!-- Link to the CSS file -->
    <title>Search Results</title>
	<style>
	/* General reset for margin and padding */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

/* Body styles */
body {
    font-family: Arial, sans-serif; /* Set a default font */
    background-color: #f4f4f4; /* Light gray background */
    color: #333; /* Default text color */
}

/* Container for the content */
.container {
    max-width: 1000px; /* Max width of the container */
    margin: 20px auto; /* Center the container */
    background: white; /* White background for the content */
    padding: 20px; /* Inner spacing */
    border-radius: 8px; /* Rounded corners */
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); /* Shadow effect */
}

/* Title styles */
.title {
    font-size: 24px; /* Font size for the title */
    margin-bottom: 20px; /* Space below the title */
    text-align: center; /* Center the title */
}

/* Table styles */
.results-table {
    width: 100%; /* Full width */
    border-collapse: collapse; /* Collapse borders */
}

/* Table header styles */
.results-table thead {
    background-color: #007bff; /* Bootstrap primary color */
    color: white; /* White text for header */
}

.results-table th, .results-table td {
    padding: 12px; /* Inner spacing */
    border: 1px solid #ccc; /* Light gray border */
}

/* Link styles in the table */
.result-title {
    color: #007bff; /* Link color */
    text-decoration: none; /* Remove underline */
}

.result-title:hover {
    text-decoration: underline; /* Underline on hover */
}

/* Description styles */
.results-table td {
    vertical-align: top; /* Align text at the top */
}
	</style>
</head>
<body>
     <div class="container">
         <h1 class="title">Search Results</h1>
         <table class="results-table">
             <thead>
            <th>Title</th>
            <th>Link</th>
        </tr>
        </thead>
        <%
            ArrayList<SearchResult> results = (ArrayList<SearchResult>)request.getAttribute("results");
            for(SearchResult result:results){
        %>
        <tbody>
        <tr>
        <td><%out.println(result.getTitle());%></td>
        <td> <%out.println("<a href=" +result.getLink()+">" + result.getLink() +"</a>");%></td>

        </tr>
        <%
            }
        %>
        </tbody>
        </table>
    </div>
</body>
</html