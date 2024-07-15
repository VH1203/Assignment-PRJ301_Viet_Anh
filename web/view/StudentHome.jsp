<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
            Student
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
    </head>
    <style>
        .small-input {
            width: 80px;
            padding: 5px;
            font-size: 0.8em;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            border: solid 1px
        }
        th {
            border: 1px solid #dee2e6;
            padding: 8px;
            text-align: center; /* Center align text horizontally */
            vertical-align: middle; /* Center align text vertically */
            border: solid 1px;
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
                        <a class="nav-link text-white active bg-gradient-primary" href="home/student">
                            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                                <i class="material-icons opacity-10">table_view</i>
                            </div>
                            <span class="nav-link-text ms-1">View Mark</span>
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
                        <div class="card my-4">
                            <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                                <div style="text-align: center" class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3" >
                                    <h4 class="text-white text-capitalize ps-3">${student.student_name} - ${student.student_roll_number}</h4>
                                </div>
                            </div>

                            <div class="card-body px-0 pb-2"style="margin: 0 40px">
                                <form action="student?action=viewSubject&studentID=${student.student_id}" method="post">
                                    <div style="display: flex; margin-bottom: 10px">
                                        <div style="display: inline-block;">
                                            <select class="form-select" name="semesteridd" aria-label="Select semester" style="padding: 17px; width: 400px; margin-left: 20px;font-size: 18px" required>
                                                <c:forEach items="${listSemester}" var="ls">
                                                    <option value="${ls.semester_id}" <c:if test="${param.semesteridd == ls.semester_id}">selected</c:if>>${ls.semester_name}</option>
                                                </c:forEach>
                                            </select>
                                        </div>

                                        <div style="display: inline-block;">
                                            <select required class="form-select" name="classidd" aria-label="Select class" style="padding: 17px; width: 400px; margin-left: 20px;font-size: 18px">
                                                <c:forEach items="${listClass}" var="lc">
                                                    <option value="${lc.class_id}" <c:if test="${param.classidd == lc.class_id}">selected</c:if>>${lc.class_name}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                        <br>
                                        <label style="margin-left: 20px;">
                                            <button type="submit" class="btn btn-success m-1"style=" font-size: 14px">Selected</button>
                                        </label></div>
                                </form>

                                <c:choose>
                                    <c:when test="${not empty viewSubject}">
                                        <c:forEach items="${viewSubject}" var="vs">
                                            <span style="margin-left: 35px">
                                                <a href="#"class="clickable-frame" onclick="submitViewDetailForm('${vs.subject_name}', '${vs.student_id}', '${vs.semester_id}', '${vs.class_id}');
                                                        return false;">
                                                    ${vs.subject_name}
                                                </a>
                                            </span>
                                        </c:forEach>
                                    </c:when>

                                </c:choose>
                                <form id="viewDetailForm" action="student?action=viewMark" method="post" style="display:none;">
                                    <input type="hidden" name="subID" id="subIDInput">
                                    <input type="hidden" name="stuID" id="stuIDInput">
                                    <input type="hidden" name="semester_idInput" id="semester_idInput">
                                    <input type="hidden" name="class_idInput" id="class_idInput">
                                </form>
                                <script type="text/javascript">
                                    function submitViewDetailForm(subjectName, stu_id, semester_id, class_id) {

                                        document.getElementById('subIDInput').value = subjectName;
                                        document.getElementById('stuIDInput').value = stu_id;
                                        document.getElementById('semester_idInput').value = semester_id;
                                        document.getElementById('class_idInput').value = class_id;
                                        document.getElementById('viewDetailForm').submit();
                                    }
                                </script>   

                                <div class="table-responsive p-0">
                                    <c:if test="${viewMark.subject_name eq 'CSD201'}">
                                        <table class="table table-bordered" style="border: solid 1px">
                                            <thead>
                                                <tr>
                                                    <th scope="col">PT1</th>
                                                    <th scope="col">PT2</th>
                                                    <th scope="col">Assignment 1</th>   
                                                    <th scope="col">Assignment 2</th>    
                                                    <th scope="col">PE</th>
                                                    <th scope="col">FE</th>
                                                    <th scope="col">Total</th>
                                                    <th scope="col">Status</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <th style="border: solid 1px">
                                                        <c:choose>
                                                            <c:when test="${viewMark.pt1 == 0}">
                                                                Empty
                                                            </c:when>
                                                            <c:otherwise>
                                                                ${viewMark.pt1}
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </th>
                                                    <th>
                                                        <c:choose>
                                                            <c:when test="${viewMark.pt2 == 0}">
                                                                Empty
                                                            </c:when>
                                                            <c:otherwise>
                                                                ${viewMark.pt2}
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </th>
                                                    <th>
                                                        <c:choose>
                                                            <c:when test="${viewMark.assignment_1 == 0}">
                                                                Empty
                                                            </c:when>
                                                            <c:otherwise>
                                                                ${viewMark.assignment_1}
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </th>
                                                    <th>
                                                        <c:choose>
                                                            <c:when test="${viewMark.assignment_2 == 0}">
                                                                Empty
                                                            </c:when>
                                                            <c:otherwise>
                                                                ${viewMark.assignment_2}
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </th>
                                                    <th>
                                                        <c:choose>
                                                            <c:when test="${viewMark.pe == 0}">
                                                                Empty
                                                            </c:when>
                                                            <c:otherwise>
                                                                ${viewMark.pe}
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </th>
                                                    <th>
                                                        <c:choose>
                                                            <c:when test="${viewMark.fe == 0}">
                                                                Empty
                                                            </c:when>
                                                            <c:otherwise>
                                                                ${viewMark.fe}
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </th>

                                                    <th>
                                                        <c:choose>
                                                            <c:when test="${total == 0}">
                                                                Empty
                                                            </c:when>
                                                            <c:otherwise>
                                                                <c:set var="total" value="${(viewMark.pt1*0.1 + viewMark.pt2*0.1 + viewMark.assignment_1*0.1 + viewMark.assignment_2*0.1 + viewMark.pe*0.3 + viewMark.fe*0.3)}" />
                                                                <fmt:formatNumber value="${total}" type="number" minFractionDigits="1" maxFractionDigits="1" />
                                                             
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </th>
                                                    <th>
                                                        <c:choose>
                                                            <c:when test="${total >= 5}">
                                                                <div style="color: green">Pass</div> 
                                                            </c:when>
                                                            <c:otherwise>
                                                                <div style="color: red">Not Pass</div> 

                                                            </c:otherwise>
                                                        </c:choose>
                                                    </th>
                                                </tr>                                `   


                                            </tbody>
                                        </table>
                                    </c:if>
                                    <c:if test="${viewMark.subject_name eq 'PRJ301'}">
                                        <table class="table table-bordered"style="border: solid 1px">
                                            <thead>
                                                <tr>
                                                    <th scope="col">WS1</th>
                                                    <th scope="col">WS2</th>
                                                    <th scope="col">PT1</th>
                                                    <th scope="col">PT2</th>
                                                    <th scope="col">Assignment</th>                                                          
                                                    <th scope="col">PE</th>
                                                    <th scope="col">FE</th>
                                                    <th scope="col">Total</th>
                                                    <th scope="col">Status</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <th>
                                                        <c:choose>
                                                            <c:when test="${viewMark.ws1 == 0}">
                                                                Empty
                                                            </c:when>
                                                            <c:otherwise>
                                                                ${viewMark.ws1}
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </th>
                                                    <th>
                                                        <c:choose>
                                                            <c:when test="${viewMark.ws2 == 0}">
                                                                Empty
                                                            </c:when>
                                                            <c:otherwise>
                                                                ${viewMark.ws2}
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </th>
                                                    <th>
                                                        <c:choose>
                                                            <c:when test="${viewMark.pt1 == 0}">
                                                                Empty
                                                            </c:when>
                                                            <c:otherwise>
                                                                ${viewMark.pt1}
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </th>
                                                    <th>
                                                        <c:choose>
                                                            <c:when test="${viewMark.pt2 == 0}">
                                                                Empty
                                                            </c:when>
                                                            <c:otherwise>
                                                                ${viewMark.pt2}
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </th>
                                                    <th>
                                                        <c:choose>
                                                            <c:when test="${viewMark.assignment == 0}">
                                                                Empty
                                                            </c:when>
                                                            <c:otherwise>
                                                                ${viewMark.assignment}
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </th>
                                                    <th>
                                                        <c:choose>
                                                            <c:when test="${viewMark.pe == 0}">
                                                                Empty
                                                            </c:when>
                                                            <c:otherwise>
                                                                ${viewMark.pe}
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </th>
                                                    <th>
                                                        <c:choose>
                                                            <c:when test="${viewMark.fe == 0}">
                                                                Empty
                                                            </c:when>
                                                            <c:otherwise>
                                                                ${viewMark.fe}
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </th>
                                                    <th>
                                                        <c:choose>
                                                            <c:when test="${total == 0}">
                                                                Empty
                                                            </c:when>
                                                            <c:otherwise>
                                                                <c:set var="total" value="${(viewMark.ws1*0.05 + viewMark.ws2*0.05 + viewMark.pt1*0.05 + viewMark.pt2*0.05 + viewMark.assignment*0.4 + viewMark.pe*0.2 + viewMark.fe*0.2)}" />
                                                                <fmt:formatNumber value="${total}" type="number" minFractionDigits="1" maxFractionDigits="1" />
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </th>
                                                    <th>
                                                        <c:choose>
                                                            <c:when test="${total >= 5}">
                                                                <div style="color: green">Pass</div> 
                                                            </c:when>
                                                            <c:otherwise>
                                                                <div style="color: red">Not Pass</div> 

                                                            </c:otherwise>
                                                        </c:choose>
                                                    </th>
                                                </tr>                                `   

                                            </tbody>
                                        </table>
                                    </c:if>

                                    <c:if test="${viewMark.subject_name eq 'JPD123'}">
                                        <table class="table table-bordered"style="border: solid 1px">
                                            <thead>
                                                <tr>
                                                    <th scope="col">PP</th>

                                                    <th scope="col">PT1</th>
                                                    <th scope="col">PT2</th>
                                                    <th scope="col">MT</th>                                                          

                                                    <th scope="col">FE</th>
                                                    <th scope="col">Total</th>
                                                    <th scope="col">Status</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <th>
                                                        <c:choose>
                                                            <c:when test="${viewMark.pp == 0}">
                                                                Empty
                                                            </c:when>
                                                            <c:otherwise>
                                                                ${viewMark.pp}
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </th>
                                                    <th>
                                                        <c:choose>
                                                            <c:when test="${viewMark.pt1 == 0}">
                                                                Empty
                                                            </c:when>
                                                            <c:otherwise>
                                                                ${viewMark.pt1}
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </th>
                                                    <th>
                                                        <c:choose>
                                                            <c:when test="${viewMark.pt2 == 0}">
                                                                Empty
                                                            </c:when>
                                                            <c:otherwise>
                                                                ${viewMark.pt2}
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </th>
                                                    <th>
                                                        <c:choose>
                                                            <c:when test="${viewMark.mt == 0}">
                                                                Empty
                                                            </c:when>
                                                            <c:otherwise>
                                                                ${viewMark.mt}
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </th>
                                                    <th>
                                                        <c:choose>
                                                            <c:when test="${viewMark.fe == 0}">
                                                                Empty
                                                            </c:when>
                                                            <c:otherwise>
                                                                ${viewMark.fe}
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </th>
                                                    <th>
                                                        <c:choose>
                                                            <c:when test="${total == 0}">
                                                                Empty
                                                            </c:when>
                                                            <c:otherwise>
                                                                <c:set var="total" value="${(viewMark.pp*0.1 + viewMark.mt*0.3 + viewMark.pt1*0.1 + viewMark.pt2*0.1 + viewMark.fe*0.4)}" />
                                                                <fmt:formatNumber value="${total}" type="number" minFractionDigits="1" maxFractionDigits="1" />
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </th>
                                                    <th>
                                                        <c:choose>
                                                            <c:when test="${total >= 5}">
                                                                <div style="color: green">Pass</div> 
                                                            </c:when>
                                                            <c:otherwise>
                                                                <div style="color: red">Not Pass</div> 

                                                            </c:otherwise>
                                                        </c:choose>
                                                    </th>

                                                </tr>                                `   

                                            </tbody>
                                        </table>
                                    </c:if>

                                    <c:if test="${viewMark.subject_name eq 'MAS291'}">
                                        <table class="table table-bordered"style="border: solid 1px">
                                            <thead>
                                                <tr>
                                                    <th scope="col">Computer Project</th>
                                                    <th scope="col">Assignment 1</th>
                                                    <th scope="col">Assignment 2</th>
                                                    <th scope="col">PT1</th>                                                          
                                                    <th scope="col">PT2</th>

                                                    <th scope="col">FE</th>
                                                    <th scope="col">Total</th>
                                                    <th scope="col">Status</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <th>
                                                        <c:choose>
                                                            <c:when test="${viewMark.cp == 0}">
                                                                Empty
                                                            </c:when>
                                                            <c:otherwise>
                                                                ${viewMark.cp}
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </th>
                                                    <th>
                                                        <c:choose>
                                                            <c:when test="${viewMark.assignment_1 == 0}">
                                                                Empty
                                                            </c:when>
                                                            <c:otherwise>
                                                                ${viewMark.assignment_1}
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </th>
                                                    <th>
                                                        <c:choose>
                                                            <c:when test="${viewMark.assignment_2 == 0}">
                                                                Empty
                                                            </c:when>
                                                            <c:otherwise>
                                                                ${viewMark.assignment_2}
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </th>
                                                    <th>
                                                        <c:choose>
                                                            <c:when test="${viewMark.pt1 == 0}">
                                                                Empty
                                                            </c:when>
                                                            <c:otherwise>
                                                                ${viewMark.pt1}
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </th>
                                                    <th>
                                                        <c:choose>
                                                            <c:when test="${viewMark.pt2 == 0}">
                                                                Empty
                                                            </c:when>
                                                            <c:otherwise>
                                                                ${viewMark.pt2}
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </th>

                                                    <th>
                                                        <c:choose>
                                                            <c:when test="${viewMark.fe == 0}">
                                                                Empty
                                                            </c:when>
                                                            <c:otherwise>
                                                                ${viewMark.fe}
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </th>
                                                    <th>
                                                        <c:choose>
                                                            <c:when test="${total == 0}">
                                                                Empty
                                                            </c:when>
                                                            <c:otherwise>
                                                                <c:set var="total" value="${(viewMark.cp*0.25 + viewMark.assignment_1*0.1 + viewMark.assignment_2*0.1 + viewMark.pt1*0.1 + viewMark.pt2*0.1 +viewMark.fe*0.35)}" />
                                                                <fmt:formatNumber value="${total}" type="number" minFractionDigits="1" maxFractionDigits="1" />
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </th>
                                                    <th>
                                                        <c:choose>
                                                            <c:when test="${total >= 5}">
                                                                <div style="color: green">Pass</div> 
                                                            </c:when>
                                                            <c:otherwise>
                                                                <div style="color: red">Not Pass</div> 

                                                            </c:otherwise>
                                                        </c:choose>
                                                    </th>

                                                </tr>                              `   

                                            </tbody>
                                        </table>
                                    </c:if>

                                    <c:if test="${viewMark.subject_name eq 'WED201c'}">
                                        <table class="table table-bordered"style="border: solid 1px">
                                            <thead>
                                                <tr>
                                                    <th scope="col">PE</th>
                                                    <th scope="col">TE</th>
                                                    <th scope="col">Total</th>
                                                    <th scope="col">Status</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <th>
                                                        <c:choose>
                                                            <c:when test="${viewMark.pe == 0}">
                                                                Empty
                                                            </c:when>
                                                            <c:otherwise>
                                                                ${viewMark.pe}
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </th>
                                                    <th>
                                                        <c:choose>
                                                            <c:when test="${viewMark.te == 0}">
                                                                Empty
                                                            </c:when>
                                                            <c:otherwise>
                                                                ${viewMark.te}
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </th>
                                                    <th>
                                                        <c:choose>
                                                            <c:when test="${total == 0}">
                                                                Empty
                                                            </c:when>
                                                            <c:otherwise>
                                                                <c:set var="total" value="${(viewMark.pe*0.5 +viewMark.te*0.5)}" />
                                                                <fmt:formatNumber value="${total}" type="number" minFractionDigits="1" maxFractionDigits="1" />
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </th>
                                                    <th>
                                                        <c:choose>
                                                            <c:when test="${total >= 5}">
                                                                <div style="color: green">Pass</div> 
                                                            </c:when>
                                                            <c:otherwise>
                                                                <div style="color: red">Not Pass</div> 

                                                            </c:otherwise>
                                                        </c:choose>
                                                    </th>


                                                </tr>                                `   

                                            </tbody>
                                        </table>
                                    </c:if>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
        </main>

        <!--   Core JS Files   -->
        <script src="./assets/js/core/popper.min.js"></script>
        <script src="./assets/js/core/bootstrap.min.js"></script>
        <script src="./assets/js/plugins/perfect-scrollbar.min.js"></script>
        <script src="./assets/js/plugins/smooth-scrollbar.min.js"></script>

        <!-- Github buttons -->
        <script async defer src="https://buttons.github.io/buttons.js"></script>
        <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
        <script src="./assets/js/material-dashboard.min.js?v=3.1.0"></script>
    </body>

</html>