import express from 'express';
import router from './routes/router.js';

const app = express();

app.use(router);

const port = process.env.PORT;
// const port = 3001

app.listen(port, () => {
    console.log(`App is listening on port ${port}`)
})
