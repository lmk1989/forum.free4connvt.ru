<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
         import="controller.*,model.*,javax.ejb.*,java.io.*,java.util.*,javax.naming.*,javax.rmi.*"%>
<html>
  <head>
    <title>OTN Discussion Forums : Oracle Directory Server EnterpriseEdition/Sun DSEE</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <link rel="icon" type="image/png" sizes="32x32" href="favicon-32x32.png"/>
    <link rel="stylesheet" type="text/css" href="styles/style.css"/>
    <link rel="stylesheet" type="text/css" href="styles/otn_new.css"/>
    <link rel="stylesheet" type="text/css" href="styles/circle.css"/>
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
     
    <%
        int categoryID = request.getParameter("categoryID") != null && request.getParameter("categoryID") != ""
                    ? Integer.parseInt(request.getParameter("categoryID")) 
                    : 0;
        Connector connector = Connector.getConnector();
        UPContainer container = connector.getContainerInstance(session.getId());
        Controller controller = container.getControllerInstance();
        userHandler handler = container.getUserHandlerInstance();
        Categories category = controller.findEntity(Categories.class, categoryID);
        pageController pcontroller = handler.getPageProperties(category.getThreadsList().size(), request.getParameter("start"));
        boolean hsc = category !=null ? true : false;
    %>

    <div class="jive-header-table">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tbody>
        <tr>
          <td width="100%">
            <jsp:include page="/populartags"/>
            <jsp:include page="/breadcrumbs"/>
            <p class="jive-page-title">
              <%if (hsc) out.print(category.getTitle());%>
            </p>
            <p class="jive-description"></p>
          </td>
          <td width="10"></td>
          <jsp:include page="/headerblock"/>
          <jsp:include page="/searchblock"/>
          <jsp:include page="/loginblock"/>
        </tr>
      </tbody>
    </table>
    </div>
    
    <%if (hsc) { %>
    
    <div id="jive-body-wrap">
    <div id="jive-body-content" style="overflow: visible;">
      <div id="jive-forumpage">
        <div class="jive-buttons">
          <table summary="Buttons" cellpadding="0" cellspacing="0" border="0">
            <tbody>
              <tr>
                <td class="jive-icon">
                  <a href='post.jsp?categoryID=<%=request.getParameter("categoryID")%>'>
                    <img src="pics/post-16x16.gif" width="16" height="16" border="0" alt="Создать новую тему"/></a>
                </td>
                <td class="jive-icon-label">
                  <a id="jive-post-thread" href='post.jsp?categoryID=<%=request.getParameter("categoryID")%>'>Создать новую тему</a>
                </td>
                <td class="jive-icon">
                  <a href="main.jsp">
                    <img src="pics/arrow-left-16x16.gif" width="16" height="16" border="0" alt="На главную страницу"/></a>
                </td>
                <td class="jive-icon-label">
                  <a href="main.jsp">На главную страницу</a>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
        <br>
        <table cellpadding="0" cellspacing="0" border="0" width="100%">
          <tbody>
            <tr valign="top">
              <td width="99%">
                <div class="jive-thread-list">
                  <div class="jive-table">
                    <table summary="List of threads" cellpadding="0"
                           cellspacing="0" width="100%">
                      <thead>
                        <tr>
                          <th class="jive-first" colspan="3">Тема</th>
                          <th class="jive-author">Автор</th>
                          <th class="jive-msg-count">Ответов</th>
                          <th class="jive-last" nowrap="">Последнее сообщение</th>
                        </tr>
                      </thead>

                      <tbody>
                      <%int i = 0;%>
                      <% for (Threads thread : (List<Threads>)handler.getRankedList(category.getThreadsList())){ %>
                        <tr class="<%= i % 2 == 0 ? "jive-even" : "jive-odd"%>">
                          <td width="1%" nowrap="" class="jive-first">
                            <div class="jive-bullet">
                              <img src="pics/read-16x16.gif" width="16"
                                   height="16" border="0" alt="Read"/>
                            </div>
                          </td>
                          <td width="1%" nowrap="">
                            <img src="pics/question-pts-available-16x16.gif"
                                 width="16" height="16" border="0" alt=""
                                 title="Answer points still available"/>
                             &nbsp;
                          </td>
                          <td class="jive-thread-name" width="95%">
                            <a id="jive-thread-15"
                               href="thread.jsp?threadID=<%=thread.getThread_id()%>">
                              <%=thread.getTitle()%></a>
                          </td>
                          <td class="jive-author" width="1%" nowrap="">
                            <span class="jive-author-content" style="position: relative;">
                              <a title="<%=thread.getUsers().getName()%>" href="profile.jsp?userID=<%=thread.getUsers().getUid()%>" onclick="!$(this).parent().find('ul').hasClass('open')
                                                                                                                                             ? ($('ul.memberaction_body.open').toggleClass('open'), 
                                                                                                                                                $(this).parent().find('ul').toggleClass('open'))
                                                                                                                                             : $(this).parent().find('ul').toggleClass('open');
                                                                                                                                             return false;">
                                <%=thread.getUsers().getName()%>
                              </a>
                              <ul class="popupbody memberaction_body" id="uid-<%=thread.getUsers().getUid()%>">
                                <li class="left">
                                    <a class="siteicon_profile" href="profile.jsp?userID=<%=thread.getUsers().getUid()%>">Просмотр профиля</a>
                                </li>
                                <li class="right">
                                    <a rel="nofollow" class="siteicon_forum" href="">Сообщения форума</a>
                                </li>
                                <li class="left">
                                    <a rel="nofollow" class="siteicon_message" href="">Личное сообщение</a>
                                </li>
                                <li class="right">
                                    <a rel="nofollow" class="siteicon_blog" href="">Записи в дневнике</a>
                                </li>
                                <li class="right">
                                    <a rel="nofollow" class="siteicon_article" href="">Просмотр статей</a>
                                </li>
                              </ul>
                            </span>
                          </td>
                          <td class="jive-msg-count" width="1%">
                            <span class="jive-msg-count-content"><%=thread.getMessagesList().size() - 1%></span>
                          </td>
                          <td width="1%" nowrap="" class="jive-last">
                            <span class="jive-last-content">
                              <%=thread.getPosted()%>
                              <br/>
                              <a href="thread.jsp?threadID=<%=thread.getThread_id()%>&start=<%=(int)Math.ceil(thread.getMessagesList().size()/pcontroller.getDefaultTopicsPerPage()) * pcontroller.getDefaultTopicsPerPage()%>&message#<%=thread.getMessagesList().size()%>"
                                 title="<%=thread.getMessagesList().get(thread.getMessagesList().size() - 1).getUsers().getName()%>" style="">
                                <%=thread.getMessagesList().get(thread.getMessagesList().size() - 1).getUsers().getName().length() > 15 ? thread.getMessagesList().get(thread.getMessagesList().size() - 1).getUsers().getName().substring(0, 15) + "..." : thread.getMessagesList().get(thread.getMessagesList().size() - 1).getUsers().getName()%> &raquo;
                              </a>
                            </span>
                          </td>
                        </tr>
                        <%i++;%>
                      <%}%>
                      </tbody>                      
                    </table>
                  </div>
                </div>
                <table cellpadding="3" cellspacing="0" border="0" width="100%">
                  <tbody>
                    <tr>
                      <td width="99%">
                        <span class="nobreak">
                          <span class="bidi">Страниц: <%=pcontroller.getCurrentAmountPages()%> </span>
                          <span class="bidi">Тем: <%=pcontroller.getAmountPages()%> </span>
                          <jsp:include page="/pagination"/>
                        </span>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
      <br>
      <div class="greybarhomebot"></div>
    </div>
    
    <div id="jive-contents-wrap">
        <jsp:include page="/rightblockcontents"/>
    </div>
    
    </div>
    
    <%} else {%>
    
    <div id="jive-body-content">
      Указанный каталог не был найден. 
      <form action="search.jspa">
        <p>Полезные ссылки:</p>
        <ul>
          <li>
            <a href="main.jsp">Forum Home</a>
            -- обзор каталогов здесь.
          </li>
           
          <li>
            <a href="search.jsp">Поиск</a>
            -- перейдите на страницу поиска по запросу.
          </li>
        </ul>
      </form>
       
      <br>
      <div class="greybarhomebot">
        <!--footer-->
      </div>
    </div>
    
    <%}%>
    
    <jsp:include page="/footerblock"/>
  </div>
  </body>
</html>