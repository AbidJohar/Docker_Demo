import express from 'express'

const app = express();


const port = 3000;


app.get("/", (req,res) => {
    return res.send("welcome to the docker demo page!")
})

app.listen(port, ()=> {
      console.log("App is running on port:",port);
})