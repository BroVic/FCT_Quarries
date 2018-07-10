leaflet()
raster()

leaflet()%>%
  addProviderTiles("Stamen.Toner")%>%
addCircleMarkers(data = Q, lat =~LAT, lng =~LONG, stroke = T, fill = T, 
                 fillColor = "red", color = "black",dashArray = 7,fillOpacity = 1,
                 popup = paste0("Status:",as.character(quarry$STATUS)), 
clusterOptions = markerClusterOptions())
