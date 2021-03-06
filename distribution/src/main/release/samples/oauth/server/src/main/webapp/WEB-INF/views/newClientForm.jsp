<!--
Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements. See the NOTICE file
distributed with this work for additional information
regarding copyright ownership. The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied. See the License for the
specific language governing permissions and limitations
under the License.
-->
<%--@elvariable id="client" type="org.apache.cxf.rs.security.oauth.demo.server.ClientApp"--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head><title>Authorization Server</title></head>
<body>

<c:if test="${!empty client.error}">
    <font color="red"><p>Error: ${client.error}</p></font>
</c:if>
<table>
    <form:form commandName="client" action="/app/registerClient">
        <tr>
            <td>Consumer key:</td>
            <td><form:input size="70" path="consumerKey"/> - You can provide consumer key,
                if not it will be automatically generated
            </td>
        </tr>
        <tr>
            <td>Client Name:</td>
            <td><form:input size="70" path="clientName"/></td>
        </tr>
        <tr>
            <td>Callback URL:</td>
            <td><form:input size="70" path="callbackURL"/></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="Register New Client"/>
            </td>
        </tr>
    </form:form>
    <tr>
        <form:form action="/app/listRegisteredClients">
            <td colspan="2">
                <input type="submit" value="List Registered Clients"/>
            </td>
        </form:form>
    </tr>
    <tr>
        <form:form action="/app/listAuthorizedClients">
            <td colspan="2">
                <input type="submit" value="List Authorized Clients"/>
            </td>
        </form:form>
    </tr>
</table>

</body>
</html>
