CURRENTDIR=${pwd}

# Get project path
echo "what is the absolute path to your local project directory?"
read PROJECT_PATH

# go to path
cd "$PROJECT_PATH"

### Backend setup

#install dependencies
npm init -y
npm install mongoose
npm install express
npm install nodemon -D
npm install morgan

# basic file setup
mkdir db controllers routes
mkdir db/models
touch server.js .gitignore routes/AppRouter.js db/connection.js db/schema.js

# server setup
echo "const AppRouter = require('./routes/AppRouter');
const express = require('express');
const connection = require('./db/connection');
const PORT = process.env.PORT || 3001;
const app = express();

// Require Middleware
const logger = require('morgan');

// Require Middleware

// Initialize Middlewarenpx dt
app.use(logger('dev'));

// Initialize Middleware

app.get('/', (req, res) => res.send({ msg: 'Server Working' }));
app.use('/api', AppRouter);

app.listen(PORT, async () => {
    try {
        await connection;
        console.log('Database Connected');
        console.log(`App listening on port: ${PORT}`);
    } catch (error) {
        throw new Error('Connection Error');
    }
});" >> server.js

echo "const mongoose = require('mongoose');

const connection = mongoose.connect('mongodb://localhost:27017/{databaseName}', {
  useNewUrlParser: true,
  useFindAndModify: true,
  useUnifiedTopology: true,
  useCreateIndex: true,
});

mongoose.set('debug', true);

module.exports = connection;
" >> db/connection.js

echo "const Router = require('express').Router()

module.exports = Router" >> routes/AppRouter.js

# .gitignore
echo "
node_modules/
package-lock.json" >> .gitignore

### Front End Setup

#create react app
npx create-react-app client

cd client/src

mkdir components pages styles assets
rm -rf setupTests.js reportWebVitals.js logo.svg index.css App.test.js App.css

echo "import React from 'react';
import ReactDOM from 'react-dom';
import App from './App';

ReactDOM.render(
  <React.StrictMode>
    <App />
  </React.StrictMode>,
  document.getElementById('root')
);
" > index.js

echo "
function App() {
  return <div className='App'></div>;
}

export default App;
" > App.js