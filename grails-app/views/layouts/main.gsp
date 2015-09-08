<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link rel="stylesheet" href="${resource(dir: 'css/semantic/dist',file: 'semantic.min.css')}" type="text/css"/>
<g:javascript src="semantic.min.js"/>
<g:layoutHead/>
</head>
<header>
    <h1>Header</h1>
</header>
<g:link controller="event" action="homepage">Home</g:link>
<hr>
<div class="ui simple dropdown item">
    Club
    <i class="dropdown icon"></i>
    <div class="menu">
        <div class="item" > <g:link controller="club" action="index">Club List</g:link></div>
        <g:if test="${session.user}">
            <g:if test="${session.user.role=="admin"}">
                <div class="item" ><g:link class="item" controller="club" action="create">New Club</g:link></div>
                <hr>
            </g:if>
        </g:if>
    </div>
</div><hr>
<div class="ui simple dropdown item">
    Event
    <i class="dropdown icon"></i>
    <div class="menu">
        <g:if test="${session.user}">
                <div class="item" ><g:link class="item" controller="event" action="create">New Event</g:link></div><br>
        </g:if>
        <div class="item" ><g:link class="item" controller="event" action="index">Event List</g:link></div>
    </div>
</div>
<hr>
<g:if test="${session.user}">
    <g:if test="${session.user.role=="admin"}">
        <div class="ui simple dropdown item">
            User
            <i class="dropdown icon"></i>
            <div class="menu">

                        <div class="item" ><g:link class="item" controller="user" action="create">New User</g:link></div><br>
        <div class="item" ><g:link class="item" controller="event" action="index">User List</g:link></div>


        </div>
        <hr>
    </g:if>
</g:if>
</div>
<br><br>
<g:if test="${session.user}">
    <g:link controller="user" action="logout">Logout</g:link>
</g:if>
<g:else>
    <g:link controller="user" action="login">Login</g:link>
</g:else>
<g:layoutBody/>
%{--<foorter>
    <h1>Footer</h1>
</foorter>--}%
</body>
</html>
