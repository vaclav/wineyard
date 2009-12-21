<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head><title>Map</title></head>
<body>
<g:form method="post" action="search">
  <label for="lat">Latitude:</label>
  <input type="text" name="lat" value="${lat}"/>
  <br/>
  <label for="lon">Longitude:</label>
  <input type="text" name="lon" value="${lon}"/>
  <br/>

  <div class="buttons">
    <span class="button"><g:actionSubmit class="search" value="Search"/></span>
  </div>

</g:form>
</body>
</html>