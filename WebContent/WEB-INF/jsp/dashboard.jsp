<%@include file="taglib_includes.jsp"%>
<!DOCTYPE html>
<html lang="en">

<%@include file="head.jsp"%>
<body>

	<section id="container">
		<!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->

		<%@include file="header.jsp"%>

		<!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
		<!--sidebar start-->
		<%@include file="sidebar.jsp"%>
		<!--sidebar end-->

		<!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">

				<div class="row">
					<div class="col-lg-9 main-chart">

						<div class="row mtbox">
							<div class="col-md-2 col-sm-2 col-md-offset-1 box0">
								<div class="box1">
									<span class="li_news"></span>
									<h3>&darr; ${TotalDown}</h3>
								</div>
								<p>${TotalDown } out of ${Total} environment are down.</p>
							</div>
							<div class="col-md-2 col-sm-2 box0">
								<div class="box1">
									<span class="li_news"></span>
									<h3>&darr; ${DownCAS }</h3>
								</div>
								<p>${DownCAS} out of ${TotalCAS} CAS environment are down.</p>
							</div>
							<div class="col-md-2 col-sm-2 box0">
								<div class="box1">
									<span class="li_news"></span>
									<h3>&darr; ${DownLMS }</h3>
								</div>
								<p>${DownLMS} out of ${TotalLMS} LMS environment are down.</p>
							</div>
							<div class="col-md-2 col-sm-2 box0">
								<div class="box1">
									<span class="li_news"></span>
									<h3>&darr; ${DownINT }</h3>
								</div>
								<p>${DownINT} out of ${TotalINT} Integration environment are down.</p>
							</div>
							<div class="col-md-2 col-sm-2 box0">
								<div class="box1">
									<span class="li_data"></span>
									<h3>OK!</h3>
								</div>
								<p>Your server is working perfectly. Relax & enjoy.</p>
							</div>

						</div>
						<!-- /row mt -->


						<div class="row mt">
							<!-- SERVER STATUS PANELS -->
							<div class="col-md-4 col-sm-4 mb">
								<div class="white-panel pn donut-chart">
									<div class="white-header">
										<h5>Environment Status</h5>
									</div>
									<div class="row">
										<div class="col-sm-6 col-xs-6 goleft">
											<p>
												<i class="fa fa-database" id = "statusPer"></i>
											</p>
										</div>
									</div>
									<canvas id="serverstatus01" height="120" width="120"></canvas>
									<script>
									var down = '${TotalDown}';
									var total = '${Total}';
										var doughnutData = [ {
											value : (100 - (parseFloat(down)*100)/parseFloat(total)),
											color : "#68dff0"
										}, {
											value : (parseFloat(down)*100)/parseFloat(total),
											color : "#fdfdfd"
										} ];
										var myDoughnut = new Chart(document
												.getElementById(
														"serverstatus01")
												.getContext("2d"))
												.Doughnut(doughnutData);
									</script>
								</div>
								<! --/grey-panel -->
							</div>
							<!-- /col-md-4-->


							<div class="col-md-4 col-sm-4 mb">
								<div class="white-panel pn">
									<div class="white-header">
										<h5>TOP PRODUCT</h5>
									</div>
									<div class="row">
										<div class="col-sm-6 col-xs-6 goleft">
											<p>
												<i class="fa fa-heart"></i> CAS
											</p>
										</div>
										<div class="col-sm-6 col-xs-6"></div>
									</div>
									<div class="centered">
										<img src="<c:url value="/assets/img/product.png" />"
											width="120">
									</div>
								</div>
							</div>
							<!-- /col-md-4 -->

							<div class="col-md-4 mb">
								<!-- WHITE PANEL - TOP USER -->
								<div class="white-panel pn">
									<div class="white-header">
										<h5>TOP USER</h5>
									</div>
									<p>
										<img src="<c:url value="/assets/img/ui-zac.jpg" />"
											class="img-circle" width="80">
									</p>
									<p>
										<b>Saurabh Verma</b>
									</p>
									<div class="row">
										<div class="col-md-6">
											<p class="small mt">MEMBER SINCE</p>
											<p>2016</p>
										</div>
										<div class="col-md-6">
											<p class="small mt">TOTAL Feature</p>
											<p>3</p>
										</div>
									</div>
								</div>
							</div>
							<!-- /col-md-4 -->


						</div>
						<!-- /row -->


						<div class="row">
							<!-- TWITTER PANEL -->
							<div class="col-md-4 mb">
								<div class="darkblue-panel pn">
									<div class="darkblue-header">
										<h5>DROPBOX STATICS</h5>
									</div>
									<canvas id="serverstatus02" height="120" width="120"></canvas>
									<script>
										var doughnutData = [ {
											value : 60,
											color : "#68dff0"
										}, {
											value : 40,
											color : "#444c57"
										} ];
										var myDoughnut = new Chart(document
												.getElementById(
														"serverstatus02")
												.getContext("2d"))
												.Doughnut(doughnutData);
									</script>
									<p>April 17, 2014</p>
									<footer>
										<div class="pull-left">
											<h5>
												<i class="fa fa-hdd-o"></i> 17 GB
											</h5>
										</div>
										<div class="pull-right">
											<h5>60% Used</h5>
										</div>
									</footer>
								</div>
								<! -- /darkblue panel -->
							</div>
							<!-- /col-md-4 -->


							<div class="col-md-4 mb">
								<!-- INSTAGRAM PANEL -->
								<div class="instagram-panel pn">
									<i class="fa fa-instagram fa-4x"></i>
									<p>
										@THISISYOU<br /> 5 min. ago
									</p>
									<p>
										<i class="fa fa-comment"></i> 18 | <i class="fa fa-heart"></i>
										49
									</p>
								</div>
							</div>
							<!-- /col-md-4 -->

							<div class="col-md-4 col-sm-4 mb">
								<!-- REVENUE PANEL -->
								<div class="darkblue-panel pn">
									<div class="darkblue-header">
										<h5>REVENUE</h5>
									</div>
									<div class="chart mt">
										<div class="sparkline" data-type="line" data-resize="true"
											data-height="75" data-width="90%" data-line-width="1"
											data-line-color="#fff" data-spot-color="#fff"
											data-fill-color="" data-highlight-line-color="#fff"
											data-spot-radius="4"
											data-data="[200,135,667,333,526,996,564,123,890,464,655]"></div>
									</div>
									<p class="mt">
										<b>$ 17,980</b><br />Month Income
									</p>
								</div>
							</div>
							<!-- /col-md-4 -->

						</div>
						<!-- /row -->

						<div class="row mt">
							<!--CUSTOM CHART START -->
							<div class="border-head">
								<h3>CAS Issues</h3>
							</div>
							<div class="custom-bar-chart">
								<ul class="y-axis">
									<li><span>10.000</span></li>
									<li><span>8.000</span></li>
									<li><span>6.000</span></li>
									<li><span>4.000</span></li>
									<li><span>2.000</span></li>
									<li><span>0</span></li>
								</ul>
								<div class="bar">
									<div class="title">JAN</div>
									<div class="value tooltips" data-original-title="8.500"
										data-toggle="tooltip" data-placement="top">85%</div>
								</div>
								<div class="bar ">
									<div class="title">FEB</div>
									<div class="value tooltips" data-original-title="5.000"
										data-toggle="tooltip" data-placement="top">50%</div>
								</div>
								<div class="bar ">
									<div class="title">MAR</div>
									<div class="value tooltips" data-original-title="6.000"
										data-toggle="tooltip" data-placement="top">60%</div>
								</div>
								<div class="bar ">
									<div class="title">APR</div>
									<div class="value tooltips" data-original-title="4.500"
										data-toggle="tooltip" data-placement="top">45%</div>
								</div>
								<div class="bar">
									<div class="title">MAY</div>
									<div class="value tooltips" data-original-title="3.200"
										data-toggle="tooltip" data-placement="top">32%</div>
								</div>
								<div class="bar ">
									<div class="title">JUN</div>
									<div class="value tooltips" data-original-title="6.200"
										data-toggle="tooltip" data-placement="top">62%</div>
								</div>
								<div class="bar">
									<div class="title">JUL</div>
									<div class="value tooltips" data-original-title="7.500"
										data-toggle="tooltip" data-placement="top">75%</div>
								</div>
							</div>
							<!--custom chart end-->
						</div>
						<!-- /row -->
						<div class="row mt">
							<!--CUSTOM CHART START -->
							<div class="border-head">
								<h3>LMS Issues</h3>
							</div>
							<div class="custom-bar-chart">
								<ul class="y-axis">
									<li><span>10.000</span></li>
									<li><span>8.000</span></li>
									<li><span>6.000</span></li>
									<li><span>4.000</span></li>
									<li><span>2.000</span></li>
									<li><span>0</span></li>
								</ul>
								<div class="bar">
									<div class="title">JAN</div>
									<div class="value tooltips" data-original-title="8.500"
										data-toggle="tooltip" data-placement="top">85%</div>
								</div>
								<div class="bar ">
									<div class="title">FEB</div>
									<div class="value tooltips" data-original-title="5.000"
										data-toggle="tooltip" data-placement="top">50%</div>
								</div>
								<div class="bar ">
									<div class="title">MAR</div>
									<div class="value tooltips" data-original-title="6.000"
										data-toggle="tooltip" data-placement="top">60%</div>
								</div>
								<div class="bar ">
									<div class="title">APR</div>
									<div class="value tooltips" data-original-title="4.500"
										data-toggle="tooltip" data-placement="top">45%</div>
								</div>
								<div class="bar">
									<div class="title">MAY</div>
									<div class="value tooltips" data-original-title="3.200"
										data-toggle="tooltip" data-placement="top">32%</div>
								</div>
								<div class="bar ">
									<div class="title">JUN</div>
									<div class="value tooltips" data-original-title="6.200"
										data-toggle="tooltip" data-placement="top">62%</div>
								</div>
								<div class="bar">
									<div class="title">JUL</div>
									<div class="value tooltips" data-original-title="7.500"
										data-toggle="tooltip" data-placement="top">75%</div>
								</div>
							</div>
							<!--custom chart end-->
						</div>
						<!-- /row -->
						<div class="row mt">
							<!--CUSTOM CHART START -->
							<div class="border-head">
								<h3>Integration Issues</h3>
							</div>
							<div class="custom-bar-chart">
								<ul class="y-axis">
									<li><span>10.000</span></li>
									<li><span>8.000</span></li>
									<li><span>6.000</span></li>
									<li><span>4.000</span></li>
									<li><span>2.000</span></li>
									<li><span>0</span></li>
								</ul>
								<div class="bar">
									<div class="title">JAN</div>
									<div class="value tooltips" data-original-title="8.500"
										data-toggle="tooltip" data-placement="top">85%</div>
								</div>
								<div class="bar ">
									<div class="title">FEB</div>
									<div class="value tooltips" data-original-title="5.000"
										data-toggle="tooltip" data-placement="top">50%</div>
								</div>
								<div class="bar ">
									<div class="title">MAR</div>
									<div class="value tooltips" data-original-title="6.000"
										data-toggle="tooltip" data-placement="top">60%</div>
								</div>
								<div class="bar ">
									<div class="title">APR</div>
									<div class="value tooltips" data-original-title="4.500"
										data-toggle="tooltip" data-placement="top">45%</div>
								</div>
								<div class="bar">
									<div class="title">MAY</div>
									<div class="value tooltips" data-original-title="3.200"
										data-toggle="tooltip" data-placement="top">32%</div>
								</div>
								<div class="bar ">
									<div class="title">JUN</div>
									<div class="value tooltips" data-original-title="6.200"
										data-toggle="tooltip" data-placement="top">62%</div>
								</div>
								<div class="bar">
									<div class="title">JUL</div>
									<div class="value tooltips" data-original-title="7.500"
										data-toggle="tooltip" data-placement="top">75%</div>
								</div>
							</div>
							<!--custom chart end-->
						</div>
						<!-- /row -->

					</div>
					<!-- /col-lg-9 END SECTION MIDDLE -->


					<!-- **********************************************************************************************************************************************************
      RIGHT SIDEBAR CONTENT
      *********************************************************************************************************************************************************** -->

					<div class="col-lg-3 ds">
						<!--COMPLETED ACTIONS DONUTS CHART-->
						<h3>NOTIFICATIONS</h3>

						<!-- First Action -->
						<div class="desc">
							<div class="thumb">
								<span class="badge bg-theme"><i class="fa fa-clock-o"></i></span>
							</div>
							<div class="details">
								<p>
									<muted>2 Minutes Ago</muted>
									<br /> <a href="#">James Brown</a> subscribed to your
									newsletter.<br />
								</p>
							</div>
						</div>
						<!-- Second Action -->
						<div class="desc">
							<div class="thumb">
								<span class="badge bg-theme"><i class="fa fa-clock-o"></i></span>
							</div>
							<div class="details">
								<p>
									<muted>3 Hours Ago</muted>
									<br /> <a href="#">Diana Kennedy</a> purchased a year
									subscription.<br />
								</p>
							</div>
						</div>
						<!-- Third Action -->
						<div class="desc">
							<div class="thumb">
								<span class="badge bg-theme"><i class="fa fa-clock-o"></i></span>
							</div>
							<div class="details">
								<p>
									<muted>7 Hours Ago</muted>
									<br /> <a href="#">Brandon Page</a> purchased a year
									subscription.<br />
								</p>
							</div>
						</div>
						<!-- Fourth Action -->
						<div class="desc">
							<div class="thumb">
								<span class="badge bg-theme"><i class="fa fa-clock-o"></i></span>
							</div>
							<div class="details">
								<p>
									<muted>11 Hours Ago</muted>
									<br /> <a href="#">Mark Twain</a> commented your post.<br />
								</p>
							</div>
						</div>
						<!-- Fifth Action -->
						<div class="desc">
							<div class="thumb">
								<span class="badge bg-theme"><i class="fa fa-clock-o"></i></span>
							</div>
							<div class="details">
								<p>
									<muted>18 Hours Ago</muted>
									<br /> <a href="#">Daniel Pratt</a> purchased a wallet in your
									store.<br />
								</p>
							</div>
						</div>

						<!-- USERS ONLINE SECTION -->
						<h3>TEAM MEMBERS</h3>
						<!-- First Member -->
						<div class="desc">
							<div class="thumb">
								<img class="img-circle"
									src="<c:url value="/assets/img/ui-zac.jpg" />" width="35px"
									height="35px" align="">
							</div>
							<div class="details">
								<p>
									<a href="#">Saurabh Verma</a><br />
									<muted>Developer</muted>
								</p>
							</div>
						</div>
						<!-- Second Member -->
						<div class="desc">
							<div class="thumb">
								<img class="img-circle"
									src="<c:url value="/assets/img/ui-zac.jpg" />" width="35px"
									height="35px" align="">
							</div>
							<div class="details">
								<p>
									<a href="#">Narendra Mathuriya</a><br />
									<muted>Deployment</muted>
								</p>
							</div>
						</div>
						<%-- <!-- Third Member -->
						<div class="desc">
							<div class="thumb">
								<img class="img-circle"
									src="<c:url value="/assets/img/ui-danro.jpg" />" width="35px"
									height="35px" align="">
							</div>
							<div class="details">
								<p>
									<a href="#">DAN ROGERS</a><br />
									<muted>Available</muted>
								</p>
							</div>
						</div>
						<!-- Fourth Member -->
						<div class="desc">
							<div class="thumb">
								<img class="img-circle"
									src="<c:url value="/assets/img/ui-zac.jpg" />" width="35px"
									height="35px" align="">
							</div>
							<div class="details">
								<p>
									<a href="#">Zac Sniders</a><br />
									<muted>Available</muted>
								</p>
							</div>
						</div>
						<!-- Fifth Member -->
						<div class="desc">
							<div class="thumb">
								<img class="img-circle"
									src="<c:url value="/assets/img/ui-sam.jpg" />" width="35px"
									height="35px" align="">
							</div>
							<div class="details">
								<p>
									<a href="#">Marcel Newman</a><br />
									<muted>Available</muted>
								</p>
							</div>
						</div>
 --%>
						<!-- CALENDAR-->
						<div id="calendar" class="mb">
							<div class="panel green-panel no-margin">
								<div class="panel-body">
									<div id="date-popover" class="popover top"
										style="cursor: pointer; disadding: block; margin-left: 33%; margin-top: -50px; width: 175px;">
										<div class="arrow"></div>
										<h3 class="popover-title" style="disadding: none;"></h3>
										<div id="date-popover-content" class="popover-content"></div>
									</div>
									<div id="my-calendar"></div>
								</div>
							</div>
						</div>
						<!-- / calendar -->

					</div>
					<!-- /col-lg-3 -->
				</div>
				<! --/row -->
			</section>
		</section>

		<!--main content end-->
		<!--footer start-->
		<%@include file="footer.jsp"%>
		<!--footer end-->
	</section>

	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							var unique_id = $.gritter
									.add({
										// (string | mandatory) the heading of the notification
										title : 'Welcome to Neo CAS Ping!',
										// (string | mandatory) the text inside the notification
										text : 'Dont do anything.',
										// (string | optional) the image to display on the left
										image : '<c:url value="/assets/img/ui-sam.jpg" />',
										// (bool | optional) if you want it to fade out on its own or just sit there
										sticky : false,
										fade_in_speed: 'medium', // how fast notifications fade in (string or int)
										fade_out_speed: 3000, // how fast the notices fade out
										time: 3000
									});

							return false;
						});
	</script>

	<script type="application/javascript">
		var down;
		var total;
		var upPer;
		var downPer;
        $(document).ready(function () {
            $("#date-popover").popover({html: true, trigger: "manual"});
            $("#date-popover").hide();
            $("#date-popover").click(function (e) {
                $(this).hide();
            });
        
            $("#my-calendar").zabuto_calendar({
                action: function () {
                    return myDateFunction(this.id, false);
                },
                action_nav: function () {
                    return myNavFunction(this.id);
                },
                ajax: {
                    url: "show_data.php?action=1",
                    modal: true
                },
                legend: [
                    {type: "text", label: "Special event", badge: "00"},
                    {type: "block", label: "Regular event", }
                ]
            });
            down = '${TotalDown}';
    		total = '${Total}';
    		upPer = (100 - (parseFloat(down)*100)/parseFloat(total));
    		$('#statusPer').html('  ' + Math.round(upPer * 100) / 100+' %');
        });
        
        
        function myNavFunction(id) {
            $("#date-popover").hide();
            var nav = $("#" + id).data("navigation");
            var to = $("#" + id).data("to");
            console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
        }
        $('#dashboard_sidebar a').addClass( "active" );
    
	</script>


</body>
</html>
