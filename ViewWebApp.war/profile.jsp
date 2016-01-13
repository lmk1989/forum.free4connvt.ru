<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
    <link rel="stylesheet" type="text/css" href="styles/forums_style.css"/>
    <script type="text/javascript" src="scripts/jquery-1.11.2.min.js"></script>
    <script type="text/javascript" src="scripts/tinymce/tinymce.min.js"></script>
    <script type="text/javascript" src="scripts/tinymce/jquery.tinymce.min.js"></script>
    <script src="scripts/AC_RunActiveContent.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="styles/test.css"/>
    <meta content="" name="keywords"/>
    <meta content="" name="description"/>
    </head>
    <body>
    <%
        int userID = request.getParameter("userID") != null && request.getParameter("userID") != ""
                    ? Integer.parseInt(request.getParameter("userID")) 
                    : 0;
        Connector connector = Connector.getConnector();
        UPContainer container = connector.getContainerInstance(session.getId());
        Controller controller = container.getControllerInstance();
        userHandler handler = container.getUserHandlerInstance();
        Users user = controller.findEntity(Users.class, userID);
        boolean hsu = user !=null ? true : false;
    %>
        <div class="content_wrap">
            <jsp:include page="/topbanner"/>
            <div class="jive-header-table">
                <table border="0" cellpadding="0" cellspacing="0">
                    <tbody>
                        <tr valign="top">
                            <td width="99%">
                                
                            </td>
                            <td width="10"></td>
                            <jsp:include page="/headerblock"/>
                            <jsp:include page="/searchblock"/>
                            <jsp:include page="/loginblock"/>
                        </tr>
                    </tbody>
                </table>
            </div>
            
                <br/>
                <div id="member_content" class="member_content userprof fullwidth">
                    <div id="sidebar_container"
                         class="profile_widgets member_summary userprof_moduleinactive userprof_moduleinactive_border sidebarleft">
                        <div class="block mainblock moduleinactive_bg">
                            <h1 class="blocksubhead prof_blocksubhead">
                                <span id="userinfo">
                                    <span class="member_username">
                                        <span style=""><%=user.getName()%></span></span><span class="member_status"> 
                                        <img border="0" alt="<%=user.getName()%> вне форума" src="images/statusicon/user-offline.png"
                                             class="inlineimg onlinestatus" title="<%=user.getName()%> вне форума"/>
                                         </span><br/><span class="usertitle">ROLE</span><br/><span title="<%=user.getName()%> репутация неоспорима"
                                                                                                                        class="member_reputation"> 
                                        <img alt="" src="images/reputation/reputation_pos.png" class="repimg"/>
                                         </span><br/></span>
                            </h1>
                            <div class="floatcontainer" id="userinfoblock">
                                <ul class="usermenu" id="usermenu">
                                    <li>
                                        <a href="">
                                            <img class="inlineimg" alt="Найти сообщения"
                                                 src="pics/forum.png" title="Найти сообщения"/>Найти
                                                                                                            сообщения</a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <img class="inlineimg" alt="Найти темы" src="pics/forum.png"
                                                 title="Найти темы"/>Найти темы</a>
                                    </li>
                                    <li>
                                        <a rel="nofollow" href="">
                                            <img alt="" class="inlineimg" src="pics/article.png"/>Просмотр
                                                                                                               статей</a>
                                    </li>
                                    <li>
                                        <a rel="nofollow" href="">
                                            <img alt="" class="inlineimg" src="pics/blog.png"/>Записи в
                                                                                                            дневнике</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- stats_mini -->
                        <div class="subsection block" id="view-stats_mini">
                            <div class="mini_stats blockbody userprof_content userprof_content_border">
                                <div class="userinfo ">
                                    <h5 class="blocksubhead userprof_blocksubhead smaller">Мини-статистика</h5>
                                    <div class="blockrow member_blockrow">
                                        <dl class="stats">
                                            <dt>Регистрация</dt>
                                            <dd><%=user.getCreated()%></dd>
                                        </dl>
                                         
                                        <dl class="stats">
                                            <dt>Последняя активность</dt>
                                            <dd>
                                                Вчера
                                                <span class="time">18:52</span>
                                            </dd>
                                        </dl>
                                         
                                        <dl class="stats">
                                            <dt>Записей в дневнике</dt>
                                            <dd>1</dd>
                                        </dl>
                                    </div>
                                </div>
                                <!-- blockbody -->
                            </div>
                            <!-- widget block mini_stats -->
                        </div>
                        <div class="underblock"></div>
                        <!-- / stats_mini -->
                        <div class="friends_mini friends block">
                            <h5 class="blocksubhead userprof_blocksubhead smaller ">
                                <a onclick="return tabViewPicker(document.getElementById('friends-tab'));"
                                   class="textcontrol" href="">Ещё</a>
                                <span class="friends_total"><%=user.getUserRelationshipList().size()%></span>
                                Contacts
                            </h5>
                            <div class="blockbody userprof_content userprof_content_border">
                                <div class="blockrow member_blockrow">
                                    <ul class="friends_list floatcontainer">
                                    <%for(UserRelationship userRelationship : (List<UserRelationship>)user.getUserRelationshipList()) {%>
                                        <li>
                                            <a href="" class="image_friend_link">
                                                <img border="0" alt="<%=userRelationship.getWpUsers().getName()%>" src="<%=userRelationship.getWpUsers().getPicture()%>"
                                                     title="<%=userRelationship.getWpUsers().getName()%>"/></a>
                                            <div class="friend_info">
                                                <h6>
                                                    <a title="<%=userRelationship.getWpUsers().getName()%>" class="username" href="profile.jsp?userID=<%=userRelationship.getWpUsers().getUid()%>">
                                                        <span style="color: #FF6600;"><%=userRelationship.getWpUsers().getName()%></span></a>
                                                </h6>
                                            </div>
                                        </li>
                                        <%}%>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="underblock"></div>
                    </div>
                    <div id="userprof_content_container" class="member_tabs contentright">
                        <div id="profile_tabs" class="tabbackground">
                            <div id="tab_container" class="floatleft">
                                <dl class="tabslight">
                                    <dt>Tab Content</dt>
                                    <dd class="userprof_module">
                                        <a onclick="return tabViewPicker(this);"
                                           href=""
                                           id="activitystream-tab"><%=user.getName()%> Activity</a>
                                    </dd>
                                    <dd class="userprof_moduleinactive">
                                        <a onclick="return tabViewPicker(this);"
                                           href="" id="aboutme-tab">Personal</a>
                                    </dd>
                                    <dd class="userprof_moduleinactive">
                                        <a onclick="return tabViewPicker(this);"
                                           href="" id="friends-tab">Contacts</a>
                                    </dd>
                                    <dd class="userprof_moduleinactive">
                                        <a onclick="return tabViewPicker(this);"
                                           href="" id="blog-tab">Дневник</a>
                                    </dd>
                                    <dd class="userprof_moduleinactive">
                                        <a onclick="return tabViewPicker(this);"
                                           href="" id="myranks-tab">Rang</a>
                                    </dd>
                                </dl>
                            </div>
                            <div class="memberprofiletabunder"></div>
                        </div>
                        <div class="profile_content userprof">
                            <div class="selected_view_section" id="view-activitystream">
                                <!-- activitystream -->
                                <div class="subsection block" id="view-activitystream">
                                    <div class="activitystream_block">
                                        <div id="activity_tab_container">
                                            <div>
                                                <dl class="as-tabs">
                                                    <dt>Tab Content</dt>
                                                    
                                                    <dd id="asuser" class="selected">
                                                        <div>
                                                            <a href=""><%=user.getName()%></a>
                                                        </div>
                                                    </dd>
                                                    <dd id="asfriend">
                                                        <div>
                                                            <a href="">Contacts</a>
                                                        </div>
                                                    </dd>
                                                    
                                                </dl>
                                            </div>
                                        </div>
                                        <div class="newactivity hidden userprof_headers userprof_headers_border"
                                             id="newactivity_container">
                                            <span href="#" id="newactivitylink">New Activity (
                                                <span id="newactivitycount"></span>)</span>
                                        </div>
                                        <ul id="activitylist">
                                            <li class="hidden" id="olderactivity">
                                                <div class="block1">
                                                    <hr/>
                                                </div>
                                                <div class="block2">Older Activity</div>
                                                <div class="block3">
                                                    <hr/>
                                                </div>
                                            </li>
                                            <%for(Messages message : (List<Messages>)user.getMessagesList()){%>
                                            <%pageController pcontroller = handler.getPageProperties();%>
                                            <li class="activitybit forum_post">
                                                <div class="avatar">
                                                    <img alt="Аватар для <%=message.getUsers().getName()%>" src="<%=message.getUsers().getPicture()%>"/>
                                                </div>
                                                <div class="content hasavatar">
                                                    <div class="datetime">
                                                        <span class="date"><%=message.getPosted().split(" ")[0]%>
                                                            <span class="time"><%=message.getPosted().split(" ")[1]%></span></span>
                                                    </div>
                                                    <div class="title">
                                                        <a href="profile.jsp?userID=<%=message.getUsers().getUid()%>"><%=message.getUsers().getName()%></a>
                                                         replied to a thread 
                                                        <a href="thread.jsp?threadID=<%=message.getThreads().getThread_id()%>"><%=message.getThreads().getTitle().length() < 35 ? message.getThreads().getTitle() : message.getThreads().getTitle().substring(0, 35) + "..."%></a>
                                                         in 
                                                        <a href="category.jsp?categoryID=<%=message.getThreads().getCategories().getCategory_id()%>"><%=message.getThreads().getCategories().getTitle().length() < 35 ? message.getThreads().getCategories().getTitle() : message.getThreads().getCategories().getTitle().substring(0, 35) + "..."%></a>
                                                    </div>
                                                    <div class="excerpt"><%=message.getText().length() < 140 ? message.getText() : message.getText().substring(0, 140) + "..."%></div>
                                                    <div class="fulllink">
                                                        <a href="thread.jsp?threadID=<%=message.getThreads().getThread_id()%>&message#<%=controller.positionInThread(message.getThreads(), message)%>">see more</a>
                                                    </div>
                                                </div>
                                                <div class="views"><%=message.getThreads().getMessagesList().size() - 1%> replies | <%=message.getThreads().getViews()%> view(s)</div>
                                            </li>
                                            <%pcontroller=null;%>
                                            <%}%>
                                        </ul>
                                        
                                        <div class="moreactivity userprof_headers userprof_headers_border"
                                             id="moreactivity_container">
                                            <a href=""
                                               id="moreactivitylink">More Activity</a>
                                             
                                            <span id="noresults" class="hidden">No More Results</span>
                                             
                                            <img alt="~~Progress~~" src="images/misc/progress3.gif" class="hidden"
                                                 id="moreactivityprogress" title="~~Progress~~"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="underblock"></div>
                                <!-- / activitystream -->
                            </div>
                            <div class="view_section vm_other_prof" id="view-visitor_messaging"></div>
                            <div class="view_section" id="view-aboutme">
                                <div class="blocksubhead subsectionhead userprof_headers userprof_headers_border">
                                    <span class="subsectiontitle">О <%=user.getName()%></span>
                                     
                                    <!-- basic information -->
                                     
                                    <h4 id="about-me" class="subsectionhead-understate">Базовая информация</h4>
                                </div>
                                <div class="subsection">
                                    <div class="blockbody userprof_content userprof_content_border">
                                        <dl class="stats agerow">
                                            <dt>Дата рождения</dt>
                                            <dd>17.08</dd>
                                        </dl>
                                         
                                        <h5 class="subblocksubhead subsubsectionhead first">О <%=user.getName()%></h5>
                                         
                                        <dl>
                                            <dt>Местоположение:</dt>
                                            <dd>Россия</dd>
                                        </dl><dl>
                                            <dt>Интересы:</dt>
                                            <dd>Философия, Астрономия, История, Поэзия</dd>
                                        </dl><dl>
                                            <dt>Чем занимаетесь:</dt>
                                            <dd>Разработка компьютерных игр</dd>
                                        </dl><dl>
                                            <dt>Пол:</dt>
                                            <dd>Мужской</dd>
                                        </dl><dl>
                                            <dt>Ваша фракция:</dt>
                                            <dd>Орда</dd>
                                        </dl><dl>
                                            <dt>На каком логоне Вы играете:</dt>
                                            <dd>logon 3</dd>
                                        </dl>
                                    </div>
                                </div>
                                <div class="blocksubhead subsectionhead userprof_headers userprof_headers_border">
                                    <h4 class="subsectionhead-understate">Подпись</h4>
                                     
                                    <br/>
                                </div>
                                <div class="blockbody subsection userprof_content userprof_content_border">
                                    <div style="text-align: right;">
                                        <img border="0" alt=""
                                             src="http://s019.radikal.ru/i634/1509/92/47ad22147ed1.png"/><span style="font-family: arial"> 
                                            <b>
                                                <font size="2">
                                                    <br/>
                                                    Занимаюсь
                                                    <font color="#ff0000">исключительно</font>
                                                    мирами Logon 3
                                                    <br/>
                                                </font></b></span><span style="font-family: arial"> 
                                            <b>
                                                <font size="2">
                                                    Реалмлист: set realmlist logon3.wowcircle.com
                                                    <br/>
                                                    Связаться со мной:
                                                    <a target="_blank" href="">test</a>
                                                    <br/>
                                                    Наша группа вконтакте:
                                                    <a target="_blank" href="">test</a>
                                                </font></b></span><br/>
                                         
                                        <span style="font-family: arial"> 
                                            <b>
                                                <font size="2">
                                                    Личный кабинет:
                                                    <a target="_blank" href="">http://cp3.wowcircle.com</a>
                                                    <br/>
                                                    <a target="_blank" href="">Правила игровых миров</a>
                                                    Logon 3
                                                </font></b></span>
                                         
                                        <br/>
                                    </div>
                                </div>
                                <!-- stats -->
                                <div class="subsection block" id="view-stats">
                                    <!-- Statistics -->
                                    <div class="blocksubhead subsectionhead userprof_headers userprof_headers_border">
                                        <h4 style="width:100%" class="subsectionhead-understate" id="view-statistics">Статистика</h4><br/>
                                    </div>
                                    <div class="blockbody subsection userprof_content userprof_content_border">
                                        <h5 class="subblocksubhead subsubsectionhead first">Всего сообщений</h5>
                                         
                                        <dl class="blockrow stats">
                                            <dt>Всего сообщений</dt>
                                            <dd>11,904</dd>
                                        </dl>
                                         
                                        <dl class="blockrow stats">
                                            <dt>Сообщений в день</dt>
                                            <dd>8.54</dd>
                                        </dl>
                                         
                                        <h5 class="subsubsectionhead">Благодарности</h5>
                                         
                                        <dl class="stats">
                                            <dt>Благодарности</dt>
                                            <dd>938</dd>
                                        </dl>
                                        <ul class="group">
                                            <li>Получено благодарностей: 6,371 (сообщений: 1,529).</li>
                                            <!--	<li>
		<a href="post_thanks.php?do=findthanks&u=22">Найти сообщения, где благодарили <%=user.getName()%></a>
	</li>
	<li>
		<a href="post_thanks.php?do=findthanks_user_gave&u=22">Найти сообщения с благодарностями от <%=user.getName()%></a>
	</li>-->
                                        </ul>
                                        <h5 class="subblocksubhead subsubsectionhead">Дополнительная информация</h5>
                                         
                                        <dl class="blockrow stats">
                                            <dt>Последняя активность</dt>
                                            <dd>
                                                Вчера
                                                <span class="time">18:52</span>
                                            </dd>
                                        </dl>
                                         
                                        <dl class="blockrow stats">
                                            <dt>Регистрация</dt>
                                            <dd><%=user.getCreated()%></dd>
                                        </dl>
                                         
                                        <dl class="blockrow stats">
                                            <dt>Рефералы</dt>
                                            <dd>14</dd>
                                        </dl>
                                    </div>
                                    <!-- view-statistics -->
                                </div>
                                <div class="underblock"></div>
                                <!-- / stats -->
                            </div>
                            <div class="view_section" id="view-friends-content">
                                <h3 id="friends" class="subsectionhead userprof_title">
                                    <span class="friends_total"><%=user.getUserRelationshipList().size()%></span>
                                    Contacts
                                </h3>
                                <div>
                                    <ol class="friends_list floatcontainer userprof_modborder_fill">
                                        <li class="userprof_content userprof_content_border" id="friend_mini_125818">
                                            <div class="friend_info">
                                                <h4>
                                                    <a class="username" href="">
                                                        <span style="color: #FF6600;">Apostol</span></a>
                                                    &nbsp;
                                                    <img border="0" alt="Apostol вне форума"
                                                         src="images/statusicon/user-offline.png"
                                                         class="inlineimg onlinestatus" title="Apostol вне форума"/>
                                                </h4>
                                                <p class="description">Системный администратор (Logon 3)</p>
                                                <div class="presence"></div>
                                            </div>
                                            <a href="" class="image_friend_link">
                                                <img alt="Apostol" src="images/misc/unknown.gif" title="Apostol"/></a>
                                        </li>
                                    </ol>
                                    <!-- friends_list -->
                                </div>
                                <!-- blockbody -->
                                <div class="userprof_title">Показаны Contacts с 1 по 10 из 42</div>
                                <div id="pagination_bottom">
                                    <form class="pagination popupmenu nohovermenu" method="get"
                                          action="member.php?u=22&amp;tab=friends&amp;page=3" id="yui-gen9">
                                        <input type="hidden" value="22" name="u"/>
                                        <input type="hidden" value="friends" name="tab"/>
                                        <span class="popupspan"> 
                                            <a class="popupctrl" href="" id="yui-gen11">
                                                <img alt="" title="" src="images/misc/black_downward_arrow.png"/>Страница
                                                                                                                 1 из 5</a></span>
                                        <span class="selected"> 
                                            <a title="Показано с 1 по 10 из 42" href="">1</a></span>
                                        <span> 
                                            <a title="Показать с 11 по 20 из 42"
                                               href="">2</a></span>
                                        <span> 
                                            <a title="Показать с 21 по 30 из 42"
                                               href="">3</a></span>
                                        <span class="separator">...</span>
                                        <span class="prev_next"> 
                                            <a title="Следующая страница - с 11 по 20 из 42"
                                               href="" rel="next">
                                                <img alt="Следующая" src="images/pagination/next-right.png"
                                                     title="Следующая"/></a></span>
                                        <span class="first_last">
                                            <a title="Последняя страница - с 41 по 42 из 42"
                                               href="">Последняя
                                                <img alt="Последняя" src="images/pagination/last-right.png"
                                                     title="Последняя"/></a></span>
                                        <ul class="popupbody" id="yui-gen10">
                                            <li class="formsubmit jumptopage">
                                                <label>
                                                    К странице:
                                                    <input type="text" size="4" name="page"/>
                                                </label>
                                                 
                                                <input type="submit" value="Вперёд" class="button"/>
                                            </li>
                                        </ul>
                                    </form>
                                </div>
                                <!-- view-friends -->
                            </div>
                            <div class="view_section" id="view-infractions-content"></div>
                            <div class="view_section" id="view-reputation-content"></div>
                            <div class="view_section" id="view-blog">
                                <a class="floatright" href="">Просмотреть дневник <%=user.getName()%></a>
                                <div class="blocksubhead subsectionhead userprof_headers userprof_headers_border">
                                    <h4 class="subsectionhead-understate" id="blogtab">Новые записи</h4>
                                </div>
                                <div>
                                    <div class="blogentrybit">
                                        <h4 class="blogentryhead">
                                            <a href="">TEST</a>
                                        </h4>
                                        <div class="userprof_content">
                                            <div class="blog_stats">
                                                <div class="blog_date">
                                                    <a class="username" href=""><%=user.getName()%></a>
                                                     15.10.2013 в 11:32
                                                </div>
                                                <div class="blog_data">
                                                    <span class="blograting rating5"></span>
                                                     
                                                    <a class="comments" href="">4 Комментарии</a>
                                                </div>
                                            </div>
                                            <blockquote class="blog_content">
                                                <div style="text-align: center;">
                                                    <img border="0" alt=""
                                                         src="http://s020.radikal.ru/i721/1310/2e/75a7174b64e5.jpg"/><br/>
                                                </div>
                                                <br/>
                                                TEST
                                            </blockquote>
                                            <p class="continuereading">
                                                <a href="">Читать дальше</a>
                                            </p>
                                            <div class="blog_meta">
                                                <p class="lastedited">
                                                    <span class="shade">Обновлено 15.10.2013 в 11:38</span>
                                                     
                                                    <a href=""><%=user.getName()%></a>
                                                </p>
                                                <dl class="blogcategory stats">
                                                    <dt class="shade">Категории</dt>
                                                    <dd>
                                                        <a href="">Новости игровой
                                                                                                      индустрии</a>
                                                    </dd>
                                                </dl>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="view_section" id="view-myranks">
                                <div>
                                    <div class="blocksubhead subsectionhead userprof_headers userprof_headers_border">Ranks
                                                                                                                      Showcase
                                                                                                                      -
                                                                                                                      1
                                                                                                                      Ranks
                                                                                                                      -
                                                                                                                      0
                                                                                                                      Баллов</div>
                                    <div class="blockbody">
                                        <table width="100%">
                                            <tbody>
                                                <tr align="center">
                                                    <th nowrap="nowrap" class="blocksubhead">Icon</th>
                                                    <th nowrap="nowrap" class="blocksubhead">Image</th>
                                                    <th width="100%" class="blocksubhead">Description</th>
                                                </tr>
                                                <tr>
                                                    <td align="center" class="">
                                                        <br/>
                                                         
                                                        <img border="0"
                                                             src="http://4.firepic.org/4/images/2013-12/06/s6910hqtxadp.png"/>
                                                    </td>
                                                    <td valign="top" align="center" class="">
                                                        <br/>
                                                         
                                                        <a href="">
                                                            <img border="0"
                                                                 src="http://4.firepic.org/4/images/2013-12/06/s6910hqtxadp.png"/></a>
                                                    </td>
                                                    <td valign="top" class="">
                                                        <br/>
                                                         
                                                        <a name="ra_issue1522"></a>
                                                         Name: 
                                                        <b>Потомок Virgin WoW</b><br/>
                                                         Значок для пользователей с Logon 3 за преданность проекту.
                                                        Выдаётся пользователям играющим на Logon 3 с 2009 года, для
                                                        получения значка обратитесь к &quot;Кодекс&quot;
                                                        <div style="font-size:11px">
                                                            <fieldset class="fieldset">
                                                                <table cellspacing="" cellpadding="0" border="0">
                                                                    <tbody>
                                                                        <tr>
                                                                            <td>
                                                                                <i>Issue time: 08.10.2012 02:49
                                                                                    <br/><i>Issue reason: Пророк
                                                                                            (23/06/2009)</i></i>
                                                                            </td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                            </fieldset>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
            
            <jsp:include page="/footerblock"/>
        </div>
    </body>
</html>