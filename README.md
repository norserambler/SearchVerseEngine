SearchVerse - Java-Based Search Engine

A Java-based search engine that utilizes a web crawler and indexer to store web pages in a database. The web crawler employs a depth-first limited search to crawl web pages efficiently.

Features
- Web crawler using depth-first limited search
- Indexer to store crawled pages in a database
- Simple ranking algorithm: ranks webpages based on keyword occurrences
- Customizable crawl depth and user agent
- Handling of common crawl errors (e.g., 404, 500)
System Requirements
- Java 11+
- MySQL or PostgreSQL database
- Maven or Gradle build tool

Ranking Algorithm

- The ranking algorithm used in SearchVerse is a simple keyword-based algorithm. 
- The rank of a webpage is determined by the number of occurrences of the search keyword in the webpage's content.
- The top 30 results are displayed based on this ranking.

![image](https://github.com/user-attachments/assets/b660bc1f-beba-47e4-b449-33f135254707)
![image](https://github.com/user-attachments/assets/fe5cc045-55a4-4233-acbc-ac2a8fb0549b)

