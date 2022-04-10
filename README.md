# P1_Probstat_A_5025201089
Praktikum Probstat Modul 1 
Andi Muhammad Rafli - 5025201089

### Soal 1
> Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.

a. Distribusi Geometrik
> Menggunakan fungsi `dgeom` untuk mendapatkan nilai peluang soal. Setelah dijalankan, akan didapatkan nilai peluang yaitu sebagai berikut 
```
dgeom(x=3, prob=0.20)
```
Output :
```
[1] 0.1024
```

b. Mean distribusi geometrik
> mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3
> `rgeom` digunakan karena diminta data rando
```
mean(rgeom(n=10000, prob=0.20) == 3)
```

Output :
```
[1] 0.1004
```
c. Pada soal ini didapatkan bahwa hasil dari soal 1A dan 1B akan sama nilainya karena bersifat random. Namun hasil dari perhitungan kedua soal tidak akan jauh berbeda

d. Histogram  Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama
```
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
```
Perlu dilakukan instalasi packages terlebih dahilu untuk menggunakan library tersebut

<img width="650" alt="Screen Shot 2022-04-10 at 7 38 54 PM" src="https://user-images.githubusercontent.com/102727966/162618570-66c8839b-60a0-4daf-b66f-5486e4bf046a.png">


e. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.
> Nilai rataan dapat dicari dengan `μ = 1/prob` sedangkan varian `σ² = 1-prob/prob^2` 
```
rataan<-1/prob
varian<-(1-prob)/prob^2
rataan
varian
```
### Soal 2
> Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :

a. Peluang terdapat 4 pasien yang sembuh.
```
dbinom(4, 20, 0.2)
```
Output :
```
[1] 0.2181994
```

b. Grafik Histogram
```
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
  ```
  <img width="644" alt="Screen Shot 2022-04-10 at 7 46 28 PM" src="https://user-images.githubusercontent.com/102727966/162618842-a5044d91-14be-4863-9648-2ccd159718b4.png">


c.  Nilai Rataan (μ) dan Varian (σ²) dari DistribusiBinomial.
> Nilai rataan dapat dicari dengan `μ = n*p` sedangkan varian `σ² = npq` 
```
p = 0.2
n = 4
rataan = n*p
rataan
varian = n*p*(1-p)
varian
```

Output :
```
[1] 0.8
[1] 0.64
```

### Soal 3
>Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis
4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)

a. Peluang bahwa 6 bayi akan lahir di rumah sakit besok
```
lambda = 4.5
X <- 6
poiss1 <- dpois(X,Lambda)
poiss1

```
Output :
```
[1] 0.1281201
```

b. Histogram kelahiran 6 bayi akan lahir di rumah sakit selama
setahun (n = 365)
```
N <- 365
poiss2 <- rpois(N,Lambda)
hist(poiss2,main = "Grafik distribusi poisson kelahiran 6 bayi selama 1 tahun")
```
<img width="787" alt="Screen Shot 2022-04-10 at 7 54 38 PM" src="https://user-images.githubusercontent.com/102727966/162619195-b435e4ac-fd29-4700-bb13-20a5207920c2.png">

c. Kesimpulan yang didapatkan, Jika dibandingkan hasil poin a dan poin b terdapat perbedaan hasil. Hal tersebut dikarenakan simulasi yang dilakukan sebanyak 365 kali sehingga menghasilkan output yang berbeda.

d. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson.
> Nilai rataan dapat dicari dengan `μ = λ` dan varian `σ² = λ` 
```
rataan = varian = lambda
rataan
varian
```
Output :
```
[1] 4.5
[1] 4.5
```

### Soal 4
> Diketahui nilai x = 2 dan v = 10. Tentukan:

a. Fungsi Probabilitas dari Distribusi Chi-Square.
> Mencari peluang distribusi chi-square dengan x = 2, df = 10 dengan menggunakan `dchisq`
Source code dan output :
```
dchisq(2,10)
```
Output : 
 ```
[1] 0.007664155
 ```
b. Histogram dari Distribusi Chi-Square dengan 100 data random.
 <img width="791" alt="Screen Shot 2022-04-10 at 8 03 18 PM" src="https://user-images.githubusercontent.com/102727966/162619532-91bfa3c7-e26a-4992-8fae-593f16b333c2.png">


C. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Chi-Square.
> Nilai rataan dapat dicari dengan `μ = df` sedangkan varian `σ² = 2*df`
Source code dan output :
```
v = 10
rataan = v
rataan
varian = 2*v
varian
```
Output :
```
[1] 10
[1] 20
```

### Soal 5
> Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan

a. Fungsi Probabilitas dari Distribusi Exponensial
>  Mencari peluang distribusi eksponensial dengan n = 10, rate = 3 dengan menggunakan `rexp`
Source code dan output :
```
lambda = 3
rexp(lambda)
```
Output :
```
[1] 0.1469448 1.0318191 1.9817336
```

b. Membuat histogram distribusi eksponensial dengan n = 10, 100, 1000, 10000
```
par(mfrow = c(2, 2))
set.seed(1)
hist(rexp(10), main = "n = 10")
hist(rexp(100), main = "n = 100")
hist(rexp(1000), main = "n = 1000")
hist(rexp(10000), main = "n = 10000")

par(mfrow = c(1, 1))
```
<img width="788" alt="Screen Shot 2022-04-10 at 8 10 32 PM" src="https://user-images.githubusercontent.com/102727966/162619789-ab43e84a-d9d7-445a-ba40-5fa2b80de098.png">

  
c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ = 3
Source code dan output :
```
rataan = lambda
rataan
varian = lambda*lambda
varian
```
Output :
```
[1] 0.3435588
 varian
[1] 0.06560765
```
