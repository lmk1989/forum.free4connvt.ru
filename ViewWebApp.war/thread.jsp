<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
         import="controller.*,model.*,javax.ejb.*,java.io.*,java.util.*,javax.naming.*,javax.rmi.*"%>
<html>
  <head>
    <title>OTN Discussion Forums : rename datafile by file# ...</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="icon" type="image/png" sizes="32x32" href="favicon-32x32.png"/>
    <link rel="stylesheet" type="text/css" href="styles/style.css"/>
    <link rel="stylesheet" type="text/css" href="styles/otn_new.css"/>
    <link rel="stylesheet" type="text/css" href="styles/circle.css"/>
    <link rel="stylesheet" type="text/css" href="styles/forums_style.css">
    <link rel="stylesheet" type="text/css" href="styles/test.css"/>
    <link rel="stylesheet" type="text/css" href="styles/main_style.css"/>
    <script type="text/javascript" src="scripts/jquery-1.11.2.min.js"></script>
    <script type="text/javascript" src="scripts/tinymce/tinymce.min.js"></script>
    <script type="text/javascript" src="scripts/tinymce/jquery.tinymce.min.js"></script>
    <script src="scripts/AC_RunActiveContent.js" type="text/javascript"></script>
    <script language="JavaScript" type="text/javascript" src="scripts/mps.js"></script>
  </head>
  <body>
  <%
        int threadID = request.getParameter("threadID") != null && request.getParameter("threadID") != ""
                    ? Integer.parseInt(request.getParameter("threadID")) 
                    : 0;
        Connector connector = Connector.getConnector();
        UPContainer container = connector.getContainerInstance(session.getId());
        Controller controller = container.getControllerInstance();
        userHandler handler = container.getUserHandlerInstance();
        Threads thread = controller.findEntity(Threads.class, threadID);
        pageController pcontroller = handler.getPageProperties(thread.getMessagesList().size(), request.getParameter("start"));
        controller.setViewThread(threadID, handler.getHistoryList());
        boolean hst = thread !=null ? true : false;
        int categoryID = thread.getCategories().getCategory_id();
    %>
  <script type="text/javascript">
    tinyMCE.init({
        theme : "advanced",
        mode : "none",
        plugins : "bbcode",
        theme_advanced_buttons1 : "bold,italic,underline,undo,redo,link,unlink,image,forecolor,styleselect,removeformat,cleanup,code",
        theme_advanced_buttons2 : "",
        theme_advanced_buttons3 : "",
        theme_advanced_toolbar_location : "bottom",
        theme_advanced_toolbar_align : "center",
        theme_advanced_styles : "Code=codeStyle;Quote=quoteStyle",
        content_css : "css/bbcode.css",
        entity_encoding : "raw",
        add_unload_trigger : false,
        remove_linebreaks : false,
        inline_styles : false,
        convert_fonts_to_spans : false
    });
  </script>
  <div class="content_wrap">
    <jsp:include page="/topbanner"/>
     
    
    <div class="jive-header-table">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tbody>
        <tr>
          <td width="100%">
            <jsp:include page="/populartags"/>
            <jsp:include page="/breadcrumbs"/>
            <p class="jive-page-title">
              <%if(hst) out.print(thread.getTitle());%>
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
    <% if(hst) { %>
    
    
    <div id="jive-body-wrap">
    <div id="jive-body-content">
      <div id="jive-flatpage">
        <br>
        <div class="jive-buttons">
          <table summary="Buttons" cellpadding="0" cellspacing="0" border="0">
            <tbody>
              <tr>
                <td class="jive-icon">
                  <a href="post.jsp?threadID=<%=thread.getThread_id()%>">
                    <img src="pics/reply-16x16.gif" width="16" height="16"
                         border="0" alt="Reply to this Thread"/></a>
                </td>
                <td class="jive-icon-label">
                  <a id="jive-reply-thread"
                     href="post.jsp?threadID=<%=thread.getThread_id()%>">Ответить
                                                                        на
                                                                        сообщение</a>
                </td>
                <td class="jive-icon">
                  <img src="pics/search-128x128.png" width="16" height="16"
                       border="0" alt="Search Forum"/>
                </td>
                <td class="jive-icon-label">
                  <a href="search.jsp?threadID=<%=thread.getThread_id()%>">Поиск</a>
                </td>
                <td class="jive-icon">
                  <a href="category.jsp?categoryID=<%=categoryID%>">
                    <img src="pics/arrow-left-16x16.gif" width="16" height="16"
                         border="0" alt="Назад к списку тем"/></a>
                </td>
                <td class="jive-icon-label">
                  <a href="category.jsp?categoryID=<%=categoryID%>">Назад
                                                                                                к
                                                                                                списку
                                                                                                тем</a>
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
                <div class="jive-message-list">
                  <div class="jive-table">
                    <table cellpadding="0" cellspacing="0" border="0"
                           width="100%">
                      <thead>
                        <tr>
                          <th class="jive-first-last">
                            <table cellpadding="0" cellspacing="0" border="0"
                                   width="100%">
                              <tbody>
                                <tr>
                                  <td width="1%">
                                    <a href="thread.jsp?threadID=<%=thread.getThread_id()%>"
                                       title="Permlink">
                                      <img src="pics/permlink-16x16.gif"
                                           width="16" height="16" border="0"
                                           alt="Permlink"/></a>
                                  </td>
                                  <td width="97%">
                                    
                                    <span class="bidi">Сообщений:</span>
                                    <span class="bidi"><%=thread.getMessagesList().size()%> </span>
                                     - 
                                    <span class="bidi">Страниц: </span>
                                     
                                    <span class="bidi"> 
                                      <%=pcontroller.getCurrentAmountPages()%></span>
                                      
                                    <jsp:include page="/pagination"/>
                                     - 
                                    <span class="bidi"> 
                                      <a href="thread.jsp?threadID=<%=thread.getThread_id()%>&start=<%=(pcontroller.getCurrentAmountPages() - 1) * pcontroller.getDefaultTopicsPerPage()%>&message#<%=thread.getMessagesList().size()%>"
                                         title="Опубликовано кем: <%=thread.getMessagesList().get(thread.getMessagesList().size() - 1).getPosted()%>...">Последнее сообщение</a>: </span>
                                     
                                    <span class="bidi"> 
                                      <%=thread.getMessagesList().get(thread.getMessagesList().size() - 1).getPosted()%>
                                       </span>
                                     Опубликовано кем: 
                                    <%=thread.getMessagesList().get(thread.getMessagesList().size() - 1).getUsers().getName()%>
                                  </td>
                                  <td width="1%" nowrap="">
                                    <span class="bidi">Тема: </span>
                                     [ 
                                    <span class="bidi"> 
                                      <a href="thread.jsp?threadID=<%=thread.getThread_id() - 1%>">Предыдущая</a>
                                       </span>
                                     | 
                                    <span class="bidi"> 
                                      <a href="thread.jsp?threadID=<%=thread.getThread_id() + 1%>">Следующая</a>
                                       </span>
                                     ]
                                  </td>
                                </tr>
                              </tbody>
                            </table>
                          </th>
                        </tr>
                      </thead>
                    </table>
                  </div>
                </div>
                <div id="jive-message-holder">
                  <% for (Messages message : (List<Messages>)handler.getRankedList(thread.getMessagesList())) { %>
                  <div class="jive-message-list">
                    <div class="jive-table">
                      <div class="jive-messagebox">
                        <table summary="Message" cellpadding="0" cellspacing="0"
                               border="0" width="100%">
                          <tbody>
                            <tr id="jive-message-9539262" valign="top"
                                class="jive-even">
                              <td width="1%" class="jive-first">
                                <table cellpadding="0" cellspacing="0"
                                       border="0" width="150">
                                  <tbody>
                                    <tr>
                                      <td>
                                        <table cellpadding="0" cellspacing="0"
                                               border="0" width="100%">
                                          <tbody>
                                            <tr valign="top">
                                              <td width="1%" style="padding:0px; position: relative;">
                                                <img src="pics/<%=connector.isActive(message.getUsers().getName())?"online":"offline"%>_status.png" class="status" width="16" height="16" border="0" alt="Online"/>
                                                <a href="profile.jsp?userID=<%=message.getUsers().getUid()%>" title="<%=message.getUsers().getName()%>" onclick="$(this).parent().find('#uid-<%=message.getUsers().getUid()%>').toggleClass('open'); return false;"><%=message.getUsers().getName()%></a>
                                                <ul class="popupbody memberaction_body" id="uid-<%=message.getUsers().getUid()%>">
                                                    <li class="left">
                                                        <a class="siteicon_profile" href="profile.jsp?userID=<%=message.getUsers().getUid()%>">Просмотр профиля</a>
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
                                              </td>
                                            </tr>
                                            <tr valign="top">
                                              <td width="1%" style="padding:0px;">
                                              <a hovercard-ref="member" hovercard-id="remarque" href="profile.jsp" title="Просмотр профиля" class="ipsUserPhotoLink _hovertrigger url fn name left ">
                                                <div class="b-avatar_wrap">
					          <img src="pics/no_avatar_m-128x128.png" class="ipsUserPhoto ipsUserPhoto_large"/>
				                </div>
				              </a>
                                              </td>
                                            </tr>
                                          </tbody>
                                        </table>
                                        <br>
                                         
                                        <span class="jive-description"> 
                                          <span class="bidi">Опубликовано тем:</span>
                                          <% out.print(message.getUsers().getThreadsList().size()); %>
                                          <br>
                                          <span class="bidi">Опубликовано сообщений:</span>
                                          <% out.print(message.getUsers().getMessagesList().size()); %>
                                          <br>
                                           
                                          <span class="bidi">Зарегистрирован:</span><br>
                                           
                                          <%=message.getUsers().getCreated()%>
                                           </span>
                                      </td>
                                    </tr>
                                  </tbody>
                                </table>
                              </td>
                              <td width="99%" class="jive-last">
                                <table cellpadding="0" cellspacing="0"
                                       border="0" width="100%">
                                  <tbody>
                                    <tr valign="top">
                                      <td width="1%">&nbsp;</td>
                                      <td width="97%">
                                        <span class="jive-subject">
                                          <a name="<%=controller.positionInThread(thread, message)%>"></a><%="Re: " + message.getTitle()%></span>
                                         
                                        <br>
                                         
                                        <span class="jive-description"> Опубликовано: 
                                          <%=message.getPosted()%>
                                           </span>
                                      </td>
                                      <td width="1%" class="jive-rating-buttons"
                                          nowrap="">&nbsp;</td>
                                      <td width="1%">
                                        <div class="jive-buttons">
                                          <table cellpadding="0" cellspacing="0"
                                                 border="0">
                                            <tbody>
                                              <tr>
                                                <td>&nbsp;</td>
                                                <td class="jive-icon">
                                                  <a href="post.jsp?messageID=<%=message.getMessage_id()%>"
                                                     title="Click to reply to this thread">
                                                    <img src="pics/reply-16x16.gif"
                                                         width="16" height="16"
                                                         border="0"
                                                         alt="Click to reply to this thread"/></a>
                                                </td>
                                                <td class="jive-icon-label">
                                                  <a href="post.jsp?messageID=<%=message.getMessage_id()%>"
                                                     title="Click to reply to this thread">Ответ</a>
                                                </td>
                                              </tr>
                                            </tbody>
                                          </table>
                                        </div>
                                      </td>
                                    </tr>
                                    <tr>
                                      <td colspan="4">
                                        <table border="0" cellpadding="0"
                                               cellspacing="0" width="100%"
                                               class="jive-message-body-wrapper">
                                          <tbody>
                                            <tr>
                                              <td>
                                              <!--textarea class="jive-message-body" readonly wrap="off" >
                                                <%=message.getText()%>
                                              </textarea>
                                              <script>
                                                $(function(){
                                                  tinyMCE.execCommand('mceToggleEditor',false,'content');
                                                });
                                              </script-->
                                                <div class="jive-message-body">
                                                  <%=message.getText()%>
                                                </div>
                                              </td>
                                            </tr>
                                          </tbody>
                                        </table>
                                      </td>
                                    </tr>
                                  </tbody>
                                </table>
                              </td>
                            </tr>
                          </tbody>
                        </table>
                      </div>
                    </div>
                  </div>
                  <%}%>
                  <div class="jive-message-list-footer">
                    <table cellpadding="0" cellspacing="0" border="0"
                           width="100%">
                      <tbody>
                        <tr>
                          <td width="1%" nowrap="">
                            <span class="jive-paginator-bottom">
                              <span class="bidi">Сообщений:</span>
                              <span class="bidi"><%=thread.getMessagesList().size()%></span>
                              <span class="bidi">Страниц: </span>
                              <span class="bidi"><%=pcontroller.getCurrentAmountPages()%></span>
                              <jsp:include page="/pagination"/>
                            </span>
                          </td>
                          <td width="98%" align="center">
                            <table cellpadding="0" cellspacing="0" border="0">
                              <tbody>
                                <tr>
                                  <td>
                                    <a href="forum.jspa?forumID=61">
                                      <img src="pics/arrow-left-16x16.gif"
                                           width="16" height="16" border="0"
                                           hspace="6" alt="Back to Thread List"/></a>
                                  </td>
                                  <td>
                                    <a href="category.jsp?categoryID=<%=categoryID%>">Назад к списку тем</a>
                                  </td>
                                </tr>
                              </tbody>
                            </table>
                          </td>
                          <td width="1%" nowrap="">
                            <span class="bidi">Тема: </span>
                             [ 
                            <span class="bidi"> 
                              <a href="thread.jsp?threadID=<%=thread.getThread_id() - 1%>">Предыдущая</a>
                               </span>
                             | 
                            <span class="bidi"> 
                              <a href="thread.jsp?threadID=<%=thread.getThread_id() + 1%>">Следующая</a>
                               </span>
                             ]
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </td>
            </tr>
          </tbody>
        </table>
        <br>
      </div>
      <br>
      <div class="greybarhomebot">
        <!--footer-->
      </div>
    </div>
    
    <div id="jive-contents-wrap">
        <jsp:include page="/rightblockcontents"/>
    </div>
    
    </div>
    
    <%} else {%>
    <div id="jive-body-content">
      Указанная тема не была найдена. 
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
       
      <br><br>
      <div class="greybarhomebot">
        <!--footer-->
      </div>
    </div>
    <%}%>
     
    <%//}catch(Exception ex){out.print(ex);}%>
    <jsp:include page="/footerblock"/>
    </div>
  </body>
</html>