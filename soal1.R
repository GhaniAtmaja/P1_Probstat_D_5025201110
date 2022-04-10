# bagian a
p = 0.2
x = 3
dgeom(x, p)

# bagian b
mean(rgeom(n = 10000, p) == 3)

# bagian c
# Hasil poin a dan poin b mempunyai hasil yang lumayan deket. dikarenakan jumlah data b yang lumayan banyak sehingga rata-rata distribusi nilai acak b mendekati hasil poin a

# bagian d
#install.packages("ggplot2")
#install.packages("dplyr")

library(dplyr)
library(ggplot2)

data.frame(x = 0:10, prob = dgeom(x = 0:10, p)) %>% 
  mutate(fail = ifelse(x == 3, 3, "lain")) %>%
ggplot(aes(x = factor(x), y = prob, fill = fail)) +
  geom_col() +
  geom_text(
    aes(label = round(prob, 2), y = prob - 0.01)) +
    labs(title = "Peluang X = 3 Gagal Sebelum Sukses Pertama", 
        x = "Kegagalan sebelum kesuksesan pertama (x)", 
        y = "Peluang")  

# bagian e
# mean
1/p 
# variance
(1 - p) / p^2 

