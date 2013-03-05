<div id="new">
    <g:form name="addStuff">
        <g:textField name="title" autofocus="True" action="addStuff" update="stuff_list" autocomplete="off" accesskey="N" value="New stuff"
                     onfocus="this.value = ''" onsubmit="this.value = 'New stuff'"
        />
        <g:actionSubmit value="Add" action="addStuff" />
    </g:form>
</div>