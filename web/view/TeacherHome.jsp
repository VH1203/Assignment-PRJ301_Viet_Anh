<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--
=========================================================
* Material Dashboard 2 - v3.1.0
=========================================================

* Product Page: https://www.creative-tim.com/product/material-dashboard
* Copyright 2023 Creative Tim (https://www.creative-tim.com)
* Licensed under MIT (https://www.creative-tim.com/license)
* Coded by Creative Tim

=========================================================

* The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
-->
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="apple-touch-icon" sizes="76x76" href="./assets/img/apple-icon.png">
        <link rel="icon" type="image/png" href="./assets/img/favicon.png">
        <title>
            Teacher
        </title>

        <!--     Fonts and icons     -->
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
        <!-- Nucleo Icons -->
        <link href="./assets/css/nucleo-icons.css" rel="stylesheet" />
        <link href="./assets/css/nucleo-svg.css" rel="stylesheet" />
        <!-- Font Awesome Icons -->
        <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
        <!-- Material Icons -->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
        <!-- CSS Files -->
        <link id="pagestyle" href="./assets/css/material-dashboard.css?v=3.1.0" rel="stylesheet" />
        <!-- Nepcha Analytics (nepcha.com) -->
        <!-- Nepcha is a easy-to-use web analytics. No cookies and fully compliant with GDPR, CCPA and PECR. -->
        <script defer data-site="YOUR_DOMAIN_HERE" src="https://api.nepcha.com/js/nepcha-analytics.js"></script>
        <style>
            .small-input {
                width: 80px;
                padding: 5px;
                font-size: 0.8em;
            }
            table {
                width: 100%;
                border-collapse: collapse;
            }
            th, td {
                border: 1px solid #dee2e6;
                padding: 8px;
                text-align: center;
                vertical-align: middle;
            }
            .custom-form {
                border: 1px solid #ccc;
                padding: 20px;
                margin-left: 20px;
                margin-top: 10px;
            }

            .row {
                display: grid;
                grid-template-columns: 1fr 1fr;
                gap: 10px;
            }

            .mb-3 {
                margin-bottom: 1rem;
            }

            .position-relative {
                position: relative;
            }

            .form-label {
                margin-bottom: 0.5rem;
                display: block;
                font-weight: bold;
            }

            .col-4 {
                flex: 0 0 auto;
                width: 33.333333%;
                max-width: 33.333333%;
            }

            .col-6 {
                flex: 0 0 auto;
                width: 50%;
                max-width: 50%;
            }

            input {
                width: 100%;
                padding: 0.375rem 0.75rem;
                font-size: 1rem;
                line-height: 1.5;
                color: #495057;
                background-color: #fff;
                background-clip: padding-box;
                border: 1px solid #ced4da;
                border-radius: 0.25rem;
                transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
            }
            .clickable-frame {
                border: 1px solid #ddd;
                padding: 10px;
                display: inline-block;
                margin: 10px 0;
                border-radius: 5px;
                text-decoration: none;
                color: #000;
                background-color: #f9f9f9;
                transition: background-color 0.3s ease;
            }
            .clickable-frame:hover {
                background-color: #e9e9e9;
            }
        </style>
    </head>

    <body class="g-sidenav-show  bg-gray-200">
        <aside class="sidenav navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-3   bg-gradient-dark" id="sidenav-main">
            <div class="sidenav-header">
                <i class="fas fa-times p-3 cursor-pointer text-white opacity-5 position-absolute end-0 top-0 d-none d-xl-none" aria-hidden="true" id="iconSidenav"></i>
                <a class="navbar-brand m-0" href=" https://demos.creative-tim.com/material-dashboard/pages/dashboard " target="_blank">
                    <img src="./assets/img/logo-ct.png" class="navbar-brand-img h-100" alt="main_logo">
                    <span class="ms-1 font-weight-bold text-white">FPT University</span>
                </a>
            </div>
            <hr class="horizontal light mt-0 mb-2">
            <div class="collapse navbar-collapse  w-auto " id="sidenav-collapse-main">
                <ul class="navbar-nav">

                    <li class="nav-item">
                        <a class="nav-link text-white active bg-gradient-primary" href="home/teacher">
                            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                                <i class="material-icons opacity-10">table_view</i>
                            </div>
                            <span class="nav-link-text ms-1">Edit Mark</span>
                        </a>
                    </li>
                    <li class="nav-item mt-3">
                        <h6 class="ps-4 ms-2 text-uppercase text-xs text-white font-weight-bolder opacity-8">Account pages</h6>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link text-white " href="logout">
                            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                                <i class="material-icons opacity-10">login</i>
                            </div>
                            <span style="font-weight: 600" class="nav-link-text ms-1">Logout</span>
                        </a>
                    </li>

                </ul>
            </div>

        </aside>
        <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">

            <div class="container-fluid py-4">
                <div class="row">
                    <div class="col-12">
                        <div class="card my-4" style="">
                            <div  class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                                <div style="text-align: center" class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3" >
                                    <h4 class="text-white text-capitalize ps-3">${teacher.teacher_name}</h4>
                                </div>
                            </div>
                            <div class="card-body px-0 pb-2" style="margin: 0 40px">
                                <div class="table-responsive p-0">
                                    <form action="teacher?action=viewClass&teacherID=${teacher.teacher_id}" method="post">
                                        <div style="display: flex; margin-bottom: 10px">
                                            <div style="display: inline-block;">
                                                <select class="form-select" name="semesteridd" aria-label="Select semester" style="padding: 17px; width: 400px; margin-left: 20px;font-size: 18px" required>

                                                    <c:forEach items="${listSemester}" var="ls">
                                                        <option value="${ls.semester_id}"<c:if test="${param.semesteridd == ls.semester_id}">selected</c:if>>${ls.semester_name}</option>
                                                    </c:forEach>
                                                </select>
                                            </div>

                                            <div style="display: inline-block;">
                                                <select required class="form-select" name="classidd" aria-label="Select class" style="padding: 17px; width: 400px; margin-left: 20px;font-size: 18px">
                                                    <c:forEach items="${listClass}" var="lc">
                                                        <option value="${lc.class_id}"<c:if test="${param.classidd == lc.class_id}">selected</c:if>>${lc.class_name}</option>
                                                    </c:forEach>
                                                </select>
                                            </div>

                                            <br>
                                            <label style="margin-left: 20px; margin-top: 0px;">
                                                <button type="submit" class="btn btn-success m-1" style=" font-size: 14px">Selected</button>         
                                            </label></div>
                                    </form>
                                    <c:if test="${not empty viewSubject}">
                                        <c:forEach items="${viewSubject}" var="vs">
                                            <span style="margin-left: 35px;">
                                                <a href="#"class="clickable-frame" onclick="submitViewDetailFormmm('${vs.subject_name}', '${vs.teacher_id}', '${vs.semester_id}', '${vs.class_id}');
                                                        return false;">
                                                    ${vs.subject_name}
                                                </a>
                                            </span>
                                        </c:forEach>
                                    </c:if>


                                    <form id="viewDetailForm" action="teacher?action=viewDetail" method="post" style="display:none;">
                                        <input type="hidden" name="subID" id="subIDInput">
                                        <input type="hidden" name="stuID" id="stuIDInput">
                                        <input type="hidden" name="semester_idInput" id="semester_idInput">
                                        <input type="hidden" name="class_idInput" id="class_idInput">
                                    </form>

                                    <script type="text/javascript">
                                        function submitViewDetailFormmm(subjectName, teacher_id, semester_id, class_id) {

                                            document.getElementById('subIDInput').value = subjectName;
                                            document.getElementById('stuIDInput').value = teacher_id;
                                            document.getElementById('semester_idInput').value = semester_id;
                                            document.getElementById('class_idInput').value = class_id;

                                            // Submit form
                                            document.getElementById('viewDetailForm').submit();
                                        }
                                    </script>  
                                    <script type="text/javascript">
                                        document.addEventListener('DOMContentLoaded', (event) => {
                                            // Add event listener to all edit buttons
                                            document.querySelectorAll('.edit-btn').forEach(button => {
                                                button.addEventListener('click', () => {
                                                    // Get student data from data attributes
                                                    const idSubject = button.getAttribute('data-idSubject');
                                                    const studentName = button.getAttribute('data-name');
                                                    const studentRollNumber = button.getAttribute('data-roll');
                                                    const pt1 = button.getAttribute('data-pt1') || 0;
                                                    const pt2 = button.getAttribute('data-pt2') || 0;
                                                    const ws1 = button.getAttribute('data-ws1') || 0;
                                                    const ws2 = button.getAttribute('data-ws2') || 0;
                                                    const pp = button.getAttribute('data-pp') || 0;
                                                    const mt = button.getAttribute('data-mt') || 0;
                                                    const assignment = button.getAttribute('data-ass') || 0;
                                                    const assignment_1 = button.getAttribute('data-ass1') || 0;
                                                    const assignment_2 = button.getAttribute('data-ass2') || 0;
                                                    const cp = button.getAttribute('data-cp') || 0;
                                                    const pe = button.getAttribute('data-pe') || 0;
                                                    const fe = button.getAttribute('data-fe') || 0;
                                                    const te = button.getAttribute('data-te') || 0;

                                                    // Populate the form fields
                                                    const idSubjectInput = document.getElementById('idSubject');
                                                    if (idSubjectInput)
                                                        idSubjectInput.value = idSubject;
                                                    console.log(idSubjectInput);

                                                    const studentNameInput = document.getElementById('studentName');
                                                    if (studentNameInput)
                                                        studentNameInput.value = studentName;
                                                    console.log(studentNameInput);
                                                    const studentRollNumberInput = document.getElementById('studentRollNumber');
                                                    if (studentRollNumberInput)
                                                        studentRollNumberInput.value = studentRollNumber;

                                                    const pt1Input = document.getElementById('pt1InputUpdate');
                                                    if (pt1Input)
                                                        pt1Input.value = pt1;

                                                    const pt2Input = document.getElementById('pt2InputUpdate');
                                                    if (pt2Input)
                                                        pt2Input.value = pt2;

                                                    const ws1Input = document.getElementById('ws1InputUpdate');
                                                    if (ws1Input)
                                                        ws1Input.value = ws1;

                                                    const ws2Input = document.getElementById('ws2InputUpdate');
                                                    if (ws2Input)
                                                        ws2Input.value = ws2;

                                                    const ppInput = document.getElementById('ppInputUpdate');
                                                    if (ppInput)
                                                        ppInput.value = pp;

                                                    const mtInput = document.getElementById('mtInputUpdate');
                                                    if (mtInput)
                                                        mtInput.value = mt;

                                                    const assignmentInput = document.getElementById('assignmentInputUpdate');
                                                    if (assignmentInput)
                                                        assignmentInput.value = assignment;

                                                    const assignment1Input = document.getElementById('assignment_1InputUpdate');
                                                    if (assignment1Input)
                                                        assignment1Input.value = assignment_1;

                                                    const assignment2Input = document.getElementById('assignment_2InputUpdate');
                                                    if (assignment2Input)
                                                        assignment2Input.value = assignment_2;

                                                    const cpInput = document.getElementById('cpInputUpdate');
                                                    if (cpInput)
                                                        cpInput.value = cp;

                                                    const peInput = document.getElementById('peInputUpdate');
                                                    if (peInput)
                                                        peInput.value = pe;

                                                    const feInput = document.getElementById('feInputUpdate');
                                                    if (feInput)
                                                        feInput.value = fe;

                                                    const teInput = document.getElementById('teInputUpdate');
                                                    if (teInput)
                                                        teInput.value = te;
                                                });
                                            });
                                        });
                                    </script>    
                                    <c:set var="showFormPRJ" value="false" />
                                    <c:forEach items="${listAllMark}" var="lm">
                                        <c:if test="${lm.subject_name eq 'PRJ301' && showFormPRJ eq 'false'}">
                                            <c:set var="showFormPRJ" value="true" />
                                        </c:if>
                                    </c:forEach>

                                    <c:if test="${showFormPRJ eq 'true'}">
                                        <form style="margin: 10px 30px; border: solid 1px;" action="teacher?action=PRJ301" method="post" class="custom-form">

                                            <input type="hidden" id="idSubject" name="idSubject" value="idS1ubject">

                                            <div class="row">
                                                <div class="mb-3 col-4 position-relative">
                                                    <label class="form-label">WS1</label>
                                                    <input type="text" id="ws1InputUpdate" name="ws1InputUpdate">
                                                </div>
                                                <div class="mb-3 col-4">
                                                    <label class="form-label">WS2</label>
                                                    <input type="text" id="ws2InputUpdate" name="ws2InputUpdate">
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="mb-3 col-4 position-relative">
                                                    <label class="form-label">PT1</label>
                                                    <input type="text" id="pt1InputUpdate" name="pt1InputUpdate">
                                                </div>
                                                <div class="mb-3 col-4">
                                                    <label class="form-label">PT2</label>
                                                    <input type="text" id="pt2InputUpdate" name="pt2InputUpdate">
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="mb-3 col-4 position-relative">
                                                    <label class="form-label">Assignemt</label>
                                                    <input type="text" id="assignmentInputUpdate" name="assignmentInputUpdate">
                                                </div>
                                                <div class="mb-3 col-4">
                                                    <label class="form-label">PE</label>
                                                    <input type="text" id="peInputUpdate" name="peInputUpdate">
                                                </div>
                                                <div class="mb-3 col-4">
                                                    <label class="form-label">FE</label>
                                                    <input type="text" id="feInputUpdate" name="feInputUpdate">
                                                </div>
                                                <div class="mb-3 col-4 " style="margin-top: 30px">

                                                    <button class="btn btn-primary" type="submit">Submit</button>
                                                </div>
                                            </div>
                                        </form>
                                    </c:if>
                                    <c:if test="${showFormPRJ eq 'true'}">
                                        <div class="table-responsive p-0" style="margin-top: 20px">
                                            <table class="table table-bordered"  style="border: solid 1px;">
                                                <thead style="border: solid 1px">
                                                    <tr style="border: solid 1px">
                                                        <th style="border: solid 1px" scope="col">Name</th>
                                                        <th style="border: solid 1px" scope="col">Roll Number</th>
                                                        <th style="border: solid 1px" scope="col">WS1</th>
                                                        <th style="border: solid 1px" scope="col">WS2</th>
                                                        <th style="border: solid 1px" scope="col">PT1</th>
                                                        <th style="border: solid 1px" scope="col">PT2</th>
                                                        <th style="border: solid 1px" scope="col">Assignment</th>
                                                        <th style="border: solid 1px" scope="col">PE</th>
                                                        <th style="border: solid 1px" scope="col">FE</th>
                                                        <th style="border: solid 1px" scope="col">Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach items="${listStudent}" var="ls">
                                                        <tr>
                                                            <c:forEach items="${listAllMark}" var="lm">
                                                                <c:if test="${lm.subject_name eq 'PRJ301' && lm.student_id eq ls.student_id}">
                                                                    <td style="padding: 0 65px;border: solid 1px">${ls.student_name}</td>
                                                                    <td style="padding: 0 65px;border: solid 1px">${ls.student_roll_number}</td>
                                                                    <td style="padding: 0 65px;border: solid 1px">${lm.ws1 eq 0 ? 'Empty' : lm.ws1}</td>
                                                                    <td style="padding: 0 65px;border: solid 1px">${lm.ws2 eq 0 ? 'Empty' : lm.ws2}</td>
                                                                    <td style="padding: 0 65px;border: solid 1px">${lm.pt1 eq 0 ? 'Empty' : lm.pt1}</td>
                                                                    <td style="padding: 0 65px;border: solid 1px">${lm.pt2 eq 0 ? 'Empty' : lm.pt2}</td>
                                                                    <td style="padding: 0 65px;border: solid 1px">${lm.assignment eq 0 ? 'Empty' : lm.assignment}</td>
                                                                    <td style="padding: 0 65px;border: solid 1px">${lm.pe eq 0 ? 'Empty' : lm.pe}</td>
                                                                    <td style="padding: 0 65px;border: solid 1px">${lm.fe eq 0 ? 'Empty' : lm.fe}</td>
                                                                    <td style="border: solid 1px ;">
                                                                        <button class="btn btn-primary edit-btn"
                                                                                data-name="${ls.student_name}"
                                                                                data-roll="${ls.student_roll_number}"
                                                                                data-pt1="${lm.pt1}"
                                                                                data-pt2="${lm.pt2}"
                                                                                data-ws1="${lm.ws1}"
                                                                                data-ws2="${lm.ws2}"
                                                                                data-pp="${lm.pp}"
                                                                                data-mt="${lm.mt}"
                                                                                data-ass="${lm.assignment}"
                                                                                data-ass1="${lm.assignment_1}"
                                                                                data-ass2="${lm.assignment_2}"
                                                                                data-cp="${lm.cp}"
                                                                                data-pe="${lm.pe}"
                                                                                data-fe="${lm.fe}"
                                                                                data-te="${lm.te}"
                                                                                data-idSubject="${lm.subject_id}">
                                                                            Edit
                                                                        </button>
                                                                    </td>
                                                                </c:if>
                                                            </c:forEach>
                                                        </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                    </c:if>

                                    <c:set var="showFormJPD" value="false" />
                                    <c:forEach items="${listAllMark}" var="lm">
                                        <c:if test="${lm.subject_name eq 'JPD123' && showFormJPD eq 'false'}">
                                            <c:set var="showFormJPD" value="true" />
                                        </c:if>
                                    </c:forEach>

                                    <c:if test="${showFormJPD eq 'true'}">
                                        <form action="teacher?action=JPD123" method="post" class="custom-form">

                                            <input type="hidden" id="idSubject" name="idSubject" value="idSubject">

                                            <div class="row">
                                                <div class="mb-3 col-4 position-relative">
                                                    <label class="form-label">PP</label>
                                                    <input type="text" id="ppInputUpdate" name="ppInputUpdate">
                                                </div>
                                                <div class="mb-3 col-4">
                                                    <label class="form-label">PT1</label>
                                                    <input type="text" id="pt1InputUpdate" name="pt1InputUpdate">
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="mb-3 col-4 position-relative">
                                                    <label class="form-label">PT2</label>
                                                    <input type="text" id="pt2InputUpdate" name="pt2InputUpdate">
                                                </div>
                                                <div class="mb-3 col-4">
                                                    <label class="form-label">MT</label>
                                                    <input type="text" id="mtInputUpdate" name="mtInputUpdate">
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="mb-3 col-4 position-relative">
                                                    <label class="form-label">FE</label>
                                                    <input type="text" id="feInputUpdate" name="feInputUpdate">
                                                </div>

                                                <div class="mb-3 col-4 " style="margin-top: 30px">

                                                    <button class="btn btn-primary" type="submit">Submit</button>
                                                </div>
                                            </div>
                                        </form>
                                    </c:if>


                                    <c:if test="${showFormJPD eq 'true'}">
                                        <div class="table-responsive p-0" style="margin-top: 20px">
                                            <table class="table table-bordered"style="border: solid 1px">
                                                <thead>
                                                    <tr>
                                                        <th style="border: solid 1px" scope="col">Name</th>
                                                        <th style="border: solid 1px" scope="col">Roll Number</th>
                                                        <th style="border: solid 1px" scope="col">PP</th>

                                                        <th style="border: solid 1px" scope="col">PT1</th>
                                                        <th style="border: solid 1px" scope="col">PT2</th>
                                                        <th style="border: solid 1px" scope="col">MT</th>                                                          

                                                        <th style="border: solid 1px" scope="col">FE</th>
                                                        <th style="border: solid 1px" scope="col">Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach items="${listStudent}" var="ls">
                                                        <tr>
                                                            <c:forEach items="${listAllMark}" var="lm">
                                                                <c:if test="${lm.subject_name eq 'JPD123' && lm.student_id eq ls.student_id}">
                                                                    <td style="padding: 0 65px;border: solid 1px">${ls.student_name}</td>
                                                                    <td style="padding: 0 65px;border: solid 1px">${ls.student_roll_number}</td>
                                                                    <td style="padding: 0 65px;border: solid 1px">${lm.pp eq 0 ? 'Empty' : lm.pp}</td>
                                                                    <td style="padding: 0 65px;border: solid 1px">${lm.pt1 eq 0 ? 'Empty' : lm.pt1}</td>
                                                                    <td style="padding: 0 65px;border: solid 1px">${lm.pt2 eq 0 ? 'Empty' : lm.pt2}</td>
                                                                    <td style="padding: 0 65px;border: solid 1px">${lm.mt eq 0 ? 'Empty' : lm.mt}</td>

                                                                    <td style="padding: 0 65px;border: solid 1px">${lm.fe eq 0 ? 'Empty' : lm.fe}</td>
                                                                    <td style="padding: 0 65px;border: solid 1px">
                                                                        <button class="btn btn-primary edit-btn"
                                                                                data-name="${ls.student_name}"
                                                                                data-roll="${ls.student_roll_number}"
                                                                                data-pt1="${lm.pt1}"
                                                                                data-pt2="${lm.pt2}"
                                                                                data-ws1="${lm.ws1}"
                                                                                data-ws2="${lm.ws2}"
                                                                                data-pp="${lm.pp}"
                                                                                data-mt="${lm.mt}"
                                                                                data-ass="${lm.assignment}"
                                                                                data-ass1="${lm.assignment_1}"
                                                                                data-ass2="${lm.assignment_2}"
                                                                                data-cp="${lm.cp}"
                                                                                data-pe="${lm.pe}"
                                                                                data-fe="${lm.fe}"
                                                                                data-te="${lm.te}"
                                                                                data-idSubject="${lm.subject_id}">
                                                                            Edit
                                                                        </button>
                                                                    </td>
                                                                </c:if>
                                                            </c:forEach>
                                                        </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                    </c:if>

                                    <c:set var="showFormMAS" value="false" />
                                    <c:forEach items="${listAllMark}" var="lm">
                                        <c:if test="${lm.subject_name eq 'MAS291' && showFormMAS eq 'false'}">
                                            <c:set var="showFormMAS" value="true" />
                                        </c:if>
                                    </c:forEach>

                                    <c:if test="${showFormMAS eq 'true'}">
                                        <form action="teacher?action=MAS291" method="post" class="custom-form">

                                            <input type="hidden" id="idSubject" name="idSubject" value="idSubject">

                                            <div class="row">
                                                <div class="mb-3 col-4 position-relative">
                                                    <label class="form-label">Computer Project</label>
                                                    <input type="text" id="cpInputUpdate" name="cpInputUpdate">
                                                </div>
                                                <div class="mb-3 col-4">
                                                    <label class="form-label">Assignment 1</label>
                                                    <input type="text" id="assignment_1InputUpdate" name="assignment_1InputUpdate">
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="mb-3 col-4 position-relative">
                                                    <label class="form-label">Assignment 2</label>
                                                    <input type="text" id="assignment_2InputUpdate" name="assignment_2InputUpdate">
                                                </div>
                                                <div class="mb-3 col-4">
                                                    <label class="form-label">PT1</label>
                                                    <input type="text" id="pt1InputUpdate" name="pt1InputUpdate">
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="mb-3 col-4 position-relative">
                                                    <label class="form-label">PT2</label>
                                                    <input type="text" id="pt2InputUpdate" name="pt2InputUpdate">
                                                </div>
                                                <div class="mb-3 col-4 position-relative">
                                                    <label class="form-label">FE</label>
                                                    <input type="text" id="feInputUpdate" name="feInputUpdate">
                                                </div>
                                                <div class="mb-3 col-4 " style="margin-top: 30px">

                                                    <button class="btn btn-primary" type="submit">Submit</button>
                                                </div>
                                            </div>
                                        </form>
                                    </c:if>


                                    <c:if test="${showFormMAS eq 'true'}">
                                        <div class="table-responsive p-0" style="margin-top: 20px ;border: solid 1px">
                                            <table class="table table-bordered" style="border: solid 1px">
                                                <thead>
                                                    <tr>
                                                        <th style="padding: 0 65px;border: solid 1px" scope="col">Name</th>
                                                        <th style="padding: 0 65px;border: solid 1px" scope="col">Roll Number</th>
                                                        <th style="padding: 0 65px;border: solid 1px" scope="col">Computer Project</th>
                                                        <th style="padding: 0 65px;border: solid 1px" scope="col">Assignment 1</th>
                                                        <th style="padding: 0 65px;border: solid 1px" scope="col">Assignment 2</th>
                                                        <th style="padding: 0 65px;border: solid 1px" scope="col">PT1</th>                                                          
                                                        <th style="padding: 0 65px;border: solid 1px" scope="col">PT2</th>
                                                        <th style="padding: 0 65px;border: solid 1px" scope="col">FE</th>
                                                        <th style="padding: 0 65px;border: solid 1px" scope="col">Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach items="${listStudent}" var="ls">
                                                        <tr>
                                                            <c:forEach items="${listAllMark}" var="lm">
                                                                <c:if test="${lm.subject_name eq 'MAS291' && lm.student_id eq ls.student_id}">
                                                                    <td style="padding: 0 65px">${ls.student_name}</td>
                                                                    <td style="padding: 0 65px">${ls.student_roll_number}</td>
                                                                    <td style="padding: 0 65px">${lm.cp eq 0 ? 'Empty' : lm.cp}</td>
                                                                    <td style="padding: 0 65px">${lm.assignment_1 eq 0 ? 'Empty' : lm.assignment_1}</td>
                                                                    <td style="padding: 0 65px">${lm.assignment_2 eq 0 ? 'Empty' : lm.assignment_2}</td>
                                                                    <td style="padding: 0 65px">${lm.pt1 eq 0 ? 'Empty' : lm.pt1}</td>
                                                                    <td style="padding: 0 65px">${lm.pt2 eq 0 ? 'Empty' : lm.pt2}</td>
                                                                    <td style="padding: 0 65px">${lm.fe eq 0 ? 'Empty' : lm.fe}</td>
                                                                    <td>
                                                                        <button class="btn btn-primary edit-btn"
                                                                                data-name="${ls.student_name}"
                                                                                data-roll="${ls.student_roll_number}"
                                                                                data-pt1="${lm.pt1}"
                                                                                data-pt2="${lm.pt2}"
                                                                                data-ws1="${lm.ws1}"
                                                                                data-ws2="${lm.ws2}"
                                                                                data-pp="${lm.pp}"
                                                                                data-mt="${lm.mt}"
                                                                                data-ass="${lm.assignment}"
                                                                                data-ass1="${lm.assignment_1}"
                                                                                data-ass2="${lm.assignment_2}"
                                                                                data-cp="${lm.cp}"
                                                                                data-pe="${lm.pe}"
                                                                                data-fe="${lm.fe}"
                                                                                data-te="${lm.te}"
                                                                                data-idSubject="${lm.subject_id}">
                                                                            Edit
                                                                        </button>
                                                                    </td>
                                                                </c:if>
                                                            </c:forEach>
                                                        </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                    </c:if>

                                    <c:set var="showFormWED" value="false" />
                                    <c:forEach items="${listAllMark}" var="lm">
                                        <c:if test="${lm.subject_name eq 'WED201c' && showFormWED eq 'false'}">
                                            <c:set var="showFormWED" value="true" />
                                        </c:if>
                                    </c:forEach>

                                    <c:if test="${showFormWED eq 'true'}">
                                        <form action="teacher?action=WED201c" method="post" class="custom-form">

                                            <input type="hidden" id="idSubject" name="idSubject" value="idSubject">


                                            <div class="row">
                                                <div class="mb-3 col-4 position-relative">
                                                    <label class="form-label">PE</label>
                                                    <input type="text" id="peInputUpdate" name="peInputUpdate">
                                                </div>
                                                <div class="mb-3 col-4 position-relative">
                                                    <label class="form-label">TE</label>
                                                    <input type="text" id="teInputUpdate" name="teInputUpdate">
                                                </div>
                                                <div class="mb-3 col-4 " style="margin-top: 30px">

                                                    <button class="btn btn-primary" type="submit">Submit</button>
                                                </div>
                                            </div>
                                        </form>
                                    </c:if>


                                    <c:if test="${showFormWED eq 'true'}">
                                        <div class="table-responsive p-0" style="margin-top: 20px">
                                            <table class="table table-bordered" style="padding: 0 65px;border: solid 1px">
                                                <thead>
                                                    <tr>
                                                        <th style="border: solid 1px" scope="col">Name</th>
                                                        <th style="border: solid 1px" scope="col">Roll Number</th>
                                                        <th style="border: solid 1px" scope="col">PE</th>
                                                        <th style="border: solid 1px" scope="col">TE</th>
                                                        <th style="border: solid 1px" scope="col">Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach items="${listStudent}" var="ls">
                                                        <tr>
                                                            <c:forEach items="${listAllMark}" var="lm">
                                                                <c:if test="${lm.subject_name eq 'WED201c' && lm.student_id eq ls.student_id}">
                                                                    <td style="padding: 0 65px;border: solid 1px">${ls.student_name}</td>
                                                                    <td style="padding: 0 65px;border: solid 1px">${ls.student_roll_number}</td>
                                                                    <td style="padding: 0 65px;border: solid 1px">${lm.pe eq 0 ? 'Empty' : lm.pe}</td>
                                                                    <td style="padding: 0 65px;border: solid 1px">${lm.te eq 0 ? 'Empty' : lm.te}</td>

                                                                    <td style="padding: 0 65px;border: solid 1px">
                                                                        <button class="btn btn-primary edit-btn"
                                                                                data-name="${ls.student_name}"
                                                                                data-roll="${ls.student_roll_number}"
                                                                                data-pt1="${lm.pt1}"
                                                                                data-pt2="${lm.pt2}"
                                                                                data-ws1="${lm.ws1}"
                                                                                data-ws2="${lm.ws2}"
                                                                                data-pp="${lm.pp}"
                                                                                data-mt="${lm.mt}"
                                                                                data-ass="${lm.assignment}"
                                                                                data-ass1="${lm.assignment_1}"
                                                                                data-ass2="${lm.assignment_2}"
                                                                                data-cp="${lm.cp}"
                                                                                data-pe="${lm.pe}"
                                                                                data-fe="${lm.fe}"
                                                                                data-te="${lm.te}"
                                                                                data-idSubject="${lm.subject_id}">
                                                                            Edit
                                                                        </button>
                                                                    </td>
                                                                </c:if>
                                                            </c:forEach>
                                                        </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                    </c:if>


                                    <c:set var="showFormCSD" value="false" />
                                    <c:forEach items="${listAllMark}" var="lm">
                                        <c:if test="${lm.subject_name eq 'CSD201' && showFormCSD eq 'false'}">
                                            <c:set var="showFormCSD" value="true" />
                                        </c:if>
                                    </c:forEach>

                                    <c:if test="${showFormCSD eq 'true'}">
                                        <form action="teacher?action=CSD201" method="post" class="custom-form">

                                            <input type="hidden" id="idSubject" name="idSubject" value="idSubject">
                                            <div class="row">
                                                <div class="mb-3 col-4 position-relative">
                                                    <label class="form-label">PT1</label>
                                                    <input type="text" id="pt1InputUpdate" name="assignment_2InputUpdate">
                                                </div>
                                                <div class="mb-3 col-4">
                                                    <label class="form-label">PT2</label>
                                                    <input type="text" id="pt2InputUpdate" name="pt1InputUpdate">
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="mb-3 col-4 position-relative">
                                                    <label class="form-label">Assignment 1</label>
                                                    <input type="text" id="assignment_1InputUpdate" name="assignment_1InputUpdate">
                                                </div>
                                                <div class="mb-3 col-4">
                                                    <label class="form-label">Assignment 2</label>
                                                    <input type="text" id="assignment_2InputUpdate" name="assignment_2InputUpdate">
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="mb-3 col-4 position-relative">
                                                    <label class="form-label">PE</label>
                                                    <input type="text" id="peInputUpdate" name="peInputUpdate">
                                                </div>
                                                <div class="mb-3 col-4 position-relative">
                                                    <label class="form-label">FE</label>
                                                    <input type="text" id="feInputUpdate" name="feInputUpdate">
                                                </div>
                                                <div class="mb-3 col-4 " style="margin-top: 30px">

                                                    <button class="btn btn-primary" type="submit">Submit</button>
                                                </div>
                                            </div>
                                        </form>
                                    </c:if>


                                    <c:if test="${showFormCSD eq 'true'}">
                                        <div class="table-responsive p-0" style="margin-top: 20px">
                                            <table class="table table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th scope="col">Name</th>
                                                        <th scope="col">Roll Number</th>
                                                        <th scope="col">PT1</th>
                                                        <th scope="col">PT2</th>
                                                        <th scope="col">Assignment 1</th>
                                                        <th scope="col">Assignment 2</th>
                                                        <th scope="col">PE</th>
                                                        <th scope="col">FE</th>
                                                        <th scope="col">Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach items="${listStudent}" var="ls">
                                                        <tr>
                                                            <c:forEach items="${listAllMark}" var="lm">
                                                                <c:if test="${lm.subject_name eq 'CSD201' && lm.student_id eq ls.student_id}">
                                                                    <td style="padding: 0 65px">${ls.student_name}</td>
                                                                    <td style="padding: 0 65px">${ls.student_roll_number}</td>
                                                                    <td style="padding: 0 65px">${lm.pt1 eq 0 ? 'Empty' : lm.pt1}</td>
                                                                    <td style="padding: 0 65px">${lm.pt2 eq 0 ? 'Empty' : lm.pt2}</td>
                                                                    <td style="padding: 0 65px">${lm.assignment_1 eq 0 ? 'Empty' : lm.assignment_1}</td>
                                                                    <td style="padding: 0 65px">${lm.assignment_2 eq 0 ? 'Empty' : lm.assignment_2}</td>
                                                                    <td style="padding: 0 65px">${lm.pe eq 0 ? 'Empty' : lm.pe}</td>
                                                                    <td style="padding: 0 65px">${lm.fe eq 0 ? 'Empty' : lm.fe}</td>

                                                                    <td>
                                                                        <button class="btn btn-primary edit-btn"
                                                                                data-name="${ls.student_name}"
                                                                                data-roll="${ls.student_roll_number}"
                                                                                data-pt1="${lm.pt1}"
                                                                                data-pt2="${lm.pt2}"
                                                                                data-ws1="${lm.ws1}"
                                                                                data-ws2="${lm.ws2}"
                                                                                data-pp="${lm.pp}"
                                                                                data-mt="${lm.mt}"
                                                                                data-ass="${lm.assignment}"
                                                                                data-ass1="${lm.assignment_1}"
                                                                                data-ass2="${lm.assignment_2}"
                                                                                data-cp="${lm.cp}"
                                                                                data-pe="${lm.pe}"
                                                                                data-fe="${lm.fe}"
                                                                                data-te="${lm.te}"
                                                                                data-idSubject="${lm.subject_id}">
                                                                            Edit
                                                                        </button>
                                                                    </td>
                                                                </c:if>
                                                            </c:forEach>
                                                        </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                    </c:if>



                                </div>


                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </div>
    </main>
    <script src="./assets/js/core/popper.min.js"></script>
    <script src="./assets/js/core/bootstrap.min.js"></script>
    <script src="./assets/js/plugins/perfect-scrollbar.min.js"></script>
    <script src="./assets/js/plugins/smooth-scrollbar.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script async defer src="https://buttons.github.io/buttons.js"></script>
    <script src="./assets/js/material-dashboard.min.js?v=3.1.0"></script>
    <script>
                                        $('#exampleModal').on('show.bs.modal', function (event) {
                                            var button = $(event.relatedTarget); // Button that triggered the modal
                                            var pt1 = button.data('pt1'); // Extract info from data-* attributes
                                            var pt2 = button.data('pt2');
                                            var fe = button.data('fe');
                                            var idS = button.data('ids');
                                            var subname = button.data('subname');
                                            var idcl = button.data('idcl');
                                            var idsemester = button.data('idsemester');
                                            console.log(pt1);
                                            console.log(idS);
                                            console.log(pt1);
                                            console.log(pt2);
                                            console.log(subname);
                                            console.log(idcl);
                                            console.log(idsemester);
                                            var modal = $(this);
                                            modal.find('#modalPt1').val(pt1);
                                            modal.find('#modalPt2').val(pt2);
                                            modal.find('#modalFe').val(fe);
                                            modal.find('#modalSubID').val(idS);
                                            modal.find('#modalNameSub').val(subname);
                                            modal.find('#modalIdCl').val(idcl);
                                            modal.find('#modalIdSe').val(idsemester);

                                        }
                                        );


    </script>
</body>

</html>