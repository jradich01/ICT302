$(function () {
    //todo
    //make pretty
    //comment code
    //test cases
    //instructions 
    //table ERD update
    //fix service warning

    //startup

    $("#kTable").hide();
    $("#aTable").hide();
    var requestString = "";  // request string for page start 
    requestString = "DeleteAddedUnits_SP,";  //delete added units from table on startup
    requestString += "JobAndSKACount_SP:Application Software Developer:Computer Science,"; //data for chart
    requestString += "JobList_SP,CourseList_SP,"; //job and course list
    requestString += "UnitsNotInDegree_SP:Computer Science,"; //units not in degree list
    requestString += "UnitsInDegree_SP:Computer Science,";
    requestString += "Strengths:Application Software Developer:Computer Science," //strengths list
    requestString += "Weakness:Application Software Developer:Computer Science" //weakness list

    var titleArray = ["Included","Not Included"];
    
    requestData(requestString,  // get data using request string 
    function (data) {
        buildChartData(data["JobAndSKACount_SP"]);  // build charts, populate dropdowns and SKA tables
        populateDropdown("courseDropdown", data["CourseList_SP"], "CourseName");
        populateDropdown("jobDropdown", data["JobList_SP"], "JobName");
        drawSkaTable("Skill", data["Strengths"], data["Weakness"], "#sTable");
        drawSkaTable("Ability", data["Strengths"], data["Weakness"], "#aTable");
        drawSkaTable("Knowledge", data["Strengths"], data["Weakness"], "#kTable");
        drawSkaTable("Units",data["UnitsInDegree_SP"],data["UnitsNotInDegree_SP"],"#unitTableList",titleArray);
        });

    // events

    $("#jobDropdown").on("change", function () { // job change event 
        $("#skillTable").html("");
        requestData("DeleteAddedUnits_SP", getChartData)  //refresh the chart when different job picked
    });

    $("#courseDropdown").on("change", function () { // course change event
        $("#skillTable").html("");
        requestData("DeleteAddedUnits_SP", getChartData); //refresh chart when different course picked
    });

    $("input[type=radio][name=optradio]").change(function () {  // change radio button event 
        $("#aTable").hide();  // hide all tables and then show appropriate one
        $("#kTable").hide();
        $("#sTable").hide();
        var opt = this.value;
        if (opt == "Ability")
            $("#aTable").show();
        if (opt == "Knowledge")
            $("#kTable").show();
        if (opt == "Skill")
            $("#sTable").show();
    });

    $("#unitTableList").on("click", "td", function () { // unit click event
        var clickedUnit = $(this).text();   //add the unit to either the included or not included 
        var addOrRemove = $(this).index();  //table and then refresh everything 
        var course = $("#courseDropdown").val();
        var job = $("#jobDropdown").val();
        requestData("AddSelectedUnits_SP:" + clickedUnit + ":" + addOrRemove + ",UnitsInDegree_SP:" + course + ",UnitsNotInDegree_SP:" + course + ",JobAndSKACount_SP:" + job + ":" + course + ",Strengths:" + job + ":" + course + ",Weakness:" + job + ":" + course, function (data) {
            drawSkaTable("Units", data["UnitsInDegree_SP"], data["UnitsNotInDegree_SP"], "#unitTableList", titleArray);
            buildChartData(data["JobAndSKACount_SP"]);
            drawSkaTable("Skill", data["Strengths"], data["Weakness"], "#sTable");
            drawSkaTable("Ability", data["Strengths"], data["Weakness"], "#aTable");
            drawSkaTable("Knowledge", data["Strengths"], data["Weakness"], "#kTable");
        });
    });

    $("#sTable").on("click", "td", tableClick); //click events for the SKA tables
    $("#kTable").on("click", "td", tableClick);
    $("#aTable").on("click", "td", tableClick);


    //functions

    function tableClick() {  //table click event listener.  draws either the strength or weakness table
        var course = $("#courseDropdown").val();
        var content = $(this).text();
        var count = 0;
        var isWeakness = $(this).index();
        $("#sTable").find('td').css({ 'background-color': '#FFFFFF' });
        $("#kTable").find('td').css({ 'background-color': '#FFFFFF' });
        $("#aTable").find('td').css({ 'background-color': '#FFFFFF' });
        $(this).css('backgroundColor', '#999999');

        if (isWeakness == 0)
            drawSkillTable(content, "Units", course);
        else
            drawWeaknessTable(content, "Units", course);

    }

    function drawSkillTable(ska, ska_desc, course) {  //draws the skill table 

        requestData("NonCourseContributors:" + ska + ":" + course + ",UnitContributors:" + ska + ":" + course, function (data) {
            var htmlCode = "<table border=1 class=fixed>";

            htmlCode = htmlCode + "<thead><tr><th colspan=" + 2 + ">" + ska + "</th>";
            htmlCode = htmlCode + "</tr></thead>";  //create table header html
            htmlCode = htmlCode + "<tr>";
            htmlCode = htmlCode + "<td>Description: </td>";
            htmlCode = htmlCode + "<td>" + ska_desc + "</td>";
            htmlCode = htmlCode + "</tr>";
            htmlCode = htmlCode + "<tr>";
            htmlCode = htmlCode + "<td>Units that contributed to this SKA: </td>";
            const m = new Map();
            if (data["UnitContributors"].length > 0) {
                var colNames = Object.keys(data["UnitContributors"][0]); // show selected units that 
                for (var i = 0; i < data["UnitContributors"].length; i++) { //contain SKA
                    var row = data["UnitContributors"][i];  
                    var unitID = row[colNames[0]];
                    var unitName = row[colNames[1]];
                    if (!m.has(unitID)) {
                        m.set(unitID, unitName);
                    }
                }
                htmlCode = htmlCode + "<td><div class=scrollable>";

                for (const k of m.keys()) { //apply link to unit 
                    var code = "http://handbook.murdoch.edu.au/units/details?unit=" + k + "&year=2019";
                    var title = m.get(k);
                    htmlCode = htmlCode + "<a href=" + code + ">" + k + ": " + title + "</a>" + "</br></br>";
                }
                htmlCode = htmlCode + "</div></td></tr>";

            }
            htmlCode = htmlCode + "<tr>";  //show units that also contain SKA
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
            htmlCode = htmlCode + "</tr></thead>";  //build table header information
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
                    var row = data["NonCourseContributors"][i];  //show units that contain SKA
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


    function getChartData() {  //chart refresh function
        var course = $("#courseDropdown").val();
        var job = $("#jobDropdown").val();
        var line = "Strengths:" + job + ":" + course + ",Weakness:" + job + ":" + course; //new
        requestData("JobAndSKACount_SP:" + job + ":" + course + ",UnitsNotInDegree_SP:"+course+",UnitsInDegree_SP:"+course, function (data) {
            buildChartData(data["JobAndSKACount_SP"]);  //refresh the chart
            drawSkaTable("Units", data["UnitsInDegree_SP"], data["UnitsNotInDegree_SP"], "#unitTableList", titleArray);
        });

        requestData(line, function (data) {  //also refresh the SKA tables
            drawSkaTable("Skill", data["Strengths"], data["Weakness"], "#sTable");
            drawSkaTable("Ability", data["Strengths"], data["Weakness"], "#aTable");
            drawSkaTable("Knowledge", data["Strengths"], data["Weakness"], "#kTable");
        });

    }

    function requestData(tableName, callback) { //function that handles the database requests
        $.ajax({
            type: "POST",
            url: "../Service1.svc/DoWork",  //service function requested
            contentType: "application/json;charset=utf-8",
            data: JSON.stringify({val:tableName}),  // data sent 
            dataType: "json",
            success: function (data) {  //process data in function
                var dataSet = JSON.parse(data.d);
                if (callback)
                    callback(dataSet);  // received data sent to callback function
            },
            error: function (data) {
                alert(data);
            }
        });
    }

    function populateDropdown(dropDownName, data, valueColumnName,textColumnName) {
        if (!textColumnName) //populate a dropdown with data
            textColumnName = valueColumnName;

        var $dropdown = $("#" + dropDownName);
        $dropdown.empty();
        $.each(data, function () {
            $dropdown.append($("<option />").val(this[valueColumnName]).text(this[textColumnName]));
        });
    }

    function getChartVal(data, val) { //get a requested chart value

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

    function buildChartData(data) { //build array of data that chart uses
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

    function buildChart(ds1, ds2) {  // build actual chart

        var ctx = document.getElementById("myChart").getContext('2d');
        var myChart = new Chart(ctx, {
            type: 'radar',
            data: {
                labels: ["Knowledge +", "Abilities +", "", "Abilities -", "Knowledge -", "Skills -", "", "Skills +"],
                datasets: [{  //meta data for top part
                    label: 'SKAs Acquired',
                    data: ds1,
                    backgroundColor: 'rgba(54, 162, 235, 0.2)',
                    borderColor: 'rgba(54, 162, 235, 1)',
                    borderWidth: 1
                },
                    {   //meta data for bottom part
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
                    },
                    pointLabels: {
                        fontSize:20
                    }
                }
            }
        });

    }

    function drawSkaTable(head, strengthData, weaknessData, tableName, custTitles) {
        var colNames;  //make a table from sent data
        var colNames2;
        if (strengthData.length > 0)
            colNames = Object.keys(strengthData[0]);  // get column names
        if(weaknessData.length > 0)
            colNames2 = Object.keys(weaknessData[0]);  // get column names
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
        var htmlCode = "<table class='" + head + " skaTbl' border=1>";
        htmlCode = htmlCode + "<thead><tr><th colspan=" + 2 + ">" + head + "</th>";
        htmlCode = htmlCode + "</tr></thead>";
        htmlCode = htmlCode + "<tbody><div class=tbodyScroll>";
        htmlCode = htmlCode + "<tr>";   //build table header
        if (custTitles) {
            htmlCode += "<th>" + custTitles[0] + "</th>";
            htmlCode += "<th>" + custTitles[1] + "</th>";
        }
        else {
            htmlCode = htmlCode + "<th>Acquired</th>";
            htmlCode = htmlCode + "<th>Missing</th>";
        }
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

});