# News Items

This is a news article system created using Magnolia Cli with Vue.js for the frontend and python for the backend. Start off by launching the application and adding the news-items component to your magnolia page which will send a get request out to the python server. Once, the server gets it's first get request it'll scrape https://time.com/section/tech/, https://time.com/section/sports/, https://time.com/section/business/ for news articles on those websites, gathering information such as title, excerpt, imgUrl, pageUrl, and category. After, the inital scrape the server will store the scrape information to prevent unnecessary scraping and send the information in a json array back to the client (frontend). After, the frontend receives the json array it'll begin to display all the scraped articles. Now, the user can filter through those articles by choosing through some of the categories or search through the articles. 

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Installing

Backend
```pip3 install requests, bs4, flask```
or
```pip install requests, bs4, flask```

Frontend
```mgnl jumpstart``` and select "magnolia-community-demo-webapp". After install move light-modules into newly created folder. 

## Running The Project

To run just the backend server
```python3 api.py``` 
or 
```python api.py```

To run just the frontend client 
```mgnl start```
and go to page http://localhost:8080/magnoliaAuthor and sign in as
* Username: superuser
* Password: superuser

please note you must be in the directory to run

## Built With

Frontend
* [Magnolia CLI](https://documentation.magnolia-cms.com/display/DOCS62/Magnolia+CLI)
* [Java](https://www.java.com/inc/BrowserRedirect1.jsp?locale=en)
* [Node.js](https://nodejs.org/en/)

Backend
* [Python](https://www.python.org/downloads/release/python-385/)

### Helpful Documentation
* https://documentation.magnolia-cms.com/display/DOCS62/Install+Magnolia
* https://documentation.magnolia-cms.com/display/DOCS62/Hello+Magnolia+for+front-end+developers
* https://academy.magnolia-cms.com/display/WIKI/JS+frameworks+-+Vue.js+contacts+list
* https://programminghistorian.org/en/lessons/creating-apis-with-python-and-flask

## Authors

* **Hrag Ayvazian** - *News Items* - [HragA](https://github.com/HragA)

## License

This project is licensed under the MIT License.