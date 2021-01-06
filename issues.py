#!/usr/bin/env python3


def main():
    from bs4 import BeautifulSoup
    from fileinput import input
    from requests import get
    from re import compile

    user = "JacobBHartman"
    repo = "feoh"
    url = "https://github.com/" + user + "/" + repo + "/issues"
    
    r = get(url)
    html = r.text
    soup = BeautifulSoup(html, 'html.parser')

    #number = soup.find_all("span", {"class" : "opened-by"})
    #print(number)

    #issues = soup.find('div', {"aria-label" : "Issues"})
    #print(issues.prettify())
    #soup.find_all("div", aria-label='Issues')

    s = ""
    issues = soup.find_all("a", {"id" : compile("^(issue_).+(_link)")})
    for i, issue in enumerate(issues):
        s += str(i+1) + ". " + issue.text + "\n"
   
    index_dir = ("static/")
    fin = open(index_dir + "index.html", "rt")
    data = fin.read()
    data = data.replace("ISSUES GO HERE", s)
    fin.close()
    fin = open(index_dir + "index.html", "wt")
    fin.write(data)
    fin.close()

main()

