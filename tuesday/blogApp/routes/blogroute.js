const express = require('express')
const Post = require('../models/posts.js')

const router = express.Router()


router.get('/', async (req, res) => {
    // TODO: add user authentication
    // let userid = req.session.userid
    let posts = await db.any('SELECT postid, title, author, dateposted, posttext FROM posts WHERE userid = $1 ORDER BY dateposted DESC', [userid])
    res.render('blog', {posts: posts})
})

router.get('/addblog', (req, res) => {
    res.render('addBlog')
})

module.exports = router