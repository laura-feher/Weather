#' Uses super assignment to assign park-specific variables to the global environment.
#'
#' @param park_code string. The 4-letter park unit code.
#'
#' @export
#'
park_variables <- function(park_code) {
  
  # Output these values to global env using super assignment <<-
  
  if (park_code == "ASIS") {
    park_name <<- "Assateague Island National Seashore"
    park_link <<- "https://www.nps.gov/asis/index.htm"
    state_text <<- "Maryland (MD) and Virginia (VA)"
    state_name1 <<- "Maryland"
    state_name2 <<- ""
    county_text <<- "Worcester County, Maryland"
    county_header1 <<- "Worcester County"
    county_header2 <<- ""
    print_multiple_county <<- FALSE
    nwlon_station1 <<- "8570283"
    nwlon_station2 <<- ""
    nwlon_station_location1 <<- "the inlet of Ocean City, MD"
    nwlon_station_location2 <<- ""
    nwlon_base_year1 <<- "1978"
    nwlon_base_year2 <<- ""
    print_tide_data <<- TRUE
    wind_plot_y_max <<- 3000
  
  } else if (park_code == "FIIS") {
    park_name <<- "Fire Island National Seashore"
    park_link <<- "https://www.nps.gov/fiis/index.htm"
    state_text <<- "New York (NY)"
    state_name1 <<- "New York"
    state_name2 <<- ""
    county_text <<- "Suffolk County, New York"
    county_header1 <<- "Suffolk County"
    county_header2 <<- ""
    print_multiple_county <<- FALSE
    nwlon_station1 <<- "8531680"
    nwlon_station2 <<- ""
    nwlon_station_location1 <<- "Sandy Hook, NJ"
    nwlon_station_location2 <<- ""
    nwlon_base_year1 <<- "1996"
    nwlon_base_year2 <<- ""
    print_tide_data <<- TRUE
    wind_plot_y_max <<- 3000
    
  } else if (park_code == "COLO") {
    park_name <<- "Colonial National Historical Park"
    park_link <<- "https://www.nps.gov/colo/index.htm"
    state_text <<- "Virginia (VA)"
    state_name1 <<- "Virginia"
    state_name2 <<- "Virginia"
    county_text <<- "James City and York counties, Virginia"
    county_header1 <<- "James City County"
    county_header2 <<- "York County"
    print_multiple_county <<- TRUE
    nwlon_station1 <<- "8638610"
    nwlon_station2 <<- "8637689"
    nwlon_station_location1 <<- "Pier 6 at Naval Station Norfolk (Sewells Point, VA)"
    nwlon_station_location2 <<- "the Yorktown USCG Training Center, VA"
    nwlon_base_year1 <<- "1927"
    nwlon_base_year2 <<- "2004"
    print_tide_data <<- TRUE
    wind_plot_y_max <<- 3000
  
  } else if (park_code == "GEWA") {
    park_name <<- "George Washington Birthplace National Monument"
    park_link <<- "https://www.nps.gov/gewa/index.htm"
    state_text <<- "Virginia (VA)"
    state_name1 <<- "Virignia"
    state_name2 <<- ""
    county_text <<- "Westmoreland County, Virginia"
    county_header1 <<- "Westmoreland County"
    county_header2 <<- ""
    print_multiple_county <<- FALSE
    nwlon_station1 <<- "8635027"
    nwlon_station2 <<- ""
    nwlon_station_location1 <<- "Upper Machodoc Creek, Dahlgreen, VA"
    nwlon_station_location2 <<- ""
    nwlon_base_year1 <<- "1970"
    nwlon_base_year2 <<- ""
    print_tide_data <<- TRUE
    wind_plot_y_max <<- 3500
    
  } else if (park_code == "CACO") {
    park_name <<- "Cape Cod National Seashore"
    park_link <<- "https://www.nps.gov/caco/index.htm"
    state_text <<- "Massachusetts (MA)"
    state_name1 <<- "Massachusetts"
    state_name2 <<- ""
    county_text <<- "Barnstable County, Massachusetts"
    county_header1 <<- "Barnstable County"
    county_header2 <<- ""
    print_multiple_county <<- FALSE
    nwlon_station1 <<- "8443970"
    nwlon_station2 <<- ""
    nwlon_station_location1 <<- "the North End Waterfront, Boston, MA"
    nwlon_station_location2 <<- ""
    nwlon_base_year1 <<- "1921"
    nwlon_base_year2 <<- ""
    print_tide_data <<- TRUE
    wind_plot_y_max <<- 3000
    
  } else if (park_code == "GATE") {
    park_name <<- "Gateway National Recreation Area"
    park_link <<- "https://www.nps.gov/gate/index.htm"
    state_text <<- "New York (NY) and New Jersey (NJ)"
    state_name1 <<- "New York"
    state_name2 <<- "New Jersey"
    county_text <<- "Kings County, New York and Monmouth County, New Jersey"
    county_header1 <<- "Kings County"
    county_header2 <<- "Monmouth County"
    print_multiple_county <<- TRUE
    nwlon_station1 <<- "8531680"
    nwlon_station2 <<- "8531680"
    nwlon_station_location1 <<- "Sandy Hook, NJ"
    nwlon_station_location2 <<- "Sandy Hook, NJ"
    nwlon_base_year1 <<- "1996"
    nwlon_base_year2 <<- "1996"
    print_tide_data <<- TRUE
    wind_plot_y_max <<- 3000
    
  } else if (park_code == "SAHI") {
    park_name <<- "Sagamore Hill National Historic Site"
    park_link <<- "https://www.nps.gov/sahi/index.htm"
    state_text <<- "New York (NY)"
    state_name1 <<- "New York"
    state_name2 <<- ""
    county_text <<- "Nassau County, New York"
    county_header1 <<- "Nassau County"
    county_header2 <<- ""
    print_multiple_county <<- FALSE
    nwlon_station1 <<- "8516945"
    nwlon_station2 <<- ""
    nwlon_station_location1 <<- "the northwest side of Long Island, Kings Point, NY"
    nwlon_station_location2 <<- ""
    nwlon_base_year1 <<- "1998"
    nwlon_base_year2 <<- ""
    print_tide_data <<- TRUE
    wind_plot_y_max <<- 4000
    
  } else if (park_code == "THST") {
    park_name <<- "Thomas Stone National Historic Site"
    park_link <<- "https://www.nps.gov/thst/index.htm"
    state_text <<- "Maryland (MD)"
    state_name1 <<- "Maryland"
    state_name2 <<- ""
    county_text <<- "Charles County, Maryland"
    county_header1 <<- "Charles County"
    county_header2 <<- ""
    print_multiple_county <<- FALSE
    nwlon_station1 <<- "8635027"
    nwlon_station2 <<- ""
    nwlon_station_location1 <<- "the Naval Surface Warfare Center, Dahlgreen, VA"
    nwlon_station_location2 <<- ""
    nwlon_base_year1 <<- "2015"
    nwlon_base_year2 <<- ""
    print_tide_data <<- FALSE
    wind_plot_y_max <<- 4000
  
  } else {
    park_name <<- ""
    park_link <<- ""
    state_text <<- ""
    state_name1 <<- ""
    state_name2 <<- ""
    county_text <<- ""
    county_header1 <<- ""
    county_header2 <<- ""
    print_multiple_county <<- FALSE
    nwlon_station1 <<- ""
    nwlon_station2 <<- ""
    nwlon_station_location1 <<- ""
    nwlon_station_location2 <<- ""
    nwlon_base_year1 <<- ""
    nwlon_base_year2 <<- ""
    print_tide_data <<- FALSE
    wind_plot_y_max <<- 3000
    
  }
}