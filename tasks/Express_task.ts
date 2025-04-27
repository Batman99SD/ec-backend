import express, { Request, Response} from 'express';

const app = express();
const port = 3000;

app.use(express.json());

app.get('/', (req: Request, res: Response) => {
  res.send('This app is working');
});

app.post('/check', (req: Request, res: Response) => {
    if(req.is('application/json')) {
        res.send('This is a JSON data \n');
    }
    else { 
        res.status(400).send('Denied: This is not a JSON data \n');
    } 
});

app.listen(port, () => {
  console.log(`Server is running at http://localhost:${port}`);
});