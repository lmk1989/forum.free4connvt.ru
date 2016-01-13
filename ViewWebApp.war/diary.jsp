<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
    <head>
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
        <meta id="e_vb_meta_bburl" name="vb_meta_bburl" content="http://forum.wowcircle.com"/>
        <base href="http://forum.wowcircle.com/"/>
        <!--[if IE]></base><![endif]-->
        <meta name="generator" content="vBulletin 4.2.0"/>
        <link rel="Shortcut Icon" href="favicon.ico" type="image/x-icon"/>
        <meta name="keywords"
              content="World of Warcraft: пять причин ненависти, Форум, Форум Circle, Форум WoW Circle, wowcircle, WoW Circle, World of Warcraft, WoW, Pve, PvP, Wotlk, Cataclysm, TBC, Classic"/>
        <meta name="description" content="World of Warcraft: пять причин ненависти Личный дневник"/>
        <script type="text/javascript">
<!--
          if (typeof YAHOO === 'undefined')// Load ALL YUI Local
          {
              document.write('<script type="text/javascript" src="clientscript/yui/yuiloader-dom-event/yuiloader-dom-event.js?v=420"><\/script>');
              document.write('<script type="text/javascript" src="clientscript/yui/connection/connection-min.js?v=420"><\/script>');
              var yuipath = 'clientscript/yui';
              var yuicombopath = '';
              var remoteyui = false;
          }
          else // Load Rest of YUI remotely (where possible)
          {
              var yuipath = 'clientscript/yui';
              var yuicombopath = '';
              var remoteyui = true;
              if (!yuicombopath) {
                  document.write('<script type="text/javascript" src="clientscript/yui/connection/connection-min.js"><\/script>');
              }
          }
          var SESSIONURL = "";
          var SECURITYTOKEN = "guest";
          var IMGDIR_MISC = "images/misc";
          var IMGDIR_BUTTON = "images/buttons";
          var vb_disable_ajax = parseInt("0", 10);
          var SIMPLEVERSION = "420";
          var BBURL = "http://forum.wowcircle.com";
          var LOGGEDIN = 0 > 0 ? true : false;
          var THIS_SCRIPT = "entry";
          var RELPATH = "entry.php?b=2021";
          var PATHS = {
              forum : "", cms : "", blog : ""
          };
          var AJAXBASEURL = "http://forum.wowcircle.com/";
          // -->
        </script>
        <script type="text/javascript" src="clientscript/yui/yuiloader-dom-event/yuiloader-dom-event.js?v=420"></script>
        <script type="text/javascript" src="clientscript/yui/connection/connection-min.js?v=420"></script>
        <script type="text/javascript" src="http://forum.wowcircle.com/clientscript/vbulletin-core.js?v=420"></script>
        <script>
          function closeBox(toClose) {
              document.getElementById(toClose).style.display = "none";
          }
        </script>
        <style>
                div.guestwarn {
                    background: black;
                    color: white;
                    max-width: 280px;
                    min-height: 18px;
                    padding: 0 5px 3px;
                    position: fixed;
                    right: 2%;
                    top: 50%;
                    padding: 10px 15px;
                    position: fixed;
                    z-index: 10;
                    font-size: 12px;
                    -moz-border-radius: 8px;
                    -webkit-border-radius: 8px;
                    filter: alpha(opacity=88);
                    -moz-opacity: .88;
                    opacity: .88;
                    -moz-box-shadow: 5px 5px 5px #191919;
                    -webkit-box-shadow: 5px 5px 5px #191919;
                    box-shadow: 5px 5px 5px #191919;
                }

                .close {
                    float: right;
                    background: transparent url(images/misc/x.png);
                    width: 22px;
                    height: 22px;
                }
            </style>
        <script src="http://wowcircle.com/html/streams.js?0.6237446651794016"></script>
        <link rel="stylesheet" type="text/css" href="http://wowroad.info/templates/wowway/css/power.css"/>
        <script src="http://mop.wowroad.info/templates/wowway/js/locale_ruru.js" type="text/javascript"></script>
        <script src="http://wowjs.zamimg.com/js/basic.js?6"></script>
        <style type="text/css" id="ya_share_style">
                .b-share-popup-wrap {
                    z-index: 1073741823;
                    position: absolute;
                    width: 500px
                }

                .b-share-popup {
                    position: absolute;
                    z-index: 1073741823;
                    border: 1px solid #888;
                    background: #FFF;
                    color: #000
                }

                .b-share-popup-wrap .b-share-popup_down {
                    top: 0
                }

                .b-share-popup-wrap .b-share-popup_up {
                    bottom: 0
                }

                .b-share-popup-wrap_state_hidden {
                    position: absolute !important;
                    top: -9999px !important;
                    right: auto !important;
                    bottom: auto !important;
                    left: -9999px !important;
                    visibility: hidden !important
                }

                .b-share-popup, x:nth-child(1) {
                    border: 0;
                    padding: 1px !important
                }
