global.users = [] //replace with actual db

const express = require('express')
const app = express()
const mustacheExpress = require('mustache-express')
const session = require('express-session')
const PORT = 3000
const blogRouter = require('./routes/blogroute.js')
const bcrypt = require('bcrypt')

const pgp = require('pg-promise')()
// const connectionString = 
// global.db = pgp(connectionString)

// app.use(session({
//     secret: 'mdhf888',
//     resave: false,
//     saveUninitialized: true,
// }))
app.use(express.urlencoded())

//authenticate function
// function authenticate(req, res, next) {
//     if (req.session) {
//         if(req.session.username) {
//             next()
//         } else {
//             res.redirect('/login')
//         }
//     }
// }

// app.use('/blog', authenticate)
app.use('/blog', blogRouter)

//If using partials for menu mustacheExpress(VIEWS_PATH + '/partials', '.mustache')
app.engine('mustache', mustacheExpress())
app.set('views', './views')
app.set('view engine', 'mustache')

app.get('login', (req,res) => {
    res.render('login')
})

// TODO: need to add app.post('login', async (req, res) => {
    // if (req.session) {
    //     let username = req.body.username
    //     let password = req.body.password
    // }
// })

app.get('/signup', (req,res) => {
    res.render('signup')
})

// app.post('/signup', async (req, res) => {
//     let username = req.body.username
//     let password = req.body.password
// TODO: need to code to pull from db
// }

app.get('signout', (req, res) => {
    if (req.session) {
        //error
    }
        // res.redirect('/login')
})

app.listen(3000, () => {
    console.log('Successful server initiation...')
})
