<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="layout" content="main"/>
  <title>Create Wine</title>
</head>
<body>
<div class="nav">
  <span class="menuButton"><a class="home" href="${resource(dir: '')}">Home</a></span>
  <span class="menuButton"><g:link class="list" action="list">Wine List</g:link></span>
</div>
<div class="body">
  <h1>Create Wine</h1>
  <g:if test="${flash.message}">
    <div class="message">${flash.message}</div>
  </g:if>
  <g:hasErrors bean="${wineInstance}">
    <div class="errors">
      <g:renderErrors bean="${wineInstance}" as="list"/>
    </div>
  </g:hasErrors>
  <g:form action="save" method="post">
    <div class="dialog">
      <table>
        <tbody>

        <tr class="prop">
          <td valign="top" class="name">
            <label for="name">Name:</label>
          </td>
          <td valign="top" class="value ${hasErrors(bean: wineInstance, field: 'name', 'errors')}">
            <input type="text" id="name" name="name" value="${fieldValue(bean: wineInstance, field: 'name')}"/>
          </td>
        </tr>

        <tr class="prop">
          <td valign="top" class="name">
            <label for="description">Description:</label>
          </td>
          <td valign="top" class="value ${hasErrors(bean: wineInstance, field: 'description', 'errors')}">
            <input type="text" id="description" name="description" value="${fieldValue(bean: wineInstance, field: 'description')}"/>
          </td>
        </tr>

        <tr class="prop">
          <td valign="top" class="name">
            <label for="lat">Lat:</label>
          </td>
          <td valign="top" class="value ${hasErrors(bean: wineInstance, field: 'lat', 'errors')}">
            <input type="text" id="lat" name="lat" value="${fieldValue(bean: wineInstance, field: 'lat')}"/>
          </td>
        </tr>

        <tr class="prop">
          <td valign="top" class="name">
            <label for="lon">Lon:</label>
          </td>
          <td valign="top" class="value ${hasErrors(bean: wineInstance, field: 'lon', 'errors')}">
            <input type="text" id="lon" name="lon" value="${fieldValue(bean: wineInstance, field: 'lon')}"/>
          </td>
        </tr>

        </tbody>
      </table>
    </div>
    <div class="buttons">
      <span class="button"><input class="save" type="submit" value="Create"/></span>
    </div>
  </g:form>
</div>
</body>
</html>
