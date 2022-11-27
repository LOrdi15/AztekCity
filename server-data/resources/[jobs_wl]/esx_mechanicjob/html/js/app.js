dollar = {}; 

$(document).on('keydown', function() {
    switch(event.keyCode) {
        case 27: // ESC
        dollar.CloseAyarMenu();
            break;
    }
});

dollar.CloseAyarMenu = function() {
    $(".ayar-menu-ana").css({"display":"none"});
    $.post('https://esx_mechanicjob/CloseMenu:NuiCallback',JSON.stringify({data: true}));
};

window.addEventListener('message', function(event) {
    eFunc = event.data
    if (eFunc.action == "showui") {
        $('body').show()
    } else if (eFunc.action == "hideui") {
        $("body").fadeOut(500)
    } else if(eFunc.action == "showMenu") {
        $(".ayar-menu-ana").css({"display":"flex"});
    }
})

$('#sapka-on').on('change',function(){
    if(this.checked){
        $.post('https://esx_mechanicjob/work_clothes', JSON.stringify({}));
        document.getElementById("market-on").checked =  0;
        document.getElementById("benzinlik-on").checked =  0;
        document.getElementById("garaj-on").checked =  0;
    }
    else{
        $.post('https://esx_mechanicjob/civil_clothes', JSON.stringify({}));
    }
});