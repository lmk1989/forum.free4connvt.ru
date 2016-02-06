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
    <link rel="stylesheet" type="text/css" href="styles/stack.css"/>
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
                            <!----------------------------------------------------------------------------------------->

                            <div class="col-content">
                    

<div id="top-tags" class="top-tags content-element">
    <h3 class="title-section no-border">Top Tags <span>(271)</span></h3>
        <div class="row tag-wrapper">
                <div class="tag-container row">
                        <div class="col col-12" title=" Gave 260 non-wiki answers with a total score of 550.">
                            <a href="/search?q=user:760656+[java]" class="post-tag" title="show questions tagged 'java'" rel="tag">java</a>
    <a href="/help/badges/42/java" class="badge-tag badge2-alternate" title="Silver badge"><span class="badge2"></span></a>

                            <div class="stat">
                                <div class="row">
                                    <div class="number">
                                        <span>Score</span> 550
                                    </div>
                                    <div class="number">
                                        <span>Posts</span> 260
                                    </div>
                                        <div class="number">
                                            <span>Posts %</span> 63
                                        </div>
                                </div>
                            </div>
                        </div>
                </div>
                <div class="tag-container row">
                        <div class="col col-6" title=" Gave 246 non-wiki answers with a total score of 449.">
                            <a href="/search?q=user:760656+[servlets]" class="post-tag" title="show questions tagged 'servlets'" rel="tag">servlets</a>
    <a href="/help/badges/189/servlets" class="badge-tag badge2-alternate" title="Silver badge"><span class="badge2"></span></a>

                            <div class="stat">
                                <div class="row">
                                    <div class="number">
                                        <span>Score</span> 449
                                    </div>
                                    <div class="number">
                                        <span>Posts</span> 246
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col col-6" title=" Gave 141 non-wiki answers with a total score of 184.">
                            <a href="/search?q=user:760656+[jsp]" class="post-tag" title="show questions tagged 'jsp'" rel="tag">jsp</a>
    <a href="/help/badges/348/jsp" class="badge-tag badge3-alternate" title="Bronze badge"><span class="badge3"></span></a>

                            <div class="stat">
                                <div class="row">
                                    <div class="number">
                                        <span>Score</span> 184
                                    </div>
                                    <div class="number">
                                        <span>Posts</span> 141
                                    </div>
                                </div>
                            </div>
                        </div>
                </div>
                <div class="tag-container row">
                        <div class="col col-4" title=" Gave 32 non-wiki answers with a total score of 80.">
                            <a href="/search?q=user:760656+[java-ee]" class="post-tag" title="show questions tagged 'java-ee'" rel="tag">java-ee</a>

                            <div class="stat">
                                <div class="row">
                                    <div class="number">
                                        <span>Score</span> 80
                                    </div>
                                    <div class="number">
                                        <span>Posts</span> 32
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col col-4" title=" Gave 13 non-wiki answers with a total score of 50.">
                            <a href="/search?q=user:760656+[web-applications]" class="post-tag" title="show questions tagged 'web-applications'" rel="tag">web-applications</a>

                            <div class="stat">
                                <div class="row">
                                    <div class="number">
                                        <span>Score</span> 50
                                    </div>
                                    <div class="number">
                                        <span>Posts</span> 13
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col col-4" title=" Gave 41 non-wiki answers with a total score of 46.">
                            <a href="/search?q=user:760656+[tomcat]" class="post-tag" title="show questions tagged 'tomcat'" rel="tag">tomcat</a>

                            <div class="stat">
                                <div class="row">
                                    <div class="number">
                                        <span>Score</span> 46
                                    </div>
                                    <div class="number">
                                        <span>Posts</span> 41
                                    </div>
                                </div>
                            </div>
                        </div>
                </div>
                            <div class="view-more">
                    <a href="/users/760656/ramesh-pvk?tab=tags">
                        View all tags →
                    </a>
                </div>
        </div>
</div>

                    
<div id="top-posts" class="content-element top-posts">
    <h3 id="change-post-sort" class="title-section">
Top Posts        <span>
            (415)
        </span>
            <span class="filter">
                <span id="post-filters">
                    <a class="active">All</a>
                    <a data-type="1">Questions</a>
                    <a data-type="2">Answers</a>
                </span>
                |
                <span id="post-sorts">
                    <a data-sort="Votes" class="active">Votes</a>
                    <a data-sort="Newest">Newest</a>
                </span>
            </span>
    </h3>
        <div class="row posts-wrapper">
                <div class="row post-container">
                    <span class="icon-q accepted"></span>
                    <span class="vote accepted">75</span>
                    <a href="/questions/6760115/importing-a-github-project-into-eclipse" class="question-hyperlink">Importing a GitHub project into Eclipse</a>
                    <span class="post-date"><span title="2011-07-20 09:59:08Z" class="relativetime">jul 20 '11</span></span>
                </div>
                
                <div class="row post-container">
                    <span class="icon-a accepted"></span>
                    <span class="vote accepted">14</span>
                    <a href="/questions/10868281/optimal-buffer-size-for-jsps-and-autoflush-property/10868887#10868887" class="answer-hyperlink ">Optimal buffer size for JSP's and autoflush property</a>
                    <span class="post-date"><span title="2012-06-03 08:23:33Z" class="relativetime">jun 3 '12</span></span>
                </div>
                                </div>
             <div class="view-more">
                 View all <a href="/users/760656?tab=questions">questions</a> and <a href="/users/760656?tab=answers">answers</a> →
             </div>
        <script>
            $(function () {
                function getPosts() {
                    $("<span/>").prependTo("#top-posts .filter").addSpinner({ marginRight: 5 });
                    $.get("/users/profile/posts/760656", {
                        postType: $("#post-filters > a.active[data-type]").data("type"),
                        sort: $("#post-sorts > a.active").data("sort")
                    }).done(function (html) {
                        $("#top-posts").replaceWith(html);
                    });

                }

                $("#post-sorts a:not(.active)").click(function () {
                    $("#post-sorts a").removeClass("active");
                    $(this).addClass("active");
                    getPosts();
                });
                $("#post-filters a:not(.active)").click(function () {
                    $("#post-filters a").removeClass("active");
                    $(this).addClass("active");
                    getPosts();
                });
            })
        </script>