@media all and (resolution=0) {
                    .b-share-popup, x:nth-child(1), x:-o-prefocus {
                        padding: 0 !important;
                        border: 1px solid #888
                    }
                }

                .b-share-popup__i {
                    display: -moz-inline-box;
                    display: inline-block;
                    padding: 5px 0 !important;
                    overflow: hidden;
                    vertical-align: top;
                    white-space: nowrap;
                    visibility: visible;
                    background: #FFF;
                    -webkit-box-shadow: 0 2px 9px rgba(0, 0, 0, .6);
                    -moz-box-shadow: 0 2px 9px rgba(0, 0, 0, .6);
                    box-shadow: 0 2px 9px rgba(0, 0, 0, .6)
                }

                .b-share-popup__item {
                    font: 1em/1.25em Arial, sans-serif;
                    display: block;
                    padding: 5px 15px !important;
                    white-space: nowrap;
                    background: #FFF
                }

                .b-share-popup__item, a.b-share-popup__item:link, a.b-share-popup__item:visited {
                    text-decoration: none !important;
                    border: 0 !important
                }

                a.b-share-popup__item {
                    cursor: pointer
                }

                a.b-share-popup__item .b-share-popup__item__text {
                    display: inline;
                    text-decoration: underline;
                    color: #1A3DC1
                }

                a.b-share-popup__item:hover {
                    word-spacing: 0
                }

                a.b-share-popup__item:hover .b-share-popup__item__text {
                    color: red;
                    cursor: pointer
                }

                .b-share-popup__icon {
                    display: -moz-inline-box;
                    display: inline-block;
                    margin: -3px 0 0;
                    padding: 0 5px 0 0 !important;
                    vertical-align: middle
                }

                .b-share-popup__icon_input {
                    width: 21px;
                    height: 16px;
                    margin-top: -6px;
                    padding: 0 !important
                }

                .b-share-popup__icon__input {
                    margin-right: 0;
                    margin-left: 2px;
                    vertical-align: top
                }

                .b-share-popup__spacer {
                    display: block;
                    padding-top: 10px !important
                }

                .b-share-popup__header {
                    font: 86%/1em Verdana, sans-serif;
                    display: block;
                    padding: 10px 15px 5px !important;
                    color: #999
                }

                .b-share-popup__header_first {
                    padding-top: 5px !important
                }

                .b-share-popup__input {
                    font: 86%/1em Verdana, sans-serif;
                    display: block;
                    padding: 5px 15px !important;
                    color: #999;
                    text-align: left
                }

                .b-share-popup__input__input {
                    font: 1em/1em Verdana, sans-serif;
                    display: block;
                    width: 10px;
                    margin: 5px 0 0;
                    -webkit-box-sizing: border-box;
                    -moz-box-sizing: border-box;
                    box-sizing: border-box;
                    resize: none;
                    text-align: left;
                    direction: ltr
                }

                .b-share-popup_down .b-share-popup_with-link .b-share-popup__input_link {
                    position: absolute;
                    top: 5px;
                    right: 0;
                    left: 0
                }

                .b-share-popup_up .b-share-popup_with-link .b-share-popup__input_link {
                    position: absolute;
                    right: 0;
                    bottom: 5px;
                    left: 0
                }

                .b-share-popup_down .b-share-popup_with-link {
                    padding-top: 55px !important
                }

                .b-share-popup_up .b-share-popup_with-link {
                    padding-bottom: 55px !important
                }

                .b-share-popup_down .b-share-popup_expandable .b-share-popup__main {
                    padding-bottom: 25px !important
                }

                .b-share-popup_up .b-share-popup_expandable .b-share-popup__main {
                    padding-top: 25px !important
                }

                .b-share-popup_down .b-share-popup_yandexed {
                    padding-bottom: 10px !important
                }

                .b-share-popup_up .b-share-popup_yandexed {
                    padding-top: 10px !important
                }

                .b-share-popup__yandex {
                    position: absolute;
                    right: 4px;
                    bottom: 2px;
                    font: 78.125%/1em Verdana, sans-serif;
                    padding: 3px !important;
                    background: 0 0
                }

                a.b-share-popup__yandex:link, a.b-share-popup__yandex:visited {
                    color: #C6C5C5;
                    text-decoration: none
                }

                a.b-share-popup__yandex:link:hover, a.b-share-popup__yandex:visited:hover {
                    color: red;
                    text-decoration: underline
                }

                .b-share-popup_up .b-share-popup__yandex {
                    top: 2px;
                    bottom: auto
                }

                .b-share-popup_expandable .b-share-popup__yandex {
                    right: auto;
                    left: 4px
                }

                .b-share-popup_to-right .b-share-popup_expandable .b-share-popup__yandex {
                    right: 4px;
                    left: auto
                }

                .b-share-popup__expander .b-share-popup__item {
                    position: absolute;
                    bottom: 5px;
                    font: 86%/1em Verdana, sans-serif;
                    margin: 10px 0 0;
                    padding: 5px 10px !important;
                    cursor: pointer;
                    color: #999;
                    background: 0 0
                }

                .b-share-popup_to-right, .b-share-popup_to-right .b-share-popup__expander {
                    direction: rtl
                }

                .b-share-popup_to-right .b-share-popup__expander .b-share-popup__icon {
                    padding: 0 0 0 5px !important
                }

                .b-share-popup_up .b-share-popup__expander .b-share-popup__item {
                    top: -5px;
                    bottom: auto
                }

                .b-share-popup__expander .b-share-popup__item:hover .b-share-popup__item__text {
                    text-decoration: underline
                }

                .b-share-popup__expander .b-ico_action_rarr, .b-share-popup_to-right .b-share-popup__expander .b-ico_action_larr, .b-share-popup_full .b-share-popup__expander .b-ico_action_larr, .b-share-popup_to-right .b-share-popup_full .b-share-popup__expander .b-ico_action_rarr, .b-share-popup__expander .b-share-popup__item__text_collapse, .b-share-popup_full .b-share-popup__item__text_expand {
                    display: none
                }

                .b-share-popup_to-right .b-share-popup__expander .b-ico_action_rarr, .b-share-popup_full .b-share-popup__item__text_collapse, .b-share-popup_full .b-share-popup__expander .b-ico_action_rarr, .b-share-popup_to-right .b-share-popup_full .b-share-popup__expander .b-ico_action_larr {
                    display: inline
                }

                .b-ico_action_rarr, .b-ico_action_larr {
                    width: 8px;
                    height: 7px;
                    border: 0
                }

                .b-share-popup__main, .b-share-popup__extra {
                    direction: ltr;
                    vertical-align: bottom;
                    text-align: left
                }

                .b-share-popup_down .b-share-popup__main, .b-share-popup_down .b-share-popup__extra {
                    vertical-align: top
                }

                .b-share-popup__main {
                    display: -moz-inline-stack;
                    display: inline-block
                }

                .b-share-popup__extra {
                    display: none;
                    margin: 0 -10px 0 0
                }

                .b-share-popup_full .b-share-popup__extra {
                    display: -moz-inline-stack;
                    display: inline-block
                }

                .b-share-popup_to-right .b-share-popup__extra {
                    margin: 0 0 0 -10px
                }

                .b-share-popup__tail {
                    position: absolute;
                    width: 21px;
                    height: 10px;
                    margin: 0 0 0 -11px
                }

                .b-share-popup_down .b-share-popup__tail {
                    top: -10px;
                    background: url("//yastatic.net/share/static/b-share-popup_down__tail.gif")0 0 no-repeat
                }

                .b-share-popup_up .b-share-popup__tail {
                    bottom: -10px;
                    background: url("//yastatic.net/share/static/b-share-popup_up__tail.gif")0 0 no-repeat
                }

                .b-share-popup_down .b-share-popup__tail, x:nth-child(1) {
                    top: -9px;
                    background-image: url("//yastatic.net/share/static/b-share-popup_down__tail.png")
                }

                .b-share-popup_up .b-share-popup__tail, x:nth-child(1) {
                    bottom: -9px;
                    background-image: url("//yastatic.net/share/static/b-share-popup_up__tail.png")
                }
@media all and (resolution=0) {
                    .b-share-popup_down .b-share-popup__tail, x:nth-child(1), x:-o-prefocus {
                        top: -10px;
                        background-image: url("//yastatic.net/share/static/b-share-popup_down__tail.gif")
                    }
                    .b-share-popup_up .b-share-popup__tail, x:nth-child(1), x:-o-prefocus {
                        bottom: -10px;
                        background-image: url("//yastatic.net/share/static/b-share-popup_up__tail.gif")
                    }
                }

                .b-share-popup .b-share-popup_show_form_mail, .b-share-popup .b-share-popup_show_form_html {
                    padding: 0 !important
                }

                .b-share-popup .b-share-popup_show_form_mail .b-share-popup__main, .b-share-popup .b-share-popup_show_form_html .b-share-popup__main, .b-share-popup .b-share-popup_show_form .b-share-popup__main, .b-share-popup .b-share-popup_show_form_mail .b-share-popup__extra, .b-share-popup .b-share-popup_show_form_html .b-share-popup__extra, .b-share-popup .b-share-popup_show_form .b-share-popup__extra {
                    height: 15px;
                    padding: 0 !important;
                    overflow: hidden;
                    visibility: hidden
                }

                .b-share-popup_show_form_mail .b-share-popup__expander, .b-share-popup_show_form_html .b-share-popup__expander, .b-share-popup_show_form .b-share-popup__expander, .b-share-popup_show_form_mail .b-share-popup__input_link, .b-share-popup_show_form_html .b-share-popup__input_link, .b-share-popup_show_form .b-share-popup__input_link {
                    display: none
                }

                .b-share-popup__form {
                    position: relative;
                    display: none;
                    overflow: hidden;
                    padding: 5px 0 0 !important;
                    margin: 0 0 -15px;
                    white-space: normal
                }

                .b-share-popup_show_form_mail .b-share-popup__form_mail, .b-share-popup_show_form_html .b-share-popup__form_html, .b-share-popup_show_form .b-share-popup__form {
                    display: block
                }

                .b-share-popup__form__link {
                    padding: 5px !important;
                    margin: 0 0 5px 10px;
                    text-decoration: underline;
                    cursor: pointer;
                    color: #1A3DC1
                }

                .b-share-popup__form__link, .b-share-popup__form__button {
                    font: 86%/1.4545em Verdana, sans-serif;
                    float: left;
                    display: inline
                }

                .b-share-popup__form__button {
                    margin: 5px 0 0 15px
                }

                .b-share-popup__form__close {
                    font: 86%/1.4545em Verdana, sans-serif;
                    float: right;
                    display: inline;
                    padding: 5px !important;
                    margin: 0 10px 5px 0;
                    cursor: pointer;
                    color: #999
                }

                a.b-share-popup__form__link:hover, a.b-share-popup__form__close:hover {
                    text-decoration: underline;
                    color: red
                }

                .b-share-popup_font_fixed .b-share-popup__item {
                    font-size: 12.8px
                }

                .b-share-popup_font_fixed .b-share-popup__header, .b-share-popup_font_fixed .b-share-popup__input, .b-share-popup_font_fixed .b-share-popup__expander .b-share-popup__item, .b-share-popup_font_fixed .b-share-popup__form__link, .b-share-popup_font_fixed .b-share-popup__form__button, .b-share-popup_font_fixed .b-share-popup__form__close {
                    font-size: 11px
                }

                .b-share-popup_font_fixed .b-share-popup__yandex {
                    font-size: 10px
                }

                .b-share-form-button {
                    font: 86%/17px Verdana, Arial, sans-serif;
                    display: -moz-inline-box;
                    display: inline-block;
                    position: relative;
                    height: 19px;
                    margin: 0 3px;
                    padding: 0 4px;
                    cursor: default;
                    white-space: nowrap;
                    text-decoration: none !important;
                    color: #000 !important;
                    border: none;
                    outline: none;
                    background: url("//yastatic.net/share/static/b-share-form-button.png")0 -20px repeat-x
                }

                .b-share-form-button:link:hover, .b-share-form-button:visited:hover {
                    color: #000 !important
                }

                .b-share-form-button__before, .b-share-form-button__after {
                    position: absolute;
                    width: 3px;
                    height: 19px;
                    background: url("//yastatic.net/share/static/b-share-form-button.png")
                }

                .b-share-form-button__before {
                    margin-left: -7px
                }

                .b-share-form-button__after {
                    margin-left: 4px;
                    background-position: -3px 0
                }

                .b-share-form-button::-moz-focus-inner {
                    border: none
                }

                button.b-share-form-button .b-share-form-button__before, button.b-share-form-button .b-share-form-button__after {
                    margin-top: -1px
                }
