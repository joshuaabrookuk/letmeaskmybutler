# Let Me Ask My Butler

LMAMB is a clone of [Let Me Google That](http://letmegooglethat.com/) with one small diffrence, a nod to the classic search engine AskJeeves.

Here's a mock up I made, which may be aniamte in the future.
![A Gif](/Users/joshuabrook/Desktop/Projects/post_makers/personal_projects/letmeaskmybutler/public/images/LetMeAskMyButlerMockUpGIF100)

**Senario:**

Your friend asks you a question online, you don't know the awnser but your butler might:

1. You 'ask your butler' and enter a query.
2. Sharable link is generated, send to a friend.
3. When the link so open the web page 'mimics' your actions: <br>
a). Mouse moves to click the form and waits idle.<br>
b). Your search query is typed in one character at a time.<br>
c). The cursor lazily pans over and submits the search.
4. The page redirects.

## How to use this repo as it stands

1. Clone this repo and open in your text editor of choice
2. run `bundle` to install dependency
3. navigate to 'http://localhost:4567/' in your favorite browser.

To run the server  
`rackup -p 4567`  

To shutdown the server  
`control-C`  

To kill the server  
`lsof -wni tcp:4567`  
Identify the correct server & PID (for example '33456') then  
`kill -9 33456` (<- Replace with your PID)
