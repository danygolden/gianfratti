<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>

<!--#include virtual="/Connections/WebDatabase.asp" -->
 
<html><head><title>htmlArea Example</title>
<style type="text/css"><!--
  body, td  { font-family: arial; font-size: x-small; }
  a         { color: #0000BB; text-decoration: none; }
  a:hover   { color: #FF0000; text-decoration: underline; }
  .headline { font-family: arial black, arial; font-size: 28px; letter-spacing: -1px; }
  .headline2{ font-family: verdana, arial; font-size: 12px; }
  .subhead  { font-family: arial, arial; font-size: 18px; font-weight: bold; font-style: italic; }
  .backtotop     { font-family: arial, arial; font-size: xx-small;  }
  .code     { background-color: #EEEEEE; font-family: Courier New; font-size: x-small;
              margin: 5px 0px 5px 0px; padding: 5px;
              border: black 1px dotted;
            }

  font { font-family: arial black, arial; font-size: 28px; letter-spacing: -1px; }

--></style>



<script language="Javascript1.2">
<!--

<!-- // load htmlarea
_editor_url = "";                     // URL to htmlarea files
var win_ie_ver = parseFloat(navigator.appVersion.split("MSIE")[1]);
if (navigator.userAgent.indexOf('Mac')        >= 0) { win_ie_ver = 0; }
if (navigator.userAgent.indexOf('Windows CE') >= 0) { win_ie_ver = 0; }
if (navigator.userAgent.indexOf('Opera')      >= 0) { win_ie_ver = 0; }
if (win_ie_ver >= 5.5) {
  document.write('<scr' + 'ipt src="' +_editor_url+ 'editor.js"');
  document.write(' language="Javascript1.2"></scr' + 'ipt>');  
} else { document.write('<scr'+'ipt>function editor_generate() { return false; }</scr'+'ipt>'); }
// -->
//-->
</script>

</head>
<body>

<a name="top"></a>


<form name="htmlarea" method=POST action="">


<span class="headline">htmlArea v2.03</span><br>
    <span class="headline2">A free WYSIWYG editor replacement for &lt;textarea&gt; fields.<br>
    <a href="http://www.interactivetools.com/" target="_blank">from your friends
  at interactivetools.com</a></span>
<hr align="left" width="800">

  <textarea name="yourFieldNameHere" style="width:800; height:300;">

  <p>Here is some sample text: <b>bold</b>, <i>italic</i>, <u>underline</u>. </p>
  <p align=center>Different fonts, sizes and colors (all in bold):</p>
  <p><b>
   <font face="arial"           size=7 color="#000066">arial</font>,
   <font face="courier new"     size=6 color="#006600">courier new</font>,
   <font face="georgia"         size=5 color="#006666">georgia</font>,
   <font face="tahoma"          size=4 color="#660000">tahoma</font>,
   <font face="times new roman" size=3 color="#660066">times new roman</font>,
   <font face="verdana"         size=2 color="#666600">verdana</font>,
   <font face="tahoma"          size=1 color="#666666">tahoma</font>
  </b>
 Click on <a href="http://www.interactivetools.com/" target="_blank">this link</a> and then on the link button to the details ... OR ... select some text and click link to create a <b>new</b> link.</p>
  </textarea>
  

  <script language="javascript1.2">
editor_generate('yourFieldNameHere');
  </script>
</form>
<strong>Add-ons (only add-ons I have had something to do with are mentioned
here):</strong>
<br>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td valign="top"><img src="images/ed_upload.gif" width="18" height="18"></td>
    <td>Pure ASP-upload. Upload's files and inserts information about the file
      into a Access Database. The file is saved to the server. The upload function
    is disabled in this demo.</td>
  </tr>
  <tr>
    <td valign="top"><img src="images/ed_image.gif" width="18" height="18"></td>
    <td>Inserting of images based on what is stored in the Database. Fills in
      ALT-text automatically, the Title of the file is used as ALT-value. Paging
    are also made, but this is not shown in this demo</td>
  </tr>
  <tr>
    <td valign="top"><img src="/htmlarea/images/ed_link.gif" width="18" height="18"></td>
    <td>Combined Link-function. Either write your link as normal or Link to a
      file (document) stored in your Database/Browse for a File. Paging are also
      made, but
      this
      is
      not shown
      in this
      demo. If you Link to a File the target-value will automatically be set
      to _blank. If you wan't to browse for files instead of just showing the
      values stored in the database, follow the link to the forum.</td>
  </tr>
  <tr>
    <td valign="top"><img src="/htmlarea/images/ed_find.gif" width="22" height="23"></td>
    <td>Search and Replace in this version also work's in HTML-mode. (I have
      not made the search and replace function, have just made it work in HTML-mode).</td>
  </tr>
</table>
<p><strong>Special thank's:</strong><br>
  * Randy_23 (Pat) for information that helped me rebuild the original Insert
    Image function that he uses.<br>
    * Barry Hunter for the combined Link/Link to File. I have just stripped down
his PHP-version and added the target=_blank functionality.</p>
</body></html>