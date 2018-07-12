function resizeIframe(obj) {
    obj.style.height = obj.contentWindow.document.body.scrollHeight + 'px';
}

window.onload = function () {
    var myForm = document.getElementsByTagName("IFRAME");
    for (var i = 0; i < myForm.length; i++)
        resizeIframe(myForm[i]);
}
window.onresize = function () {
    var myForm = document.getElementsByTagName("IFRAME");
    for (var i = 0; i < myForm.length; i++)
        resizeIframe(myForm[i]);
}

function getWebRootPath() {
    var strFullPath = window.document.location.href;
    var strPath = window.document.location.pathname;
    var pos = strFullPath.indexOf(strPath);
    var prePath = strFullPath.substring(0, pos);
    var postPath = strPath.substring(0, strPath.substr(1).indexOf('/') + 1);
    return (prePath + postPath);
}

function replaceDomainString(configName, oldDomainString) {
    var webRoot = getWebRootPath();
    $.ajax({
        type: "get",
        url: webRoot + "/api/configs.ashx",
        data: { "configName": configName },
        success: function (data) {
            var targetUrl = oldDomainString;
            $("li a[href^='" + targetUrl + "']").each(function () {
                var hrefString = this['href'];
                hrefString = hrefString.replace(targetUrl, data);
                this['href'] = hrefString;
            });
        }
    });
}

/**
 * 替换3个应用程序的域名地址
 * */
$(document).ready(function () {
    replaceDomainString('gbcashDomain', 'http://gbcash.com.au/');
    replaceDomainString('pawnDomain', 'http://pawn.gbcash.com.au/');
    replaceDomainString('securedDomain', 'http://secured.gbcash.com.au/'); 
  });


$(document).ready(function () {
    var mouseover_tid = [];
    var mouseout_tid = [];

    jQuery(document).ready(function () {
        jQuery('.menus > li, .menus > li > .children > li').each(function (index) {
            if (jQuery(window).width() > 1000) {
                jQuery(this).hover(
                    function () {
                        var _self = this;
                        clearTimeout(mouseout_tid[index]);
                        mouseover_tid[index] = setTimeout(function () {
                            jQuery(_self).find('ul:eq(0)').fadeIn(200);
                        }, 400);
                    },

                    function () {
                        var _self = this;
                        clearTimeout(mouseover_tid[index]);
                        mouseout_tid[index] = setTimeout(function () {
                            jQuery(_self).find('ul:eq(0)').fadeOut(200);
                        }, 400);
                    }

                );
            }
        });
        jQuery('body').on('click', '#menu-toggler', function () {
            jQuery('#nav').slideToggle(300);
            if (jQuery(this).hasClass('opened')) {
                jQuery('.menus li.has-children').removeClass('opened');
                jQuery('.menus li.has-children ul').slideUp(300);
            }
            jQuery(this).toggleClass('opened');
        });
        jQuery('body').on('click', '.menus li.has-children', function (e) {
            if (jQuery(window).width() <= 1000) {
                if ((jQuery(this).parent('.menus').length != 0) && (jQuery(e.target).closest('.children').length != 0)) return;
                jQuery(this).toggleClass('opened');
                jQuery(this).children('ul').slideToggle(300);
            }
        });
    });
});