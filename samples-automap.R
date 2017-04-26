# Script pour krigeage ordinaire sur jeu de données "samples"
# Ce script R correspond aux explications données dans samples-automap.ipynb

library(automap)

# Charger le fichier; il peut être nécessaire d'adapter le chemin du fichier
s = read.delim(file="datasets/samples/samples.tsv")

summary(s)

coordinates(s) = ~ x + y
class(s)

g = SpatialGrid(grid=GridTopology(cellcentre.offset=c(0,0), cellsize=c(1,1), cells.dim=c(160,112)))

krig_result = autoKrige(t~1, s, g)

plot(krig_result)

# Écrire le résultat dans un fichier GeoTIFF; il peut être nécessaire d'adapater le chemin.
library(rgdal)
writeGDAL(krig_result$krige_output, "datasets/samples/samples-raster/samples-krig.tif")
