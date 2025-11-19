/*
Copyright (c) 2013, Raonwiz Technology Inc. All rights reserved.
 - document domain config (cross domain)
*/
(function () {
    try {
        var G_Document_Domain = null;
        if (typeof URLSearchParams == 'function') { var p = new URLSearchParams(document.location.search); G_Document_Domain = p.get('d'); }
        else {
            var _href = document.location.href; if (typeof _href == 'string') { var reg = new RegExp('[?&]d=([^&#]*)', ''); var matches = reg.exec(_href); G_Document_Domain = matches ? matches[1] : null; }
        }
        if (typeof G_Document_Domain == 'string') { document.domain = G_Document_Domain; }
    } catch (e) {
        typeof (RAONWIZDLW) != 'undefined' && RAONWIZDLW && RAONWIZDLW();
    }
})();

//var dext5EnforceDocumentDomain = true;
//document.domain = "dext5.com";