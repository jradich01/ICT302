$(function () {

    $.ajax({
        type: "POST",
        url: "../Service1.svc/DoWork",
        contentType: "application/json;charset=utf-8",
        data: JSON.stringify({ val: "unit" }),
        dataType: "json",
        success: function (data) {  //process data in function
            populateTable(data.d);
        },
        error: function (data) {
            alert(data);
        }
    });

    function populateTable(data) {
        var yeah = JSON.parse(data);     //convert string to json object
        var colNames = Object.keys(yeah[0]);  // get column names
        var htmlCode = "<table><tr>";           //build html code from cols and data
        for (var i = 0; i < colNames.length; i++) {
            htmlCode = htmlCode + "<th>" + colNames[i] + "</th>";
        }
        htmlCode = htmlCode + "</tr>";
        for (var i = 0; i < yeah.length; i++) {
            htmlCode = htmlCode + "<tr>";
            var row = yeah[i];
            for (var j = 0; j < colNames.length; j++) {
                htmlCode = htmlCode + "<td>" + row[colNames[j]] + "</td>";
            }
            htmlCode = htmlCode + "</tr>";
        }
        htmlCode = htmlCode + "</table>"
        $("#myTable").append(htmlCode);  //apend html code to div element

    }



});