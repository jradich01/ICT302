$(function () {

    //startup
    requestData("JobAndSKACount_SP:Application Software Developer:Computer Science,JobList_SP,CourseList_SP",
        function (data) {
            populateTable(data["JobAndSKACount_SP"]);
            buildChartData(data["JobAndSKACount_SP"]);
            populateDropdown("courseDropdown", data["CourseList_SP"], "CourseName");
            populateDropdown("jobDropdown", data["JobList_SP"], "JobName");
        });

    // events
    $("#courseDropdown").on("change", function () {
        getChartData();
    });

    $("#jobDropdown").on("change", function () {
        getChartData();
    });


    //functions 
    function getChartData() {
        var course = $("#courseDropdown").val();
        var job = $("#jobDropdown").val();
        requestData("JobAndSKACount_SP:" + job + ":" + course, function (data) {
            populateTable(data["JobAndSKACount_SP"]);
            buildChartData(data["JobAndSKACount_SP"]);
        });

    }

    function requestData(tableName, callback) {
        $.ajax({
            type: "POST",
            url: "../Service1.svc/DoWork",
            contentType: "application/json;charset=utf-8",
            data: JSON.stringify({val:tableName}),
            dataType: "json",
            success: function (data) {  //process data in function
                var dataSet = JSON.parse(data.d);
                if (callback)
                    callback(dataSet);
            },
            error: function (data) {
                alert(data);
            }
        });
    }

    function populateDropdown(dropDownName, data, dataColumnName) {
        var $dropdown = $("#" + dropDownName);
        $.each(data, function () {
            $dropdown.append($("<option />").val(this[dataColumnName]).text(this[dataColumnName]));
        });
    }

    function getChartVal(data, val) {

        var num = 0;
        for (var i = 0; i < data.length; i++) {
            if (val == data[i]["SKAType"]) {
                num = (data[i]["CourseSKACount"] / data[i]["JobSKACount"]) * 100;
                break;
            }
        }
        return num;

    }

    function getMiddleValue(val1, val2) {
        //trig calc to get horizontal axis value so graph looks a bit smoother
        var res = (val1 * val2) / Math.sqrt((val1 * val1) + (val2 * val2));
        return res;
    }

    function buildChartData(data) {
        var ds1 = [];  //top part of chart
        var ds2 = [];  //bottom part of chart

        ds1.push(getChartVal(data, "Knowledge"));
        ds1.push(getChartVal(data, "Ability"));
        ds1.push(0); //right horizontal axis 
        ds1.push(0);
        ds1.push(0);
        ds1.push(0);
        ds1.push(0); //left horizontal axis
        ds1.push(getChartVal(data, "Skill"));

        ds2.push(0);
        ds2.push(0);
        ds2.push(0); //right horizontal axis
        ds2.push(100 - ds1[1]);
        ds2.push(100 - ds1[0]);
        ds2.push(100 - ds1[7]);
        ds2.push(0); //left horizontal axis
        ds2.push(0);

        var abilityMiddle = getMiddleValue(ds1[1], ds2[3]); // need to get an inbetween val 
        var skillsMiddle = getMiddleValue(ds1[7], ds2[5]);  // for horizontal axis

        ds1[2] = abilityMiddle;
        ds2[2] = abilityMiddle;

        ds1[6] = skillsMiddle;
        ds2[6] = skillsMiddle;

        buildChart(ds1, ds2);
    }

    function buildChart(ds1, ds2) {

        var ctx = document.getElementById("myChart").getContext('2d');
        var myChart = new Chart(ctx, {
            type: 'radar',
            data: {
                labels: ["Knowledge +", "Abilities +", "", "Abilities -", "Knowledge -", "Skills -", "", "Skills +"],
                datasets: [{
                    label: 'SKAs Acquired',
                    data: ds1,
                    backgroundColor: 'rgba(54, 162, 235, 0.2)',
                    borderColor: 'rgba(54, 162, 235, 1)',
                    borderWidth: 1
                },
                    {
                        label: 'SKAs Missing',
                        data: ds2,
                        backgroundColor: 'rgba(255, 99, 132, 0.2)',
                        borderColor: 'rgba(255,99, 132, 1)',
                        borderWidth: 1
                    }
                ]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                scale: {
                    ticks: {
                        beginAtZero: true,
                        max:100
                    }
                }
            }
        });

    }

    function fetchInfo(myData, colName) {
        var labels = [];
        for (var i = 0; i < myData.length; i++) {
            labels.push(myData[i][colName]);
        }
        return labels;
    }

    function populateTable(yeah) {
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
        $("#myTable").html("");
        $("#myTable").append(htmlCode);  //apend html code to div element

    }

});