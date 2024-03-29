<div class="content-wrapper">
   <section class="content">
      <div class="row">
        <!-- left column -->
        <div class="col-md-12">
          <!-- general form elements -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Attendence Report</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
			<div style="padding:20px;">
            <form id="defaultForm" method="post" class="" action="<?php echo base_url('academic_mangement/attendance'); ?>">
			
						<div class="col-md-4">
							<div class="form-group">
							<label class=" control-label">Class</label>
										<div class="">
											<select class="form-control" name="class_id" id="class_id" required> 
												<option value="">Select Class</option>
												<?php foreach($class_list as $list){ ?>
													<option value="<?php echo $list['id']; ?>"><?php echo $list['name'].' '.$list['section']; ?></option>
												<?php } ?>
												
											</select>
										</div>
									</div>
                        </div>
							
						<div class="col-md-4">
							<div class="form-group">
                <label> Date:</label>

                <div class="input-group date">
                  <div class="input-group-addon">
                    <i class="fa fa-calendar"></i>
                  </div>
                  <input type="text" name="date" class="form-control pull-right" id="datepicker1" autocomplete="off" required>
                </div>
                <!-- /.input group -->
              </div>
                        </div>			
						
						
							
						<div class="col-md-12">
							<div class="form-group">
							<label> &nbsp;</label>

							<div class="input-group ">
<button type="submit" class="btn btn-primary pull-right " name="signup" value="submit">Check</button>							</div>
							<!-- /.input group -->
						  </div>
                        </div>
					
						<div class="clearfix">&nbsp;</div>
						
						
						
						
					
						<div class="clearfix">&nbsp;</div>
						 
						
                    </form>
					<div class="clearfix">&nbsp;</div>
					
			<?php if(isset($student_attandance) && count($student_attandance)>0){ ?>
				<div class="box attentdence-table" style="">
					<div class="box-header">
					  <h3 class="">Attendence Report </h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body table-responsive">
					<table id="example1" class="table table-bordered table-striped">
						 <thead>
                <tr>
                  <th>Class</th>
                  <th>Name</th>
                  <th>Admission number</th>
				  <?php foreach($students_attandances['hours'] as $lis){ ?>
                  <th><?php echo $lis['time']; ?></th>
				  <?php } ?>
                  
                
                </tr>
                </thead>
						<tbody>
				<?php foreach($student_attandance as $list){ ?>
					 <tr>
					<td><?php echo $list['classname']; ?><?php echo $list['section']; ?></td>
					<td><?php echo $list['name']; ?></td>
					<td><?php echo $list['roll_number']; ?> </td>
					<?php $count='';$cnt=1;foreach($list['hours_list'] as $lis){ ?>
					<td><?php echo $lis['attendence']; ?></td>
					<?php 
							$count=$cnt;
							$cnt++;
						}
				    ?>
					<?php for($d=$count;$d<count($class_time);$d++){ ?>
						<td>&nbsp;
						</td>
					<?php } ?>
					
					 </tr>
				<?php } ?>
               
				 
				
					
                
                </tbody>
              
					  </table>
					  <div class="clearfix">&nbsp;</div>
					 
					  </form>
					</div>
					<!-- /.box-body -->
				  </div>
		  <?php } ?>
          <!-- /.box -->
          </div>
          </div>
          <!-- /.box -->

         

        </div>
      
        </div>
        <!--/.col (right) -->
      </div>
      <!-- /.row -->
	  
    </section> 
   
</div>
  <script type="text/javascript">
  $(document).ready(function(){
    $("#attentdence").click(function(){
        $(".attentdence-table").toggle();
    });
});
  
  </script>
 
  <script type="text/javascript">
  
$(document).ready(function() {
    $('#datepicker1').datepicker({
      autoclose: true
    });
    $('#defaultForm').bootstrapValidator({
//      
        fields: {
            class_id: {
                validators: {
                    notEmpty: {
                        message: 'Class is required '
                    }
                }
            },
            	date: {
                validators: {
					notEmpty: {
								message: 'Date is required'
						},
                    date: {
                        format: 'MM/DD/YYYY',
                        message: 'The value is not a valid date'
                    }
                }
            },
            
            
        }
    });
    $('#datepicker1').on('changeDate ', function(e) {
		$('#defaultForm').bootstrapValidator('revalidateField', 'date');
		});
    // Validate the form manually
    $('#validateBtn').click(function() {
        $('#defaultForm').bootstrapValidator('validate');
    });

    $('#resetBtn').click(function() {
        $('#defaultForm').data('bootstrapValidator').resetForm(true);
    });
});
</script>
<script>
  $(function () {
    $("#example1").DataTable();
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false
    });
  });
</script>
