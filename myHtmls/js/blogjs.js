function GuanLiYanLieBiao() {
    var list = document.querySelector("#main2 .list");
    $.ajax({
        type: "post",
        url: "",
        dataType: "json",
        data: {
            request_namne: ""
        },
        success: function (res) {
            var str = "<table class='list'><tr><th>名称</th><th>等级</th><th>创建日期</th><th>操作</th></tr>";
            for (var i = 0; i < res.length; i++) {

                str += "<tr><td>" + res + "[id:" + res + "]</td><td>" + res + "</td><td>" + res + "</td><td><ahref='confirm.php?url=manage_delete.php%3Fid%3D1&return_url=%2Fsfkbbs%2Fadmin%2Fmanage.php&message=你真的要删除管理员 admin 吗？'>[删除]</ahref=></td></tr>";
            }
            str += "</table>";
            list.innerHTML = str;
        }
    });
}
function getGuanLiYuan() {
    var json1 = {
        "request_namne": "",
        "name": document.GuanLiyaunLieBiao.name.value,
        "pw": document.GuanLiyaunLieBiao.pw.value,
        "level": document.GuanLiyaunLieBiao.level.value,
    }
    $.ajax({
        type: "psot",
        url: "",
        dataType: "json",
        data: json1,
        success: function (res) {
        }
    });
}
function getZhanDianSheJi() {
    var json1 = {
        "request_namne": "",
        "title": document.WangZhanSheZhi.title.value,
        "keywords": document.WangZhanSheZhi.keywords.value,
        "description": document.WangZhanSheZhi.description.value,
    }
    $.ajax({
        type: "psot",
        url: "",
        dataType: "json",
        data: json1,
        success: function (res) {
        }
    });
}

