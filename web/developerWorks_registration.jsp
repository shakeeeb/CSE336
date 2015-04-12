<!DOCTYPE html>
<!-- saved from url=(0145)https://www.ibm.com/developerworks/dwwi/jsp/Register.jsp?lang=en_US&appname=developerworks&d=http%3A%2F%2Fwww.ibm.com%2Fdeveloperworks%2Ftopics%2 -->
<html lang="en" class="dj_webkit dj_chrome dj_contentbox">
<head>
  <meta http-equiv="content-type" content="text/html; charset=iso-8859-1">
  <!-- SITE MON : START (DO NOT DELETE) -->
  <!-- developerWorks monitoring token -->
  <!-- SITE MON : END (DO NOT DELETE) -->
  <!-- HEADER_SCRIPTS_AND_CSS_INCLUDE -->
  <link href="www.css" rel="stylesheet" title="www" type="text/css">
  <!-- Masthead/footer -->
  <link href="dw-mf.css" media="screen,projection" rel="stylesheet" title="www"
  type="text/css">
  <link href="dw-mf-minimal-N.css" media="screen,projection" rel="stylesheet"
  title="www" type="text/css">
  <!-- Home CSS -->
  <link href="dwwi-v17.css" media="screen,projection" rel="stylesheet"
  title="www" type="text/css">
  <script type="text/javascript" src="www.js">
  </script>
  <script type="text/javascript" src="eluminate.js">
  </script>
  <script type="text/javascript" src="head.js">
  </script>
  <script type="text/javascript" src="50200000.js">
  </script>
  <script type="text/javascript" src="dw-www.js">
  </script>
  <script type="text/javascript" charset="utf-8" src="Dialog.xd.js">
  </script>
  <script type="text/javascript" src="prototype.js">
  </script>
  <script type="text/javascript">
 ibmweb.config.sbs = false; </script>
  <!-- <SCRIPT src="//www.ibm.com/common/js/notice_choice_functions.js" type="text/javascript" charset="UTF-8"></SCRIPT> -->
  <!-- <SCRIPT src="//www.ibm.com/common/js/notice_choice.js" type="text/javascript" charset="UTF-8"></SCRIPT> -->
  <script type="text/javascript">
      
  function removetempfunction () {
      var whichindex = document.getElementById('SecurityQues').selectedIndex;
      if (whichindex == 6) {
          document.getElementById('customquestioncontainer').style.display = 'block';
          document.getElementById('custom_question').value='';
      }
      else {
          document.getElementById('customquestioncontainer').style.display = 'none';
      }
  }
  </script>
  <title>developerWorks registration</title>
  <script type="text/javascript">
  
  /**        function checkEmail(emailAddress){
          var Teamvalue = document.getElementById(emailAddress).value;
          var vpreLang = 'en_US';
          var vlang= "&lang=" + vpreLang;
          var sb = "email="+ Teamvalue + vlang;
          //sb = sb + "teamname=" + encodeURIComponent(Teamvalue.replace(/^\s+/g, '').replace(/\s+$/g, ''))+"&";
      
          var result=false;
          if(Teamvalue != null && Teamvalue != ''){
              new Ajax.Request('/developerworks/dwwi/jsp/emailExists.jsp?', 
                  {parameters:sb,
                  evalScripts:false, 
                  asynchronous:false,
                  encoding:'UTF-8', 
                  onSuccess: function(t) { 
                      var json = eval( "(" + t.responseText + ")" ); 
                      result = true;
                      if(json.result=='true') {
                          document.getElementById('userid_valid').style.display = 'none';
                          document.getElementById('userid_invalid').style.display = 'inline';
                          document.getElementById('userid_invalid').innerHTML=json.message;
                          result = true;
                      } 
                  }, onFailure:function(t) { 
                      alert('onFail: ' + t.statusText);
                  }         
              });
          }
      
          return result;  
      }
      **/
      
      /**
      function checkDisplayname(displayName){
          var Teamvalue = document.getElementById(displayName).value;
                  var vpreLang = 'en_US';
          var vlang= "&lang=" + vpreLang;
          var sb = "displayname="+ Teamvalue + vlang;
          //sb = sb + "teamname=" + encodeURIComponent(Teamvalue.replace(/^\s+/g, '').replace(/\s+$/g, ''))+"&";
              
              var displayNamePat = "^([A-Za-z0-9@._-]+)$";
          var matchArray = Teamvalue.match(displayNamePat);
      
          var result=false;
          if( (Teamvalue == null) || (Teamvalue != null && Teamvalue.length < 3) || (matchArray == null)){
              document.getElementById('alias_valid').style.display = 'none';
              document.getElementById('alias_invalid').style.display = 'inline';
              document.getElementById('alias_invalid').innerHTML='This display name is not valid. Please choose another.';
              result = true;
              return result;
          }
  
          if(Teamvalue != null && Teamvalue != ''){
              new Ajax.Request('/developerworks/dwwi/jsp/displaynameExists.jsp?', 
                  {parameters:sb,
                  evalScripts:false, 
                  asynchronous:false,
                  encoding:'UTF-8', 
                  onSuccess: function(t) { 
                      var json = eval( "(" + t.responseText + ")" ); 
                      result = true;
                      if(json.result=='true') {
                          document.getElementById('alias_valid').style.display = 'none';
                          document.getElementById('alias_invalid').style.display = 'inline';
                          document.getElementById('alias_invalid').innerHTML='This display name is taken. Please choose another.';
                          result = true;
                      } 
                  }, onFailure:function(t) { 
                      alert('onFail: ' + t.statusText);
                  }         
              });
          }
      
          return result;  
      }
      
      **/
          
      function validatePassword() {
          
          var passwd = document.forms['register'].Password.value;
          var min_passwd_len = 8;
          var max_passwd_len = 31;
          
                  //if empty, alert
                  if(passwd == ''){
                  displayInvalid('password');
                  return "";
                  }
          else if((passwd != null) && (passwd.length < min_passwd_len)){
              displayInvalid('password');
              return "";
          }else if(passwd.length > max_passwd_len){
              displayInvalid('password');
              return "";
          }
          
          var passwdPat= "^([A-Za-z0-9@._-]+)$";
          var matchArray=passwd.match(passwdPat); // this does not compute
          if (matchArray == null) {
              displayInvalid('password');
              
          }else{
              displayValid('password');
          }
      }
      
      function validateRePassword() {
          var passwd = document.forms['register'].Password.value;
          var re_passwd = document.forms['register'].RePassword.value;
          var min_passwd_len = 8;
          var max_passwd_len = 31;
          
                  
                  
          if((re_passwd == '') ||(re_passwd != null) && (re_passwd.length < min_passwd_len)){
              displayInvalid('repassword');
              document.getElementById('repassword_mismatch').style.display = 'none';
              return "";
          }else if(re_passwd.length > max_passwd_len){
              displayInvalid('repassword');
              document.getElementById('repassword_mismatch').style.display = 'none';
              return "";
          }
          
          var passwdPat= "^([A-Za-z0-9@._-]+)$";
          var matchArray=re_passwd.match(passwdPat);
          
          if (matchArray == null) {
              displayInvalid('repassword');
              document.getElementById('repassword_mismatch').style.display = 'none';
              return "";
          }else if(re_passwd != passwd){
              document.getElementById('repassword_invalid').style.display = 'none';
              document.getElementById('repassword_valid').style.display = 'none';
              document.getElementById('repassword_mismatch').style.display = 'inline';
          }else{
              displayValid('repassword');
              document.getElementById('repassword_mismatch').style.display = 'none';
              
          }
      }
      
      function isFieldEmpty(name){ 
      
      // passed from the form tahga s a letter
      // we can switch on the eltter, itlll tell us wh
      
      
      switch(name){
          case 'f': // first name
          
          var name1 = document.forms['register'].FName.value;
      if(name1==''){
          displayInvalid('empty');
         
          }
          else{
              displayValid('empty');
              
              }
          
              break;
          case 'l': // last anme
          
          var name2 = document.forms['register'].LName.value;
      if(name2==''){
          displayInvalid('emptyL');
          
          }
          else{
              displayValid('emptyL');
              
              }
          
              break;
          
          case 's': // security question
          
          var name3 = document.forms['register'].SecurityAns.value;
      if(name3==''){
          displayInvalid('emptyS');
          
          }
          else{
              displayValid('emptyS');
            
              }
          default: 
             
              return;
          break;
          }
  
  
      
      }
      
      
      function assignSubmit(){
          document.getElementById('action').value = 'registerandtake';
          var isValid = "true";
          return isValid;
      }
      
      function isValidDisplay(){
          var alias = document.forms['register'].alias.value;
          var isValid = "true";
          if( (alias.indexOf("<") != -1) || (alias.indexOf(">") != -1) || (alias.indexOf(";") != -1) || 
                  (alias.indexOf(",") != -1) || (alias.indexOf("\"") != -1) || (alias.indexOf("'") != -1)){
              isValid = "false";
          }
          return isValid;
      }
      
      function validateDisplayName() {
          var alias = document.forms['register'].alias.value;
          var min_passwd_len = 3;
          var max_passwd_len = 31;
          var isValid = isValidDisplay();
          if(alias == ''){
                  displayInvalid('alias');
                  }
          else if((alias != null) && (alias.length < min_passwd_len)){
              displayInvalid('alias');
          }else if(alias.length > max_passwd_len){
              displayInvalid('alias');
          }else if(isValid == "false"){
              displayInvalid('alias');
          }else{
              displayValid('alias');
          }
      }
      
      //this is abstraction for valid and invalid inputs
      
      function displayInvalid(id) {
          var vid = id + "_valid";
          var ivid = id + "_invalid";
      document.getElementById(vid).style.display = 'none';
      document.getElementById(ivid).style.display = 'inline';
      
      }
      
      function displayValid(id) {
          var vid = id + "_valid";
          var ivid = id + "_invalid";
      document.getElementById(vid).style.display = 'inline';
      document.getElementById(ivid).style.display = 'none';
      
      }
      
      function validateUserID() {
          var emailStr = document.forms['register'].emailAddress.value;
          document.getElementById('userid_invalid').innerHTML='This is not a valid email address and your field must not be empty! ';
          
          
          var min_passwd_len = 3;
          var max_passwd_len = 80;
          
                  if(emailStr == ''){
                         
                  displayInvalid('userid');
                  return ""
                  }
          else if((emailStr != null) && (emailStr.length < min_passwd_len)){
              displayInvalid('userid');
              return "";
          //return to exit code
          }else if(emailStr.length > max_passwd_len){
              displayInvalid('userid');
              return "";
          }
          
          emailStr = emailStr.replace("[" , "");
          emailStr = emailStr.replace("]" , "");
          
          //var emailPat=/^(.+)@(.+)$/;
          var emailPat="^([A-Za-z0-9!#$%&'+-./=?^_`{|}~]+)@([A-Za-z0-9!#$%&'+-./=?^_`{|}~]+)[.]([A-Za-z0-9!#$%&'+-/=?^_`{|}~]{2,4})$";
          
          var specialChars="\\(\\)<>@,;:\\\\\\\"\\.\\[\\]";           var validChars="\[^\\s" + specialChars + "\]";
          var quotedUser="(\"[^\"]*\")";
          var atom=validChars + '+';
          var word="(" + atom + "|" + quotedUser + ")";
          var userPat=new RegExp("^" + word + "(\\." + word + ")*$");
          var domainPat=new RegExp("^" + atom + "(\\." + atom + ")*$");
         
          var matchArray=emailStr.match(emailPat);
          if (matchArray == null) {
             displayInvalid('userid');
              return "";
          }else{
          
              var user=matchArray[1];
              var domain=matchArray[2];
              
              if (user.match(userPat) == null) {
                  displayInvalid('userid');
                  return "";
              }else{
                  var domainArray=domain.match(domainPat);
                  if (domainArray == null) {
                      displayInvalid('userid');
                      return "";
                  }else{
                      displayValid('userid');
                      return "";
                  }
              }
          }
         
      }
  </script>
  <script type="text/javascript" src="usen-utf8.js" id="dojoIoScript2"
  charset="utf-8">
  </script>
  <script type="text/javascript" src="cookie-id.js">
  </script>
  <script type="text/javascript" src="rules_50200000.js">
  </script>
  <script type="text/javascript" src="dispatcher-v3.js">
  </script>
  <script type="text/javascript" charset="utf-8" src="move.xd.js">
  </script>
  <script type="text/javascript" charset="utf-8" src="TimedMoveable.xd.js">
  </script>
  <script type="text/javascript" charset="utf-8" src="_CssStateMixin.xd.js">
  </script>
  <script type="text/javascript" charset="utf-8" src="_FormMixin.xd.js">
  </script>
  <script type="text/javascript" charset="utf-8" src="_DialogMixin.xd.js">
  </script>
  <script type="text/javascript" charset="utf-8" src="DialogUnderlay.xd.js">
  </script>
  <script type="text/javascript" charset="utf-8" src="ContentPane.xd.js">
  </script>
  <script type="text/javascript" charset="utf-8" src="common.xd.js">
  </script>
  <script type="text/javascript" charset="utf-8" src="TooltipDialog.xd.js">
  </script>
  <script type="text/javascript" src="yahoo-min.js">
  </script>
  <script type="text/javascript" src="cp-v3.js">
  </script>
  <script type="text/javascript" charset="utf-8" src="Mover.xd.js">
  </script>
  <script type="text/javascript" charset="utf-8" src="Moveable.xd.js">
  </script>
  <script type="text/javascript" src="json-min.js">
  </script>
  <script type="text/javascript" charset="utf-8"
  src="_ContentPaneResizeMixin.xd.js">
  </script>
  <script type="text/javascript" charset="utf-8" src="html.xd.js">
  </script>
  <script type="text/javascript" charset="utf-8" src="loading.xd.js">
  </script>
  <script type="text/javascript" charset="utf-8" src="common.xd(1).js">
  </script>
  <script type="text/javascript" charset="utf-8" src="autoscroll.xd.js">
  </script>
  <script type="text/javascript" charset="utf-8" src="_LayoutWidget.xd.js">
  </script>
