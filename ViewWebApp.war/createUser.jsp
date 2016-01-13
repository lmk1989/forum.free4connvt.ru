<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
         import="controller.*,model.*,javax.ejb.*,java.io.*,java.util.*,javax.naming.*,javax.rmi.*"%>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="icon" type="image/png" sizes="32x32" href="favicon-32x32.png"/>
    <link rel="stylesheet" type="text/css" href="styles/test.css"/>
    <title>Создать пользователя</title>
    <link rel="stylesheet" charset="UTF-8" type="text/css" href="styles/createUser_style.css"/>
    <script type="text/javascript" src="scripts/jquery-1.11.2.min.js"></script>
  </head>
  <body id="d1">
  <div class="content_wrap">
    <a name="top"></a>
     
    <%
      Date date = new Date();
      String day = null;
      String month = null;
      String year = null;
      String hour = null;
      String minute = null;
      String regDate = null;
      String email      = request.getParameter("email");
      String passwd1   = request.getParameter("passwd1");
      String passwd2  = request.getParameter("passwd2");
      String alias      = request.getParameter("alias");
      String name = request.getParameter("name");
      String sname  = request.getParameter("sname");
      String cb1     = request.getParameter("cb1");
      Vector errList = null;
    %>
     
    <% 
      if(cb1 != null) { 
        try { 
          String sessionId = session.getId();
          Connector connector = Connector.getConnector();
          UPContainer container = connector.getContainerInstance(sessionId);
          Controller controller = container.getControllerInstance();
          userHandler handler = container.getUserHandlerInstance();
          errList = controller.errList(name, sname, passwd1, passwd2, email, alias);
          day = new Integer(date.getDay() + 1).toString().length() == 1 ? "0" + (date.getDay() + 1) : "" + (date.getDay() + 1);
          month = new Integer(date.getMonth() + 1).toString().length() == 1 ? "0" + (date.getMonth() + 1) : "" + (date.getMonth() + 1);
          year = "" + (date.getYear() + 1900);
          hour = "" + date.getHours();
          minute = new Integer(date.getMinutes()).toString().length() == 1 ? "0" + date.getMinutes() : "" + date.getMinutes();
          regDate = day + "." + month +"." + year + " " + hour+ ":" + minute;
          if(errList.isEmpty()) { 
            controller.addUser(name, sname, alias, passwd1, email, Integer.valueOf(regDate)); 
            response.addCookie(new Cookie("Alias", alias));
            response.sendRedirect("main.jsp");
          }      
        } catch(Exception ex) {
          } 
      }
    %>
     
    <form id="f1" name="f1" style="margin:0px" method="POST" autocomplete="off"
          action="createUser.jsp">
      <table id="pttl1" style="width:100%" cellpadding="0" cellspacing="0"
             border="0" summary="">
        <tbody>
          <tr id="ptrl1" style="width:100%">
            <td id="ptcf1" style="width:15%">&nbsp;</td>
            <td id="ptcf2" style="width:70%">
              <div id="main" style="width:100%">
                <table cellpadding="0" cellspacing="0" border="0" summary=""
                       id="header:top" style="width:100%">
                  <tbody>
                    <tr>
                      <td>&nbsp;</td>
                      <td id="header:tcf1" align="left" width="50%">
                        <table cellpadding="0" cellspacing="0" border="0"
                               summary="" id="header:branding" class="xdm">
                          <tbody>
                            <tr>
                              <td>
                                <table cellpadding="0" cellspacing="0"
                                       border="0" summary="" id="header:bitem1"
                                       class="xdp">
                                  <tbody>
                                    <tr>
                                      <td>
                                        <img id="header:logo" name="header:logo"
                                             title="Oracle Logo"
                                             alt="Oracle Logo" class="xdn"
                                             src="pics/oralogo_small.gif"
                                             height="18" width="133"/>
                                      </td>
                                    </tr>
                                  </tbody>
                                </table>
                              </td>
                              <td>
                                <table cellpadding="0" cellspacing="0"
                                       border="0" summary="" id="header:bitem2"
                                       class="xdp">
                                  <tbody>
                                    <tr>
                                      <td>
                                        <table cellpadding="0" cellspacing="0"
                                               border="0" summary=""
                                               id="header:btitle" class="xdo">
                                          <tbody>
                                            <tr>
                                              <td>
                                                <span id="header:title">Создание
                                                                        пользователя</span>
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
                      </td>
                      <td>&nbsp;</td>
                      <td id="header:tcf" align="right" width="50%">
                        <table cellpadding="0" cellspacing="0" border="0"
                               summary="" id="header:pglg">
                          <tbody>
                            <tr>
                              <td>
                                <table cellpadding="0" cellspacing="0"
                                       border="0" summary="" id="header:lgin">
                                  <tbody>
                                    <tr>
                                      <td>
                                        <a id="header:login" name="header:login"
                                           class="xi" href="signon.jsp">
                                          <span id="header:lgn">Вход</span></a>
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
                <div>
                  <div id="s1" style="margin-top:20px"></div>
                </div>
                <div>
                  <div id="s1" style="margin-top:20px"></div>
                </div>
                <div id="center" style="width:100%">
                  <div id="ph2" style="width:100%">
                    <h1 class="x6v">Регистрация нового пользователя</h1>
        
                    <br>
                     
                    <span id="ot1"> 
                      <b>Создать учетную запись</b></span>
                    <div id="s3" style="margin-top:10px"></div>
                    <div id="pf1">
                      <table cellpadding="0" cellspacing="0" border="0"
                             summary="" style="width: auto">
                        <tbody>
                          <tr>
                            <td class="x4w" colspan="1">
                              <table cellpadding="0" cellspacing="0" border="0"
                                     width="100%" summary="">
                                <tbody>
                                  <tr id="pl1__xc_">
                                    <td class="x15 x4z"
                                        style="vertical-align: middle; padding-top: 0.2em;"
                                        nowrap="">Имя пользователя</td>
                                    <td valign="top" nowrap="" class="x51">
                                      <table cellpadding="0" cellspacing="0"
                                             border="0" summary="">
                                        <tbody>
                                          <tr>
                                            <td>
                                              <span class="x1u p_AFRequired">
                                                <input id="uname" name="alias"
                                                       title="Введите имя пользователя."
                                                       class="x25" size="30"
                                                       maxlength="80"
                                                       type="text">
                                                </input>
                                              </span>
                                            </td>
                                          </tr>
                                        </tbody>
                                      </table>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td></td>
                                    <td style="color:Red; font-size:x-small;">
                                      <%
                                        if(errList != null)
                                        if(errList.indexOf(9)!=-1)out.print("Необходимо ввести Имя Пользователя");
                                        else
                                          if(errList.indexOf(10)!=-1)out.print("Данное Имя Пользователя используется");
                                      %>
                                    </td>
                                  </tr>
                                </tbody>
                              </table>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                    <div id="pf3">
                      <table cellpadding="0" cellspacing="0" border="0"
                             summary="" style="width: auto">
                        <tbody>
                          <tr>
                            <td class="x4w" colspan="1" width="50%">
                              <table cellpadding="0" cellspacing="0" border="0"
                                     width="100%" summary="">
                                <tbody>
                                  <tr id="pl2__xc_">
                                    <td class="x15 x4z"
                                        style="vertical-align: middle; padding-top: 0.2em;"
                                        nowrap="">Пароль</td>
                                    <td valign="top" nowrap="" class="x51">
                                      <table cellpadding="0" cellspacing="0"
                                             border="0" summary="">
                                        <tbody>
                                          <tr>
                                            <td>
                                              <span class="x1u p_AFRequired">
                                                <input id="passwd1"
                                                       name="passwd1"
                                                       title="Введите пароль."
                                                       class="x25" size="30"
                                                       type="password">
                                                </input>
                                              </span>
                                            </td>
                                          </tr>
                                        </tbody>
                                      </table>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td></td>
                                    <td style="color:Red; font-size:x-small;">
                                      <%
                                        if(errList != null)
                                        if(errList.indexOf(6)!=-1)out.print("Необходимо ввести Пароль");
                                      %>
                                    </td>
                                  </tr>
                                </tbody>
                              </table>
                            </td>
                            <td class="x4w" colspan="1">
                              <table cellpadding="0" cellspacing="0" border="0"
                                     width="100%" summary="">
                                <tbody>
                                  <tr id="pl3__xc_">
                                    <td class="x15 x4z"
                                        style="vertical-align: middle; padding-top: 0.2em;"
                                        nowrap="">Подтверждение пароля</td>
                                    <td valign="top" nowrap="" class="x51">
                                      <table cellpadding="0" cellspacing="0"
                                             border="0" summary="">
                                        <tbody>
                                          <tr>
                                            <td>
                                              <span class="x1u p_AFRequired">
                                                <input id="passwd2"
                                                       name="passwd2"
                                                       title="Повторно введите пароль."
                                                       class="x25" size="30"
                                                       type="password">
                                                </input>
                                              </span>
                                            </td>
                                          </tr>
                                        </tbody>
                                      </table>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td></td>
                                    <td style="color:Red; font-size:x-small;">
                                      <%
                                        if(errList != null)
                                        if(errList.indexOf(7)!=-1)out.print("Необходимо ввести Подтверждение пароля");
                                        else
                                          if(errList.indexOf(8)!=-1)out.print("Устраните ошибку проверки поля «Пароль»");
                                      %>
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
                  <div>
                    <div style="margin-top:20px"></div>
                  </div>
                  <div id="content" style="width:100%">
                    <div id="userInfo" style="width:100%">
                      <h3 class="x6w">Информация о пользователе</h3>
                      <div>
                        <table cellpadding="0" cellspacing="0" border="0"
                               summary="" style="width: auto">
                          <tbody>
                            <tr>
                              <td class="x4w" colspan="1" width="50%">
                                <table cellpadding="0" cellspacing="0"
                                       border="0" width="100%" summary="">
                                  <tbody>
                                    <tr id="j_id1__xc_">
                                      <td class="x15 x4z"
                                          style="vertical-align: middle; padding-top: 0.2em;"
                                          nowrap="">Имя</td>
                                      <td valign="top" nowrap="" class="x51">
                                        <table cellpadding="0" cellspacing="0"
                                               border="0" summary="">
                                          <tbody>
                                            <tr>
                                              <td>
                                                <span class="x1u p_AFRequired">
                                                  <input id="givenname"
                                                         name="name"
                                                         title="Введите имя"
                                                         class="x25" size="30"
                                                         maxlength="100"
                                                         type="text" value="">
                                                  </input>
                                                </span>
                                              </td>
                                            </tr>
                                          </tbody>
                                        </table>
                                      </td>
                                    </tr>
                                    <tr id="j_id3__xc_">
                                      <td class="x15 x4z"
                                          style="vertical-align: middle; padding-top: 0.2em;"
                                          nowrap="">Фамилия</td>
                                      <td valign="top" nowrap="" class="x51">
                                        <table cellpadding="0" cellspacing="0"
                                               border="0" summary="">
                                          <tbody>
                                            <tr>
                                              <td>
                                                <span class="x1u p_AFRequired">
                                                  <input id="sn" name="sname"
                                                         title="Введите фамилию"
                                                         class="x25" size="30"
                                                         maxlength="100"
                                                         type="text" value="">
                                                  </input>
                                                </span>
                                              </td>
                                            </tr>
                                          </tbody>
                                        </table>
                                      </td>
                                    </tr>
                                    <tr id="j_id3__xc_">
                                      <td class="x15 x4z"
                                          style="vertical-align: middle; padding-top: 0.2em;"
                                          nowrap="">Адрес электронной почты</td>
                                      <td valign="top" nowrap="" class="x51">
                                        <table cellpadding="0" cellspacing="0"
                                               border="0" summary="">
                                          <tbody>
                                            <tr>
                                              <td>
                                                <span class="x1u p_AFRequired">
                                                  <input id="sn" name="email"
                                                         title="Введите адрес электронной почты"
                                                         class="x25" size="30"
                                                         maxlength="100"
                                                         type="text" value="">
                                                  </input>
                                                </span>
                                              </td>
                                            </tr>
                                          </tbody>
                                        </table>
                                      </td>
                                    </tr>
                                    <tr>
                                      <td></td>
                                      <td style="color:Red; font-size:x-small;">
                                        <%
                                          if(errList != null)
                                          if(errList.indexOf(3)!=-1)out.print("Необходимо ввести Адрес электронной почты");
                                          else
                                            if(errList.indexOf(4)!=-1)out.print("Недопустимый адрес электронной почты. Введите значение в формате электронной почты");
                                            else
                                              if(errList.indexOf(5)!=-1)out.print("Адрес электронной почты уже используется. Смените адрес электронной почты");
                                        %>
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
                </div>
                <table id="tl1" cellpadding="0" cellspacing="0" border="0"
                       width="100%" summary="">
                  <tbody>
                    <tr id="rl1">
                      <td id="cf3" width="40%">&nbsp;</td>
                      <td id="cf2" align="center" width="20%">
                        <button id="cb1" name="cb1" type="submit" class="x7j">Создать</button>
                      </td>
                      <td id="cf1" width="40%">&nbsp;</td>
                    </tr>
                  </tbody>
                </table>
                <div>
                  <div id="s1" style="margin-top:20px"></div>
                </div>
                <hr id="footer:sep1"/>
                <div id="footer:sp21" style="margin-top:20px"></div>
              </div>
            </td>
            <td id="ptcf3" style="width:15%">&nbsp;</td>
          </tr>
        </tbody>
      </table>
    </form>
    </div>
  </body>
</html>