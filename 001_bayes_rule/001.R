# 00 Packages ----------

require(bayesrules)
require(tidyverse)
require(janitor)

# 01 Data --------------

data(fake_news)

fake_news |> 
  slice_head()

fake_news |>
  glimpse()

fake_news |> 
  tabyl(type) |> 
  adorn_totals("row")

fake_news |> 
  tabyl(
    title_has_excl, type
  ) |> 
  adorn_totals("row")