function XiTongXinXi() {
    var list = document.querySelector("#SuJUSL");
    $.ajax({
        type: "post",
        url: "",
        dataType: "json",
        data: {
            request_namne: ""
        },
        success: function (res) {
            console.log(res);
            var str = "<li id='SuJUSL'>| - 父版块(" + res + ")子版块(" + res + ")帖子(" + res + ")回复(" + res + ")会员(" + res + ")管理员(" + res + ")</li>";
            list.innerHTML = str;
        }
    });
}
function FuMOKuaiLeiBiao() {
    var list = document.querySelector("#main5 .list");
    $.ajax({
        type: "post",
        url: "../myPhps/admin.php",
        dataType: "json",
        data: {
            request_namne: "father_module_get_all_records"
        },
        success: function (res) {
            console.log(res);
            var str = "<table class='list'>";
            str += "<tr><th>排序</th><th>版块名称</th><th>操作</th></tr>";
            for (var i = 0; i < res.length; i++) {

                str += "<tr><th><input type='text' value='" + res[i].sort + "'></th> <th>" + res[i].module_name
                    + "</th><th><a href='#'>[访问]</a><a href='#'>[编辑]</a><a href='#'>[删除]</a></th></tr>";
            }
            str += "</table>";
            list.innerHTML = str;
        }
    });
}
function ZiMOKuaiLeiBiao() {
    var list = document.querySelector("#main7 .list");
    console.log(list);
    $.ajax({
        type: "psot",
        url: "father_module.php",
        dataType: "json",
        data: {
            request_namne: "module_get_all_records"
        },
        success: function (res) {
            console.log(res);
            var str = "<table class='list'>";
            str += "<tr><th>排序</th><th>版块名称</th><th>所属父版块</th><th>版主</th><th>操作</th></tr>";
            for (var i = 0; i < res.length; i++) {

                str += "<tr><th><input type='text' value='" + res[i].sort + "'></th> <th>" + res[i].module_name
                    + "</th><th>" + res + "</th><th>" + res + "</th><th><a href='#'>[访问]</a><a href='#'>[编辑]</a><a href='#'>[删除]</a></th></tr>";
            }
            str += "</table>";
            list.innerHTML = str;
        }
    });
}
function getFuBanKuai() {
    var json1 = {
        "request_namne": "father_module_get_all_records",
        "module_name": document.fubankuai.module_name.value,
        "sort": document.fubankuai.sort.value,
    }
    $.ajax({
        type: "psot",
        url: "father_module.php",
        dataType: "json",
        data: json1,
        success: function (res) {
        }
    });
}
function getZiBanKuai() {
    var json1 = {
        "request_namne": "module_get_all_records",
        "father_module_id": document.ZiBanKuai.father_module_id.value,
        "module_name": document.ZiBanKuai.module_name.value,
        "info": document.ZiBanKuai.info.value,
        "member_id": document.ZiBanKuai.member_id.value,
        "sort": document.ZiBanKuai.sort.value,
    }
    $.ajax({
        type: "psot",
        url: "father_module.php",
        dataType: "json",
        data: json1,
        success: function (res) {
        }
    });
}
function btxs(num) {
    var xt = document.querySelector(".xt");
    var nrgl = document.querySelector(".nrgl");
    var yhgl = document.querySelector(".yhgl");
    if (num == 0) {
        xt.style.display = "block";
    } else if (num == 1) {
        nrgl.style.display = "block";
    } else {
        yhgl.style.display = "block";
    }
}
function btSX(num) {
    var xt = document.querySelector(".xt");
    var nrgl = document.querySelector(".nrgl");
    var yhgl = document.querySelector(".yhgl");
    if (num == 0) {
        xt.style.display = "none";
    } else if (num == 1) {
        nrgl.style.display = "none";
    } else {
        yhgl.style.display = "none";
    }
}
function xsmain(num) {
    var main1 = document.getElementById("main");
    var main2 = document.getElementById("main2");
    var main3 = document.getElementById("main3");
    var main4 = document.getElementById("main4");
    var main5 = document.getElementById("main5");
    var main6 = document.getElementById("main6");
    var main7 = document.getElementById("main7");
    var main8 = document.getElementById("main8");
    var main9 = document.getElementById("main9");
    var main10 = document.getElementById("main10");
    if (num == 1) {
        main1.style.display = "block";
        main2.style.display = "none";
        main3.style.display = "none";
        main4.style.display = "none";
        main5.style.display = "none";
        main6.style.display = "none";
        main7.style.display = "none";
        main8.style.display = "none";
        main9.style.display = "none";
        main10.style.display = "none";
    } else if (num == 2) {
        main1.style.display = "none";
        main2.style.display = "block";
        main3.style.display = "none";
        main4.style.display = "none";
        main5.style.display = "none";
        main6.style.display = "none";
        main7.style.display = "none";
        main8.style.display = "none";
        main9.style.display = "none";
        main10.style.display = "none";
    } else if (num == 3) {
        main1.style.display = "none";
        main2.style.display = "none";
        main3.style.display = "block";
        main4.style.display = "none";
        main5.style.display = "none";
        main6.style.display = "none";
        main7.style.display = "none";
        main8.style.display = "none";
        main9.style.display = "none";
        main10.style.display = "none";
    } else if (num == 4) {
        main1.style.display = "none";
        main2.style.display = "none";
        main3.style.display = "none";
        main4.style.display = "block";
        main5.style.display = "none";
        main6.style.display = "none";
        main7.style.display = "none";
        main8.style.display = "none";
        main9.style.display = "none";
        main10.style.display = "none";
    } else if (num == 5) {
        main1.style.display = "none";
        main2.style.display = "none";
        main3.style.display = "none";
        main4.style.display = "none";
        main5.style.display = "block";
        main6.style.display = "none";
        main7.style.display = "none";
        main8.style.display = "none";
        main9.style.display = "none";
        main10.style.display = "none";
    } else if (num == 6) {
        main1.style.display = "none";
        main2.style.display = "none";
        main3.style.display = "none";
        main4.style.display = "none";
        main5.style.display = "none";
        main6.style.display = "block";
        main7.style.display = "none";
        main8.style.display = "none";
        main9.style.display = "none";
        main10.style.display = "none";
    } else if (num == 7) {
        main1.style.display = "none";
        main2.style.display = "none";
        main3.style.display = "none";
        main4.style.display = "none";
        main5.style.display = "none";
        main6.style.display = "none";
        main7.style.display = "block";
        main8.style.display = "none";
        main9.style.display = "none";
        main10.style.display = "none";
    } else if (num == 8) {
        main1.style.display = "none";
        main2.style.display = "none";
        main3.style.display = "none";
        main4.style.display = "none";
        main5.style.display = "none";
        main6.style.display = "none";
        main7.style.display = "none";
        main8.style.display = "block";
        main9.style.display = "none";
        main10.style.display = "none";
    } else if (num == 9) {
        main1.style.display = "none";
        main2.style.display = "none";
        main3.style.display = "none";
        main4.style.display = "none";
        main5.style.display = "none";
        main6.style.display = "none";
        main7.style.display = "none";
        main8.style.display = "none";
        main9.style.display = "block";
        main10.style.display = "none";
    } else {
        main1.style.display = "none";
        main2.style.display = "none";
        main3.style.display = "none";
        main4.style.display = "none";
        main5.style.display = "none";
        main6.style.display = "none";
        main7.style.display = "none";
        main8.style.display = "none";
        main9.style.display = "none";
        main10.style.display = "block";
    }
}