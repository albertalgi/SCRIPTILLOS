import webbrowser

url = "https://www.rae.es"

chrome = webbrowser.get("google-chrome")

#It is more likely to be Firefox. But in the end it is the default system's browser
firefox = webbrowser.get()

#CHROME
chrome.open_new(url)
for i in range(2):
    chrome.open_new_tab(url)

#FIREFOX
firefox.open_new(url)
for i in range(2):
    firefox.open_new_tab(url)
