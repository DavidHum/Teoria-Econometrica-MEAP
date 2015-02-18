

#setwd("../Desktop/Practi 1 Econometria")


```{r Parte a}
Ocupacion <- read.delim("Ocupacion.csv", stringsAsFactor = FALSE)
Miembros <- read.delim("Miembros.csv", stringsAsFactor = FALSE)
```

Ocupacion$EFT_VIVIENDA <- as.factor(Ocupacion$EFT_VIVIENDA)
Ocupacion$EFT_MIEMBRO <- as.factor(Ocupacion$EFT_MIEMBRO)
Ocupacion$EFT_HOGAR <- as.factor(Ocupacion$EFT_HOGAR)

Miembros$EFT_VIVIENDA <- as.factor(Miembros$EFT_VIVIENDA)
Miembros$EFT_MIEMBRO <- as.factor(Miembros$EFT_MIEMBRO)
Miembros$EFT_HOGAR <- as.factor(Miembros$EFT_HOGAR)


df <- merge(Miembros, Ocupacion,
            by.x = c("EFT_VIVIENDA","EFT_HOGAR","EFT_MIEMBRO"),
            by.y = c("EFT_VIVIENDA","EFT_HOGAR","EFT_MIEMBRO"))
summary(df[,1:10])

df$EFT_SEXO = as.factor(df$EFT_SEXO)

