# Krigeage avec R

Exemple comment on peut faire du krigeage ordinaire avec R, en utilisant le package __[«automap»](https://cran.r-project.org/web/packages/automap/index.html)__ (voir aussi [ici](http://www.numbertheory.nl/2013/02/17/automatic-spatial-interpolation-with-r-the-automap-package/)).

__automap__ sélectionne un modèle de variogramme automatiquement, et le krigeage devient ainsi très simple à effectuer, même avec peu de connaissances théoriques.

Cet exemple utiilise un jeu de données simulé, qui se trouve dans `datasets/samples` (il y a également un fichier Shape pour visualiser les points de mesure dans QGIS ou ArcGIS).

Un jeu de données simulé a également l'avantage que nous connaissons en quelque sorte la _«vérité»_, et nous pouvons juger la qualité du variogramme sélectionné ainsi que le résultat du krigeage.

Il s'avère que le package automap sélectionne un variogramme qui est très proche de celui qui a été utilisé pour générer les données simulées. Difficile de faire mieux avec une procédure automatique.

Le fichier [samples-automap.ipynb](samples-automap.ipynb) est un Jupyter Notebook qui contient la procédure comment faire le krigeage, ensemble avec des explications et commentaires.

Le code brut identique peut également être trouvé dans [samples-automap.R](samples-automap.R).

