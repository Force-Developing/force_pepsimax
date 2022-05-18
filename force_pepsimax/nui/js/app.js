$(document).ready(function() {
    window.addEventListener("message", function(event) {
        let data = event.data
        let action = data.action

        if (action == "OpenMenu") {
            OpenMenu()
        }

    })

    $(document).keydown(function(key) {
        if (key.keyCode == 27) {
            CloseMenus()
        }
    })

    $(document).on("click", "#submitBtn", function() {
        $(".coupon-container").hide(250)
        $.post(`https://force_pepsimax/SetNUIFocus`, JSON.stringify(false))
        $.post(`https://force_pepsimax/GivePepsi`)
    })
})

function OpenMenu() {
    $(".coupon-container").show(250)
    $.post(`https://force_pepsimax/SetNUIFocus`, JSON.stringify(true))
}

function CloseMenus() {
    $(".coupon-container").hide(250)
    $.post(`https://force_pepsimax/SetNUIFocus`, JSON.stringify(false))
}