df <- data.frame(
  imie = c("Anna", "Bartek", "Celina", "Dawid", "Ewa"),
  waga = c(60, 85, 55, 90, 70),
  wzrost = c(165, 180, 160, 175, 168)
)

# 10.1 Wykres punktowy wzrost vs waga z ramki df
plot(
  df$wzrost, df$waga,
  main = "Zależność między wzrostem, a wagą",
  xlab = "Wzrost (cm)",
  ylab = "Waga (kg)",
  pch = 21,           # kształt: koło
  col = "blue",       # kolor obwódki
  bg = "blue"         # kolor wypełnienia
)

# 10.2 Histogram wartości ekspresji dla genu x.LHPP
dane <- read.csv("tissue_gene_expression_sample.csv")
hist(
  dane$x.LHPP,
  main = "Histogram ekspresji genu x.LHPP",
  xlab = "Ekspresja genu x.LHPP",
  col = "skyblue",
  border = "white"
)

# 10.3 Wykres pudełkowy (boxplot) ekspresji genów w różnych tkankach z ggplot2
install.packages("ggplot2")   # uruchom tylko raz, potem możesz zakomentować
library(ggplot2)

# Zakładam, że kolumna z nazwą tkanki to np. 'Tissue' i ekspresja to np. 'x.LHPP'
ggplot(dane, aes(x = Tissue, y = x.LHPP, fill = Tissue)) +
  geom_boxplot() +
  ggtitle("Rozkłady wartości ekspresji genów pomiędzy różnymi tkankami") +
  xlab("Tkanki") +
  ylab("Ekspresja genu x.LHPP") +
  theme_minimal()