@-moz-document url-prefix() {
                    button.b-share-form-button .b-share-form-button__after {
                        margin-top: -2px;
                        margin-left: 6px
                    }
                    button.b-share-form-button .b-share-form-button__before {
                        margin-top: -2px;
                        margin-left: -9px
                    }
                }


                SPAN.b-share-form-button:hover, .b-share-form-button_state_hover {
                    background-position: 0 -60px
                }

                SPAN.b-share-form-button:hover .b-share-form-button__before, .b-share-form-button_state_hover .b-share-form-button__before {
                    background-position: 0 -40px
                }

                SPAN.b-share-form-button:hover .b-share-form-button__after, .b-share-form-button_state_hover .b-share-form-button__after {
                    background-position: -3px -40px
                }

                .b-share-form-button_state_pressed, .b-share-form-button_state_pressed .b-share-form-button_share {
                    background-position: 0 -100px !important
                }

                .b-share-form-button_state_pressed .b-share-form-button__before {
                    background-position: 0 -80px !important
                }

                .b-share-form-button_state_pressed .b-share-form-button__after {
                    background-position: -3px -80px !important
                }

                button.b-share-form-button_state_pressed {
                    overflow: visible
                }

                .b-share-form-button_icons {
                    position: relative;
                    padding: 0;
                    background-position: 0 -20px !important
                }

                .b-share-form-button_icons .b-share-form-button__before {
                    left: 0;
                    margin-left: -3px;
                    background-position: 0 0 !important
                }

                .b-share-form-button_icons .b-share-form-button__after {
                    z-index: -1;
                    margin-left: 0;
                    background-position: -3px 0 !important
                }

                .b-share-form-button_icons .b-share__handle {
                    padding: 2px !important
                }

                .b-share-form-button_icons .b-share__handle_more {
                    position: relative;
                    padding-right: 6px !important;
                    margin-right: -4px
                }

                .b-share-form-button_icons .b-share-icon {
                    opacity: .5;
                    background-image: url("//yastatic.net/share/static/b-share-icon_size_14.png")
                }

                .b-share-form-button_icons A.b-share__handle:hover .b-share-icon {
                    opacity: 1
                }

                .b-share {
                    font: 86%/1.4545em Arial, sans-serif;
                    display: -moz-inline-box;
                    display: inline-block;
                    padding: 1px 3px 1px 4px !important;
                    vertical-align: middle
                }

                .b-share .b-share-form-button {
                    font-size: 1em
                }

                .b-share__text .b-share-icon {
                    margin: 0 5px 0 0;
                    border: none
                }

                .b-share__text {
                    margin-right: 5px
                }

                .b-share__handle {
                    float: left;
                    height: 16px;
                    padding: 5px 3px 5px 2px !important;
                    cursor: pointer;
                    text-align: left;
                    text-decoration: none !important
                }

                .b-share__handle_cursor_default {
                    cursor: default
                }

                .b-share__handle .b-share-form-button {
                    margin-top: -2px
                }

                .b-share__hr {
                    display: none;
                    float: left;
                    width: 1px;
                    height: 26px;
                    margin: 0 3px 0 2px
                }

                a.b-share__handle:hover .b-share__text {
                    text-decoration: underline;
                    color: red
                }

                .b-share_bordered {
                    padding: 0 2px 0 3px !important;
                    border: 1px solid #E4E4E4;
                    -moz-border-radius: 5px;
                    -webkit-border-radius: 5px;
                    border-radius: 5px
                }

                .b-share_bordered .b-share__hr {
                    display: inline;
                    background: #E4E4E4
                }

                .b-share_link {
                    margin: -8px 0
                }

                a.b-share_link {
                    margin: 0
                }

                .b-share_link .b-share__text {
                    text-decoration: underline;
                    color: #1A3DC1
                }

                .b-share-form-button_share {
                    padding-left: 26px !important;
                    vertical-align: top
                }

                .b-share-form-button_share .b-share-form-button__before {
                    margin-left: -29px
                }

                .b-share-form-button_share .b-share-form-button__icon {
                    position: absolute;
                    width: 20px;
                    height: 17px;
                    margin: 1px 0 0 -23px;
                    background: url("//yastatic.net/share/static/b-share-form-button_share__icon.png")0 0 no-repeat
                }

                .b-share-pseudo-link {
                    border-bottom: 1px dotted;
                    cursor: pointer;
                    text-decoration: none !important
                }

                .b-share_font_fixed {
                    font-size: 11px
                }

                .b-share__handle_more {
                    font-size: 9px;
                    margin-top: -1px;
                    color: #7B7B7B
                }

                A.b-share__handle_more:hover {
                    color: #000
                }

                .b-share__group {
                    float: left
                }

                .b-share-icon {
                    float: left;
                    display: inline;
                    overflow: hidden;
                    width: 16px;
                    height: 16px;
                    padding: 0 !important;
                    vertical-align: top;
                    border: 0;
                    background: url("//yastatic.net/share/static/b-share-icon.png")0 99px no-repeat
                }

                .b-share-icon_vkontakte, .b-share-icon_custom {
                    background-position: 0 0
                }

                .b-share-icon_yaru, .b-share-icon_yaru_photo, .b-share-icon_yaru_wishlist {
                    background-position: 0 -17px
                }

                .b-share-icon_lj {
                    background-position: 0 -34px
                }

                .b-share-icon_twitter {
                    background-position: 0 -51px
                }

                .b-share-icon_facebook {
                    background-position: 0 -68px
                }

                .b-share-icon_moimir {
                    background-position: 0 -85px
                }

                .b-share-icon_friendfeed {
                    background-position: 0 -102px
                }

                .b-share-icon_mail {
                    background-position: 0 -119px
                }

                .b-share-icon_html {
                    background-position: 0 -136px
                }

                .b-share-icon_postcard {
                    background-position: 0 -153px
                }

                .b-share-icon_odnoklassniki {
                    background-position: 0 -170px
                }

                .b-share-icon_blogger {
                    background-position: 0 -187px
                }

                .b-share-icon_delicious {
                    background-position: 0 -221px
                }

                .b-share-icon_gbuzz {
                    background-position: 0 -238px
                }

                .b-share-icon_linkedin {
                    background-position: 0 -255px
                }

                .b-share-icon_myspace {
                    background-position: 0 -272px
                }

                .b-share-icon_evernote {
                    background-position: 0 -289px
                }

                .b-share-icon_digg {
                    background-position: 0 -306px
                }

                .b-share-icon_juick {
                    background-position: 0 -324px
                }

                .b-share-icon_moikrug {
                    background-position: 0 -341px
                }

                .b-share-icon_yazakladki {
                    background-position: 0 -358px
                }

                .b-share-icon_liveinternet {
                    background-position: 0 -375px
                }

                .b-share-icon_tutby {
                    background-position: 0 -392px
                }

                .b-share-icon_diary {
                    background-position: 0 -409px
                }

                .b-share-icon_gplus {
                    background-position: 0 -426px
                }

                .b-share-icon_pocket {
                    background-position: 0 -443px
                }

                .b-share-icon_surfingbird {
                    background-position: 0 -460px
                }

                .b-share-icon_pinterest {
                    background-position: 0 -477px
                }

                .b-share-icon_renren {
                    background-position: 0 0
                }

                .b-share-icon_renren, .b-share-icon_sina_weibo {
                    background: url("//yastatic.net/share/static/b-share-icon__china.png")no-repeat
                }

                .b-share-icon_sina_weibo {
                    background-position: -18px 0
                }

                .b-share-icon_qzone {
                    background-position: -36px 0
                }

                .b-share-icon_qzone, .b-share-icon_tencent_weibo {
                    background: url("//yastatic.net/share/static/b-share-icon__china.png")no-repeat
                }

                .b-share-icon_tencent_weibo {
                    background-position: -54px 0
                }

                .b-share_theme_dark .b-share-icon {
                    background: url("//yastatic.net/share/static/b-share-icons__theme_dark.png")99px 0 no-repeat
                }

                .b-share_theme_dark .b-share-icon_odnoklassniki {
                    background-position: -4px -3px
                }

                .b-share_theme_dark .b-share-icon_vkontakte {
                    background-position: -24px -3px
                }

                .b-share_theme_dark .b-share-icon_twitter {
                    background-position: -44px -3px
                }

                .b-share_theme_dark .b-share-icon_facebook {
                    background-position: -64px -3px
                }

                .b-share_theme_dark .b-share-icon_lj {
                    background-position: -85px -3px
                }

                .b-share_theme_dark .b-share-icon_yaru {
                    background-position: -105px -3px
                }

                .b-share_theme_dark .b-share-popup .b-share-icon_odnoklassniki, .b-share_theme_dark .b-share-icon_odnoklassniki:hover {
                    background-position: -4px -28px
                }

                .b-share_theme_dark .b-share-popup .b-share-icon_vkontakte, .b-share_theme_dark .b-share-icon_vkontakte:hover {
                    background-position: -24px -28px
                }

                .b-share_theme_dark .b-share-popup .b-share-icon_twitter, .b-share_theme_dark .b-share-icon_twitter:hover {
                    background-position: -44px -28px
                }

                .b-share_theme_dark .b-share-popup .b-share-icon_facebook, .b-share_theme_dark .b-share-icon_facebook:hover {
                    background-position: -64px -28px
                }

                .b-share_theme_dark .b-share-popup .b-share-icon_lj, .b-share_theme_dark .b-share-icon_lj:hover {
                    background-position: -85px -28px
                }

                .b-share_theme_dark .b-share-popup .b-share-icon_yaru, .b-share_theme_dark .b-share-icon_yaru:hover {
                    background-position: -105px -28px
                }

                .b-share_theme_dark .b-share-form-button_share .b-share-form-button__icon {
                    background-image: url("//yastatic.net/share/static/b-share-form-button_share__icon_dark.png")
                }

                .b-share_theme_dark .b-share-form-button {
                    color: #fff !important;
                    opacity: .8
                }

                .b-share_theme_dark .b-share__handle:hover .b-share-form-button, .b-share_theme_dark .b-share-form-button:hover {
                    opacity: 1;
                    cursor: pointer
                }

                .b-share_theme_dark .b-share-form-button, .b-share_theme_dark .b-share-form-button__before, .b-share_theme_dark .b-share-form-button__after {
                    background: 0 0
                }

                .b-share_theme_dark .b-share-popup__i {
                    background-color: #333;
                    border-radius: 10px;
                    -webkit-box-shadow: 0 2px 9px rgba(255, 255, 255, .6);
                    -moz-box-shadow: 0 2px 9px rgba(255, 255, 255, .6);
                    box-shadow: 0 2px 9px rgba(255, 255, 255, .6)
                }

                .b-share_theme_dark .b-share__text {
                    color: #AAA
                }

                .b-share_theme_dark .b-share-popup {
                    color: #AAA;
                    border-radius: 10px;
                    background-color: #333;
                    background-color: rgba(50, 50, 50, .3)
                }

                .b-share_theme_dark .b-share-popup__item {
                    background: 0 0;
                    color: #ccc
                }

                .b-share_theme_dark .b-share-popup .b-share-popup__item__text {
                    color: #ccc
                }

                .b-share_theme_counter .b-share {
                    display: inline-block;
                    vertical-align: middle;
                    white-space: nowrap
                }

                .b-share-counter {
                    font: 14px Arial, sans-serif;
                    line-height: 18px;
                    display: none;
                    float: left;
                    margin: 3px 6px 3px 3px;
                    color: #fff
                }

                .b-share_theme_counter .b-share_type_small .b-share-counter {
                    font-size: 11px;
                    line-height: 14px;
                    margin: 2px 6px 2px 1px
                }

                .b-share_theme_counter .b-share-btn__counter .b-share-counter {
                    display: block
                }

                .b-share-btn__counter {
                    text-decoration: none
                }

                .b-share_theme_counter .b-share-btn__wrap {
                    position: relative;
                    float: left;
                    margin-left: 5px
                }

                .b-share_theme_counter .b-share_type_small .b-share-btn__wrap {
                    margin-left: 4px
                }

                .b-share_theme_counter .b-share-btn__wrap:first-child {
                    margin-left: 0
                }

                .b-share_theme_counter .b-share__link {
                    display: inline-block;
                    cursor: pointer;
                    -webkit-border-radius: 3px;
                    border-radius: 3px
                }

                .b-share_theme_counter .b-share_type_small .b-share__link {
                    -webkit-border-radius: 2px;
                    border-radius: 2px
                }

                .b-share_theme_counter .b-share-icon {
                    display: block;
                    float: left;
                    width: 24px;
                    height: 24px;
                    background-image: url("//yastatic.net/share/static/b-share_counter_large.png");
                    background-position: -20px 0
                }

                .b-share_theme_counter .b-share_type_small .b-share-icon {
                    width: 18px;
                    height: 18px;
                    background-image: url("//yastatic.net/share/static/b-share_counter_small.png")
                }

                .b-share_theme_counter .b-share-icon_facebook {
                    background-position: 0 0
                }

                .b-share_theme_counter .b-share-btn__facebook {
                    background-color: #3c5a98
                }

                .b-share_theme_counter .b-share-btn__facebook:hover {
                    background-color: #30487a
                }

                .b-share_theme_counter .b-share-btn__facebook:active {
                    border-top: 2px solid #24365a;
                    background-color: #334d81
                }

                .b-share_theme_counter .b-share-icon_moimir {
                    background-position: 0 -29px
                }

                .b-share_theme_counter .b-share-btn__moimir {
                    background-color: #226eb7
                }

                .b-share_theme_counter .b-share-btn__moimir:hover {
                    background-color: #1b5892
                }

                .b-share_theme_counter .b-share-btn__moimir:active {
                    border-top: 2px solid #14426d;
                    background-color: #1d5e9c
                }

                .b-share_theme_counter .b-share-icon_vkontakte {
                    background-position: 0 -58px
                }

                .b-share_theme_counter .b-share-btn__vkontakte {
                    background-color: #48729e
                }

                .b-share_theme_counter .b-share-btn__vkontakte:hover {
                    background-color: #3a5b7e
                }

                .b-share_theme_counter .b-share-btn__vkontakte:active {
                    border-top: 2px solid #2b445e;
                    background-color: #3d6186
                }

                .b-share_theme_counter .b-share-icon_twitter {
                    background-position: 0 -87px
                }

                .b-share_theme_counter .b-share-btn__twitter {
                    background-color: #00aced
                }

                .b-share_theme_counter .b-share-btn__twitter:hover {
                    background-color: #008abe
                }

                .b-share_theme_counter .b-share-btn__twitter:active {
                    border-top: 2px solid #00668d;
                    background-color: #0092ca
                }

                .b-share_theme_counter .b-share-icon_odnoklassniki {
                    background-position: 0 -116px
                }

                .b-share_theme_counter .b-share-btn__odnoklassniki {
                    background-color: #ff9f4d
                }

                .b-share_theme_counter .b-share-btn__odnoklassniki:hover {
                    background-color: #cc7f3e
                }

                .b-share_theme_counter .b-share-btn__odnoklassniki:active {
                    border-top: 2px solid #975e2e;
                    background-color: #d98742
                }

                .b-share_theme_counter .b-share-icon_gplus {
                    background-position: 0 -145px
                }

                .b-share_theme_counter .b-share-btn__gplus {
                    background-color: #c25234
                }

                .b-share_theme_counter .b-share-btn__gplus:hover {
                    background-color: #9b422a
                }

                .b-share_theme_counter .b-share-btn__gplus:active {
                    border-top: 2px solid #73311f;
                    background-color: #a5462c
                }

                .b-share_theme_counter .b-share-icon_yaru {
                    background-position: 0 -174px
                }

                .b-share_theme_counter .b-share-btn__yaru {
                    background-color: #d83933
                }

                .b-share_theme_counter .b-share-btn__yaru:hover {
                    background-color: #ad2e29
                }

                .b-share_theme_counter .b-share-btn__yaru:active {
                    border-top: 2px solid #80221e;
                    background-color: #b8312b
                }

                .b-share_theme_counter .b-share-icon_pinterest {
                    background-position: 0 -203px
                }

                .b-share_theme_counter .b-share-btn__pinterest {
                    background-color: #cd1e27
                }

                .b-share_theme_counter .b-share-btn__pinterest:hover {
                    background-color: #a4181f
                }

                .b-share_theme_counter .b-share-btn__pinterest:active {
                    border-top: 2px solid #7b1217;
                    background-color: #ae1921
                }

                .b-share_theme_counter .b-share__link:active {
                    height: 22px
                }

                .b-share_theme_counter .b-share_type_small .b-share__link:active {
                    height: 16px
                }

                .b-share_theme_counter .b-share__link:active .b-share-icon, .b-share_theme_counter .b-share__link:active .b-share-counter {
                    position: relative;
                    top: -1px
                }

                .b-share_theme_counter .b-share__link::after {
                    position: absolute;
                    top: 0;
                    right: 0;
                    bottom: 0;
                    left: 0;
                    content: "";
                    background-image: url(data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==)
                }

                .b-share_theme_counter .b-share__handle {
                    height: auto;
                    padding: 0 !important
                }
            </style>
        <link type="text/css" href="http://wowcss.zamimg.com/css/basic.css?9" rel="stylesheet"/>
    </head>
    
    <body id="yuievtautoid-0">
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
    <link rel="stylesheet" type="text/css"
          href="css.php?styleid=1&amp;langid=2&amp;d=1439791048&amp;td=ltr&amp;sheet=bbcode.css,editor.css,popupmenu.css,reset-fonts.css,vbulletin.css,vbulletin-chrome.css,vbulletin-formcontrols.css,"/>
    <!--[if lt IE 8]>
	<link rel="stylesheet" type="text/css" href="css.php?styleid=1&amp;langid=2&amp;d=1439791048&amp;td=ltr&amp;sheet=popupmenu-ie.css,vbulletin-ie.css,vbulletin-chrome-ie.css,vbulletin-formcontrols-ie.css,editor-ie.css" />
	<![endif]-->
    <script type="text/javascript" src="http://forum.wowcircle.com/clientscript/yui/selector/selector-min.js"></script>
    <script type="text/javascript"
            src="http://forum.wowcircle.com/clientscript/yui/event-delegate/event-delegate-min.js"></script>
    <script type="text/javascript" src="http://forum.wowcircle.com/clientscript/yui/animation/animation-min.js"></script>
    <script type="text/javascript" src="http://forum.wowcircle.com/clientscript/yui/animation/animation-sh.js"></script>
    <script type="text/javascript" src="http://forum.wowcircle.com/clientscript/vsqspoiler.js"></script>
    <link rel="stylesheet" type="text/css"
          href="css.php?styleid=1&amp;langid=2&amp;d=1439791048&amp;td=ltr&amp;sheet=vsq_spoiler.css"/>
    <style type="text/css" id="vbulletin_user_css">
