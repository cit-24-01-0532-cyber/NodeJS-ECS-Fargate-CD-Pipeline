const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('<h1>🎉 AWS ECS Fargate Pipeline is success!</h1><p>Node.js App is now Live.</p>');
});

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});