const express = require('express')

const rotas = express()

rotas.get('/', (req,res)=>{
return res.json('OK')
})

module.exports = rotas