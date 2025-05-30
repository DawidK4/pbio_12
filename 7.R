# 7.0 Utworzenie listy bio_lista
bio_lista <- list(
  sekwencje_DNA = c("ATGCCTGAC", "GTCAGTCAG", "CTGATCGATGCTA"),
  gatunki = c("Homo sapiens", "Mus musculus", "Drosophila melanogaster"),
  ekspresja_genow = matrix(runif(9, 0, 100), nrow = 3),
  cechy_morfologiczne = data.frame(
    Gatunek = c("Homo sapiens", "Mus musculus", "Drosophila melanogaster"),
    Wysokość = c(170, 10, 0.1),
    Waga = c(70, 0.02, 0.0002)
  ),
  mutacje = list(Homo_sapiens = c("BRCA1", "BRCA2"), Mus_musculus = "p53")
)

# 7.1 Wyświetl podstawowe informacje o liście
str(bio_lista)

# 7.2 Wyświetl nazwy gatunków zawarte w liście
print(bio_lista$gatunki)

# 7.3 Dodaj nową sekwencję DNA (CGATGTAGCTA) do listy sekwencji
bio_lista$sekwencje_DNA <- c(bio_lista$sekwencje_DNA, "CGATGTAGCTA")

# 7.4 Wylicz średnią ekspresję genów z macierzy ekspresji
srednia_ekspresja <- mean(bio_lista$ekspresja_genow)
print(srednia_ekspresja)

# 7.5 Dodaj nowy gatunek do ramki danych cechy_morfologiczne
nowy_gatunek <- data.frame(
  Gatunek = "Arabidopsis thaliana",
  Wysokość = 0.3,
  Waga = 0.001
)
bio_lista$cechy_morfologiczne <- rbind(bio_lista$cechy_morfologiczne, nowy_gatunek)

# 7.6 Wyświetl informacje o mutacjach dla Homo sapiens
print(bio_lista$mutacje$Homo_sapiens)

# 7.7 Dodaj nową mutację dla Mus musculus (np. Lmna)
bio_lista$mutacje$Mus_musculus <- c(bio_lista$mutacje$Mus_musculus, "Lmna")