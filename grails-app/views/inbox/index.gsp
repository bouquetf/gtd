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
                <td><a href="#action_popup" accesskey="A" data-toggle="modal" onclick="$('#stuff_title').text('${stuff.title}');
                $('input[name=stuff]').val(${stuff.id})">                    <u>A</u>ction</a></td>
                <td><g:link accesskey="D" url="#delegate_popup"  data-toggle="modal" id="${stuff.id}"><u>D</u>elegate</g:link></td>
                <td><g:link accesskey="T" controller="stuff" action="trash" id="${stuff.id}"><u>T</u>rash</g:link></td>
                <td><g:link accesskey="M" controller="stuff" action="maybe" id="${stuff.id}"><u>M</u>aybe</g:link></td>
                <td><g:link accesskey="R" controller="stuff" action="reference" id="${stuff.id}"><u>R</u>eference</g:link></td>
            </tr>
            <% } else { %>
            <tr>
                <td><g:link controller="stuff" action="show" id="${stuff.id}">${stuff.title}</g:link></td>
                <td><g:link controller="stuff" action="done" id="${stuff.id}">Done</g:link></td>
                <td><a href="#action_popup" data-toggle="modal" onclick="$('#stuff_title').text('${stuff.title}');
                $('input[name=stuff]').val(${stuff.id})">Action</a></td>
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
<div id="action_popup" class="modal hide fade" tabindex="-1">

        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h3>New Action</h3>
            For : <span id="stuff_title"></span>
        </div>
    <g:form controller="stuff" action="action" >
        <div class="container-fluid">
            <div class="row-fluid">
                <div class="span7 offset1">
                    <fieldset>
                        <g:hiddenField name="stuff" />
                        <g:textArea id="action_title" name="title" rows="4" value="Next action?"
                                    onfocus="if (this.value=='Next action?') this.value = ''"
                                    onblur="if (this.value=='') this.value='Next action?'"
                                    onsubmit="if (this.value=='Next action?') this.value = ''"
                        />
                        <g:textField name="project" value="Project"
                                     onfocus="if (this.value=='Project') this.value = ''"
                                     onblur="if (this.value=='') this.value='Project'"
                                     onsubmit="if (this.value=='Project') this.value = ''"
                        />
                    </fieldset>
                </div>
                <div class="span4">
                        <g:textField class="span12" name="context" value="Context"
                                     onfocus="if (this.value=='Context') this.value = ''"
                                     onblur="if (this.value=='') this.value='Context'"
                                     onsubmit="if (this.value=='Context') this.value = ''"
                        />
                        <g:textField class="span12" name="energy" value="Energy"
                                     onfocus="if (this.value=='Energy') this.value = ''"
                                     onblur="if (this.value=='') this.value='Energy'"
                                     onsubmit="if (this.value=='Energy') this.value = ''"
                        />
                        <g:textField class="span12" name="time" value="Time"
                                     onfocus="if (this.value=='Time') this.value = ''"
                                     onblur="if (this.value=='') this.value='Time'"
                                     onsubmit="if (this.value=='Time') this.value = ''"
                        />
                        <g:select class="span12" name="priority"
                                          from='["High", "Medium", "Low"]' value="Medium" />
                </div>
            </div>

            <div class="modal-footer">
                <fieldset class="text-center">
                    <button type="button" class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
                    <g:submitButton name="Save" class="btn btn-primary"  value="action"/>
                </fieldset>
            </div>
        </div>


    </g:form>
</div>
<div id="project_popup" class="modal hide fade">Store to project</div>
<div id="delegate_popup" class="modal hide fade">TEST</div>

</body>
</html>