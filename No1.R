#1a
dgeom(x=3, prob=0.20)

#1b
mean(rgeom(n=10000, prob=0.20) == 3)

#1c
#Hasil 1a akan sama tetapi untuk 1b nilainya akan berbeda karena nilai random.
#Namun hasil perhitungan kedua poin tersebut nilainya tidak akan berbeda jauh.

#1d
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
rataan

#varian
varian<-(1-prob)/prob^2
varian