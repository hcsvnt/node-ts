import express from 'express';
import { helper } from './utils/helper.js';

const app = express();
const port = process.env.PORT || 8000;

app.get('/', (req, res) => {
    res.send(helper);
});

app.listen(port, () => {
    return console.log(`Express is listening at http://localhost:${port}`);
});
