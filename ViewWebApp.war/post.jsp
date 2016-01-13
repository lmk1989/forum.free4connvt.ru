<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
         import="controller.*,model.*,javax.ejb.*,java.io.*,java.util.*,javax.naming.*,javax.rmi.*, java.awt.*, javax.swing.*"%>
<html>
<head>
    <title>Forums : Создание сообщения</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="icon" type="image/png" sizes="32x32" href="favicon-32x32.png"/>
    <link rel="stylesheet" type="text/css" href="styles/style.css"/>
    <link rel="stylesheet" type="text/css" href="styles/otn_new.css"/>
    <link rel="stylesheet" type="text/css" href="styles/test.css"/>
    <script type="text/javascript" src="scripts/jquery-1.11.2.min.js"></script>
    <script type="text/javascript" src="scripts/tinymce/tinymce.min.js"></script>
    <script type="text/javascript" src="scripts/tinymce/jquery.tinymce.min.js"></script>
</head>
<body>
  
<%
    JButton createBtn = new JButton("<input type='submit' id='postButton' name='doPost' value='Создать сообщение' tabindex='3'/>");
    String action = null;
    String categoryID = request.getParameter("categoryID");
    String threadID = request.getParameter("threadID");
    String messageID = request.getParameter("messageID");
    String subject = request.getParameter("subject");
    String body = request.getParameter("body");

    Connector connector = Connector.getConnector();
    UPContainer container = connector.getContainerInstance(session.getId());
    Controller controller = container.getControllerInstance();
    userHandler handler = container.getUserHandlerInstance();
    
    boolean hsu = handler.getUserCookie() !=null ? true : false;
    boolean isc = categoryID !=null && !categoryID.isEmpty() ? true : false;
    boolean ist = threadID !=null && !threadID.isEmpty() ? true : false;
    boolean ism = messageID !=null && !messageID.isEmpty() ? true : false;
%>
  
<script type="text/javascript"> 
    ;(function($) {
        tinyMCE.baseURL = "http://localhost:7101/forum-View-context-root/scripts/tinymce";
        $(function(){
            $('textarea').tinymce({
                // General options
                mode : "textareas",
                theme : "modern", //"advanced",
                //plugins : "",//"advlist,anchor,autolink,autoresize,autosave,bbcode,charmap,code,colorpicker,contextmenu,directionality,emoticons,example,example_dependency,fullpage,fullscreen,hr,image,importcss,insertdatetime,layer,legacyoutput,link,lists,media,nonbreaking,noneditable,pagebreak,paste,preview,print,save,searchreplace,spellchecker,tabfocus,table,template,textcolor,textpattern,vhsualblocks,vhsualchars,wordcount",//"safari,spellchecker,pagebreak,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,vhsualchars,nonbreaking,xhtmlxtras,template,imagemanager,filemanager",
                plugins: [
                    "advlist autolink lists link image charmap print preview hr anchor pagebreak",
                    "searchreplace wordcount visualblocks visualchars code fullscreen",
                    "insertdatetime media nonbreaking save table contextmenu directionality",
                    "emoticons template paste textcolor colorpicker textpattern imagetools"
                ],
                // Theme options
                theme_advanced_buttons1 : "save,newdocument,|,bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,|,styleselect,formatselect,fontselect,fontsizeselect",
                theme_advanced_buttons2 : "cut,copy,paste,pastetext,pasteword,|,search,replace,|,bullist,numlist,|,outdent,indent,blockquote,|,undo,redo,|,link,unlink,anchor,image,cleanup,help,code,|,insertdate,inserttime,preview,|,forecolor,backcolor",
                theme_advanced_buttons3 : "tablecontrols,|,hr,removeformat,vhsualaid,|,sub,sup,|,charmap,emotions,iespell,media,advhr,|,print,|,ltr,rtl,|,fullscreen",
                theme_advanced_buttons4 : "insertlayer,moveforward,movebackward,absolute,|,styleprops,spellchecker,|,cite,abbr,acronym,del,ins,attribs,|,vhsualchars,nonbreaking,template,blockquote,pagebreak,|,insertfile,insertimage",
                theme_advanced_toolbar_location : "top",
                theme_advanced_toolbar_align : "left",
                theme_advanced_statusbar_location : "bottom",
                theme_advanced_resizing : true,

                // Example content CSS (should be your site CSS)
                content_css : "css/example.css",

                // Drop lists for link/image/media/template dialogs
                template_external_list_url : "js/template_list.js",
                external_link_list_url : "js/link_list.js",
                external_image_list_url : "js/image_list.js",
                media_external_list_url : "js/media_list.js",

                // Replace values for the template plugin
                template_replace_values : {
                    username : "Some User",
                    staffid : "991234"
                }
            });
        });
    })(jQuery);
