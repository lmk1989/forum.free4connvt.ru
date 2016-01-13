<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
         import="controller.*, model.*, javax.ejb.*, java.io.*, java.util.*, javax.naming.*, javax.rmi.*, java.awt.*, javax.swing.*"%>
<html>
  <head>
        <title>Single Sign On - Login</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <link rel="icon" type="image/png" sizes="32x32" href="favicon-32x32.png"/>
        <meta http-equiv="Pragma" content="no-cache"/>
        <link rel="stylesheet" type="text/css" href="styles/style.css"/>
        <link rel="stylesheet" type="text/css" href="styles/circle.css"/>
        <link rel="stylesheet" type="text/css" href="styles/otn_new.css"/>
        <link rel="stylesheet" type="text/css" href="styles/main_style.css"/>
        <link rel="stylesheet" type="text/css" href="styles/test.css"/>
        <script language="JavaScript" type="text/javascript" src="scripts/mps.js"></script>
        <script type="text/javascript" src="scripts/jquery-1.11.2.min.js"></script>
  </head>
  <body leftmargin="0" topmargin="0" marginheight="0" marginwidth="0">
  <div class="content_wrap">
    <jsp:include page="/topbanner"/>
    
    <form method="post" action="signon.jsp" name="LoginForm" autocomplete="off">
      <table style="height: 250px" width="800" border="0" align="center" cellpadding="6" cellspacing="30">
        <tbody>
          <tr>
            <td width="50%" id="ssoPad" valign="top">
              <span class="ssoParahead1">Вход</span><br>
              <table width="100%" border="0" cellpadding="0" cellspacing="0">
                <tbody>
                  <tr>
                    <td>
                      <table width="100%" border="0" cellpadding="4" cellspacing="2">
                        <tbody>
                          <tr>
                            <td height="25" colspan="2" nowrap="">
                              <span class="bodycopy">
                                Введите имя пользователя и пароль для единого входа 
                                в систему.
                              </span>
                            </td>
                          </tr>
                          <% 
                            String userName = request.getParameter("userName"); 
                            String passwd = request.getParameter("passwd"); 
                            JButton loginBtn = new JButton("<button id='cb1' name='cb1' type='submit' class='x7j'>Войти</button>");
                            
                            String sessionId = session.getId();
                            Connector connector = Connector.getConnector();
                            UPContainer container = connector.getContainerInstance(sessionId);
                            Controller controller = container.getControllerInstance();
                            userHandler handler = container.getUserHandlerInstance();
                            handler.setHistoryList(request.getHeader("Referer"));
                          %><%=loginBtn.getModel().isPressed()%>
                          <%
                            if(loginBtn.getModel().isPressed()) { 
                              try {
                                if(controller.checkUser(userName, passwd)) {
                                  handler.setUserCookie("userName", userName, 3600);
                                  //response.sendRedirect((String)handler.getHistoryList().get(handler.getHistoryList().size()-2));
                                } else
                          %>
                                    <tr>
                                      <td class="bodycopy" style="color:Red;">
                                        Неверные регистрационные данные.
                                      </td>
                                    </tr>
                          <%
                              } catch(Exception ex) {}
                            } 
                          %>
                          <tr>
                            <td align="right" valign="middle" class="bodycopy">
                              Имя пользователя 
                            </td>
                            <td height="27" align="left" valign="top" 
                                class="bodycopy">
                              <input type="text" name="userName" size="20" 
                                     maxlength="80" value="">
                              </input>
                            </td>
                          </tr>
                          <tr>
                            <td align="right" valign="middle" height="27">
                              <span class="bodycopy"> Пароль </span>
                            </td>
                            <td align="left" valign="top" class="bodycopy"
                                height="27">
                              <input type="password" name="passwd" value=""
                                     size="20" maxlength="255">
                              </input>
                              <%=loginBtn.getText()%>
                            </td>
                          </tr>
                          <tr>
                            <td height="43" colspan="2">
                              <a href="resetPassword.jsp" target="new" 
                                 class="bodylink"> Забыли пароль?
                              </a>
                              <br>
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
    </form>
    <br>
    </div>
  </body>
</html>