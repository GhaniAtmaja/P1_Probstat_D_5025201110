# P1_Probstat_D_5025201110

| NRP        | NAMA                                 |
| ---------- | ------------------------------------ |
| 5025201110 | Muhammad Ghani Taufiqurrahman Atmaja |

## Nomor 1
### A
```r
p = 0.2
x = 3
dgeom(x, p)
```
Menggunakan fungsi dgeom untuk menghitung peluang distribusi geometrik

### B
```r
mean(rgeom(n = 10000, prob = p) == 3)
```
Untuk menghitung dengan data yang random bisa menggunakan fungsi rgeom lalu hitung meannya dengan fungsi mean()

### C
Hasil poin a dan poin b mempunyai hasil yang lumayan deket. dikarenakan jumlah data b yang lumayan banyak sehingga 
rata-rata distribusi nilai acak b mendekati hasil poin a

### D 

![image](https://user-images.githubusercontent.com/77779184/162625442-703d3709-89e9-4d29-b89d-9724231800bb.png)

### E
Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.
```r
# mean
1/p 
# variance
(1 - p) / p^2 
```
Menggunakan rumus biasa untuk menghasilkan mean dan varian

## Nomor 2
### A
```r
n = 20
p = 0.2
z = 4

dbinom(x = z, size = n, prob = p)
```
Menggunakan fungsi dbinom untuk menghitung peluang distribusi binomial 

### B
![image](https://user-images.githubusercontent.com/77779184/162625561-705bc7a8-814d-47de-b48c-71be28c1d48a.png)

### C
```r
#mean
n*p
#variance
n*p*(1 - p) 
```
Menggunakan rumus biasa untuk menghasilkan mean dan varian

## Nomor 3
### A

```r
x = 6
l = 4.5

dpois(x, l)
```
Menggunakan fungsi dpois untuk menghitung peluang distribusi poisson

### B
![image](https://user-images.githubusercontent.com/77779184/162625647-fcfbe4d1-6130-4665-af44-098865a7e273.png)

### C
dan bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan? <br>
Hasil dari poin a dan poin b memliki nilai yang tidak begitu berbeda

### D 
```r
# mean
l
#variance
l
```
Menggunakan rumus biasa untuk menghasilkan mean dan varian

## Nomor 4
### A
Fungsi Probabilitas dari Distribusi Chi-Square
```r
X = 2
v = 10
dchisq(x = X,df = v)
```
Menggunakan fungsi dchisq untuk menghitung peluang distribusi Chi-Square

### B
![image](https://user-images.githubusercontent.com/77779184/162625879-a3e8c013-afd1-4210-9df3-d781d3194836.png)

### C
Nilai Rataan (μ) dan Varian (σ²) dari DistribusiChi-Square.
```r
#mean
v
#variance
2*v 
``` 
Menggunakan rumus biasa untuk menghasilkan mean dan varian

## Nomor 5
### A
Fungsi Probabilitas dari Distribusi Exponensial
```r
set.seed(1)
l = 3
dexp(x = seq(1, 10, by = 0.1) ,)
#rexp(10)
```
Menggunakan fungsi dexp untuk menghitung peluang distribusi exponensial. nilai x adalah nilai 1 - 10 dengan interval 0.1

### B
Histogram untuk 10, 100, 1000 dan 10000 bilangan random
![image](https://user-images.githubusercontent.com/77779184/162626064-cc2160ed-fe7a-437b-8cc8-3fa47368e067.png)
![image](https://user-images.githubusercontent.com/77779184/162626070-f31dfb21-8e19-497a-a8ee-7f49f055d162.png)
![image](https://user-images.githubusercontent.com/77779184/162626072-821d233f-ab6d-4315-bbe4-02624e022afa.png)
![image](https://user-images.githubusercontent.com/77779184/162626077-9948aeae-167e-4a6a-94d5-26acc70371b6.png)

### C
```r
# mean
1 / l

# variance
1 / (l * l)
```
Menggunakan fungsi mean untuk menghitung rata-rata dan fungsi var untuk menghitung varian

## Nomor 6
### A
```r
n = 100
mean = 50
sd = 8
r = rnorm(n, mean, sd)
a = mean(r)

x1 = floor(a)
x2 = ceiling(a)
dn = pnorm(x2, mean, sd, lower.tail = TRUE) - pnorm(x1, mean, sd, lower.tail = TRUE)
cat("Distribusi normal P(X1 <= x <= X2) = ", dn)
```
Pertama generate nilai randomnya lalu di rata-rata. Setelah itu bisa didapatkan nilai x1 dan x2. Kemudian baru hitung peluang distribusi normal P(X1 ≤ x ≤ X2). Peluang distribusi normal P(X1 ≤ x ≤ X2) bisa didapat dari P(x ≤ X2) -  P(x ≤ X1). Tinggal dihitung menggunakan fungsi pnorm

```r
z_score_x1 = (x1-mean)/sd
z_score_x2 = (x2-mean)/sd
cat("Z-Score X1 = ", z_score_x1, "\nZ-Score X2 = ", z_score_x2)

plot(r)
```
Nilai z-score didapat dari x-mean/sd

### B
![image](https://user-images.githubusercontent.com/77779184/162626248-9a7db908-4f64-41d8-9023-cbda3818a929.png)

### C
```r
#variance
var(rnorm(n, mean, sd))
```
Menggunakan fungsi var untuk mencari varian 
