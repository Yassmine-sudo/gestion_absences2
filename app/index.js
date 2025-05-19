const express = require('express');
const app = express();

// Utiliser le port fourni par l'environnement Docker ou 8080 par défaut
const PORT = process.env.PORT || 8080;

app.get('/', (req, res) => {
  res.send('Hello Houda');
});

// Très important : écouter sur 0.0.0.0 pour que Docker puisse exposer le port
app.listen(PORT, '0.0.0.0', () => {
  console.log(`Serveur démarré sur http://localhost:${PORT}`);
});
