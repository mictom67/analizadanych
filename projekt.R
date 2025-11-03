---
  title: "Raport z analizy danych"
date: "`r Sys.Date()`"
authors: Michał Tomaszewicz, Paweł Tomaszewski, Kacper Żmudowski, Agata Downar
output:
  rmdformats::material:
  highlight: kate
theme: "lumen"
self_contained: true
number_sections: true
code_folding: show
fig_width: 7
fig_height: 5
fig_caption: true
df_print: paged
---
  
  ```{r setup, include=FALSE}
## Global options
knitr::opts_chunk$set(cache = TRUE)
library(tidyverse)
library(lubridate)
library(rmdformats)

dane <- read_csv("kredyty_new.csv")
```

# Wstęp

***Celem niniejszego raportu jest analiza danych dotyczących kredytów. Dane zostały wczytane z pliku `kredyty_new.csv` i zawierają informacje o różnych aspektach kredytów udzielanych klientom.***
  
  Dane pochodzą ze [strony Kaggle](https://www.kaggle.com/)

```{r data-structure, echo=FALSE}
dane %>%
  glimpse() %>%
  summary(dane)
```