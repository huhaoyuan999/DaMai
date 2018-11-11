$(document).ready(function () {

    $("#nav li:first").bind("click", function () {
        $("#dayTask").show();
        $("#growTask").hide();
        $("#loginTask").hide();
        $("#nav li:eq(0)").css("background", "none");
        $("#nav li:eq(0)").css("color", "#FF1469");
        $("#nav li:eq(1)").css("background", "lightgrey");
        $("#nav li:eq(1)").css("color", "grey");
        $("#nav li:eq(2)").css("background", "lightgrey");
        $("#nav li:eq(2)").css("color", "grey");
    });

    $("#nav li:eq(1)").bind("click", function () {
        $("#nav li:eq(1)").css("background", "red");
        $("#loginTask").show();
        $("#dayTask").hide();
        $("#growTask").hide();
        $("#nav li:eq(1)").css("background", "none");
        $("#nav li:eq(1)").css("color", "#FF1469");
        $("#nav li:eq(0)").css("background", "lightgrey");
        $("#nav li:eq(0)").css("color", "grey");
        $("#nav li:eq(2)").css("background", "lightgrey");
        $("#nav li:eq(2)").css("color", "grey");
    });

    $("#nav li:last").bind("click", function () {
        $("#nav li:eq(2)").css("background", "#ff9400");
        $("#growTask").show();
        $("#dayTask").hide();
        $("#loginTask").hide();
        $("#nav li:eq(2)").css("background", "none");
        $("#nav li:eq(2)").css("color", "#FF1469");
        $("#nav li:eq(1)").css("background", "lightgrey");
        $("#nav li:eq(1)").css("color", "grey");
        $("#nav li:eq(0)").css("background", "lightgrey");
        $("#nav li:eq(0)").css("color", "grey");
    });


});