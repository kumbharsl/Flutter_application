const express = require('express');
const app = express();

app.get("/",(req,res)=>{
    res.send("This is a homepage");
});
const employeeData = [
    {
        id : 0,
        name : "John Micale",
        age : 25,
        email : "john123@gmail.com",
        username : "Jon"

    },
    {
        id : 1,
        name : "Rohit Sharma",
        age : 35,
        email : "rohit45@gmail.com",
        username : "Rohit"

    },
    {
        id : 2,
        name : "Virat Kohali",
        age : 35,
        email : "virat18@gmail.com",
        username : "Chiku"

    },
    {
        id : 3,
        name : "Jasprit Bumrah",
        age : 25,
        email : "jassi98@gmail.com",
        username : "Jassi"

    },
    {
        id : 4,
        name : "Axar Patel",
        age : 22,
        email : "axer@gmail.com",
        username : "Axi"

    },
    {
        id : 5,
        name : "John Micale",
        age : 25,
        email : "john123@gmail.com",
        username : "Jony"

    },
];

app.get("/get_data", (req, res)=>{
    res.send({
        status: 0,
        message: "Data fetched successfully",
        data:employeeData,
    });
});
app.listen(8000,()=>{
    console.log("Server is running on : http://127.0.0.1:8000");
});
