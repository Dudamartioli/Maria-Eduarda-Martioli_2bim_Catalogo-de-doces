const express = require('express');
const cors = require('cors');
const os = require('os');
const { Pool } = require('pg');
require('dotenv').config();

const app = express();
app.use(cors());
const port = process.env.PORT || 3001;

// Configuração do pool de conexão com PostgreSQL
const pool = new Pool({
    host: process.env.DB_HOST,
    port: process.env.DB_PORT,
    database: process.env.DB_NAME,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
});

app.get('/doces', async (req, res) => {
    try {

        const query = `
            SELECT *
            FROM public.doces
        `;

        const result = await pool.query(query);

        return res.status(200).json(result.rows);

    } catch (error) {

        console.log('ERRO NO BANCO:');
        console.log(error);

        return res.status(500).json({
            mensagem: "Erro ao consultar doces",
            erro: error.message
        });

    }
});


app.get('/trufas', async (req, res) => {
    try {
        const resultado = await pool.query(
            'SELECT * FROM public.doces WHERE id_categoria = 1'
        );

        res.json(resultado.rows);
    } catch (erro) {
        res.status(500).json({ erro: erro.message });
    }
});

app.get('/paodemel', async (req, res) => {
    try {
        const resultado = await pool.query(
            'SELECT * FROM public.doces WHERE id_categoria = 2'
        );

        res.json(resultado.rows);
    } catch (erro) {
        res.status(500).json({ erro: erro.message });
    }
});




app.listen(port, () => {
    console.log(`Servidor rodando na porta ${port}`);
});