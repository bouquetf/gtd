<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><g:layoutTitle default="GTD"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
    <link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
    <link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
    <r:require module="bootstrap" />
    <r:require module="bootstrap-modal" />
    <g:layoutHead/>
    <r:layoutResources />
</head>
<body>
<div id="grailsLogo" role="banner">Getting things done with Jaalon sauce</div>


<div id="menu"> <ul class="nav nav-tabs">
    <li ${params.controller=='inbox' ? 'class="active"' : "" }>
        <g:link controller="inbox" accesskey="1">Inbox</g:link>
    </li>
    <li ${params.controller=='next' ? 'class="active"' : "" }>
        <g:link controller="next" accesskey="2">Next actions</g:link>
    </li>
    <li ${params.controller=='projects' ? 'class="active"' : "" }>
        <g:link controller="project" accesskey="3">Project</g:link>
    </li>
    <li ${params.controller=='waiting' ? 'class="active"' : "" }>
        <g:link controller="waiting" accesskey="4">Waiting</g:link>
    </li>
    <li ${params.controller=='admin' ? 'class="active"' : "" }>
        <g:link controller="admin" accesskey="5" >Admin</g:link>
    </li>

</ul></div>


<g:layoutBody/>
<div class="footer" role="contentinfo">
</div>
<g:javascript library="application"/>
<r:layoutResources />
</body>
</html>