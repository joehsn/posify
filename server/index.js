import express from "express";
import cors from "cors";
import bodyParser from "body-parser";

const PORT = process.env.PORT || 5000;

const app = express();

app.use(cors());
app.use(bodyParser.json());

app.get("/", (req, res) => {
    res.send("POSify API is running");
});

app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});

export default app;
