<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="layout" content="main"/>
  <title>Show Wine</title>
</head>
<body>
<div class="nav">
  <span class="menuButton"><a class="home" href="${resource(dir: '')}">Home</a></span>
  <span class="menuButton"><g:link class="list" action="list">Wine List</g:link></span>
  <span class="menuButton"><g:link class="create" action="create">New Wine</g:link></span>
</div>
<div class="body">
  <h1>Show Wine</h1>
  <g:if test="${flash.message}">
    <div class="message">${flash.message}</div>
  </g:if>
  <div class="dialog">
    <table>
      <tbody>

      <tr class="prop">
        <td valign="top" class="name">Id:</td>

        <td valign="top" class="value">${fieldValue(bean: wineInstance, field: 'id')}</td>

      </tr>

      <tr class="prop">
        <td valign="top" class="name">Name:</td>

        <td valign="top" class="value">${fieldValue(bean: wineInstance, field: 'name')}</td>

      </tr>

      <tr class="prop">
        <td valign="top" class="name">Description:</td>

        <td valign="top" class="value">${fieldValue(bean: wineInstance, field: 'description')}</td>

      </tr>

      <tr class="prop">
        <td valign="top" class="name">Lat:</td>

        <td valign="top" class="value">${fieldValue(bean: wineInstance, field: 'lat')}</td>

      </tr>

      <tr class="prop">
        <td valign="top" class="name">Lon:</td>

        <td valign="top" class="value">${fieldValue(bean: wineInstance, field: 'lon')}</td>

      </tr>

      <tr class="prop">
        <td valign="top" class="name">Recommendations:</td>

        <td valign="top" style="text-align:left;" class="value">
          <ul>
            <g:each var="r" in="${wineInstance.recommendations}">
              <li><g:link controller="recommendation" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
            </g:each>
          </ul>
        </td>

      </tr>

      </tbody>
    </table>
  </div>
  <div class="buttons">
    <g:form>
      <input type="hidden" name="id" value="${wineInstance?.id}"/>
      <span class="button"><g:actionSubmit class="edit" value="Edit"/></span>
      <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Delete"/></span>
    </g:form>
  </div>
</div>
</body>
</html>