<!--            #usercss {
                background-image: url(attachment.php?attachmentid=41464);
                border-color: #CC0000;
                padding: 2px;
            }

            #usercss .block, #usercss .blockhead, #usercss h2 .blockhead, #usercss .blocksubhead, #usercss .blockbody, #usercss .blockrow, #usercss .blockfoot, #usercss .alt1, #usercss .alt2, #usercss .popupmenu, #usercss legend, #usercss td, #usercss th, #usercss p, #usercss li {
                color: #000000;
                font-family: Arial, Helvetica, sans-serif;
            }

            #usercss .blockhead {
                background-color: #FFFFFF;
                background-image: none;
                color: #000066;
            }

            #usercss .blocksubhead a {
                color: #000066;
            }
-->
        </style>
    <link rel="stylesheet" type="text/css"
          href="css.php?styleid=1&amp;langid=2&amp;d=1439791048&amp;td=ltr&amp;sheet=postbit-lite.css,blog.css,lightbox.css,attachment.css"/>
    <!--[if lt IE 8]>
	<script type="text/javascript" src="clientscript/vbulletin-threadlist-ie.js?v=420"></script>
	<link rel="stylesheet" type="text/css" href="css.php?styleid=1&amp;langid=2&amp;d=1439791048&amp;td=ltr&amp;sheet=postbit-lite-ie.css,blog-ie.css" />
	<![endif]-->
    <script type="text/javascript">
		<!--vBulletin.register_control("vB_Blog_Userid", "22");
      //-->
		</script>
    <script type="text/javascript" src="clientscript/vbulletin_ajax_suggest.js?v=420"></script>
    <title>World of Warcraft: пять причин ненависти - Дневники - Форум проекта WoW Circle</title>
    <link rel="stylesheet" type="text/css"
          href="css.php?styleid=1&amp;langid=2&amp;d=1439791048&amp;td=ltr&amp;sheet=additional.css"/>
    <link rel="stylesheet" type="text/css"
          href="css.php?styleid=1&amp;langid=2&amp;d=1439791048&amp;sheet=MARCO1_CKEditor_CSS.css"/>
    <!-- closing div for above_body -->
    <div class="body_wrapper">
        <br/>
        <script>
          var script = document.createElement('script');
          script.src = "http://wowcircle.com/html/streams.js?" + Math.random();
          document.head.appendChild(script);
          STREAM_LIST_ID = 'stream_list';
        </script>
        <br/>
        <div id="usercss" class="blog">
            <div class="cleardiv"></div>
            <div id="content_container">
                <div id="content">
                    <div id="content_inner" class="blockrow restrain_container">
                        <!-- main content -->
                        <div id="pagetitle">
                            <h1>Личный дневник</h1>
                        </div>
                        <div id="above_blogentry"></div>
                        <div class="block blogentrybit" id="entry2021">
                            <h4 id="blog_title" class="blog_header">World of Warcraft: пять причин ненависти</h4>
                            <div class="fly">
                                <div class="popupmenu" id="blograting">
                                    <h6>
                                        <a class="popupctrl" href="javascript://" id="blograting_current">
                                            <img class="inlineimg" src="images/rating/rating-15_5.png"
                                                 alt="Рейтинг: 5.00. Голосов: 2." title="Рейтинг: 5.00. Голосов: 2."/></a>
                                    </h6>
                                     
                                    <form action="blog.php" method="post" id="blog_blograte_form">
                                        <div class="popupbody" id="yui-gen10">
                                            <ul>
                                                <li>
                                                    <label for="r5">
                                                        <span class="rating r5">
                                                            <input type="radio" name="vote" value="5" id="r5"/>Отлично</span>
                                                    </label>
                                                </li>
                                                <li>
                                                    <label for="r4">
                                                        <span class="rating r4_right">
                                                            <input type="radio" name="vote" value="4" id="r4"/>Хорошо</span>
                                                    </label>
                                                </li>
                                                <li>
                                                    <label for="r3">
                                                        <span class="rating r3_right">
                                                            <input type="radio" name="vote" value="3" id="r3"/>Средне</span>
                                                    </label>
                                                </li>
                                                <li>
                                                    <label for="r2">
                                                        <span class="rating r2_right">
                                                            <input type="radio" name="vote" value="2" id="r2"/>Плохо</span>
                                                    </label>
                                                </li>
                                                <li>
                                                    <label for="r1">
                                                        <span class="rating r1_right">
                                                            <input type="radio" name="vote" value="1" id="r1"/>Ужасно</span>
                                                    </label>
                                                </li>
                                                <li class="formsubmit">
                                                    <input type="button" class="button" value="Проголосовать"/>
                                                </li>
                                            </ul>
                                            <input type="hidden" name="s" value=""/>
                                             
                                            <input type="hidden" name="securitytoken" value="guest"/>
                                             
                                            <input type="hidden" name="do" value="rate"/>
                                             
                                            <input type="hidden" name="b" value="2021"/>
                                        </div>
                                    </form>
                                    <script type="text/javascript" src="clientscript/blog_ajax_rate.js?v=420"></script>
                                    <script type="text/javascript">
				<!--
                                      var blogid = 2021;
                                      vB_AJAX_BlogRate_Init('blog_blograte_form');
                                      //-->
				</script>
                                </div>
                            </div>
                            <div class="block blogbit">
                                <div class="bloghead">
                                    <div class="fly">
                                        <a href="entry.php?b=2021#comments" class="comments">4 Комментарии</a>
                                    </div>
                                    <div class="blog_date">
                                        <div class="popupmenu memberaction" id="yui-gen11">
                                            <a class="username offline popupctrl" href="member.php?u=22"
                                               title="Kodekc вне форума" id="yui-gen13">
                                                <strong>
                                                    <span style="color: red;">Kodekc</span></strong></a>
                                            <ul class="popupbody memberaction_body" id="yui-gen12">
                                                <li class="left">
                                                    <a href="member.php?u=22" class="siteicon_profile">Просмотр профиля</a>
                                                </li>
                                                <li class="right">
                                                    <a href="search.php?do=finduser&amp;userid=22&amp;contenttype=vBForum_Post&amp;showposts=1"
                                                       class="siteicon_forum" rel="nofollow">Сообщения форума</a>
                                                </li>
                                                <li class="left">
                                                    <a href="private.php?do=newpm&amp;u=22" class="siteicon_message"
                                                       rel="nofollow">Личное сообщение</a>
                                                </li>
                                                <li class="right">
                                                    <a href="blog.php?u=22" class="siteicon_blog" rel="nofollow">Записи
                                                                                                                 в
                                                                                                                 дневнике</a>
                                                </li>
                                                <li class="right">
                                                    <a href="http://forum.wowcircle.com/list.php?r=author/22-Kodekc"
                                                       class="siteicon_article" rel="nofollow">Просмотр статей</a>
                                                </li>
                                            </ul>
                                        </div>
                                        , 15.10.2013 в 11:32 (4296 Просмотров)
                                    </div>
                                </div>
                                <div class="blogbody postcontainer" id="yui-gen0">
                                    <div id="entry_text_2021">
                                        <blockquote class="blogcontent restore floatcontainer">test</blockquote>
                                    </div>
                                    <div class="blogcontrol fly"></div>
                                    <div class="blogmeta">
                                        <p class="lastedited">
                                            <span class="shade">Обновлено 15.10.2013 в 11:38</span>
                                             
                                            <a href="member.php?u=22">Kodekc</a>
                                        </p>
                                        <div class="tags" id="blogtagcontainer_2021">
                                            Метки: 
                                            <span id="blogtaglist_2021">Нет </span>
                                             
                                            <span id="blogtagmenu_2021">
                                                <a href="threadtag.php?do=manage&amp;contenttype=vBBlog_BlogEntry&amp;contentid=2021">
                                                    <img src="images/misc/blog/tag_edit.png" border="0"
                                                         class="inlineimg" id="blogtag_2021"
                                                         alt="Добавить / редактировать метки"
                                                         title="Добавить / редактировать метки"/></a></span>
                                        </div>
                                        <dl class="blogcategory stats">
                                            <dt class="shade">Категории</dt>
                                            <dd>
                                                <a href="blog.php?u=22&amp;blogcategoryid=30">Новости игровой индустрии</a>
                                            </dd>
                                        </dl>
                                    </div>
                                    <ul class="entrycontrols">
                                        <li>
                                            <a href="entry.php?b=2021&amp;do=sendtofriend">
                                                <img src="images/misc/blog/email_go.png" class="inlineimg"
                                                     alt="Отправить другу ссылку на эту запись"
                                                     title="Отправить другу ссылку на эту запись"/>Отправить другу
                                                                                                   ссылку на эту запись</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div id="navlinks">
                            <!-- top navlinks -->
                            &laquo; 
                            <a href="blog.php?b=2021&amp;goto=prev">Пред.</a>
                             &nbsp;&nbsp;&nbsp; 
                            <a href="blog.php?u=22">Главная страница</a>
                             &nbsp;&nbsp;&nbsp; 
                            <a href="blog.php?b=2021&amp;goto=next">След.</a>
                             &raquo;<!-- end top navlinks -->
                        </div>
                        <!-- lightbox scripts -->
                        <script type="text/javascript" src="clientscript/vbulletin_lightbox.js?v=420"></script>
                        <script type="text/javascript">
	<!--vBulletin.register_control("vB_Lightbox_Container", "entry2021", 1);
                          //-->
	</script>
                        <!-- / lightbox scripts -->
                        <h2 id="comments_heading" class="commentsheader">
                            <a name="comments"></a>
                            Комментарии
                        </h2>
                        <div id="above_comments" class="floatcontainer"></div>
                        <form action="blog_inlinemod.php?b=2021" method="post" id="commentform" class="block">
                            <ol id="message_list" class="list_no_decoration">
                                <li class="postbit postbit-lite postcontainer " id="comment_2793">
                                    <a name="comment2793"></a>
                                     
                                    <a href="member.php?u=189139" class="avatarlink">
                                        <img src="images/misc/unknown.gif" alt="Аватар для krout"
                                             title="Аватар для krout"/></a>
                                    <div class="commenthead">
                                        <div class="postbithead">
                                            <label for="comment_imod_checkbox_2793">
                                                <a href="member.php?u=189139" class="username">krout</a>
                                                -
                                                <span class="postdate">26.10.2013
                                                    <span class="time">20:33</span></span>
                                            </label>
                                            <div class="postbitfoot floatcontainer">
                                                <ul class="postcontrols"></ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="content">
                                        <div id="comment_text_2793">
                                            <blockquote class="posttext restore">Согласен smile</blockquote>
                                        </div>
                                        <div class="commentfoot floatcontainer">
                                            <span class="shade">Обновлено 27.10.2013 в 19:06</span>
                                             
                                            <a href="member.php?u=22">Kodekc</a>
                                        </div>
                                    </div>
                                    <script type="text/javascript">
	<!--vBulletin.register_control("vB_QuickEdit", "2793");
                                      //-->
	</script>
                                </li>
                            </ol>
                            <div id="below_comments" class="floatcontainer"></div>
                            <input type="hidden" name="s" value=""/>
                            <input type="hidden" name="securitytoken" value="guest"/>
                            <input type="hidden" name="b" value="2021"/>
                            <input type="hidden" name="bt" value=""/>
                            <input type="hidden" name="url" value=""/>
                            <input type="hidden" name="userid" value="22"/>
                        </form><!-- Editor Scripts -->
                        <script type="text/javascript">
