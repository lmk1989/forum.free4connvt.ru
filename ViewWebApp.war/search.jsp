<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
         import="controller.*,model.*,javax.ejb.*,java.io.*,java.util.*,javax.naming.*,javax.rmi.*,java.text.SimpleDateFormat,java.util.Calendar"%>
<html>
  <head>
    <title>Discussion Forums : Forum Search</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <link rel="icon" type="image/png" sizes="32x32" href="favicon-32x32.png"/>
    <link rel="stylesheet" type="text/css" href="styles/style.css"/>
    <link rel="stylesheet" type="text/css" href="styles/otn_new.css"/>
    <link rel="stylesheet" type="text/css" href="styles/circle.css"/>
    <link rel="stylesheet" type="text/css" href="styles/test.css"/>
    <script type="text/javascript" src="scripts/jquery-1.11.2.min.js"></script>
    <script src="scripts/AC_RunActiveContent.js" type="text/javascript"></script>
  </head>
  <body>
  <div class="content_wrap">

  <%
    int prevIndex = 0;
    int currentIndex = 0;
    int numberMessages = 0;
    Vector foundMessages = null;
   
    long pages = 1;
    Connector connector = Connector.getConnector();
    UPContainer container = connector.getContainerInstance(session.getId());
    Controller controller = container.getControllerInstance();
    userHandler handler = container.getUserHandlerInstance();
    String q = request.getParameter("q"); 
    String cb1 = request.getParameter("cb1");
    
    boolean hq = q !=null && !q.isEmpty() ? true : false;

    Calendar cal = Calendar.getInstance();
    SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss");
    out.println( sdf.format(cal.getTime()) );
  %>
   <jsp:include page="/topbanner"/>
   <div class="jive-header-table">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tbody>
        <tr>
          <td width="100%">
            <jsp:include page="/populartags"/>
            <jsp:include page="/breadcrumbs"/>
            <p class="jive-page-title">Страница поиска</p>
            <p class="jive-description">
              Используйте форму ниже, для поиска сообщений на форуме. 
              Вы можете осуществлять поиск как по всем категориям, так и 
              ограничить поиск в определенной категории и по определенной дате.
            </p>
          </td>
          <td width="10"></td>
          <jsp:include page="/headerblock"/>
          <jsp:include page="/loginblock"/>
        </tr>
      </tbody>
    </table>
    </div>
    
    <div id="jive-search-content">
      <div id="jive-searchpage">
        <form action="search.jsp" name="searchform">
          <table cellpadding="0" cellspacing="0" border="0" width="100%">
            <tbody>
              <tr valign="top">
                <td width="100%">
                  
                  <div class="jivetabs" id="searchtabs">
                    <ul>
                      <li class="current">
                        <span><a href="javascript:void(0)">Тема</a></span>
                        <p></p>
                      </li>
                      <li>
                        <span><a href="javascript:void(0)">Пользователь</a></span>
                        <p></p>
                      </li>
                    </ul>
                    <script type="text/javascript">
                    $('#searchtabs.jivetabs li').click(function() {
                        if(!$(this).hasClass("current")) {
                            $(this).toggleClass("current");
                            current=$(this).index();
                            $('#searchtabs.jivetabs li').each(function(){
                                if(current!=$(this).index())$(this).toggleClass("current");
                            });
                        }
                    });
                    </script>
                  </div>
                  <br><br>
                  <div class="jive-search-form">
                    <div class="jive-table">
                      <table summary="Search form" cellpadding="0"
                             cellspacing="0" border="0" width="100%">
                        <thead>
                          <tr>
                            <th colspan="2" class="jive-first-last">
                            Поиск по форуму</th>
                          </tr>
                        </thead>
                         
                        <tbody>
                          <tr>
                            <td width="1%" nowrap="" class="jive-first"
                                valign="middle">
                              <span class="jive-search-label">
                                <label for="q01">Условия поиска:</label></span>
                            </td>
                            <td width="99%" class="jive-last">
                              <input type="text" name="q" size="50"
                                     maxlength="100" value="" id="q01"/>
                               
                              <input type="submit" value="Поиск" name="cb1"
                                     onclick="this.form.submit();"/>
                              
                              <%if(cb1 != null && !hq) {%>
                              <span class="jive-error-text">
                                <br>Введите слово для начала поиска.
                              </span>
                              <%}%>
                              
                            </td>
                          </tr>
                          <tr>
                            <td width="1%" nowrap="" class="jive-first"
                                valign="middle">
                              <label for="objID01">Категория:</label>
                            </td>
                            <td colspan="2" width="99%" class="jive-last">
                              <select size="1" name="objID" id="objID01"
                                      class="jive-selbox">
                                <option value="all" style="border-bottom:2px #ccc solid">
                                  Все категории
                                </option>
                                <% int i=0;
                                for(Categories category : (List<Categories>) controller.getCategoriesFindAll()) {
                                i++;
                                %>
                                <option value="c<%=i%>" style="border-bottom:1px #ccc dotted">
                                  <%=category.getTitle()%>
                                </option>
                                <%}%>
                              </select>
                            </td>
                          </tr>
                          <tr>
                            <td width="1%" nowrap="" class="jive-first"
                                valign="middle">
                              <label for="daterange01">Диапазон дат:</label>
                            </td>
                            <td colspan="2" width="99%" class="jive-last">
                              <select size="1" name="dateRange" id="daterange01"
                                      class="jive-selbox">
                                <option value="all">All</option>
                                <option value="yesterday">Yesterday - <%=(cal.get(Calendar.DAY_OF_MONTH)-1)+"/"+(cal.get(Calendar.MONTH)+1)+"/"+cal.get(Calendar.YEAR)%></option>
                                <option value="last7days">Last 7 Days - 4/24/11</option>
                                <option value="last30days">Last 30 Days - 4/1/11</option>
                                <option value="last90days" selected="">Last 90
                                                                       Days -
                                                                       1/31/11</option>
                                <option value="thisyear">This Year - 1/1/11</option>
                                <option value="lastyear">Last Year - 1/1/10</option>
                              </select>
                            </td>
                          </tr>
                          <tr>
                            <td width="1%" nowrap="" class="jive-first"
                                valign="middle">
                              <label for="username01">Идентификатор пользователя:</label>
                            </td>
                            <td colspan="2" width="99%" class="jive-last">
                              <input type="text" name="userID" size="20"
                                     maxlength="50" id="username01" value=""/>
                               
                              <span class="jive-description"> (Leave field blank
                                                             to search all
                                                             users) </span>
                            </td>
                          </tr>
                          <tr>
                            <td width="1%" nowrap="" class="jive-first"
                                valign="middle">
                              <label for="results01">Результатов на странице:</label>
                            </td>
                            <td colspan="2" width="99%" class="jive-last">
                              <select size="1" name="numResults" id="results01">
                                <option value="10">10</option>
                                <option value="15" selected="">15</option>
                                <option value="30">30</option>
                              </select>
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
          <br><br>
                    
          <%
            //try {

              if (hq) {
                foundMessages = controller.searchMessages(q);
                numberMessages = foundMessages.size();
                pages = (long)Math.ceil(new Long(numberMessages + 1).doubleValue()/new Long(15).doubleValue());
              
          %>
          
          <div class="jive-search-results">
            <div class="jive-table">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
                <thead>
                  <tr>
                    <th width="99%" class="jive-first">
                    Результат поиска &raquo; Сообщений: <%=numberMessages%> <%=hq ? "- Поиск: " + q : ""%></th>
                    <th width="1%" nowrap="" class="jive-last">
                      Sort by:
                      <select name="rankBy">
                        <option value="10001" selected="">Relevance</option>
                        <option value="9">Date</option>
                      </select>
                    </th>
                  </tr>
                </thead>
              </table>
            </div>
          </div>
          
          
          
          Страниц: <%=pages%>
          <div class="jive-search-results">
            <ol start="1">
              <%
                for (Messages messages : (List<Messages>)foundMessages) {
                  prevIndex = 0;
                  currentIndex = messages.getTitle().toLowerCase().indexOf(q.toLowerCase(), prevIndex);
              %>
              
              <li class="jive-search-result">
                <a href="thread.jsp?threadID=<%=messages.getThreads().getThread_id()%>&message#<%=controller.positionInThread(messages.getThreads(), messages)%>"
                   class="jive-result-link">
                  <%
                    while(currentIndex != -1) {
                  %>
                  <%=messages.getTitle().substring(prevIndex, currentIndex)%>
                  <span class="jive-hilite"><%=messages.getTitle().substring(currentIndex, currentIndex + q.length())%></span>
                  <%
                      prevIndex = currentIndex + q.length();
                      currentIndex = messages.getTitle().toLowerCase().indexOf(q.toLowerCase(), prevIndex);
                    }
                  %><%=messages.getTitle().substring(prevIndex)%>
                </a>
                <span class="jive-result-info">
                  <br>
                   Опубликовано:<%=messages.getPosted()%>, 
                   пользователем:<a href="profile.jsp?userID=<%=messages.getUsers().getUid()%>"><%=messages.getUsers().getName()%></a>
                   -- Соответствие:<%=Math.round(new Long(q.length()).doubleValue()*100/new Long(messages.getTitle().length()).doubleValue()) + "%"%>
                </span>
                <%
                  prevIndex = 0;
                  currentIndex = messages.getText().toLowerCase().indexOf(q.toLowerCase(), prevIndex);
                %>
                <p class="jive-body">
                  <%
                    while(currentIndex != -1) {
                  %>
                  <%=messages.getText().substring(prevIndex, currentIndex)%>
                  <span class="jive-hilite"><%=messages.getText().substring(currentIndex, currentIndex + q.length())%></span>
                  <%
                      prevIndex = currentIndex + q.length();
                      currentIndex = messages.getText().toLowerCase().indexOf(q.toLowerCase(), prevIndex);
                    }
                  %><%=messages.getText().substring(prevIndex)%>
                </p>
              </li>
              <%}%>
            </ol>
            
          </div>
          <%}%>
        <%//}catch(Exception ex) {out.print(ex);}%>
        </form>
      </div>
      <br><br>
      <div class="greybarhomebot">
        <!--footer-->
      </div>
    </div>
    <jsp:include page="/footerblock"/>
    </div>
  </body>
</html>