
# bagian  a
n = 20
p = 0.2
z = 4

dbinom(x = z, size = n, prob = p)

# bagian b
library(dplyr)
library(ggplot2)

data.frame(x = 0:10, prob = dbinom(x = 0:10, size = n, prob = p)) %>%
  mutate(pasien = ifelse(x == z, x, "lainnya")) %>%
ggplot(aes(x = factor(x), y = prob, fill = pasien)) +
  geom_col() +
  geom_text(
    aes(label = round(prob,2), y = prob + 0.01),
    position = position_dodge(0.9),
    size = 3,
    vjust = 0
  ) +
  labs(title = "Peluang 4 pasien sembuh",
       x = "Sembuh",
       y = "Peluang") 

# baigan c
#mean
n*p
#variance
n*p*(1 - p) 