# Django REST Framework - Hello World

Un projet Django REST Framework dockerisé qui affiche un simple "Hello World" en page d'accueil.

## 🚀 Technologies utilisées

- **Django REST Framework** - Framework web pour API REST
- **Python 3.11** - Langage de programmation
- **Docker** - Conteneurisation de l'application
- **Docker Compose** - Orchestration multi-conteneurs

## 📁 Structure du projet

```
.
├── Dockerfile
├── compose.dev.yml
├── compose.prod.yml
├── README.md
└── app/
    ├── requirements.txt
    ├── manage.py
    └── djangoapi/
        ├── settings.py
        ├── urls.py
        └── ...
```

## 🛠️ Installation et lancement

### Prérequis

- Docker
- Docker Compose

### Environnement de développement

1. **Cloner le repository**
   ```bash
   git clone <url-du-repo>
   cd <nom-du-projet>
   ```

2. **Lancer l'application en mode développement**
   ```bash
   docker-compose -f compose.dev.yml up --build
   ```

3. **Accéder à l'application**
   
   Ouvrez votre navigateur et rendez-vous sur : http://localhost:8000

### Environnement de production

1. **Lancer l'application en mode production**
   ```bash
   docker-compose -f compose.prod.yml up --build -d
   ```

2. **Accéder à l'application**
   
   L'application sera disponible sur : http://localhost:8000

## 🔧 Commandes utiles

### Gestion des conteneurs

```bash
# Arrêter les conteneurs
docker-compose -f compose.dev.yml down

# Voir les logs
docker-compose -f compose.dev.yml logs -f

# Reconstruire les images
docker-compose -f compose.dev.yml build --no-cache
```

## ⚙️ Configuration

### Variables d'environnement

| Variable | Développement | Production | Description |
|----------|---------------|------------|-------------|
| `DEBUG` | `True` | `False` | Mode debug Django |
| `DJANGO_SETTINGS_MODULE` | `djangoapi.settings` | `djangoapi.settings` | Module de configuration Django |

### Ports

- **Application Django** : Port 8000 (accessible via http://localhost:8000)

## 📝 Fonctionnalités

- ✅ Page d'accueil avec "Hello World"
- ✅ Configuration Docker multi-environnements

## 🐛 Dépannage

### L'application ne démarre pas

1. Vérifiez que Docker est bien démarré
2. Assurez-vous qu'aucun autre service n'utilise le port 8000
3. Consultez les logs : `docker-compose -f compose.dev.yml logs`

### Erreur de permissions

Si vous rencontrez des erreurs de permissions, vous pouvez ajuster les permissions des fichiers :

```bash
sudo chown -R $USER:$USER app/
```

### Port déjà utilisé

Si le port 8000 est déjà utilisé, modifiez le mapping dans le fichier compose :

```yaml
ports:
  - "8001:8000"  # Utilisera le port 8001 au lieu de 8000
```

## 📚 Documentation

- [Django REST Framework](https://www.django-rest-framework.org/)
- [Documentation Docker](https://docs.docker.com/)
- [Django Documentation](https://docs.djangoproject.com/)

## 🤝 Contribution

1. Fork le projet
2. Créez votre branche de feature (`git checkout -b feature/nouvelle-fonctionnalite`)
3. Committez vos changements (`git commit -am 'Ajout d'une nouvelle fonctionnalité'`)
4. Push vers la branche (`git push origin feature/nouvelle-fonctionnalite`)
5. Ouvrez une Pull Request