</script>

<%
   // try {
        if (hsu) { 
        if(createBtn.getModel().isPressed())
            if (isc) {
              action = "categoryID=" + categoryID;
              controller.addThread(new Integer(categoryID), subject, handler.getUserCookie().getValue(), body, controller.getFullDate().get("days") + "." + controller.getFullDate().get("months") +"." + controller.getFullDate().get("years") + " " + controller.getFullDate().get("hours")+ ":" + controller.getFullDate().get("minutes")+ ":" + controller.getFullDate().get("seconds"));
              response.sendRedirect("category.jsp?categoryID=" + categoryID);
            } else  
                if (ist) {
                  action = "threadID=" + threadID;
                  subject = controller.findEntity(Threads.class, Integer.parseInt(threadID)).getTitle();
                  controller.addMessage(controller.getFullDate().get("days") + "." + controller.getFullDate().get("months") +"." + controller.getFullDate().get("years") + " " + controller.getFullDate().get("hours")+ ":" + controller.getFullDate().get("minutes")+ ":" + controller.getFullDate().get("seconds"), subject, body, new Integer(threadID), handler.getUserCookie().getValue());
                  response.sendRedirect("thread.jsp?threadID=" + threadID);
                } else
                    if (ism) {
                      action = "messageID=" + messageID;
                      subject = controller.findEntity(Messages.class, Integer.parseInt(messageID)).getTitle();
                      controller.addMessage(controller.getFullDate().get("days") + "." + controller.getFullDate().get("months") +"." + controller.getFullDate().get("years") + " " + controller.getFullDate().get("hours")+ ":" + controller.getFullDate().get("minutes")+ ":" + controller.getFullDate().get("seconds"), subject, body, controller.findEntity(Messages.class, Integer.parseInt(messageID)).getThread_id() , handler.getUserCookie().getValue());
                      response.sendRedirect("thread.jsp?threadID=" + controller.findEntity(Messages.class, Integer.parseInt(messageID)).getThread_id());
                    }
        } else 
            response.sendRedirect("signon.jsp");

     // }catch(Exception ex) {out.print(ex);}
    %>
    <div class="content_wrap">
       <jsp:include page="/topbanner"/>
       <div class="jive-header-table">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td width="100%">
                        <jsp:include page="/breadcrumbs"/>
                        <p class="jive-page-title">
                            Post Message: 
                            <%=isc ? "New Thread" : (ist ? "Reply" : "")%>
                        </p>
                        <p class="jive-description">Type your message using the form below. When finished, you can
                                                    optionally preview your post by clicking on the &quot;Preview&quot;
                                                    tab. Otherwise, click the &quot;Post Message&quot; button to submit
                                                    your message immediately.</p>
                    </td>
                    <td width="10"></td>
                    <jsp:include page="/headerblock"/>
                    <jsp:include page="/searchblock"/>
                </tr>
            </tbody>
        </table>
        </div>
        <div id="jive-body-content">
            <div id="jive-postpage">
                <table summary="" class="jive-error-message" id="dwr-error-table" style="display:none;" cellpadding="3"
                       cellspacing="0" border="0">
                    <tbody>
                        <tr valign="top">
                            <td width="1%">
                                <img src="images/error-16x16.gif" width="16" height="16" border="0" alt="Error"/>
                            </td>
                            <td width="99%">
                                <br/>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table summary="" class="jive-error-message" id="post-error-table" style="display:none;" cellpadding="3"
                       cellspacing="0" border="0">
                    <tbody>
                        <tr valign="top" id="post-error-subject" style="display:none;">
                            <td width="1%">
                                <img src="images/error-16x16.gif" width="16" height="16" border="0" alt="Error"/>
                            </td>
                            <td width="99%">
                                <span class="jive-error-text">Please enter a subject.</span><br/>
                            </td>
                        </tr>
                        <tr valign="top" id="post-error-body" style="display:none;">
                            <td width="1%">
                                <img src="images/error-16x16.gif" width="16" height="16" border="0" alt="Error"/>
                            </td>
                            <td width="99%">
                                <span class="jive-error-text">You can not post a blank message. Please type your message
                                                              and try again.</span><br/>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <form action='post.jsp?<%=action%>' method="post" name="postform" id="postform"
                      onsubmit="return validatePost(true);">
                    <div class="jive-post-form">
                        <table summary="" cellpadding="3" cellspacing="2" border="0">
                            <tbody>
                                <tr>
                                    <td class="jive-label">
                                        <label for="subject01">Тема:</label>
                                    </td>
                                    <td>
                                        <input type="text" name="subject" size="60" maxlength="75" tabindex="1"
                                               id="subject01"
                                               value='<%=isc ? "" : (ist ? subject : (ism ? subject : ""))%>'
                                               style="width:100%;"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="jive-label" valign="top" style="padding-top:6px;">
                                        <label for="body01">Сообщение:</label>
                                    </td>
                                    <td>
                                        <table summary="" cellpadding="0" cellspacing="0" border="0" width="100%">
                                            <tbody>
                                                <tr valign="top">
                                                    <td width="100%">
                                                        <div id="jive-post-bodybox">
                                                            <div class="jive-editor-panel">
                                                                
                                                                <div class="jive-panel-wrapper"
                                                                     id="editor-panel-wrapper">
                                                                    <div id="wysiwyg-panel" class="panel">&nbsp;</div>
                                                                    <div id="text-panel" class="current">
                                                                        
                                                                        <div class="text-links" id="link-panel"
                                                                             style="display:none;">
                                                                            <table summary="" cellspacing="0"
                                                                                   cellpadding="3" border="0"
                                                                                   width="100%">
                                                                                <tbody>
                                                                                    <tr>
                                                                                        <td colspan="2">
                                                                                            <span id="link_form_error_msg"
                                                                                                  class="error_label jive-description"
                                                                                                  style="display:none">Please
                                                                                                                       enter
                                                                                                                       a
                                                                                                                       URL.
                                                                                                <br/></span>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>
                                                                                            <input type="text"
                                                                                                   name="url"
                                                                                                   id="linkURLID"
                                                                                                   size="45"
                                                                                                   class="jive-description"/>
                                                                                        </td>
                                                                                        <td>
                                                                                            <input type="text"
                                                                                                   name="linkText"
                                                                                                   id="linkTextID"
                                                                                                   size="45"
                                                                                                   class="jive-description"/>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td class="jive-description">
                                                                                            <label for="linkURLID">URL</label>
                                                                                             -- example:
                                                                                            http://mysite.com/
                                                                                        </td>
                                                                                        <td class="jive-description">
                                                                                            <label for="linkTextID">Link
                                                                                                                    Text</label>(optional)
                                                                                                                                --
                                                                                                                                example:
                                                                                                                                My
                                                                                                                                Site
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td colspan="2">
                                                                                            <input type="button"
                                                                                                   name="insertLink"
                                                                                                   value="Insert Link"
                                                                                                   onclick="insertLinkCallback();return false;"
                                                                                                   class="jive-description"/>
                                                                                             
                                                                                            <input type="button"
                                                                                                   name="cancelLink"
                                                                                                   value="Cancel"
                                                                                                   onclick="insertLinkCancelCallback();return false;"
                                                                                                   class="jive-description"/>
                                                                                        </td>
                                                                                    </tr>
                                                                                </tbody>
                                                                            </table>
                                                                        </div>
                                                                        <div>
                                                                            <div style="padding-left:0px; background-color:#fff;padding-top:2px;">
                                                                                <textarea name="body" id="textEditor"
                                                                                          rows="15" cols="70"
                                                                                          tabindex="2"></textarea>
                                                                            </div>
                                                                            
                                                                        </div>
                                                                    </div>
                                                                    <div id="preview-panel" class="panel"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <br/>
                                                         
                                                        <%=createBtn.getText()%>
                                                         &nbsp;-&nbsp; 
                                                        <input type="submit" name="cancel" value="Отмена"
                                                               onclick="handleAttachmentCancel(); cancelPost = true;"
                                                               tabindex="4"/>
                                                         &nbsp;
                                                        <div id="autosave" class="jive-description"></div>
                                                    </td>
                                                    <td width="1%">
                                                        <div id="jive-markup-help-block" style="display: block; "></div>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="jive-label">&nbsp;</td>
                                    <td nowrap="">
                                        <div id="progressBar" style="display: none;">
                                            <div id="theMeter">
                                                <div id="progressBarText"></div>
                                                <div id="progressBarBox">
                                                    <div id="progressBarBoxContent"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </form>
            </div>
            <br/><br/>
        </div>
        </div>
    </body>
</html>