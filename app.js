const express = require("express");
const bodyParser = require("body-parser");
const app = express();
const port = 3000;

app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

const routes = require("./routes/kunjunganRoute");
app.use("/", routes);

app.listen(port, () => {
  console.log(`Logdc listening on port ${port}`);
});
