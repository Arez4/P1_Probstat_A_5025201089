#1A
dgeom(x=3, prob=0.20)

#1B
mean(rgeom(n=10000, prob=0.20) == 3)

#1C
#Pada soal ini didapatkan bahwa hasil dari soal 1A dan 1B akan sama nilainya karena bersifat random. Namun hasil dari perhitungan kedua soal tidak akan jauh berbeda

#1D
library(dplyr)
library(ggplot2)

data.frame(x = 0:10, prob = dgeom(x = 0:10, prob = 0.20)) %>%
  mutate(Failures = ifelse(x == 3, 3, "other")) %>%
  ggplot(aes(x = factor(x), y = prob, fill = Failures)) +
  geom_col() +
  geom_text(
    aes(label = round(prob,2), y = prob + 0.01),
    position = position_dodge(0.9),
    size = 3,
    vjust = 0
  ) +
  labs(title = "Probabilitas untuk X = 3 Gagal Sebelum Sukses Pertama",
       subtitle = "Geometric(.2)",
       x = "Kegagalan Sebelum Sukses Pertama (x)",
       y = "Peluang")

#1e
rataan<-1/prob
varian<-(1-prob)/prob^2
rataan
varian