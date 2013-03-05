<%@ page contentType="text/html;charset=UTF-8" %>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <meta name="layout" content="gtd"/>
    <title>GTD -- Inbox</title>

</head>
<body>

<div id="next"></div>
<div id="stuff_list" class="content scaffold-list" role="main">
    <table>
        <thead>
        <tr>
            <th>Stuff</th>
            <th>Done</th>
            <th>Action</th>
            <th>Project</th>
            <th>Delegate</th>
            <th>Trash</th>
            <th>Maybe</th>
            <th>Reference</th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${stuffList}" status="i" var="stuff">
            <% if (i==0) { %>
            <tr>
                <td><g:link controller="stuff" action="show" id="${stuff.id}">${stuff.title}</g:link></td>
                <td><g:link accesskey="O" controller="stuff" action="done" id="${stuff.id}">D<u>o</u>ne</g:link></td>
                <td><g:link accesskey="A" url="#action_popup"  data-toggle="modal" id="${stuff.id}"><u>A</u>ction</g:link></td>
                <td><g:link accesskey="P" url="#project_popup"  data-toggle="modal" id="${stuff.id}"><u>P</u>roject</g:link></td>
                <td><g:link accesskey="D" url="#delegate_popup"  data-toggle="modal" id="${stuff.id}"><u>D</u>elegate</g:link></td>
                <td><g:link accesskey="T" controller="stuff" action="trash" id="${stuff.id}"><u>T</u>rash</g:link></td>
                <td><g:link accesskey="M" controller="stuff" action="maybe" id="${stuff.id}"><u>M</u>aybe</g:link></td>
                <td><g:link accesskey="R" controller="stuff" action="reference" id="${stuff.id}"><u>R</u>eference</g:link></td>
            </tr>
            <% } else { %>
            <tr>
                <td><g:link controller="stuff" action="show" id="${stuff.id}">${stuff.title}</g:link></td>
                <td><g:link controller="stuff" action="done" id="${stuff.id}">Done</g:link></td>
                <td><g:link controller="stuff" action="action" id="${stuff.id}">Action</g:link></td>
                <td><g:link controller="stuff" action="project" id="${stuff.id}">Project</g:link></td>
                <td><g:link controller="stuff" action="delegate" id="${stuff.id}">Delegate</g:link></td>
                <td><g:link controller="stuff" action="trash" id="${stuff.id}">Trash</g:link></td>
                <td><g:link controller="stuff" action="maybe" id="${stuff.id}">Maybe</g:link></td>
                <td><g:link controller="stuff" action="reference" id="${stuff.id}">Reference</g:link></td>
            </tr>
            <% } %>
        </g:each>
        </tbody>
    </table>
    <div id="new_stuff">
        <g:form name="addStuff" controller="stuff">
            <g:textField name="title" action="addStuff" update="stuff_list" autocomplete="off" accesskey="N" value="New stuff"
                         onfocus="this.value = ''" onsubmit="this.value = 'New stuff'"
            />
            <g:actionSubmit value="Add" action="addStuff" />
        </g:form>
    </div>
</div>
<div id="action_popup" class="modal hide fade">TEST</div>
<div id="project_popup" class="modal hide fade">TEST</div>
<div id="delegate_popup" class="modal hide fade">TEST</div>

</body>
</html>