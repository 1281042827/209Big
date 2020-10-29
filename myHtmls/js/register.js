function ZhuCe() {
    var json1 = {
        "request_namne": "module_get_all_records",
        "name": document.ZhuCe.name.value,
        "pw": document.ZhuCe.pw.value,
        "confirm_pw": document.ZhuCe.confirm_pw.value,
        "vocode": document.ZhuCe.vocode.value,
    }
    $.ajax({
        type: "psot",
        url: "./myPhps/admin.php",
        dataType: "json",
        data: json1,
        success: function (res) {
        }
    });
}
function SouSuo() {
    var json1 = {
        "request_namne": "module_get_all_records",
        "keyword": document.SouSuo.keyword.value,
    }
    $.ajax({
        type: "psot",
        url: "./myPhps/admin.php",
        dataType: "json",
        data: json1,
        success: function (res) {
        }
    });
}