</head>

<body id="ibm-com">

    <!--Setting up the bean -->
    <jsp:useBean id="bean" class="com.data.FormBean" scope="application" />
    
<div id="ibm-top" class="ibm-landing-page">
<!-- MASTHEAD_BEGIN -->

<div id="ibm-masthead">
<p>&nbsp;</p>

<div id="dw-masthead-top-row">
<ul id="ibm-mast-options-dw">
  <li id="dw-mast-top-4"><a href="http://www.ibm.com/developerworks/"><img
    src="developerWorks_registration_files/dwn-dw-badge.png" width="43"
    height="22" alt="dW"></a> </li>
  <li id="dw-mast-top-3"><a href="http://www.ibm.com/">IBM</a> </li>
</ul>
</div>

<div id="ibm-universal-nav-dw">
<ul id="ibm-unav-links-dw">
  <li id="ibm-unav-home-dwlogo"><a
    href="http://www.ibm.com/developerworks/"><img
    src="developerWorks_registration_files/dwn-dw-wordmark.png" width="225"
    height="28" alt="developerWorks&Acirc;&reg;"></a></li>
</ul>
</div>
</div>

<div id="fdiv" class="ibm-access">
</div>
<!-- MASTHEAD_END -->
<!--<ul id="ibm-navigation-trail">
<li class="dw-lc-wordmarkonly">&nbsp;</li>
</ul>-->