<!--

                          var CKEDITOR_BASEPATH = getBaseUrl() + 'clientscript/ckeditor/';

                          var ltr = 'left';

                          var ignorequotechars = 1;
                          var allowbasicbbcode = false;

                          // vB Phrases
                          vbphrase["must_enter_subject"] = "Вы должны ввести заголовок/название темы!";
                          vbphrase["message_too_short"] = "Ваше сообщение слишком короткое. Оно должно быть не менее %1$s символов.";
                          vbphrase["click_quick_reply_icon"] = "";
                          vbphrase["all_files"] = "Все файлы";
                          vbphrase["file_is_too_large"] = "Файл слишком большой";
                          vbphrase["invalid_file"] = "Некорректный файл";
                          vbphrase["maximum_number_of_attachments_reached"] = "Достигнут предел максимального количества хранимых вложений";

                          //-->
                        </script>
                        <!-- / Editor Scripts -->
                        <script type="text/javascript" src="clientscript/ckeditor/ckeditor.js?t=A7HG4HT&amp;v=420"></script>
                        <script type="text/javascript" src="clientscript/vbulletin_textedit.js?v=420"></script>
                        <div id="ajax_post_errors" class="hidden">
                            <div class="block">
                                <div class="blockhead floatcontainer">
                                    <span class="blockhead_info">
                                        <input type="button" class="button" value=" X " id="quick_edit_errors_hide"/></span>
                                     
                                    <h2>Сообщение форума</h2>
                                </div>
                                <div class="blockbody">
                                    <div id="ajax_post_errors_message" class="blockrow">&nbsp;</div>
                                </div>
                                <div class="blockfoot">
                                    <a href="#" id="quick_edit_errors_cancel" class="textcontrol">Отменить изменения</a>
                                </div>
                            </div>
                        </div>
                        <script type="text/javascript" src="clientscript/blog_quick_edit.js?v=420"></script>
                        <script type="text/javascript">
