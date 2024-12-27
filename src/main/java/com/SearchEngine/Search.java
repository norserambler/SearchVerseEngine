package com.SearchEngine;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URL;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet("/Search")
//WebServlet annotation is used to create a servlet class
//Need to pass a parameter that will be a path from the form action in jsp
public class Search extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //request is the request recieved from client to server(frontend to backend)
        //response is the response sent from server to client(backend to frontend)

        String keyword = request.getParameter("keyword");
        // in this way we can get values from the jsp page to the servlet class
        //getting request from the client
        //  System.out.println(keyword);

        try {
            ArrayList<SearchResult> results = new ArrayList<>();

            findNoOfOccurencesOfKeywordAndSaveInList(results, keyword); // ranking algorithm

            sendResponseToClient(request, results, response);

        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        }

    }

    public void findNoOfOccurencesOfKeywordAndSaveInList(ArrayList<SearchResult> results, String keyword) throws SQLException {
        Connection connection = DatabaseConnection.getConnection();

        ResultSet resultSet = connection.createStatement().executeQuery("select pageTitle,pageLink," +
                "(length (lower(pageText)) - length(replace(pageText,'" + keyword + "',''))) / length('" + keyword + "')" +
                "\n" + "as occurences from pages order by occurences desc limit 30;");
        // the above query is the ranking algorithm
        // from the above query we are getting no of occurences of the keyword which is used to determine
        // the relevance of the page.

        while (resultSet.next()) {
            SearchResult searchResult = new SearchResult();
            searchResult.setTitle(resultSet.getString("pageTitle"));
            searchResult.setLink(resultSet.getString("pageLink"));
            results.add(searchResult);
            //tranferring values from ResultSet to results
        }
    }

    public void sendResponseToClient(HttpServletRequest request, ArrayList<SearchResult> results, HttpServletResponse response) throws ServletException, IOException {
        //sending response to the client
        request.setAttribute("results", results);
        request.getRequestDispatcher("search.jsp").forward(request, response);

        // setting the results arryalist containing page title and link to results parameter
        // this will be used to forward the details from the java logic to jsp page


        response.setContentType("text/html"); // setting content type to html since need to print output in a html page
        PrintWriter out = response.getWriter();// initialising the writer instance
    }
}
