#2a
dbinom(4, 20, 0.2)

#2b
data.frame(x = 0:10, prob = dbinom(x = 0:10,20,0.2)) %>%
  mutate(X = ifelse(x == 4, 4, "other")) %>%
  ggplot(aes(x = factor(x), y = prob, fill = X)) +
  geom_col() +
  geom_text(
    aes(label = round(prob,2), y = prob + 0.01),
    position = position_dodge(0.9),
    size = 3,
    vjust = 0
  ) +
  labs(title = "Peluang jika X = 4 pasien sembuh.", x = "Sembuh (x)", y = "Peluang")

#2c
p = 0.2
n = 4
rataan = n*p
rataan
varian = n*p*(1-p)
varian