<div id="ibm-leadspace-head" class="ibm-alternate ibm-alternate-5col">

<div id="ibm-leadspace-body">
<h1 class="ibm-small">developerWorks registration</h1>
</div>
</div>

<div id="ibm-pcon">

<div id="ibm-content">

<div id="ibm-content-body">

<div id="ibm-content-main">
<!-- Begin 6-4 6-2 grid -->

<div class="ibm-columns">
<!-- Begin 6-4 grid -->

<div class="ibm-col-6-4">
<p>Thank you for registering with IBM developerWorks. To simplify things, you
can use the IBM ID and password that you designate below across IBM.</p>

<p>Asterisks (<span class="ibm-required">*</span>) indicate fields required to
complete this transaction.</p>

<form method="get" action="/CSE336/HWservlet"
class="ibm-row-form" name="register" id="registerform">
  <h2 class="ibm-inner-subhead">Basic registration information</h2>

  <div class="ibm-columns">

  <div class="ibm-col-2-1">
  <p><label for="FName">First name:<span class="ibm-required">*</span></label>
      <span><input name="FName" id="FName" size="36" type="text" value="${bean.fName}"
  onblur="isFieldEmpty('f');"> </span> <span class="dw-lc-formerror"
  id="empty_invalid" style="display:none;">You need to input a value.</span>
  <span class="dw-lc-formconfirm" id="empty_valid"
  style="display:none;">&nbsp;</span> </p>
  </div>

  <div class="ibm-col-2-1">
  <p><label for="LName">Last name:<span class="ibm-required">*</span></label>
  <span><input name="LName" id="LName" size="36" type="text" value=""
  onblur="isFieldEmpty('l');"> </span> <span class="dw-lc-formerror"
  id="emptyL_invalid" style="display:none;">You need to input a value.</span>
  <span class="dw-lc-formconfirm" id="emptyL_valid"
  style="display:none;">&nbsp;</span> </p>
  </div>
  </div>

  <p><label for="emailAddress">Email address:<span
  class="ibm-required">*</span><br>
  <span
  class="ibm-additional-info dw-lc-labeloverride dw-lc-important-adjust ibm-item-note">(This
  will also be your IBM ID for signing in)</span></label> <span><input
  name="UserID" id="emailAddress" size="42" type="text" value=""
  onkeyup="validateUserID();"
  onblur="validateUserID(); checkEmail('emailAddress');"> </span> <span
  class="dw-lc-formerror" id="userid_invalid" style="display:none;">This is not
  a valid email address and your field must be not empty!</span> <span
  class="dw-lc-formconfirm" id="userid_valid"
  style="display:none;">&nbsp;</span> </p>

  <p><label for="Password">Password:<span class="ibm-required">*</span><br>
  <span
  class="ibm-additional-info dw-lc-labeloverride dw-lc-important-adjust ibm-item-note">(Must
  be at least 8 characters)</span></label> <span><input name="Password"
  id="Password" size="42" type="password" value=""
  onkeyup="validatePassword();" onblur="validatePassword();"> </span> <span
  class="dw-lc-formerror" id="password_invalid" style="display:none;">The
  password you entered is not valid and your field must be not empty!</span>
  <span class="dw-lc-formconfirm" id="password_valid"
  style="display:none;">&nbsp;</span> </p>

  <p><label for="RePassword">Verify password:<span
  class="ibm-required">*</span></label> <span><input name="RePassword"
  id="RePassword" size="42" type="password" value=""
  onkeyup="validateRePassword();" onblur="validateRePassword();"> </span> <span
  class="dw-lc-formerror" id="repassword_mismatch" style="display:none;">The
  passwords did not match.</span> <span class="dw-lc-formerror"
  id="repassword_invalid" style="display:none;">The password you entered is not
  valid and your field must be not empty!.</span> <span
  class="dw-lc-formconfirm" id="repassword_valid"
  style="display:none;">&nbsp;</span> </p>

  <p><label for="alias">Display name:<span class="ibm-required">*</span><br>
  <span
  class="ibm-additional-info dw-lc-labeloverride dw-lc-important-adjust ibm-item-note">(Must
  be between 3 - 31 characters. <a class="ibm-feature-link"
  href="www.helloworld.com"
  onclick="ibmweb.overlay.show('overlay2', this);return false;">Tips for
  choosing display name.</a>)
  <!--https://www.ibm.com/developerworks/dwwi/jsp/Register.jsp?lang=en_US&appname=developerworks&d=http%3A%2F%2Fwww.ibm.com%2Fdeveloperworks%2Ftopics%2#overlay2-->
  </span> </label> <span><input name="alias" id="alias" size="42" type="text"
  value="" onkeyup="validateDisplayName();"
  onblur="validateDisplayName(); checkDisplayname('alias');"> </span> <span
  class="dw-lc-formerror" id="alias_invalid" style="display:none;">This display
  name is not valid. Please choose another. Addtionally, your field must not be
  empty!</span> <span class="dw-lc-formconfirm" id="alias_valid"
  style="display:none;">&nbsp;</span> </p>
  <!-- SUPPLEMENTAL OVERLAYS START HERE -->

  <div class="ibm-common-overlay" id="overlay2">

  <div class="ibm-head">
  <p><a class="ibm-common-overlay-close" href="www.helloworld.com">Close
  [x]</a>
  <!--https://www.ibm.com/developerworks/dwwi/jsp/Register.jsp?lang=en_US&appname=developerworks&d=http%3A%2F%2Fwww.ibm.com%2Fdeveloperworks%2Ftopics%2#close-->
  </p>
  </div>

  <div class="ibm-body">

  <div class="ibm-main">
  <a class="ibm-access" id="overlaylink2"><!-- Accessibility anchor --></a> 

  <div class="ibm-title">
  <h1>Choose your display name carefully...</h1>
  </div>

  <div class="ibm-container ibm-alternate">

  <div class="ibm-container-body">
  <p>Your display name accompanies the content that you post on developerWorks.
  Other users will recognize and associate your display name with you. Your
  display name:</p>

  <p></p>
  <ul>
    <li>Easily and publicly identifies you. Samples: brenny, JeffJ, lindameyer,
      and Michael_OConnell</li>
    <li>Should not be your email address (for privacy reasons)</li>
    <li>You can change your display name in your profile</li>
  </ul>

  <p></p>
  </div>
  </div>
  </div>
  </div>

  <div class="ibm-footer">
  </div>
  </div>
  <!-- SUPPLEMENTAL OVERLAYS END HERE -->

  <p><label for="countryResidence">Country/region of residence:<span
  class="ibm-required">*</span><br>
  <span
  class="ibm-additional-info dw-lc-labeloverride dw-lc-important-adjust ibm-item-note">(Required
  for warranty)</span></label> <span>
  <select name="CountryOfRes" id="countryResidence">
    <option value="selected" selected="selected">Select one</option>
    <option value="AL">Albania</option>
    <option value="CN">China</option>
    <option value="FR">France</option>
    <option value="RU">Russian Federation</option>
    <option value="US">United States</option>
  </select>
   </span> </p>

  <div class="ibm-columns">

  <div class="ibm-col-2-1">
  <p><label for="City">City:</label> <span><input name="City" id="City"
  size="36" type="text" value=""> </span> </p>
  </div>

  <div class="ibm-col-2-1">
  <p><label for="Language">Language:<span class="ibm-required">*</span></label>
  <span>
  <select name="Language" id="Language">
    <option value="" selected="selected">Select one</option>
    <option value="en-AU">English, Australian</option>
    <option value="eo-FR">Esperanto</option>
    <option value="el-GR">Greek, Modern (1453-)</option>
    <option value="he-IL">Hebrew</option>
    <option value="zu-ZA">Zulu</option>
  </select>
   </span> </p>
  </div>
  </div>

  <p>Please select a security question that only you can answer or create your
  own. Then enter the answer to the question. Occasionally, you may be asked to
  answer this question to confirm your identity.</p>

  <div class="ibm-columns">

  <div class="ibm-col-2-1">
  <p><label for="SecurityQues">Security question:<span
  class="ibm-required">*</span></label> <span>
  <select name="SecurityQues" id="SecurityQues" onchange="removetempfunction()">
    <option selected="selected" value="">Select one</option>
    <option value="name">What is your mother's maiden name?</option>
    <option value="pet">What is the name of your first pet?</option>
    <option value="school">What was the name of your first school?</option>
    <option value="job">In what city or town was your first job?</option>
    <option value="country">In what country were you born?</option>
  </select>
   </span> </p>
  </div>

  <div class="ibm-col-2-1">
  <p id="customquestioncontainer" style="display:none;   "><label
  for="custom_question">Place a question in this text field.</label>
  <span><input name="custom_question" id="custom_question" size="42"
  type="text" value=""> </span> </p>
  </div>
  </div>

  <p><label for="SecurityAns">Answer to security question:<span
  class="ibm-required">*</span></label> <span><input name="SecurityAns"
  id="SecurityAns" size="42" type="text" value="" onblur="isFieldEmpty('s');">
  </span> <span class="dw-lc-formerror" id="emptyS_invalid"
  style="display:none;">You need to input a value.</span> <span
  class="dw-lc-formconfirm" id="emptyS_valid"
  style="display:none;">&nbsp;</span> </p>

  <div class="dw-lc-spacevertical">
  &nbsp;</div>

  <h2 class="ibm-alternate-rule">Privacy preferences</h2>

  <div id="privacyid">
  <p>Please keep me informed of products, services and offerings from IBM
  companies worldwide.</p>

  <p><span class="ibm-input-group"><input id="NC_CHECK_EMAIL" value="0"
  name="NC_CHECK_EMAIL" type="checkbox"> <label for="NC_CHECK_EMAIL">by
  email.</label> </span><br>
  <input id="NC_HIDDEN_EMAIL" value="OPT_IN" name="NC_HIDDEN_EMAIL"
  type="hidden"> <span class="ibm-input-group"><input id="NC_CHECK_OTHER"
  value="4" name="NC_CHECK_OTHER" type="checkbox"> <label
  for="NC_CHECK_OTHER">by telephone or postal mail.</label> </span><br>
  <input id="NC_HIDDEN_OTHER" value="OPT_IN" name="NC_HIDDEN_OTHER"
  type="hidden"> </p>

  <p>I accept&nbsp; <a href="http://www.ibm.com/privacy/us/en/"
  target="_blank">IBM's Privacy statement</a>.</p>

  <p>All fields are required to complete this transaction.</p>
  </div>

  <div class="ibm-alternate-rule">
  <hr>
  </div>

  <p>By selecting the <strong>Register</strong> link, I agree to the
  developerWorks&nbsp;<a class="ibm-feature-link"
  href="https://www.ibm.com/developerworks/mydeveloperworks/terms?lang=en">terms
  of use</a>.</p>

  <div class="ibm-buttons-row">
  <p><input value="reg" type="hidden" name="m" id="m"> <input value="register"
  type="hidden" name="action" id="action"> <input value="en_US" type="hidden"
  name="lang" id="lang"> <input
  value="http://www.ibm.com/developerworks/topics%2" type="hidden" name="d"
  id="d"> <input value="null" type="hidden" name="tact" id="tact"> <input
  value="null" type="hidden" name="cmp" id="cmp"> 
  <input id="ibm-submit" name="ibm-submit" class="ibm-btn-arrow-pri"
  value="Register" type="submit"> <span class="ibm-sep"></span> 
  <input value="Cancel" type="button" name="ibm-cancel"
  class="ibm-btn-cancel-sec"
  onclick="window.location(window.location.href = 'http://www.ibm.com/developerworks/topics%2')">
  </p>
  </div>

  <div class="dw-lc-spacevertical">
  &nbsp;</div>

  <div class="dw-lc-spacevertical">
  &nbsp;</div>
