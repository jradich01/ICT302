$(function () {
    //todo
    //titles
    //fix weakness table
    //incorperate additions into other tables


    //startup

    var requestString = "";
    requestString = "DeleteAddedUnits_SP,";  //delete added units from table on startup
    requestString += "JobAndSKACount_SP:Application Software Developer:Computer Science,"; //data for chart
    requestString += "JobList_SP,CourseList_SP,"; //job and course list
    requestString += "UnitsNotInDegree_SP:Computer Science,"; //units not in degree list
    requestString += "Strengths:Application Software Developer:Computer Science," //strengths list
    requestString += "Weakness:Application Software Developer:Computer Science" //weakness list

    //requestData("DeleteAddedUnits_SP,JobAndSKACount_SP:Application Software Developer:Computer Science,JobList_SP,CourseList_SP,UnitsNotInDegree_SP:Computer Science",
    requestData(requestString,
    function (data) {
        populateTable(data["JobAndSKACount_SP"]);
        buildChartData(data["JobAndSKACount_SP"]);
        populateDropdown("courseDropdown", data["CourseList_SP"], "CourseName");
        populateDropdown("jobDropdown", data["JobList_SP"], "JobName");
        populateDropdown("otherUnitsDropdown", data["UnitsNotInDegree_SP"], "UnitCode", "UnitDesc");
        //new
        drawSkaTable("Skill", data["Strengths"], data["Weakness"], "#sTable");
        drawSkaTable("Ability", data["Strengths"], data["Weakness"], "#aTable");
        drawSkaTable("Knowledge", data["Strengths"], data["Weakness"], "#kTable");
        getUnitRecommendations(data["Weakness"]);
        });

    // events
    $("#courseDropdown").on("change", function () {
        requestData("DeleteAddedUnits_SP", getChartData);
    });

    $("#addUnits").on("click", function () {
        var stuff = $("#otherUnitsDropdown").val();
        var course = $("#courseDropdown").val();
        var blah = "";
        $.each(stuff, function (i, val) {
            blah = blah + val + ";"
        });
        if (blah.length > 0) {
            blah = blah.substring(0, blah.length - 1);
        }
        requestData("AddSelectedUnits_SP:" + blah, getChartData);
    });

    $("#clearUnits").on("click", function () {
        requestData("DeleteAddedUnits_SP", getChartData);
    });

    $("#jobDropdown").on("change", function () {
        requestData("DeleteAddedUnits_SP",getChartData)
    });

    $("#sTable").on("click", "td", function () {
        var course = $("#courseDropdown").val();
        var content = $(this).text();
        var count = 0;
        var isWeakness = $(this).index();

        $("#sTable").find('td').css({ 'background-color': '#FFFFFF' });
        $("#kTable").find('td').css({ 'background-color': '#FFFFFF' });
        $("#aTable").find('td').css({ 'background-color': '#FFFFFF' });
        $(this).css('backgroundColor', '#999999');

        if (isWeakness == 0)
            drawSkillTable(content, "Pretend this is a description fuckfuck", course);
        else
            drawWeaknessTable(content, "Pretend this is a description fuckfuck", course);

    });

    $("#kTable").on("click", "td", function () {
        var course = $("#courseDropdown").val();
        var content = $(this).text();
        var count = 0;
        var isWeakness = $(this).index();
        $("#sTable").find('td').css({ 'background-color': '#FFFFFF' });
        $("#kTable").find('td').css({ 'background-color': '#FFFFFF' });
        $("#aTable").find('td').css({ 'background-color': '#FFFFFF' });
        $(this).css('backgroundColor', '#999999');

        if (isWeakness == 0)
            drawSkillTable(content, "Pretend this is a description fuckfuck", course);
        else
            drawWeaknessTable(content, "Pretend this is a description fuckfuck", course);

    });

    $("#aTable").on("click", "td", function () {
        var course = $("#courseDropdown").val();
        var content = $(this).text();
        var count = 0;
        var isWeakness = $(this).index();
        $("#sTable").find('td').css({ 'background-color': '#FFFFFF' });
        $("#kTable").find('td').css({ 'background-color': '#FFFFFF' });
        $("#aTable").find('td').css({ 'background-color': '#FFFFFF' });
        $(this).css('backgroundColor', '#999999');

        if (isWeakness == 0)
            drawSkillTable(content, "Pretend this is a description fuckfuck", course);
        else
            drawWeaknessTable(content, "Pretend this is a description fuckfuck", course);
    });

    function drawSkillTable(ska, ska_desc, course) {

        requestData("NonCourseContributors:" + ska + ":" + course + ",UnitContributors:" + ska + ":" + course, function (data) {
            var htmlCode = "<table border=1 class=fixed>";

            htmlCode = htmlCode + "<thead><tr><th colspan=" + 2 + ">" + ska + "</th>";
            htmlCode = htmlCode + "</tr></thead>";
            htmlCode = htmlCode + "<tr>";
            htmlCode = htmlCode + "<td>Description: </td>";
            htmlCode = htmlCode + "<td>" + ska_desc + "</td>";
            htmlCode = htmlCode + "</tr>";
            htmlCode = htmlCode + "<tr>";
            htmlCode = htmlCode + "<td>Units that contributed to this SKA: </td>";
            const m = new Map();
            if (data["UnitContributors"].length > 0) {
                var colNames = Object.keys(data["UnitContributors"][0]);
                for (var i = 0; i < data["UnitContributors"].length; i++) {
                    var row = data["UnitContributors"][i];
                    var unitID = row[colNames[0]];
                    var unitName = row[colNames[1]];
                    if (!m.has(unitID)) {
                        m.set(unitID, unitName);
                    }
                }
                htmlCode = htmlCode + "<td><div class=scrollable>";

                for (const k of m.keys()) {
                    var code = "http://handbook.murdoch.edu.au/units/details?unit=" + k + "&year=2019";
                    var title = m.get(k);
                    htmlCode = htmlCode + "<a href=" + code + ">" + k + ": " + title + "</a>" + "</br></br>";
                }
                htmlCode = htmlCode + "</div></td></tr>";

            }
            htmlCode = htmlCode + "<tr>";
            htmlCode = htmlCode + "<td>Units that can FURTHER contribute to this SKA: </td>";
            const n = new Map();
            if (data["NonCourseContributors"].length > 0) {
                var colNames = Object.keys(data["NonCourseContributors"][0]);
                for (var i = 0; i < data["NonCourseContributors"].length; i++) {
                    var row = data["NonCourseContributors"][i];
                    var unitID = row[colNames[0]];
                    var unitName = row[colNames[1]];
                    if (!m.has(unitID) && !n.has(unitID)) {
                        n.set(unitID, unitName);
                    }
                }
                htmlCode = htmlCode + "<td><div class=scrollable>";
                for (const k of n.keys()) {
                    var code = "http://handbook.murdoch.edu.au/units/details?unit=" + k + "&year=2019";
                    var title = n.get(k);
                    htmlCode = htmlCode + "<a href=" + code + ">" + k + ": " + title + "</a>" + "</br></br>";
                }
                htmlCode = htmlCode + "</div></td></tr>";

            }
            htmlCode = htmlCode + "</table>"
            $("#skillTable").html("");
            $("#skillTable").append(htmlCode);  //apend html code to div element
        });
    }

    function drawWeaknessTable(ska, ska_desc, course) {
        requestData("NonCourseContributors:" + ska + ":" + course, function (data) {
            var htmlCode = "<table border=1 class=fixed>";

            htmlCode = htmlCode + "<thead><tr><th colspan=" + 2 + ">" + ska + "</th>";
            htmlCode = htmlCode + "</tr></thead>";
            htmlCode = htmlCode + "<tr>";
            htmlCode = htmlCode + "<td>Description: </td>";
            htmlCode = htmlCode + "<td>" + ska_desc + "</td>";
            htmlCode = htmlCode + "</tr>";
            htmlCode = htmlCode + "<tr>";
            htmlCode = htmlCode + "<td>RECOMMENDED UNITS: </td>";
            const m = new Map();
            if (data["NonCourseContributors"].length > 0) {
                var colNames = Object.keys(data["NonCourseContributors"][0]);
                for (var i = 0; i < data["NonCourseContributors"].length; i++) {
                    var row = data["NonCourseContributors"][i];
                    var unitID = row[colNames[0]];
                    var unitName = row[colNames[1]];
                    if (!m.has(unitID)) {
                        m.set(unitID, unitName);
                    }
                }
                htmlCode = htmlCode + "<td><div class=scrollable>";

                for (const k of m.keys()) {
                    var code = "http://handbook.murdoch.edu.au/units/details?unit=" + k + "&year=2019";
                    var title = m.get(k);
                    htmlCode = htmlCode + "<a href=" + code + ">" + k + ": " + title + "</a>" + "</br></br>";
                }
                htmlCode = htmlCode + "</div></td></tr>";

            }
            htmlCode = htmlCode + "</table>"
            $("#skillTable").html("");
            $("#skillTable").append(htmlCode);  //apend html code to div element
        });
    }

    //functions 


    function getChartData() {
        var course = $("#courseDropdown").val();
        var job = $("#jobDropdown").val();
        var line = "Strengths:" + job + ":" + course + ",Weakness:" + job + ":" + course; //new
        requestData("JobAndSKACount_SP:" + job + ":" + course + ",UnitsNotInDegree_SP:"+course, function (data) {
            populateTable(data["JobAndSKACount_SP"]);
            buildChartData(data["JobAndSKACount_SP"]);
            populateDropdown("otherUnitsDropdown", data["UnitsNotInDegree_SP"], "UnitCode", "UnitDesc");
        });

        //new
        requestData(line, function (data) {
            drawSkaTable("Skill", data["Strengths"], data["Weakness"], "#sTable");
            drawSkaTable("Ability", data["Strengths"], data["Weakness"], "#aTable");
            drawSkaTable("Knowledge", data["Strengths"], data["Weakness"], "#kTable");
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

    function populateDropdown(dropDownName, data, valueColumnName,textColumnName) {
        if (!textColumnName)
            textColumnName = valueColumnName;

        var $dropdown = $("#" + dropDownName);
        $dropdown.empty();
        $.each(data, function () {
            $dropdown.append($("<option />").val(this[valueColumnName]).text(this[textColumnName]));
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

    ///////new 

    function drawSkaTable(head, strengthData, weaknessData, tableName) {
        var colNames = Object.keys(strengthData[0]);  // get column names
        var colNames2 = Object.keys(weaknessData[0]);  // get column names
        var max;
        var c;

        var sLength = strengthData.length;
        var wLength = weaknessData.length;
        if (sLength > wLength) {
            max = sLength
        }

        else {
            max = wLength;
        }

        var sIter = -1;
        var wIter = -1;
        var htmlCode = "<table class=" + head + " border=1>";
        htmlCode = htmlCode + "<thead><tr><th colspan=" + 2 + ">" + head + "</th>";
        htmlCode = htmlCode + "</tr></thead>";
        htmlCode = htmlCode + "<tbody><div class=tbodyScroll>";
        htmlCode = htmlCode + "<tr>";
        htmlCode = htmlCode + "<th>Strengths</th>";
        htmlCode = htmlCode + "<th>Weaknesses</th>";
        htmlCode = htmlCode + "</tr>";

        while ((sIter < max) && (wIter < max)) {

            htmlCode = htmlCode + "<tr>";

            if (sIter >= sLength) {
                htmlCode = htmlCode + "<td>" + "" + "</td>";
            }
            else {
                do {
                    sIter++;
                    if (sIter >= sLength) {
                        break;
                    }
                    var s = strengthData[sIter];
                } while (s[colNames[1]] != head); // While haven't found a SKILL or iterator is outside range || sIter < sLength

                if (sIter >= sLength) {

                    htmlCode = htmlCode + "<td>" + "" + "</td>";
                }
                else {
                    htmlCode = htmlCode + "<td>" + s[colNames[0]] + "</td>";
                }
            }

            if (wIter >= wLength) {
                htmlCode = htmlCode + "<td>" + "" + "</td>";
            }
            else {
                do {
                    wIter++;
                    if (wIter >= wLength) {
                        break;
                    }
                    var w = weaknessData[wIter];
                } while (w[colNames2[1]] != head); // While haven't found a SKILL or iterator is outside range

                if (wIter >= wLength) {
                    htmlCode = htmlCode + "<td>" + "" + "</td>";
                }
                else
                    htmlCode = htmlCode + "<td>" + w[colNames2[0]] + "</td>";
            }
            htmlCode = htmlCode + "</tr>";

        }
        htmlCode = htmlCode + "</div></tbody>";
        htmlCode = htmlCode + "</table>";
        $(tableName).html("");
        $(tableName).append(htmlCode);  //apend html code to div elemen 

    }

    function getUnitRecommendations(yeah) {
        var labels = [];
        var count = 0;
        const m = new Map();
        var colNames = Object.keys(yeah[0]);
        for (var i = 0; i < yeah.length; i++) {
            var row = yeah[i];
            var ska = row[colNames[0]];
            (function (var1) {
                requestData("UnitRecommendations:" + row[colNames[0]], function (data) {
                    if (data["UnitRecommendations"].length > 0) {
                        for (var j = 0; j < data["UnitRecommendations"].length; j++) {
                            var row2 = doStuff(data["UnitRecommendations"], j);
                            if (m.has(row2)) {
                                var arr2 = [];
                                arr2 = m.get(row2);

                                arr2.push(var1);
                                m.set(row2, arr2);
                            }
                            else {
                                var arr = [];
                                arr.push(var1);
                                m.set(row2, arr);
                            }
                        }

                    }
                    count++;
                    if (count == yeah.length) {
                        drawUnitTable(m, "#unitTable");
                    }
                });

            })(ska);
        }
    }

    function drawUnitTable(m, tableName) {
        var htmlCode = "<label> Unit Suggestions for missing SKAs </label>";
        htmlCode = htmlCode + "<table class='unit' border=1 ; width: 100%>";           //build html code from cols and data
        htmlCode = htmlCode + "<thead>";
        
        htmlCode = htmlCode + "<th>" + "Units      " + "</th>";
        htmlCode = htmlCode + "<th>" + "Weakness(s)" + "</th>";
        htmlCode = htmlCode + "</thead>";
        
        htmlCode = htmlCode + "<tbody><div class=tbodyScroll>";
        for (const k of m.keys()) {
            var text = "http://handbook.murdoch.edu.au/units/details?unit=" + k + "&year=2019";
            htmlCode = htmlCode + "<tr>";
            htmlCode = htmlCode + "<td>" + "<a href=" + text + ">" + k + "</a>" + "</td>";
            var arr = [];
            arr = m.get(k);
            htmlCode = htmlCode + "<td><div class=scrollable>";

            for (var i = 0; i < arr.length; i++) {
                htmlCode = htmlCode + arr[i] + "</br>";
            }
            htmlCode = htmlCode + "</div></td>";
            htmlCode = htmlCode + "</tr>";
        }
        htmlCode = htmlCode + "</div></tbody>";
        htmlCode = htmlCode + "</table>";
        $(tableName).html("");
        $(tableName).append(htmlCode);  //apend html code to div element 
    }

    function doStuff(yeah, i) {
        var colNames = Object.keys(yeah[0]);
        var row = yeah[i];
        return row[colNames[0]];

    }



});