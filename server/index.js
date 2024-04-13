//IMPORT from packages
const express = require("express");
const cors = require("cors");
const mongoose = require("mongoose");
//IMPORT from other files
const authRouter = require("./routes/auth");

//INIT
const PORT = process.env.PORT || 5000;
const app = express()
app.use(cors())
const DB = "mongodb+srv://yadavarinprashu:arin123@cluster0.96iewno.mongodb.net/?retryWrites=true&w=majority";


//Middleware
// CLIENT -> middlware -> SERVER -> CLIENT
app.use(express.json()); //pases json payloads
app.use(authRouter);

//Connections
mongoose.connect(DB).then(() => {
    console.log("Connected");
})
.catch((err) => {
    console.log(err);
});

app.listen(PORT, "0.0.0.0", () => {
    console.log(`Online at ${PORT}`);
});