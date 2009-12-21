<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head><title>Map</title></head>
<body>
<resource:map type="MicrosoftVirtualEarth"/>
<richui:map type="MicrosoftVirtualEarth" markers="${[[latitude: lat, longitude: lon, description: name]]}"/>
%{--<richui:map type="MicrosoftVirtualEarth" markers="${[[latitude: lat, longitude: lon, description: name], [latitude: 40.69575, longitude: -74.056257, description: name]]}" />--}%
</body>
</html>