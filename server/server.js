require('dotenv').config({path: "./config.env"});
const express = require('express');
const cors = require('cors');
const bodyParser = require('body-parser');
const errorHandler = require('./middleware/error_handler');
const ConnectDB = require('./database/peopleswavedb');

//Database connection
ConnectDB();

const app = express();
app.use(cors());
app.use(bodyParser.urlencoded({extended:true}));
app.use(bodyParser.json());


//Routes
const admin_routes = require('./routes/admin_route');
const user_routes = require('./routes/user_route');

//Routes middleware
app.use(admin_routes);
app.use(user_routes);

//Error Handler(After all middleware routes)
app.use(errorHandler);

const PORT = process.env.PORT || 5000;

const server = app.listen(PORT , () => {
    console.log(`Server is running on ${PORT}`);
});

process.on("unhandledRejection", (err, promise) => {
    console.log(`Logged Error: ${err}`);
    server.close(() => process.exit(1));
});