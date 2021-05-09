# printhouse
We had the silly idea to automatically print memes from a discord channel via our peripage A6 thermalprinters.<br>
This project contains a Discord bot to upload the images into a database and a JSON-API to serve data to the clients.<br>
The API sends back the oldest of the latest 20 posts, which has not been queried before by the provided user_id.<br>

```url
  http://localhost:4000/api?id=user_id&password=password
```  
```json
  {"username":"discord_username","image":"image_url","content":"message"}
```
