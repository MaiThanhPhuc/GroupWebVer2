<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Three Guy</title>
    <link
            rel="shortcut icon"
            href="./images/favicon.png"
            type="image/png"
    />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link
            href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;700;900&display=swap"
            rel="stylesheet"
    />
    <link
            href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css"
            rel="stylesheet"
    />
    <!-- CSS -->
    <link rel="stylesheet" href="./styles/grid.css" />
    <link rel="stylesheet" href="./styles/app.css" />
</head>

<body class="loading">
<!-- top nav -->
<div class="nav-wrapper">
    <div class="container">
        <div class="nav">
            <a href="index.jsp" class="logo"><strong>Three</strong>Guy</a>
            <div class="menu">
                <a href="index.jsp" class="menu-btn">Covid Tracker</a>
                <a href="homework.html" class="menu-btn">Daily Homework</a>
                <a href="project.html" class="menu-btn">Project</a>
                <a href="about.html" class="menu-btn">About us</a>
            </div>
        </div>
    </div>
</div>

<!-- end top nav -->

<!-- main content -->
<div class="content">
    <div class="container">
        <!-- country select -->
        <div class="row">
            <div class="col-3 col-md-6 col-sm-12">
                <div class="box">
                    <div class="country-select" id="country-select">
                        <div class="country-select-toggle" id="country-select-toggle">
                            <span> Global </span>
                            <i class="bx bx-chevron-down"></i>
                        </div>
                        <div class="country-select-list" id="country-select-list">
                            <label>
                                <input type="text" placeholder="Search country name" />
                            </label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end country select -->

        <!-- tracking information -->
        <div class="row">
            <!-- left content -->
            <div class="col-8 col-md-12 col-sm-12">
                <div class="row">
                    <!-- counter -->
                    <div class="col-4 col-md-4 col-sm-12">
                        <div class="box box-hover">
                            <div class="count count-confirmed">
                                <div class="count-icon">
                                    <i class="bx bxs-virus"></i>
                                </div>
                                <div class="count-info">
                                    <h5 id="confirmed-total">123,456,789</h5>
                                    <span>confirmed</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- counter -->
                    <!-- counter -->
                    <div class="col-4 col-md-4 col-sm-12">
                        <div class="box box-hover">
                            <div class="count count-recovered">
                                <div class="count-icon">
                                    <i class="bx bxs-smile"></i>
                                </div>
                                <div class="count-info">
                                    <h5 id="recovered-total">123,456,789</h5>
                                    <span>recovered</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- counter -->
                    <!-- counter -->
                    <div class="col-4 col-md-4 col-sm-12">
                        <div class="box box-hover">
                            <div class="count count-death">
                                <div class="count-icon">
                                    <i class="bx bxs-sad"></i>
                                </div>
                                <div class="count-info">
                                    <h5 id="death-total">123,456,789</h5>
                                    <span>deaths</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- counter -->

                    <!-- all time chart -->
                    <div class="col-12">
                        <div class="box">
                            <div class="box-header">all times</div>
                            <div class="box-body">
                                <div id="all-time-chart"></div>
                            </div>
                        </div>
                    </div>
                    <!-- end all time chart -->
                </div>
            </div>
            <!-- end left content -->

            <!-- right content -->
            <div class="col-4 col-md-12 col-sm-12">
                <!-- 30 days chart -->
                <div class="box">
                    <div class="box-header">last 30 days</div>
                    <div class="box-body">
                        <div id="days-chart"></div>
                    </div>
                </div>
                <!-- end 30 days chart -->

                <!-- top country affected -->
                <div class="box">
                    <div class="box-header">top countries affected</div>
                    <div class="box-body">
                        <table class="table-countries" id="table-countries">
                            <thead>
                            <tr>
                                <th>Country</th>
                                <th>Confirmed</th>
                                <th>Recovered</th>
                                <th>Deaths</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>test</td>
                                <td>test</td>
                                <td>test</td>
                                <td>test</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- end top country affected -->
            </div>
            <!-- end right content -->
        </div>
        <!-- end tracking information -->
    </div>
</div>
<!-- end main content -->

<!-- footer -->
<div class="footer">
    Source from
    <a
            href="https://documenter.getpostman.com/view/10808728/SzS8rjbc#b07f97ba-24f4-4ebe-ad71-97fa35f3b683"
            target="_blank"
    >api.covid19api.com</a
    >
    <br />
    Copyright
    <a href="https://www.youtube.com/tuattrananh" target="_blank"
    >Tuat Tran Anh</a
    >, Design by Mee
</div>
<!-- end footer -->

<!-- loader -->
<div class="loader">
    <i class="bx bxs-virus bx-spin"></i>
</div>
<!-- end loader -->

<!-- apexchart -->
<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
<!-- JS -->
<script src="./js/fetchApi.js"></script>
<script src="./js/covidApi.js"></script>
<script src="./js/app.js"></script>
</body>
</html>