</form>
</div>
<!-- End 6-4 grid -->
<!-- Begin 6-2 grid -->

<div class="ibm-col-6-2">

<div class="ibm-container">
<h2>Why register?</h2>

<div class="ibm-container-body">
<img src="developerWorks_registration_files/hiviz-mydw-new.jpg" width="168"
height="64" alt="Register for mydeveloperWorks"> 

<p>developerWorks is a worldwide community of software developers and IT
professionals, from students to seasoned veterans.</p>
<ul class="ibm-bullet-list ibm-no-links">
  <li>Find expert answers in forums</li>
  <li>Create your own blog, wiki, or group</li>
  <li>Contribute to discussions</li>
  <li>Follow user activity in real-time</li>
  <li>Interact with other users</li>
  <li>Expand your professional network</li>
</ul>

<div class="ibm-rule">
<hr>
</div>

<p class="ibm-ind-link"><a
href="https://www.ibm.com/developerworks/mydeveloperworks?lang=en"
class="ibm-forward-link">Read more</a> </p>
</div>
</div>
</div>
<!-- End 6-2 grid -->
</div>
</div>
</div>

<div id="ibm-content-sidebar">

<div id="ibm-contact-module">
<!--IBM contact module-->
</div>

<div id="ibm-merchandising-module">
<!--IBM Web Merchandising Module-->
</div>

