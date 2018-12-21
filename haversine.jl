#Julia version of the Haversine distance function
haversine(lat1::Float32,lon1::Float32,lat2::Float32,lon2::Float32) = 2 * 6372.8 * asin(sqrt(sind((lat2-lat1)/2)^2 + cosd(lat1) * cosd(lat2) * sind((lon2 - lon1)/2)^2))
