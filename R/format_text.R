#' Functions for consistent formatting of inline text results.
#'
#' @param park_code string. The 4-letter park unit code.
#' @param year string. The year to get results for.
#' @param nwlon_station1 string. NOAA Tides and Currents station number for county1.
#' @param nwlon_station_location1 string. A text description of the location of the NOAA Tides and Currents station for county1.
#' @param nwlon_base_year1 string. Year that the tide data record starts at the NOAA Tides and Currents station for county1. 
#' @param nwlon_station2 string. Optional, NOAA Tides and Currents station number for county2.
#' @param nwlon_station_location2 string. Optional, A text description of the location of the NOAA Tides and Currents station for county2.
#' @param nwlon_base_year2 string. Optional, Year that the tide data record starts at the NOAA Tides and Currents station for county2.
#'
#' @description Functions for consistent formatting of inline text results.
#'    `r background_text_fun()` prints the first 2 introductory paragraphs of the report.
#'    `r temp_summary()` prints the summary of temperature results for each county.
#'    `r noaa_ncei_timeseries_links()` prints the proper link for downloading historical data for each county. 
#'    `r precip_summary()` prints the summary of precipitation results for each county.
#'    `r tides_text_fun()` prints a description of the tides data.
#'    `r wind_text_fun()` prints a description of the wind data.
#'
#' @name format_text
#' @import dplyr
#'
#' @rdname format_text    
#' @export
background_text_fun <- function(park_code) {
  if (park_code == "THST") {
    text <- list(
      "paragraph1" = "Weather and climate play significant roles in driving both physical and ecological processes. For example, forest stand dynamics and ecology are affected by meteorological and climatological events such as wind, ice storms, and drought. For research and long-term ecological monitoring, weather and climate data provide the potential for correlations to be made with observed physical and ecological pattern data.",
      "paragraph2" = ""
    )
  } else {
    text <- list(
      "paragraph1" = "Weather and climate play significant roles in driving both physical and ecological processes. For example, the active processes that shape the North Atlantic coastline are largely the result of meteorological events such as wind-driven waves. For research and long-term ecological monitoring, weather and climate data provide the potential for correlations to be made with observed physical and ecological pattern data.",
      "paragraph2" = "Because tide levels and wind can be significant for coastal parks, the annual water level and wind data are included. "
    )
  }
  
  return(text)
}
#'
#' @rdname format_text
#' @export
temp_summary <- function(park_code, year) {
  if (park_code == "ASIS") {
    if (year == "2020") {
      text <- list(
        "county1" = "Overall, 2020 was the 2nd warmest year on record with an average temperature of 59.5 °F — 3.6 degrees above average (Figure 1). Spring nearly reached “above normal” temperatures, while summer, fall, and winter seasons fell within “much above normal” temperatures. 2020 had the 2nd warmest winter on record. The warmest month was July with an average of 81 degrees — 4.7 degrees over the monthly average. Every month had higher than average temperatures, except May at 1.5 degrees below average (Table 1).",
        "county2" = ""
      )
    } else if (year == "2025") {
      text <- list(
        "county1" = "Overall, 2025 was the 23rd warmest year on record with an average temperature of 57.4 °F — 1.4 degrees above average (Figure 1). Spring fell within “much above normal” temperatures, winter and summer fell within “above normal temperatures”, and fall fell within “near normal” temperatures. 2025 had the 3rd warmest spring on record. The warmest month was July with an average of 79.7 degrees — 3.3 degrees over the monthly average. Nine out of twelve months had higher than average temperatures. Only January, August, and December had lower than average monthly temperatures (Table 1).",
        "county2" = ""
      )
    } 
  } else if (park_code == "GEWA") {
    if (year == "2020") {
      text <- list(
        "county1" = "Overall, 2020 was the 6th warmest year on record with an average temperature of 59.0 °F — 2.3 degrees above average (Figure 1). Spring fell within “below normal” temperatures, fall and summer fell within “above normal” temperatures, and winter fell within “much above normal” temperatures. 2020 had the 4th warmest winter on record at GEWA. The warmest month was July with an average of 81.9 degrees — 4.4 degrees over the monthly average (Table 1).",
        "county2" = ""
      )
    } else if (year == "2025") {
      text <- list(
        "county1" = "Overall, 2025 was the 28th warmest year on record with an average temperature of 57.7 °F - 1.0 degrees above average (Figure 1). Seasonally, it was the 3rd warmest spring on record at GEWA. Winter fell within “above normal” temperatures, while summer and fall fell within “near normal” temperatures. The warmest month was July with an average of 81.0 degrees - 3.4 degrees over the monthly average (Table 1).",
        "county2" = ""
      )
    }
  } else if (park_code == "SAHI") {
    if (year == "2020") {
      text <- list(
        "county1" = "Overall, 2020 was the 3rd warmest year on record with an average temperature of 56.0 °F — 3.8 degrees above average (Figure 1). Spring fell within “near normal” temperatures, while summer, fall, and winter seasons fell within “much above normal” temperatures. 2020 had the 2nd warmest winter on record. The warmest month was July with an average of 79.1 degrees — 4.9 °F above the monthly average (Table 1).",
        "county2" = ""
      )
    } else if (year == "2025") {
      text <- list(
        "county1" = "Overall, 2025 was the 14th warmest year on record with an average temperature of 54.9 °F - 2.5 degrees above average (Figure 1). Seasonally, 2025 was the 4th warmest spring on record at SAHI. Summer and winter fell within “above normal” temperatures and fall fell within “near normal” temperatures. The warmest month was July with an average of 79.0 degrees - 4.6 °F above the monthly average (Table 1). Elevn out of twelve months had a higher than average temperature, with only December falling below average.",
        "county2" = ""
      )
    }
  } else if (park_code == "CACO") {
    if (year == "2020") {
      text <- list(
        "county1" = "Overall, 2020 was the 2nd warmest year on record with an average temperature of 52.9 °F — 3.7 degrees above average (Figure 1). Spring fell within “near normal” temperatures, while summer, fall, and winter seasons fell within “much above normal” temperatures. 2020 had the 2nd warmest winter on record. The warmest month was July with an average of 73.7 degrees — 3.8 degrees over the monthly average (Table 1). Eleven out of twelve months had a higher than average temperature, with only April falling below average.",
        "county2" = ""
      )
    } else if (year == "2025") {
      text <- list(
        "county1" = "Overall, 2025 was the 23rd warmest year on record with an average temperature of 50.8 °F - 1.4 degrees above average (Figure 1). Fall fell within near “near normal” temperatures, while the summer and winter seasons fell within “much above normal” temperatures. 2025 had the 3rd warmest spring on record. The warmest month was July with an average of 72.7 degrees - 2.7 degrees over the monthly average (Table 1). Eight out of twelve months had a higher than average temperature, with only January, August, November, and December falling below average.",
        "county2" = ""
      )
    }
  } else if (park_code == "COLO") {
    if (year == "2020") {
      text <- list(
        "county1" = "Overall, 2020 was the 3rd warmest year on record, with an average temperature of 61 °F — 2.4 degrees higher than the average annual temperature (Figure 1). Seasonally, winter fell within “much above normal” temperatures, while fall and summer fell within “above normal” temperatures whereas spring fell within “below normal” temperatures. Nine out of twelve months had higher than average monthly temperatures, with March having the greatest increase in at 6.9 degrees above average. Only April, May, and September had lower than average monthly temperatures (Table 1).",
        "county2" = "Overall, 2020 was the 2nd warmest year on record, with an average temperature of 61.4 °F — 2.6 degrees above the average annual temperature (Figure 2). Seasonally, summer, fall, and winter fell within “much above normal” temperatures, while spring fell within “below normal” temperatures. Nine out of twelve months had higher than average monthly temperatures, with March having the greatest increase in temperature at 6.9 degrees above average. Only April, May, and September had lower than average monthly temperatures (Table 2)."
      )
    } else if (year == "2025") {
      text <- list(
        "county1" = "Overall, 2025 was the 34th warmest year on record, with an average temperature of 59.4 °F - 0.7 degrees about the average annual temperature (Figure 1). Seasonally, spring fell within “much above normal” temperatures, winter and summer fell within “above normal temperatures”, while fall fell within “below normal temperatures”. Seven out of twelve months had higher than average monthly temperatures, with March having the greatest increase in temperature at 4.9 degrees above average. Only January, August, September, October, and December had lower than average monthly temperatures (Table 1).",
        "county2" = "Overall, 2025 was the 24th warmest year on record, with an average temperature of 60.0 °F - 1.1 degrees above the average annual temperature (Figure 2). Seasonally, it was the 3rd warmest spring on record. Winter, spring, and summer fell within “near normal temperatures”. Seven out of twelve months had higher than average monthly temperatures, with March having the greatest increase in temperature at 5.3 degrees above average. Only January, August, September, October, and December had lower than average monthly temperatures (Table 2)."
      )
    }
  } else if (park_code == "THST") {
    if (year == "2020") {
      text <- list(
        "county1" = "Overall, 2020 was the 2nd warmest year on record, with an average temperature of 59.2 °F — 3.2 degrees higher than the average annual temperature (Figure 1). Seasonally, fall and winter fell within “much above normal” temperatures, summer fell within “above normal” temperatures, while spring fell within “near normal” temperatures. Nine months had greater than 2 degrees above the average monthly temperature, including January, February, March, June, July, August, October, November and December, with March having the greatest increase in temperature at 6.9 degrees above average. Only April, May, and September had lower than average monthly temperatures (Table 1).",
        "county2" = ""
      )
    } else if (year == "2025") {
      text <- list(
        "county1" = "Overall, 2025 was the 17th warmest year on record, with an average temperature of 57.9 °F - 1.8 degrees above average. Seasonally, 2025 was the 4th warmest spring on record at THST. Winter and summer fell within “above normal” temperatures and fall fell within “near normal” temperatures. Nine months had greater than average monthly temperatures with March having the greatest increase in temperature at 6.4 degrees above average. Only January, August, and Decemeber had lower than average monthly temperatures (Table 1).",
        "county2" = ""
      )
    }
  } else if (park_code == "FIIS") {
    if (year == "2020") {
      text <- list(
        "county1" = "Overall, 2020 was the 2nd warmest year on record with an average temperature of 54.1 °F — 3.4 degrees above average (Figure 1). Spring fell within “near normal” temperatures, while summer, fall, and winter seasons fell within “much above normal” temperatures. The warmest month was July with an average of 76.7 degrees — 4.5 degrees above the monthly average. Ten out of twelve months had higher temperatures than average, with only April and May having tempertatures below average (Table 1).",
        "county2" = ""
      )
    } else if (year == "2025") {
      text <- list(
        "county1" = "Overall, 2025 was the 15th warmest year on record with an average temperature of 53.3 °F - 2.5 degrees above average (Figure 1). Seasonally, it was the 3rd warmest spring on record. Winter, summer, and fall seasons fell within “above normal” temperatures. The warmest month was July with an average of 76.5 degrees - 4.2 degrees above the monthly average. Eleven out of twelve months had higher temperatures than average, with only December having temperatures below average (Table 1).",
        "county2" = ""
      )
    }
  } else if (park_code == "GATE") {
    if (year == "2020") {
      text <- list(
        "county1" = "Overall, 2020 was the 2nd warmest year on record with an average temperature of 57.2 °F — 3.8 degrees above the normal average (Figure 1). Spring fell within the “near normal” temperatures, while summer, fall, and winter seasons fell within “much above normal” temperatures. 2020 had the 2nd warmest winter on record. Only April and May had lower than average monthly temperatures (Table 1).",
        "county2" = "Overall, 2020 was the warmest year on record with an average temperature of 56.6 °F — 4.2 degrees above the average (Figure 2). Spring fell within “near normal” temperatures, while summer, fall, and winter seasons fell within “much above normal” temperatures. 2020 also had the 2nd warmest winter on record. Ten out of twelve months had a higher than average temperatures (Table 2)."
      )
    } else if (year == "2025") {
      text <- list(
        "county1" = "Overall, 2025 was the 17th warmest year on record with an average temperature of 55.7 °F - 2.2 degrees above the annual average (Figure 1). Spring fell within “much above normal” temperatures, winter and summer fell within “above normal” temperatures, and fall fell within “near normal” temperatures. Only January, August, and December had lower than average monthly temperatures (Table 1).",
        "county2" = "Overall, 2025 was the 22nd warmest year on record with an average temperature of 54.4 °F - 1.9 degrees above the annual average (Figure 2). Spring fell within “much above normal” temperatures, winter and summer fell within “above normal” temperatures, and fall fell within “near normal” temperatures. Only January, August, and December had lower than average monthly temperatures (Table 2)."
      )
    }
  }
  
  return(text)
}
#'
#' @rdname format_text
#' @export
noaa_ncei_timeseries_links <- function(park_code, year) {
  
  if (park_code == "ASIS") {
    county_code1 <- "MD-047"
    county_code2 <- ""
  } else if (park_code == "COLO") {
    county_code1 <- "VA-095"
    county_code2 <- "VA-199"
  } else if (park_code == "GEWA") {
    county_code1 <- "VA-193"
    county_code2 <- ""
  } else if (park_code == "SAHI") {
    county_code1 <- "NY-059"
    county_code2 <- ""
  } else if (park_code == "CACO") {
    county_code1 <- "MA-001"
    county_code2 <- ""
  } else if (park_code == "THST") {
    county_code1 <- "MD-017"
    county_code2 <- ""
  } else if (park_code == "FIIS") {
    county_code1 <- "NY-103"
    county_code2 <- ""
  } else if (park_code == "GATE") {
    county_code1 <- "NY-047"
    county_code2 <- "NJ-025"
  }
  
  link_text <- list(
    "temp_table_county1_link" = paste0("https://www.ncdc.noaa.gov/cag/county/time-series/", county_code1, "/tavg/all/12/", year, "-", year),
    "temp_figure_county1_link" = paste0("https://www.ncdc.noaa.gov/cag/county/rankings/", county_code1, "/tavg/", year, "12"),
    "temp_table_county2_link" = paste0("https://www.ncdc.noaa.gov/cag/county/time-series/", county_code2, "/tavg/all/12/", year, "-", year),
    "temp_figure_county2_link" = paste0("https://www.ncdc.noaa.gov/cag/county/rankings/", county_code2, "/tavg/", year, "12"),
    "precip_table_county1_link" = paste0("https://www.ncdc.noaa.gov/cag/county/time-series/", county_code1, "/pcp/all/12/", year, "-", year),
    "precip_figure_county1_link" = paste0("https://www.ncdc.noaa.gov/cag/county/rankings/", county_code1, "/pcp/", year, "12"),
    "precip_table_county2_link" = paste0("https://www.ncdc.noaa.gov/cag/county/time-series/", county_code2, "/pcp/all/12/", year, "-", year),
    "precip_figure_county2_link" = paste0("https://www.ncdc.noaa.gov/cag/county/rankings/", county_code2, "/pcp/", year, "12")
  )
  
  return(link_text)
}
#'
#' @rdname format_text
#' @export
precip_summary <- function(park_code, year) {
  if (park_code == "ASIS") {
    if (year == "2020") {
      text <- list(
        "county1" = "Overall, 2020 was the 12th wettest year on record with a total of 53.77 inches of precipitation (Figure 2, Table 2). Seasonally, winter and summer fell within “above normal” levels, spring fell to a “below normal” level, while fall reached a “much above normal” level. Eight months had a higher than average amount of precipitation. August had the greatest amount of precipitation in 2020 at 7.52 inches — 2.94 inches over the average monthly rainfall. May had the lowest amount at 1.91 inches — 1.43 inches below average.",
        "county2" = ""
      )
    } else if (year == "2025") {
      text <- list(
        "county1" = "Overall, 2025 was the 59th driest year on record with a total of 41.88 inches of precipitation (Figure 2, Table 2). Seasonally, spring fell within “above normal” levels, winter and summer fell within “near normal” levels, while fall fell to a “below normal” level. Seven months had a lower than average amount of precipitation. July had the greatest amount of precipitation in 2025 at 5.79 inches — 1.52 inches over the average monthly rainfall. November had the lowest amount at 1.43 inches — 1.52 inches below average.",
        "county2" = ""
      )
    } 
  } else if (park_code == "GEWA") {
    if (year == "2020") {
      text <- list(
        "county1" = "Overall, 2020 was the 4th wettest year on record with a total of 58.76 inches of precipitation (Figure 2, Table 2). Seasonally, winter fell within “below normal” levels, spring fell within “near normal” levels, while summer and fall reached “much above normal” levels. Four months had less than average precipitation amounts. August had the greatest amount of precipitation in 2020 at 12.05 inches — 7.80 inches over the average rainfall of August. March had the lowest amount at 2.43 inches — 1.27 inches below average.",
        "county2" = ""
      )
    } else if (year == "2025") {
      text <- list(
        "county1" = "Overall, 2025 was the 51st wettest year on record with a total of 44.16 inches of precipitation (Figure 2, Table 2). Seasonally, spring and summer fell within “above normal” levels, winter fell within “near normal” levels, and fall reached “much below normal” levels. Seven months had less than average precipitation amounts. July had the greatest amount of precipitation in 2025 at 8.28 inches - 3.71 inches over the average rainfall of July. August had the lowest amount at 1.46 inches - 2.83 inches below average.",
        "county2" = ""
      )
    }
  } else if (park_code == "SAHI") {
    if (year == "2020") {
      text <- list(
        "county1" = "Overall, 2020 was the 78th wettest year on record with a total of 41.78 inches of precipitation and fell within a “near normal” level (Figure 2, Table 2). Seasonally, winter and spring fell within “below normal” levels, while fall and summer reached “above normal” levels. Eight months had below average precipitation amounts. July had the greatest amount of precipitation in 2020 at 5.09 inches, while May had the lowest amount at 1.45 inches — 2.36 inches below average.",
        "county2" = ""
      )
    } else if (year == "2025") {
      text <- list(
        "county1" = "Overall, 2025 was the 4th driest year on record with a total of 34.07 inches of precipitation (Figure 2, Table 2). Seasonally, 2025 was the 5th driest winter on record at SAHI. Spring, summer, and fall fell within “below normal” levels of precipitation. Nine months had below average precipitation amounts. May had the greatest amount of precipitation in 2025 at 4.86 inches, while January had the lowest amount at 0.46 inches - 2.98 inches below average.",
        "county2" = ""
      )
    }
  } else if (park_code == "CACO") {
    if (year == "2020") {
      text <- list(
        "county1" = "Overall, 2020 was the 15th driest year on record with a total of 37.47 inches of precipitation (Figure 2, Table 2). Seasonally, fall fell within “above normal” amounts, winter fell to “below normal” amounts, and spring fell to “near normal” amounts. Summer fell to “much below normal” amounts and was the driest summer on record. Eight months had lower than average amount of precipitation. December had the greatest amount of precipitation in 2020 at 7.12 inches — 3.03 inches over the average December precipitation. July had the lowest amount at only 0.88 inches — 1.98 inches below average.",
        "county2" = ""
      )
    } else if (year == "2025") {
      text <- list(
        "county1" = "Overall, 2025 was the 40th driest year on record with a total of 40.80 inches of precipitation (Figure 2, Table 2). Seasonally, spring fell within “above normal” amounts, fall fell within “near normal” amounts, and winter and summer fell to “below normal” amounts. Eight months had lower than average precipitation. October had the greatest amount of precipitation in 2025 at 6.78 inches - 2.86 inches over the average October precipitation. June had the lowest amount at only 1.49 inches - 1.72 inches below average.",
        "county2" = ""
      )
    }
  } else if (park_code == "COLO") {
    if (year == "2020") {
      text <- list(
        "county1" = "Overall, 2020 was the wettest year on record with a total of 69.73 inches of precipitation (Figure 3, Table 3). Seasonally, winter and spring fell within “above normal” levels of precipitation while summer and fall fell within “much above normal” levels. Eight of twelve months had higher than average monthly precipitation levels, with August having the highest at 11.75 inches — 6.99 inches above average. May was the driest month with 3.14 inches — 0.77 inches below average.",
        "county2" = "Overall, 2020 was the wettest year on record, with 67.84 inches of precipitation (Figure 4, Table 4). Seasonally, winter and spring fell within “above normal” levels of precipitation while summer and fall fell within “much above normal” levels. Ten of twelve months had higher than average monthly precipitation levels, with August having the highest at 11.31 inches — 6.49 inches above average. May was the driest month with 3.19 inches — 0.61 inches below average."
      )
    } else if (year == "2025") {
      text <- list(
        "county1" = "Overall, 2025 was the 24th wettest year on record, with a total of 50.00 inches of precipitation (Figure 3, Table 3). Seasonally, winter, spring, and summer fell within “above normal” levels of precipitation while fall fell within “below normal” levels. Six of twelve months had higher than average monthly precipitation levels, with July having the highest at 8.49 inches - 3.23 inches above average. November was the driest month with 1.60 inches - 1.23 inches below average.",
        "county2" = "Overall, 2025 was the 30th wettest year on record, with a totla of 50.00 inches of precipitation (Figure 4, Table 4). Seasonally, winter, spring, and summer fell within “above normal” levels of precipitation while fall fell within “below normal” levels. Six of twelve months had higher than average monthly precipitation levels, with July having the highest at 7.40 inches - 2.07 inches above average. November was the driest month with 1.58 inches - 1.24 inches below average."
      )
    }
  } else if (park_code == "THST") {
    if (year == "2020") {
      text <- list(
        "county1" = "Overall, 2020 was the 2nd wettest year on record with a total of 59.87 inches of precipitation (Figure 2, Table 2). Seasonally, summer and fall had precipitation levels “much above normal” amounts. Spring was at “near normal” levels while winter fell to a “below normal” level. Eight of the months had higher average monthly precipitation averages, while four had lower. August was the wettest month at 12.24 inches above average, and March was the driest month at -1.44 inches below average.",
        "county2" = ""
      )
    } else if (year == "2025") {
      text <- list(
        "county1" = "Overall, 2025 was the 34th driest year on record with a total of 37.71 inches of precipitation (Figure 2, Table 2). Seasonally, 2025 was the 8th driest fall on record at THST. Winter had precipitation levels “below normal” amounts, summer had “near normal” amounts, and spring had “above normal” amounts. Seven out of twelve months had lower than average monthly precipitation, while five had higher. May was the wettest month at 3.11 inches above average, and August was the driest month at -2.97 inches below average.",
        "county2" = ""
      )
    }
  } else if (park_code == "FIIS") {
    if (year == "2020") {
      text <- list(
        "county1" = "Overall, 2020 was the 48th driest year on record with a total of 42.78 inches of precipitation (Figure 2, Table 2). Seasonally, fall fell within “much above normal” levels, while winter, spring and summer fell within “below normal” levels. Seven months had less than average precipitation including May which had the least at 1.65 inches — 2.06 inches below average. December had the highest amount of precipitation at 5.70 inches — 1.63 inches above average.",
        "county2" = ""
      )
    } else if (year == "2025") {
      text <- list(
        "county1" = "Overall, 2025 was the 3rd driest year on record with a total of 35.20 inches of precipitation (Figure 2, Table 2). Seasonally, winter fell within “much below normal” levels, summer fell within “below normal” levels, and spring and fall fell within “near normal” levels. Nine months had less than average precipitation including January which had the least at 0.87 inches - 2.80 inches below average. May had the highest amount of precipitation at 5.93 inches - 2.24 inches above average.",
        "county2" = ""
      )
    }
  } else if (park_code == "GATE") {
    if (year == "2020") {
      text <- list(
        "county1" = "Overall, 2020 was the 58th wettest year on record with a total of 45.02 inches of precipitation (Figure 3, Table 3). Seasonally, winter and spring fell within “below normal” levels, while summer and fall reached “above normal” levels. Six months had higher than average amounts of precipitation. July had the greatest amount of precipitation in 2020 at 7.16 inches — 2.75 inches above average. May had the lowest amount at 1.66 inches — 2.21 inches below average.",
        "county2" = "Overall, 2020 was the 36th wettest year on record with a total of 48.77 inches of precipitation (Figure 4, Table 4). Seasonally, winter fell within a “below normal” level, spring and summer fell within “near normal” levels, while fall nearly reached “much above normal” levels. October had the greatest amount of precipitation in 2020 at 6.30 inches — 2.76 inches above average. May had the lowest amount at 2.03 inches — 1.81 inches below average."
      )
    } else if (year == "2025") {
      text <- list(
        "county1" = "Overall, 2025 was the 14th driest year on record with a total of 55.7 inches of precipitation (Figure 3, Table 3). Seasonally, winter and summer fell within “below normal” levels, while spring and fall fell within “near normal” levels. Nine months had lower than average amounts of precipitation. May had the greatest amount of precipitation in 2025 at 5.49 inches - 1.64 inches above average. January had the lowest amount at 0.65 inches - 2.78 inches below average.",
        "county2" = "Overall, 2025 was the 25th driest year on record with a total of 39.40 inches of precipitation (Figure 4, Table 4). Winter fell within “much below normal” levels, summer fell within “below normal” levels, and spring and fell within “near normal” levels. Nine months had lower than average amounts of precipitation. May had the greatest amount of precipitation in 2025 at 5.94 inches - 2.11 inches above average. January had the lowest amount at 0.88 inches - 2.65 inches below average."
      )
    }
  }
  
  return(text)
}
#'
#' @rdname format_text
#' @export
tides_text_fun <- function(park_code, nwlon_station1, nwlon_station_location1, nwlon_base_year1, nwlon_station2 = "", nwlon_station_location2 = "", nwlon_base_year2 = "") {
  if (park_code == "COLO") {
    text <- paste0("The extent of Colonial National Historical Park’s shoreline falls along the James and York Rivers, and each has unique tidal characteristics. Therefore, two sources of water level data are used to reflect this dynamic. Water level data are obtained from NOAA NWLON station ", nwlon_station1, " located at ", nwlon_station_location1, " and from NOAA NWLON station ", nwlon_station2, " located at ", nwlon_station_location2, ". The station at ", nwlon_station_location1, " began collecting data in ", nwlon_base_year1, ", while the station at ", nwlon_station_location2 , " has records dating back to ", nwlon_base_year2, ". The data are graphed to show the difference in the predicted tide level versus what was observed (Figures 7 and 8). The offsets in height reflect the effect of storm surge on the normal, astronomically driven tide level.")
  } else if (park_code == "THST") {
    text <- ""
  } else if (park_code == "GATE") {
    text <- paste0("Water level data is collected from NOAA National Water Level Observation Network (NWLON) station ", nwlon_station1, " located at ", nwlon_station_location1, ". This station has records dating back to ", nwlon_base_year1, ". The data is graphed to show the difference in the predicted tide level verses what was observed (Figure 7). The offsets in height reflect the effect from storm surge on the normal, astronomically driven tide level.")
  } else {
    text <- paste0("Water level data is collected from NOAA National Water Level Observation Network (NWLON) station ", nwlon_station1, " located at ", nwlon_station_location1, ". This station has records dating back to ", nwlon_base_year1, ". The data is graphed to show the difference in the predicted tide level verses what was observed (Figure 4). The offsets in height reflect the effect from storm surge on the normal, astronomically driven tide level.")
  }
  
  return(text)
}
#'
#' @rdname format_text
#' @export
wind_text_fun <- function(park_code, nwlon_station1, nwlon_station_location1, nwlon_base_year1, nwlon_station2 = "", nwlon_station_location2 = "", nwlon_base_year2 = "") {
  
  base_text <- paste0("Wind data (wind speed and direction) is collected from the NOAA NWLON station ", nwlon_station1, " located at ", nwlon_station_location1, ".")
  
  if (park_code == "THST") {
    text <- paste0("Wind can impact forest conditions differently depending on wind speed (blow-overs, breakage, root damage) and direction (physiological processes, growth). ", base_text)
  } else if (park_code == "COLO") {
    text <- paste0("Wind data (wind speed and direction) is collected from the weather station at Williamsburg Jamestown Airport (NOAA NCEI: Local Climatological Data) and from the NOAA NWLON station ", nwlon_station2, " located at ", nwlon_station_location2, ".")
  } else if (park_code == "CACO") {
    text <- paste0("Wind data (wind speed and direction) is collected from the weather station at Provincetown Municipal Airport (NOAA NCEI: Local Climatological Data).")
  } else {
    text <- base_text
  }
  
  return(text)
}