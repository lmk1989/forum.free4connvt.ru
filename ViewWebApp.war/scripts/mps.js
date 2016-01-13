function displayToggle(id) {

    var elmnt = document.getElementById('tbody' + id);

    if (elmnt == null) {
        return;
    }

    var bExpand = elmnt.className == 'tbody';

    elmnt.className = (bExpand ? 'tbody_show' : 'tbody');

    swapImg(id);

}

function swapImg(id) {
    var imgElmnt = document.getElementById(id);(imgElmnt.className == 'show') ? (imgElmnt.className = 'hide') : (imgElmnt.className = 'show');
}

function showAll() {

    var allElmnts = document.getElementsByTagName("tbody");

    for (var i = 0;i < allElmnts.length;i++) {
        if (allElmnts[i].className == 'tbody') {
            var imgId = allElmnts[i].id.substring(5);
            swapImg(imgId);
            allElmnts[i].className = 'tbody_show'
        };

    }
}

function hideAll() {

    var allElmnts = document.getElementsByTagName("tbody");

    for (var i = 0;i < allElmnts.length;i++) {
        if (allElmnts[i].className == 'tbody_show') {
            var imgId = allElmnts[i].id.substring(5);
            swapImg(imgId);
            allElmnts[i].className = 'tbody'
        };

    }

}