const express = require('express');
const router = express.Router();

const pool = require('../database');


router.get('/add', (req, res) =>{

    res.render('links/add');
});

router.post('/add', async (req, res) =>{
    const {title, url, description} = req.body;
    const newLink = {
        title,
        url,
        description
    };

    await pool.query('insert into links set ?', [newLink]);
    res.redirect('/links');
}
);

router.get('/', async (req, res) =>{
 
    const  links = await pool.query('select * from links');
    console.log(links);
    res.render('links/list', { links });
});


module.exports = router;