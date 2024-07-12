get_sensitivities <- function() {
  Permafrost <- list(
    states = list(
      list(ett = c(1e1, 1e2), cy = 74), # ett = response time interval, here 10-100 years
      list(ett = c(1e1, 1e2), cy = 57), # cy = southern limit, here 57°N
      list(ett = c(1e1, 1e2), cy = 54),
      list(ett = c(1e1, 1e3), cy = 51)
    )
  )
  # ==========================================================================
  peatlands <- list(
    states = list(
      list(ett = c(1e1, 1e2), cy = 57),
      list(ett = c(1e2, 1e3), cy = 56),
      list(ett = c(1e1, 1e2), cy = 54)
    )
  )

  Lakes <- list(
    states = list(
      list(ett = c(1e0, 1e1), cy = 83),
      list(ett = c(1e0, 1e1), cy = 74),
      list(ett = c(1e1, 1e3), cy = 58),
      list(ett = c(1e1, 1e2), cy = 52)
    )
  )

  # ==========================================================================
  Snowpack <- list(
    states = list(
      list(ett = c(1e1, 1e2), cy = 74),
      list(ett = c(1e1, 1e2), cy = 61),
      list(ett = c(1e2, 1e3), cy = 58)
    )
  )
  # ==========================================================================
  Vegetation <- list(
    states = list(
      list(ett = c(1e1, 1e2), cy = 74),
      list(ett = c(1e1, 1e2), cy = 61),
      list(ett = c(1e2, 1e3), cy = 58),
      list(ett = c(1e2, 1e3), cy = 51),
      list(ett = c(1e2, 1e3), cy = 49)
    )
  )
  # ==========================================================================

  vertebrates <- list(
    states = list(
      list(ett = c(1e0, 1e2), cy = 83),
      list(ett = c(1e1, 1e2), cy = 61),
      list(ett = c(1e2, 1e3), cy = 58)
    )
  )
  coords <- list(
    Permafrost = Permafrost,
    peatlands = peatlands,
    Lakes = Lakes,
    Snowpack = Snowpack,
    Vegetation = Vegetation,
    vertebrates = vertebrates
  )
  ls_nm <- list(
    per = c(
      "Polar desert continuous",
      "Polar tundra continuous",
      "Extensive discontinuous",
      "Sporadic discontinuous",
      "Relict"
    ),
    pea = c(
      "Polygonal peatlands",
      "Complex of tundra peatlands",
      "Mosaic palsa and plateau",
      "Non-permafrost peatlands"
    ),
    lak = c(
      "Perrenial ice cover",
      "Intermittent ice-free",
      "Season. ice cover/clear",
      "Season. ice cover/low colour",
      "Season. ice cover/high colour"
    ),
    sno = c(
      "Polar desert",
      "Polar tundra",
      "Shrub tundra",
      "Boreal forest"
    ),
    veg = c(
      "Polar desert",
      "Polar tundra",
      "Shrub tundra",
      "Open-crown coniferous",
      "Closed-crown coniferous",
      "Mixed wood boreal"
    ),
    ver = c(
      "High-Arctic",
      "Arctic",
      "Low arctic",
      "Boreal"
    )
  )
  list(coords, ls_nm)
}