<!--vBulletin.register_control("vB_QuickEdit_Blog_Entry", "2021");
                          extra = {
                              //
                          };

                          extra.userid = "22";

                          vBulletin.register_control("vB_AJAX_TagEditor", "vBBlog_BlogEntry", "2021", "blog", extra);
                          //-->
                        </script>
                        <script type="text/javascript"
                                src="http://forum.wowcircle.com/clientscript/vbulletin_menu.js?v=420"></script>
                        <script type="text/javascript"
                                src="http://forum.wowcircle.com/clientscript/vbulletin_ajax_tageditor.js?v=420"></script>
                        <!-- End main content -->
                    </div>
                </div>
            </div>
            <div id="sidebar_container">
                <h6 class="actionbutton_container">
                    <a class="pagetitleinfo textcontrol" href="register.php" rel="nofollow">
                        <span>+</span>Создать дневник</a>
                </h6>
                <div id="blog_user_sidebar">
                    <div class="block mainblock">
                        <div class="blocksubhead">
                            <a class="username offline" href="member.php?u=22">Kodekc</a>
                        </div>
                        <div id="userinfoblock" class="floatcontainer">
                            <a class="avatar" href="member.php?u=22" title="">
                                <span class="avatarcontainer">
                                    <img src="image.php?u=22&amp;dateline=1426935409" alt=""/></span></a>
                            <ul class="list_no_decoration" id="usermenu">
                                <li>
                                    <a href="member.php?u=22">
                                        <img src="images/site_icons/profile.png" alt="Посмотреть профиль"
                                             title="Посмотреть профиль"/>Посмотреть профиль</a>
                                </li>
                                <li>
                                    <a href="blog.php?u=22&amp;do=markread&amp;readhash=" rel="nofollow">
                                        <img src="images/site_icons/markasread.png" alt="Пометить как прочтённый"
                                             title="Пометить как прочтённый"/>Пометить как прочтённый</a>
                                </li>
                            </ul>
                        </div>
                        <div class="blockbody">
                            <div class="blockrow">
                                <div id="userstats">
                                    <dl class="stats">
                                        <dt>Регистрация</dt>
                                        <dd>03.01.2012</dd>
                                    </dl>
                                     
                                    <dl class="stats">
                                        <dt>Адрес</dt>
                                        <dd>Россия</dd>
                                    </dl>
                                     
                                    <dl class="stats">
                                        <dt>Сообщений</dt>
                                        <dd>11,908</dd>
                                    </dl>
                                     
                                    <dl class="stats">
                                        <dt>Записей в дневнике</dt>
                                        <dd>1</dd>
                                    </dl>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="underblock"></div>
                    <ul id="moveable_blocks">
                        <li id="block_visitors">
                            <div class="block" id="block_visitors_div">
                                <div class="blocksubhead" id="block_visitors_handle">
                                    <a href="#top" id="collapse_c_blog_visitors" class="collapse">
                                        <img id="collapseimg_blog_visitors" src="images/buttons/collapse_40b.png" alt=""
                                             border="0"/></a>
                                     Последние посетители
                                </div>
                                <div class="blockbody" id="c_blog_visitors">
                                    <div class="blockrow">
                                        <ul id="recent_visitors_list" class="commalist">
                                            <li>
                                                <a class="username" href="member.php?u=243426">Alice_J</a>,
                                            </li>
                                            <li>
                                                <a class="username" href="member.php?u=211839">BOURNBTM</a>,
                                            </li>
                                            <li>
                                                <a class="username" href="member.php?u=267658">ChumnayaTelka</a>,
                                            </li>
                                            <li>
                                                <a class="username" href="member.php?u=113476">dangermc1</a>,
                                            </li>
                                            <li>
                                                <a class="username" href="member.php?u=224807">Dontcrybaby</a>,
                                            </li>
                                            <li>
                                                <a class="username" href="member.php?u=206611">grandalia</a>,
                                            </li>
                                            <li>
                                                <a class="username" href="member.php?u=263514">knoxv1lle</a>,
                                            </li>
                                            <li>
                                                <a class="username" href="member.php?u=315357">Айдарик</a>,
                                            </li>
                                            <li>
                                                <a class="username" href="member.php?u=314789">Семантист</a>,
                                            </li>
                                            <li>
                                                <a class="username" href="member.php?u=290966">Сударь</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="underblock"></div>
                        </li>
                        <li id="block_comments">
                            <div class="block smaller moveable" id="block_comments_div">
                                <div class="blocksubhead" id="block_comments_handle">
                                    <a href="#top" id="collapse_c_blog_comments" class="collapse">
                                        <img src="images/buttons/collapse_40b.png" alt=""/></a>
                                     
                                    <a href="blog.php?u=22&amp;do=comments">Последние комментарии</a>
                                </div>
                                <div class="blockbody" id="c_blog_comments">
                                    <ul class="blockrow">
                                        <li class="avatarcontent floatcontainer">
                                            <a class="smallavatar">
                                                <img width="30" alt="" src="images/misc/unknown.gif" title=""/></a>
                                            <div class="smallavatartext">
                                                <a href="entry.php?b=2021&amp;bt=3882#comment3882">World of Warcraft:
                                                                                                   пять причин ненависти</a>
                                                 
                                                <br/>
                                                 
                                                <span class="shade">автор:
                                                    <a href="member.php?u=79451" rel="nofollow" class="shade">я ем
                                                                                                              хомячков</a></span>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="underblock"></div>
                        </li>
                        <li id="block_entries">
                            <div class="block smaller moveable" id="block_entries_div">
                                <div class="blocksubhead" id="block_entries_handle">
                                    <a href="#top" id="collapse_c_blog_entries" class="collapse">
                                        <img id="collapseimg_blog_entries" src="images/buttons/collapse_40b.png"
                                             alt=""/></a>
                                     
                                    <a href="blog.php?u=22">Последние записи</a>
                                </div>
                                <div class="blockbody" id="c_blog_entries">
                                    <ul class="blockrow">
                                        <li class="avatarcontent floatcontainer">
                                            <a class="smallavatar">
                                                <img width="30" alt=""
                                                     src="image.php?u=22&amp;dateline=1426935409&amp;type=thumb"
                                                     title=""/></a>
                                            <div class="smallavatartext">
                                                <a href="entry.php?b=2021">World of Warcraft: пять причин ненависти</a>
                                                 
                                                <br/>
                                                 15.10.2013 
                                                <span class="time">11:32</span>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="underblock"></div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="cleardiv"></div>
        </div>
        <div id="footer" class="floatcontainer footer">
            <form action="forum.php" method="get" id="footer_select" class="footer_select">
                <select name="styleid" onchange="switch_id(this, 'style')">
                    <optgroup label="Выбор стиля">
                        <option class="hidden"></option>
                    </optgroup>
                    <optgroup label=" Standard Styles">
                        <option value="1" class="" selected="selected">-- Default Style</option>
                    </optgroup>
                    <optgroup label=" Mobile Styles">
                        <option value="2" class="">-- Default Mobile Style</option>
                    </optgroup>
                </select>
            </form>
            <ul id="footer_links" class="footer_links">
                <li>
                    <a href="sendmessage.php" rel="nofollow" accesskey="9">Обратная связь</a>
                </li>
                <li>
                    <a href="http://wowcircle.com">Главная - WoW Circle</a>
                </li>
                <li>
                    <a href="archive/index.php">Архив</a>
                </li>
                <li>
                    <a href="entry.php?b=2021#top" onclick="document.location.hash='top'; return false;">Вверх</a>
                </li>
            </ul>
            <script type="text/javascript">
	<!--
              // Main vBulletin Javascript Initialization
                  vBulletin_init();
              //-->
	</script>
        </div>
    </div>
    <!-- closing div for body_wrapper -->
    <div class="b-share-popup-wrap b-share-popup-wrap_state_hidden"
         id="ya-share-0.9256464564241469-1446231948177-popup">
        <div class="b-share-popup b-share-popup_down b-share-popup_to-right">
            <div class="b-share-popup__i">
                <div class="b-share-popup__main  b-share-popup_yandexed">
                    <div class="b-share-popup__header b-share-popup__header_first">Поделитесь с друзьями</div>
                    <a rel="nofollow" target="_blank"
                       href="https://share.yandex.net/go.xml?service=vkontakte&amp;url=http%3A%2F%2Fforum.wowcircle.com%2Fentry.php%3Fb%3D2021&amp;title=World%20of%20Warcraft%3A%20%D0%BF%D1%8F%D1%82%D1%8C%20%D0%BF%D1%80%D0%B8%D1%87%D0%B8%D0%BD%20%D0%BD%D0%B5%D0%BD%D0%B0%D0%B2%D0%B8%D1%81%D1%82%D0%B8%20-%20%D0%94%D0%BD%D0%B5%D0%B2%D0%BD%D0%B8%D0%BA%D0%B8%20-%20%D0%A4%D0%BE%D1%80%D1%83%D0%BC%20%D0%BF%D1%80%D0%BE%D0%B5%D0%BA%D1%82%D0%B0%20WoW%20Circle"
                       class="b-share-popup__item" data-service="vkontakte">
                        <span class="b-share-popup__icon">
                            <span class="b-share-icon b-share-icon_vkontakte"></span></span><span class="b-share-popup__item__text">ВКонтакте</span></a><a rel="nofollow"
                                                                                                                                                           target="_blank"
                                                                                                                                                           href="https://share.yandex.net/go.xml?service=odnoklassniki&amp;url=http%3A%2F%2Fforum.wowcircle.com%2Fentry.php%3Fb%3D2021&amp;title=World%20of%20Warcraft%3A%20%D0%BF%D1%8F%D1%82%D1%8C%20%D0%BF%D1%80%D0%B8%D1%87%D0%B8%D0%BD%20%D0%BD%D0%B5%D0%BD%D0%B0%D0%B2%D0%B8%D1%81%D1%82%D0%B8%20-%20%D0%94%D0%BD%D0%B5%D0%B2%D0%BD%D0%B8%D0%BA%D0%B8%20-%20%D0%A4%D0%BE%D1%80%D1%83%D0%BC%20%D0%BF%D1%80%D0%BE%D0%B5%D0%BA%D1%82%D0%B0%20WoW%20Circle"
                                                                                                                                                           class="b-share-popup__item"
                                                                                                                                                           data-service="odnoklassniki"> 
                        <span class="b-share-popup__icon">
                            <span class="b-share-icon b-share-icon_odnoklassniki"></span></span><span class="b-share-popup__item__text">Одноклассники</span></a><a rel="nofollow"
                                                                                                                                                                   target="_blank"
                                                                                                                                                                   href="https://share.yandex.net/go.xml?service=twitter&amp;url=http%3A%2F%2Fforum.wowcircle.com%2Fentry.php%3Fb%3D2021&amp;title=World%20of%20Warcraft%3A%20%D0%BF%D1%8F%D1%82%D1%8C%20%D0%BF%D1%80%D0%B8%D1%87%D0%B8%D0%BD%20%D0%BD%D0%B5%D0%BD%D0%B0%D0%B2%D0%B8%D1%81%D1%82%D0%B8%20-%20%D0%94%D0%BD%D0%B5%D0%B2%D0%BD%D0%B8%D0%BA%D0%B8%20-%20%D0%A4%D0%BE%D1%80%D1%83%D0%BC%20%D0%BF%D1%80%D0%BE%D0%B5%D0%BA%D1%82%D0%B0%20WoW%20Circle"
                                                                                                                                                                   class="b-share-popup__item"
                                                                                                                                                                   data-service="twitter"> 
                        <span class="b-share-popup__icon">
                            <span class="b-share-icon b-share-icon_twitter"></span></span><span class="b-share-popup__item__text">Twitter</span></a><a rel="nofollow"
                                                                                                                                                       target="_blank"
                                                                                                                                                       href="https://share.yandex.net/go.xml?service=facebook&amp;url=http%3A%2F%2Fforum.wowcircle.com%2Fentry.php%3Fb%3D2021&amp;title=World%20of%20Warcraft%3A%20%D0%BF%D1%8F%D1%82%D1%8C%20%D0%BF%D1%80%D0%B8%D1%87%D0%B8%D0%BD%20%D0%BD%D0%B5%D0%BD%D0%B0%D0%B2%D0%B8%D1%81%D1%82%D0%B8%20-%20%D0%94%D0%BD%D0%B5%D0%B2%D0%BD%D0%B8%D0%BA%D0%B8%20-%20%D0%A4%D0%BE%D1%80%D1%83%D0%BC%20%D0%BF%D1%80%D0%BE%D0%B5%D0%BA%D1%82%D0%B0%20WoW%20Circle"
                                                                                                                                                       class="b-share-popup__item"
                                                                                                                                                       data-service="facebook"> 
                        <span class="b-share-popup__icon">
                            <span class="b-share-icon b-share-icon_facebook"></span></span><span class="b-share-popup__item__text">Facebook</span></a><a rel="nofollow"
                                                                                                                                                         target="_blank"
                                                                                                                                                         href="https://share.yandex.net/go.xml?service=moimir&amp;url=http%3A%2F%2Fforum.wowcircle.com%2Fentry.php%3Fb%3D2021&amp;title=World%20of%20Warcraft%3A%20%D0%BF%D1%8F%D1%82%D1%8C%20%D0%BF%D1%80%D0%B8%D1%87%D0%B8%D0%BD%20%D0%BD%D0%B5%D0%BD%D0%B0%D0%B2%D0%B8%D1%81%D1%82%D0%B8%20-%20%D0%94%D0%BD%D0%B5%D0%B2%D0%BD%D0%B8%D0%BA%D0%B8%20-%20%D0%A4%D0%BE%D1%80%D1%83%D0%BC%20%D0%BF%D1%80%D0%BE%D0%B5%D0%BA%D1%82%D0%B0%20WoW%20Circle"
                                                                                                                                                         class="b-share-popup__item"
                                                                                                                                                         data-service="moimir"> 
                        <span class="b-share-popup__icon">
                            <span class="b-share-icon b-share-icon_moimir"></span></span><span class="b-share-popup__item__text">Мой
                                                                                                                                 Мир</span></a><a rel="nofollow"
                                                                                                                                                      target="_blank"
                                                                                                                                                      href="https://share.yandex.net/go.xml?service=lj&amp;url=http%3A%2F%2Fforum.wowcircle.com%2Fentry.php%3Fb%3D2021&amp;title=World%20of%20Warcraft%3A%20%D0%BF%D1%8F%D1%82%D1%8C%20%D0%BF%D1%80%D0%B8%D1%87%D0%B8%D0%BD%20%D0%BD%D0%B5%D0%BD%D0%B0%D0%B2%D0%B8%D1%81%D1%82%D0%B8%20-%20%D0%94%D0%BD%D0%B5%D0%B2%D0%BD%D0%B8%D0%BA%D0%B8%20-%20%D0%A4%D0%BE%D1%80%D1%83%D0%BC%20%D0%BF%D1%80%D0%BE%D0%B5%D0%BA%D1%82%D0%B0%20WoW%20Circle"
                                                                                                                                                      class="b-share-popup__item"
                                                                                                                                                      data-service="lj"> 
                        <span class="b-share-popup__icon">
                            <span class="b-share-icon b-share-icon_lj"></span></span><span class="b-share-popup__item__text">LiveJournal</span></a><a rel="nofollow"
                                                                                                                                                      target="_blank"
                                                                                                                                                      href="https://share.yandex.net/go.xml?service=gplus&amp;url=http%3A%2F%2Fforum.wowcircle.com%2Fentry.php%3Fb%3D2021&amp;title=World%20of%20Warcraft%3A%20%D0%BF%D1%8F%D1%82%D1%8C%20%D0%BF%D1%80%D0%B8%D1%87%D0%B8%D0%BD%20%D0%BD%D0%B5%D0%BD%D0%B0%D0%B2%D0%B8%D1%81%D1%82%D0%B8%20-%20%D0%94%D0%BD%D0%B5%D0%B2%D0%BD%D0%B8%D0%BA%D0%B8%20-%20%D0%A4%D0%BE%D1%80%D1%83%D0%BC%20%D0%BF%D1%80%D0%BE%D0%B5%D0%BA%D1%82%D0%B0%20WoW%20Circle"
                                                                                                                                                      class="b-share-popup__item"
                                                                                                                                                      data-service="gplus"> 
                        <span class="b-share-popup__icon">
                            <span class="b-share-icon b-share-icon_gplus"></span></span><span class="b-share-popup__item__text">Google
                                                                                                                                Plus</span></a><a href="http://api.yandex.ru/share/"
                                                                                                                                                         class="b-share-popup__yandex">Яндекс</a>
                </div>
            </div>
            <div class="b-share-popup__tail"></div>
        </div>
    </div>
    </div>
    <jsp:include page="/footerblock"/>
    </body>
</html>