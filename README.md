# letmeaskmybutler

## Instructions for use

1. Clone this repo and open in your text editor of choice
2. run `bundle` to install dependency
3. navigate to 'http://localhost:4567/'

To run the server  
`rackup -p 4567`  

To shutdown the server  
`control-C`  

To kill the server  
`lsof -wni tcp:4567`  
Identify the correct server & PID (for example '33456') then  
`kill -9 33456` (<- Replace with your PID)
