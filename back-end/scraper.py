import requests
from bs4 import BeautifulSoup
import json

newsItemsArr = []
def scrape(url, category):
    response = requests.get(url, timeout=5)
    content = BeautifulSoup(response.content, "html.parser")

    for tech in content.findAll('article', attrs={"class": "type-article"}):
        itemObject = {
            "title": tech.find('h3', attrs={"class": "headline"}).text.strip(),
            "excerpt": tech.find('div', attrs={"class": "desktop-only"}).text.strip(),
            "imgUrl": tech.find('img')['src'],
            "pageUrl": "https://time.com" + tech.find('a', attrs={"class": "media-img"}, href=True)['href'],
            "category": category
        }
        newsItemsArr.append(itemObject)


def run():
    scrape("https://time.com/section/tech/", "Tech")
    scrape("https://time.com/section/sports/", "Sports")
    scrape("https://time.com/section/business/", "Business")
    return newsItemsArr