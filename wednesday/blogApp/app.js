global.users = [] //replace with actual db

const express = require('express')
const app = express()
const mustacheExpress = require('mustache-express')
const session = require('express-session')
const PORT = 3000
const blogRouter = require('./routes/blogroute.js')
const bcrypt = require('bcrypt')

const pgp = require('pg-promise')()
const connectionString = 
global.db = pgp(connectionString)

 app.use(session({
     secret: 'N053cr3t',
     resave: false,
     saveUninitialized: true,
}))
app.use(express.urlencoded())

authenticate function
 function authenticate(req, res, next) {
     if (req.session) {
         if(req.session.username) {
             next()
         } else {
             res.redirect('/login')
         }
     }
 }

app.use('/blog', authenticate)
app.use('/blog', blogRouter)

//If using partials for menu mustacheExpress(VIEWS_PATH + '/partials', '.mustache')
app.engine('mustache', mustacheExpress())
app.set('views', './views')
app.set('view engine', 'mustache')

app.get('login', (req,res) => {
    res.render('login')
})

// TODO: AVOID CALLBACK HELL
/// Async: It simply allows us to write promises based code as if it was synchronous and it checks that we are 
// not breaking the execution thread. It operates asynchronously via the event-loop. Async functions will always 
// return a value. It makes sure that a promise is returned and if it is not returned then javascript 
// automatically wraps it in a promise which is resolved with its value.

//async function fun1(req, res){
//  let response = await request.get('http://localhost:3000');
//    if (response.err) { console.log('error');}
//    else { console.log('fetched response');
//}

//The code above asks the javascript engine running the code to wait for the request.get() function 
//to complete before moving on to the next line to execute it. The request.get() function returns a Promise for 
//which user will await . Before async/await, if it needs to be made sure that the functions are running in the 
//desired sequence, that is one after the another, chain them one after the another or register callbacks.

app.post('login', async (req, res) => {
	if (req.session) {
  	let username = req.body.username
    	let password = req.body.password
    }
})

app.get('/signup', (req,res) => {
    res.render('signup')
})

app.post('/signup', async (req, res) => {
     let username = req.body.username
     let password = req.body.password
// TODO: need to code to pull from db
 }

app.get('signout', (req, res) => {
    if (req.session) {
        //error
    }
        // res.redirect('/login')
})

app.listen(3000, () => {
    console.log('Successful server initiation...')
})