<div class="ibm-container">
<h2>Why register?</h2>

<div class="ibm-container-body">
<img src="developerWorks_registration_files/hiviz-mydw-new.jpg" width="168"
height="64" alt="Register for mydeveloperWorks"> 

<p>developerWorks is a worldwide community of software developers and IT
professionals, from students to seasoned veterans.</p>
<ul class="ibm-bullet-list ibm-no-links">
  <li>Find expert answers in forums</li>
  <li>Create your own blog, wiki, or group</li>
  <li>Contribute to discussions</li>
  <li>Follow user activity in real-time</li>
  <li>Interact with other users</li>
  <li>Expand your professional network</li>
</ul>

<div class="ibm-rule">
<hr>
</div>

<p class="ibm-ind-link"><a
href="https://www.ibm.com/developerworks/mydeveloperworks?lang=en"
class="ibm-forward-link">Read more</a></p>
</div>
</div>
</div>
<!-- OVERLAY STARTS HERE -->

<div class="ibm-common-overlay" id="overlay">

<div class="ibm-head">
<p><a class="ibm-common-overlay-close" href="www.helloworld.com">Close
[x]</a></p>
</div>
<!--https://www.ibm.com/developerworks/dwwi/jsp/Register.jsp?lang=en_US&appname=developerworks&d=http%3A%2F%2Fwww.ibm.com%2Fdeveloperworks%2Ftopics%2#close-->

<div class="ibm-body">

<div class="ibm-main">
<a class="ibm-access" id="overlaylink1"><!-- Accessibility anchor --></a> 

<div class="ibm-title">
<h1>Why should I register?</h1>
</div>

<div class="ibm-container ibm-alternate">

<div class="ibm-container-body">
<p>As a registered user of developerWorks, you have easy access to other
developers who share your interests, as well as the feeds, bookmarks, blogs,
groups, and forums that you care about.</p>
</div>
</div>
</div>
</div>

<div class="ibm-footer">
</div>
</div>
<!-- OVERLAY ENDS HERE -->
</div>
</div>
<!-- FOOTER_BEGIN -->
<!-- FOOTER_END -->
</div>

<div id="ibm-metrics">
<script type="text/javascript" src="stats.js">
</script>
<a id="icon-id08384998918045312" style="cursor: pointer;">Advertising
Choices</a></div>
<script type="text/javascript" src="notice">
</script>
<script type="text/javascript" defer="defer" src="notice(1)">
</script>
</body>
</html>
