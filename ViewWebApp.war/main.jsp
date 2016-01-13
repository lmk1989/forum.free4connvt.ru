<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
         import="controller.*,model.*,view.*,viewhandler.*,javax.ejb.*,java.io.*,java.util.*,javax.naming.*,javax.rmi.*"%>
         
<%
    Connector connector = Connector.getConnector();
    UPContainer container = connector.getContainerInstance(session.getId());
    Controller controller = container.getControllerInstance();
    userHandler handler = container.getUserHandlerInstance();
%>

<html>
    <head>
        <title>FTN Discussion Forums : Forum Home</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <link rel="icon" type="image/png" sizes="32x32" href="favicon-32x32.png"/>
        <link rel="stylesheet" type="text/css" href="styles/style.css"/>
        <link rel="stylesheet" type="text/css" href="styles/circle.css"/>
        <link rel="stylesheet" type="text/css" href="styles/otn_new.css"/>
        <link rel="stylesheet" type="text/css" href="styles/main_style.css"/>
        <link rel="stylesheet" type="text/css" href="styles/forums_style.css">
        <link rel="stylesheet" type="text/css" href="styles/test.css"/>
        <script language="JavaScript" type="text/javascript" src="scripts/mps.js"></script>
        <script type="text/javascript" src="scripts/jquery-1.11.2.min.js"></script>
        <script src="scripts/AC_RunActiveContent.js" type="text/javascript"></script>
    </head>
    <body>
    
        <div class="content_wrap">
            <jsp:include page="/topbanner"/>
            <div class="jive-header-table">
                <table border="0" cellpadding="0" cellspacing="0">
                    <tbody>
                        <tr valign="top">
                            <td width="99%">
                                <table width="99%">
                                    <tbody>
                                        <tr>
                                            <td width="99%" valign="top">
                                                <jsp:include page="/populartags"/>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                            <td width="10"></td>
                            <jsp:include page="/headerblock"/>
                            <jsp:include page="/searchblock"/>
                            <jsp:include page="/loginblock"/>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div id="jive-body">

            <% for(NodeType nodeType: (List<NodeType>)controller.getNodeTypeFindAll()) {%>
                <% for(model.Node node:(List<model.Node>)nodeType.getNodesList()) {%>
            
                    <div class="block-wrap">
                        <div id="node-type-block">
                            <div class="node-type-name">
                                <h1>
                                    <a href="<%="node/" + node.getNid()%>"><%=nodeType.getName()%></a>
                                </h1>
                            </div>
                            <hr/>
                            <div class="node-type-description">
                                <%=nodeType.getDescription()%>
                            </div>
                            <div class="more">
                            </div>
                        </div>
                        <div id="jive-body-content">
                            <% CompilerJavaManager.compileJavaFileObject(ParserQueryString.splitContent(node), out, session.getId(), Connector.class.getProtectionDomain().getCodeSource().getLocation().getPath().split(container.getClass().getPackage().getName())[0], Connector.class.getClassLoader()); %>
                        </div>
                    </div>
              
                <%}%>
            <%}%>
              
            </div>
            <jsp:include page="/footerblock"/>
        </div>
        <script type="text/javascript"> 
            $(window).scroll(function() { 
                var currPos = $(document).scrollLeft(); 
                var currPos2 = $(document).scrollTop(); 
                if(currPos2 == 0)
                    $(".pesky-header").css({ 
                        "position" : "absolute" 
                    }); 
                if(currPos2 > $(".pesky-header").height()) { 
                    $(".pesky-header").css({ 
                        "position" : "fixed", 
                        "opacity" : "0.8", 
                        "z-index" : "10" 
                    }); 
                } else {  
                    $(".pesky-header").css({ 
                        "opacity" : "0", 
                        "z-index" : "-1" 
                    }); 
                } 
            }); 
        </script>
    </body>
</html>