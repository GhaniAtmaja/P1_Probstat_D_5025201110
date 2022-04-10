# bagian a
x = 6
l = 4.5

dpois(x, l)

# bagian b
n = 365

library(dplyr)
library(ggplot2)

bayi = data.frame(prob = rpois(n = n, lambda = l))

bayi %>% ggplot() +
  geom_histogram(aes(x = prob, 
                     y = stat(count / sum(count)), 
                     fill = prob == 6),
                     binwidth = 1, 
                 color = "black") +
  scale_x_continuous(breaks = 0:10) +
  labs(title = "Simulasi kelahiran 6 bayi akan lahir",
       x = "kelahiran bayi per periode",
       y = "Proporsi")

bayi %>% dplyr::summarize(enam_bayi = sum(bayi$prob == 6) / n())

# bagian c
# Hasil dari poin a dan poin b memliki nilai yang tidak begitu berbeda

# bagian d
# mean
l
#variance
l

