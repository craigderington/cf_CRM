


			</div> <!-- /#wrapper -->


			<div id="footer">
			
				<div class="container">
					
					<div class="row">
						<cfoutput>
						<div class="span6">
							&copy; #Year(Now())# <a href="#" target="_blank">Craig Derington, Inc.</a>, All Rights Reserved.
						</div> <!-- /span6 -->
						
						<div id="builtby" class="span6">
							<a href="#application.root#?event=page.contact" target="_blank">Support</a><a href="#application.root#?event=page.terms" target="_blank" style="margin-left:20px;">Terms</a><a href="#application.root#?event=page.legal" target="_blank" style="margin-left:20px;">Legal</a>				
						</div> <!-- /.span6 -->
						</cfoutput>
					</div> <!-- /row -->
					
				</div> <!-- /container -->
				
			</div> <!-- /#footer -->





			<script src="js/libs/jquery-1.7.2.min.js"></script>
			<script src="js/libs/jquery-ui-1.8.21.custom.min.js"></script>
			<script src="js/libs/jquery.ui.touch-punch.min.js"></script>
			<script src="js/libs/bootstrap/bootstrap.min.js"></script>
			<script src="js/Theme.js"></script>
			<script src="js/Charts.js"></script>
			<script src="./js/plugins/excanvas/excanvas.min.js"></script>
			<script src="./js/plugins/flot/jquery.flot.js"></script>
			<script src="./js/plugins/flot/jquery.flot.pie.js"></script>
			<script src="./js/plugins/flot/jquery.flot.orderBars.js"></script>
			<script src="./js/plugins/flot/jquery.flot.tooltip.min.js"></script>
			<script src="./js/plugins/flot/jquery.flot.resize.js"></script>
			<script src="js/demos/charts/line.js"></script>
			<script src="js/demos/charts/donut.js"></script>
			
			<cfif structkeyexists(url, "event") and (url.event is "page.labels" or url.event is "page.profile")>
				<!--- a few additional js files for the labels page --->
				<script src="js/plugins/msgGrowl/js/msgGrowl.js"></script>
				<script src="js/plugins/lightbox/jquery.lightbox.js"></script>
				<script src="js/plugins/msgbox/jquery.msgbox.min.js"></script>
				<script src="js/demos/demo.bonus.js"></script>
			</cfif>
			
			
			<cfif structkeyexists(url, "event") and url.event is "page.calendar">
				<!--- a few additional js files for the reports page --->
				<script src="js/plugins/cirque/cirque.js"></script>
				<script src="js/demos/demo.reports.js"></script>
				<script src="js/demos/charts/vertical.js"></script>
				<script src="js/demos/charts/pie.js"></script>
			</cfif>
			
			
			<script>

			$(function () {
				
				Theme.init ();
				
			});
			</script>

		
		
		</body>
	</html>
