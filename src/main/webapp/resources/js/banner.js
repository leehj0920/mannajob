
    var dropCookie = true;                      // false disables the Cookie, allowing you to style the banner
    var cookieDuration = 1;                    // Number of days before the cookie expires, and the banner reappears
    var cookieName = 'complianceCookie';        // Name of our cookie
    var cookieValue = 'on';                     // Value of cookie
     
    function createDiv(){
        var bodytag = document.getElementsByTagName('body')[0];
        var div = document.createElement('div');
        div.setAttribute('id','banner');
        div.innerHTML = '<div id = "banner-container"><div class="banner-image"><a href="http://jobara.net/"><img src="/resources/img/banner1.png" style="height: 100%;"/></a></div><div class ="banner-exit"><a href="javascript:void(0);" onclick="removeMe();"><img src="/resources/img/banner_exit_ic.png"></a></div></div>';
        
        bodytag.insertBefore(div,bodytag.firstChild); // Adds the Cookie Law Banner just after the opening <body> tag
         
        document.getElementsByTagName('body')[0].className+='cookiebanner'; //Adds a class tothe <body> tag when the banner is visible
 
         // Create the cookie
    }
     
     
    function createCookie(name,value,days) {
        if (days) {
            var date = new Date();
            date.setTime(date.getTime()+(days*24*60*60*1000)); 
            var expires = "; expires="+date.toGMTString(); 
        }
        else var expires = "";
        if(window.dropCookie) { 
            document.cookie = name+"="+value+expires+"; path=/"; 
        }
    }
     
    function checkCookie(name) {
        var nameEQ = name + "=";
        var ca = document.cookie.split(';');
        for(var i=0;i < ca.length;i++) {
            var c = ca[i];
            while (c.charAt(0)==' ') c = c.substring(1,c.length);
            if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
        }
        return null;
    }
     
    function eraseCookie(name) {
        createCookie(name,"",-1);
    }
     
    window.onload = function(){
        if(checkCookie(window.cookieName) != window.cookieValue){
            createDiv(); 
        }
    }
    
    function removeMe(){
        var element = document.getElementById('banner');
        element.parentNode.removeChild(element);
		createCookie(window.cookieName,window.cookieValue, window.cookieDuration);
    }
    
    