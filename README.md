# 🍬 Catálogo de Doces

## 📖 Descrição

Este projeto foi desenvolvido com o objetivo de criar um catálogo de doces utilizando um Servidor construído em Node.js integrada a um banco de dados PostgreSQL.

A aplicação permite consultar as informações cadastradas no banco de dados e exibi-las em uma página web de forma organizada e intuitiva.

O projeto foi desenvolvido para praticar os conceitos do segundo bimestre de DW1.

---

# ⚙️ Tecnologias Utilizadas

- HTML
- CSS
- JavaScript
- Node.js
- Express.js
- PostgreSQL
- Biblioteca pg (conexão com o banco)
- Dotenv (variáveis de ambiente)

---

# 📂 Estrutura do Projeto

```
Projeto/
│
├── Database/
│   └── scripts.sql
│
├── Public/
│   ├── index.html
│   ├── index.css
│   └── imagens/
│
├── server.js
├── package.json
├── .env
└── README.md
```

---

# 🗄️ Banco de Dados

O banco possui duas tabelas relacionadas.

### Categorias

Armazena as categorias dos doces.

Campos:

- id_categoria
- nome_categoria

### Doces

Armazena os doces cadastrados.

Campos:

- id_doce
- nome_doce
- preco
- descricao
- id_categoria

A tabela **Doces** possui relacionamento N:1 com a tabela **Categorias**, através da chave estrangeira `id_categoria`.

---

# 🚀 Funcionamento

Ao iniciar o servidor Node.js, a API fica disponível na porta configurada no arquivo `.env`.

O navegador acessa o arquivo `index.html`, que utiliza JavaScript para realizar requisições HTTP para a API utilizando a função `fetch()`.

A API consulta o banco PostgreSQL e retorna os dados em formato JSON.

Esses dados são exibidos dinamicamente na página.

Fluxo da aplicação:

1. O usuário acessa a página.
2. Clica em um botão de consulta.
3. O JavaScript envia uma requisição para a API.
4. O servidor recebe a requisição.
5. O servidor consulta o PostgreSQL.
6. Os dados são retornados em JSON.
7. As informações aparecem na tela.

---

# ▶️ Como Executar o Projeto

## 1. Clonar o projeto

```bash
git clone https://github.com/SEU-USUARIO/SEU-REPOSITORIO.git
```

---

## 2. Entrar na pasta

```bash
cd nome-do-projeto
```

---

## 3. Instalar as dependências

```bash
npm install
```

---

## 4. Configurar o arquivo .env

Exemplo:

```env
DB_HOST=localhost
DB_PORT=5432
DB_NAME=nome_do_banco
DB_USER=postgres
DB_PASSWORD=sua_senha

PORT=3001
```

---

## 5. Criar o banco de dados

Execute o script SQL responsável pela criação das tabelas e inserção dos registros.

---

## 6. Iniciar o servidor

```bash
node server.js
```

---

# 📌 Funcionalidades

- Listar todos os doces.
- Consultar informações armazenadas no banco de dados.
- Exibir nome, preço e categoria dos doces.
- Comunicação entre Front-end, API e PostgreSQL.

---

# 👨‍💻 Autor

Projeto desenvolvido por **Maria Eduarda Brito Lucheti Martioli** para a disciplina de Desenvolvimento Web 1.