</div>
                    

                </div>
                            
                            <!----------------------------------------------------------------------------------------->
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
                                        <a onclick=""
                                           href="javascript:void(0)"
                                           id="activitystream-tab"><%=user.getName()%> Activity</a>
                                    </dd>
                                    <dd class="userprof_moduleinactive">
                                        <a onclick=""
                                           href="javascript:void(0)" id="aboutme-tab">Personal</a>
                                    </dd>
                                    <dd class="userprof_moduleinactive">
                                        <a onclick=""
                                           href="javascript:void(0)" id="friends-tab">Contacts</a>
                                    </dd>
                                    <dd class="userprof_moduleinactive">
                                        <a onclick=""
                                           href="javascript:void(0)" id="blog-tab">Дневник</a>
                                    </dd>
                                    <dd class="userprof_moduleinactive">
                                        <a onclick=""
                                           href="javascript:void(0)" id="myranks-tab">Rang</a>
                                    </dd>
                                </dl>
                            </div>
                            <div class="memberprofiletabunder"></div>
                        </div>
                        <script type="text/javascript">
                            $('#tab_container .tabslight > dd').click(function() {                                        
                                if(!$(this).hasClass("userprof_module")) {
                                    $('#tab_container .tabslight > dd.userprof_module').toggleClass('userprof_moduleinactive');
                                    $('#tab_container .tabslight > dd.userprof_module').toggleClass('userprof_module');
                                    $(this).toggleClass("userprof_moduleinactive");
                                    $(this).toggleClass("userprof_module");
                                    $('.profile_content > div.selected_view_section').toggleClass('view_section');
                                    $('.profile_content > div.selected_view_section').toggleClass('selected_view_section');
                                    $('.profile_content > div').eq($(this).index() - 1).toggleClass('view_section');
                                    $('.profile_content > div').eq($(this).index() - 1).toggleClass('selected_view_section');
                                }
                            });
                        </script>
                        <div class="profile_content userprof">
                            <div class="selected_view_section" id="view-activitystream">
                                <!-- activitystream -->
                                <div class="subsection block" id="view-activitystream">
                                
                                    <jsp:include page="/activitylist"/>
                                    
                                </div>
                                <div class="underblock"></div>
                                <!-- / activitystream -->
                            </div>
                            
                            <div class="view_section" id="view-aboutme">
                                <div class="blocksubhead subsectionhead userprof_headers userprof_headers_border">
                                    <span class="subsectiontitle">О <%=user.getName()%></span>
                                     
                                    <!-- basic information -->
                                     
                                    <h4 id="about-me" class="subsectionhead-understate">Базовая информация</h4>
                                </div>
                                <div class="subsection">
                                    <div class="blockbody userprof_content userprof_content_border">
                                        <dl class="stats agerow">
                                            <dt></dt>
                                            <dd></dd>
                                        </dl>
                                         
                                        <h5 class="subblocksubhead subsubsectionhead first">О <%=user.getName()%></h5>
                                         
                                        <dl>
                                            <dt></dt>
                                            <dd></dd>
                                        </dl><dl>
                                            <dt></dt>
                                            <dd></dd>
                                        </dl><dl>
                                            <dt></dt>
                                            <dd></dd>
                                        </dl><dl>
                                            <dt></dt>
                                            <dd></dd>
                                        </dl><dl>
                                            <dt></dt>
                                            <dd></dd>
                                        </dl><dl>
                                            <dt></dt>
                                            <dd></dd>
                                        </dl>
                                    </div>
                                </div>
                                <div class="blocksubhead subsectionhead userprof_headers userprof_headers_border">
                                    <h4 class="subsectionhead-understate">Подпись</h4>
                                     
                                    <br/>
                                </div>
                                <div class="blockbody subsection userprof_content userprof_content_border">
                                    <div style="text-align: right;">
                                        test
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
                                                        <span style="color: #FF6600;">test</span></a>
                                                    &nbsp;
                                                    <img border="0" alt="test вне форума"
                                                         src="images/statusicon/user-offline.png"
                                                         class="inlineimg onlinestatus" title="test вне форума"/>
                                                </h4>
                                                <p class="description">Системный администратор</p>
                                                <div class="presence"></div>
                                            </div>
                                            <a href="" class="image_friend_link">
                                                <img alt="test" src="images/misc/unknown.gif" title="test"/></a>
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
                                                    <br/>
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
                                        test
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