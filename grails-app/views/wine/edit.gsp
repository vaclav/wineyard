<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="layout" content="main"/>
  <title>Edit Wine</title>
</head>
<body>
<div class="nav">
  <span class="menuButton"><a class="home" href="${resource(dir: '')}">Home</a></span>
  <span class="menuButton"><g:link class="list" action="list">Wine List</g:link></span>
  <span class="menuButton"><g:link class="create" action="create">New Wine</g:link></span>
</div>
<div class="body">
  <h1>Edit Wine</h1>
  <g:if test="${flash.message}">
    <div class="message">${flash.message}</div>
  </g:if>
  <g:hasErrors bean="${wineInstance}">
    <div class="errors">
      <g:renderErrors bean="${wineInstance}" as="list"/>
    </div>
  </g:hasErrors>
  <g:form method="post">
    <input type="hidden" name="id" value="${wineInstance?.id}"/>
    <input type="hidden" name="version" value="${wineInstance?.version}"/>
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

        <tr class="prop">
          <td valign="top" class="name">
            <label for="recommendations">Recommendations:</label>
          </td>
          <td valign="top" class="value ${hasErrors(bean: wineInstance, field: 'recommendations', 'errors')}">

            <ul>
              <g:each var="r" in="${wineInstance?.recommendations?}">
                <li><g:link controller="recommendation" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
              </g:each>
            </ul>
            <g:link controller="recommendation" params="['wine.id':wineInstance?.id]" action="create">Add Recommendation</g:link>

          </td>
        </tr>

        </tbody>
      </table>
    </div>
    <div class="buttons">
      <span class="button"><g:actionSubmit class="save" value="Update"/></span>
      <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Delete"/></span>
    </div>
  </g:form>
</div>
</body>
</html>
