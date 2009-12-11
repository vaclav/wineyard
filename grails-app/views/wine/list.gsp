<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="layout" content="main"/>
  <title>Wine List</title>
</head>
<body>
<div class="nav">
  <span class="menuButton"><a class="home" href="${resource(dir: '')}">Home</a></span>
  <span class="menuButton"><g:link class="create" action="create">New Wine</g:link></span>
</div>
<div class="body">
  <h1>Wine List</h1>
  <g:if test="${flash.message}">
    <div class="message">${flash.message}</div>
  </g:if>
  <div class="list">
    <table>
      <thead>
      <tr>

        <g:sortableColumn property="id" title="Id"/>

        <g:sortableColumn property="name" title="Name"/>

        <g:sortableColumn property="lat" title="Lat"/>

        <g:sortableColumn property="lon" title="Lon"/>

      </tr>
      </thead>
      <tbody>
      <g:each in="${wineInstanceList}" status="i" var="wineInstance">
        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">

          <td><g:link action="show" id="${wineInstance.id}">${fieldValue(bean: wineInstance, field: 'id')}</g:link></td>

          <td>${fieldValue(bean: wineInstance, field: 'name')}</td>

          <td>${fieldValue(bean: wineInstance, field: 'lat')}</td>

          <td>${fieldValue(bean: wineInstance, field: 'lon')}</td>

        </tr>
      </g:each>
      </tbody>
    </table>
  </div>
  <div class="paginateButtons">
    <g:paginate total="${wineInstanceTotal}"/>
  </div>
</div>
</body>
</html>
