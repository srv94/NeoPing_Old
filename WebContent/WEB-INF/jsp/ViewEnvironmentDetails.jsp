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
		<section id="main-content">
			<section class="wrapper">
				<div class="row mt">
          		<div class="col-lg-12">
                  <div class="form-panel">
                  	  <h4 class="mb"><i class="fa fa-angle-right"></i> Environment Details</h4>
                      <form method="get" class="form-horizontal style-form">
                          <div class="form-group">
                              <label class="col-lg-2 col-sm-2 control-label">Environment Name</label>
                              <div class="col-lg-10">
                                  <p class="form-control-static">${environment.envName}</p>
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-lg-2 col-sm-2 control-label">Environment Url</label>
                              <div class="col-lg-10">
                                  <p class="form-control-static">${environment.envUrl}</p>
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-lg-2 col-sm-2 control-label">Revision Number</label>
                              <div class="col-lg-10">
                                  <p class="form-control-static">${environment.revisionNumber}</p>
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-lg-2 col-sm-2 control-label">Log Host</label>
                              <div class="col-lg-10">
                                  <p class="form-control-static">${environment.envLogUrl}</p>
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-lg-2 col-sm-2 control-label">Log User Name</label>
                              <div class="col-lg-10">
                                  <p class="form-control-static">${environment.envLogUser}</p>
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-lg-2 col-sm-2 control-label">Log Password</label>
                              <div class="col-lg-10">
                                  <p class="form-control-static">${environment.envLogPass}</p>
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-lg-2 col-sm-2 control-label">Environment Log Path</label>
                              <div class="col-lg-10">
                                  <p class="form-control-static">${environment.envLog}</p>
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-lg-2 col-sm-2 control-label">War Path</label>
                              <div class="col-lg-10">
                                  <p class="form-control-static">${environment.envWar}</p>
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-lg-2 col-sm-2 control-label">Server Log Path</label>
                              <div class="col-lg-10">
                                  <p class="form-control-static">${environment.envServerLog}</p>
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-lg-2 col-sm-2 control-label">DB Host</label>
                              <div class="col-lg-10">
                                  <p class="form-control-static">${environment.dbUrl}</p>
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-lg-2 col-sm-2 control-label">DB User Name</label>
                              <div class="col-lg-10">
                                  <p class="form-control-static">${environment.dbUser}</p>
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-lg-2 col-sm-2 control-label">DB Password</label>
                              <div class="col-lg-10">
                                  <p class="form-control-static">${environment.dbPass}</p>
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-lg-2 col-sm-2 control-label">DB Schema</label>
                              <div class="col-lg-10">
                                  <p class="form-control-static">${environment.dbSchema}</p>
                              </div>
                          </div>
                          
                          
                      </form>
                  </div>
          		</div><!-- col-lg-12-->      	
          	</div>

			</section>
		</section>

		<!--main content end-->
		<!--footer start-->
		<%@include file="footer.jsp"%>
		<!--footer end-->
	</section>

	<script type="text/javascript">
		/* $(document)
				.ready(
						function() {
							var unique_id = $.gritter
									.add({
										// (string | mandatory) the heading of the notification
										title : 'Welcome to Dashgum!',
										// (string | mandatory) the text inside the notification
										text : 'Hover me to enable the Close Button. You can hide the left sidebar clicking on the button next to the logo. Free version for <a href="http://blacktie.co" target="_blank" style="color:#ffd777">BlackTie.co</a>.',
										// (string | optional) the image to display on the left
										image : '<c:url value="/assets/img/ui-sam.jpg" />',
										// (bool | optional) if you want it to fade out on its own or just sit there
										sticky : true,
										// (int | optional) the time you want it to be alive for before fading out
										time : '',
										// (string | optional) the class name you want to apply to that specific message
										class_name : 'my-sticky-class'
									});

							return false;
						}); */
	</script>

	<script type="application/javascript">
		
		
		
		
		
		
		
		
        $(document).ready(function () {
        
        });
        
        
        function myNavFunction(id) {
            $("#date-popover").hide();
            var nav = $("#" + id).data("navigation");
            var to = $("#" + id).data("to");
            console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
        }
    
	
	
	
	
	
	
	
	</script>

	<script src="<c:url value="/assets/js/other/showAllEnvironment.js" />"></script>
</body>
</html>