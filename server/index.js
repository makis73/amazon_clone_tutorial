const express = require('express')
const authRouter = require('./routes/auth')
const mongoose = require('mongoose')


const PORT = 3000;

const app = express()
const DB = 'mongodb+srv://makis:730712@cluster0.r9kmdcd.mongodb.net/?retryWrites=true&w=majority'

// middleware
app.use(authRouter)

mongoose.connect(DB).then(() => {
    console.log('Connection to MongoDB Succesful');
}).catch((e) => {
    console.log(e);
})

app.listen(PORT, '0.0.0.0', () => {
    console.log(`Connected at port ${PORT}`);
})