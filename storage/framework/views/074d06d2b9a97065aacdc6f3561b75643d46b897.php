<div>
    <div  class="row justify-content-center align-items-center center">
        <div class="col-md-12 col-xs-12">
        <div class="card-header alert alert-info">
            <i class="fa fa-home"></i> ORGANIZATION
            <button href="#" class="btn btn-sm btn-success pull-right" data-toggle="modal" data-target="#add"><i class="fa fa-plus"></i> Register Organization</button>
        </div>

        <table id="example" class="table table-striped table-bordered" style="width:100%">
        <thead>
            <tr>
                <th>Org. Name</th>
                <th>Cars</th>
                <th>Supervisor</th>
                <th>Activity Type</th>
                <th>Activity Location</th>
                <th>Price</th>
                <th>Contract Period</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <?php $__currentLoopData = $clients; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $row): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <?php
                $carList = json_decode($row->vehicleId);
                $x = 0; $lts = '';

            ?>
            <tr>
                <td><?php echo e($row->organizationName); ?></td>
                <td><button class="btn btn-info btn-sm" data-toggle="modal" data-target="#car<?php echo e($row->id); ?>">Cars</button></td>
                <td><?php echo e($row->fleetId); ?></td>
                <td><?php echo e($row->activityType); ?></td>
                <td><?php echo e($row->activityLocation); ?></td>
                <td><?php echo e($row->organizationTotalPrice); ?></td>
                <td><?php echo e($row->organizationContractEnd); ?></td>
                <td>
                    <button disabled class="btn btn-info btn-sm" data-toggle="modal" data-target="#edit<?php echo e($row->id); ?>"><i class="fa fa-edit"></i></button>
                    <button disabled class="btn btn-danger btn-sm" data-toggle="modal" data-target="#delete<?php echo e($row->id); ?>"><i class="fa fa-times"></i></button>
                </td>
            </tr>
            

                <div class="modal fade" id="delete<?php echo e($row->id); ?>" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
                  <div class="modal-dialog">
                    <div class="modal-content">
                      <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h6 class="modal-title alert alert-warning" id="myModalLabel">WARNING!!!</h6>
                      </div>
                      <div style="overflow: auto; text-align: center;" class="modal-body">

                        COMFIRM DELETE ACTION

                            <form class="form" action="/deleteRecord" method="post">
                              <?php echo csrf_field(); ?>
                              <input type="hidden" name="user_id" value="<?php echo e($row->id); ?>">
                              <input type="hidden" name="page" value="client">
                                    
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal" aria-hidden="true">Close</button>
                                <button type="submit" class="btn btn-primary">Comfirm</button>
                              </div>
                            </form>

                      </div>
                    </div>
                  </div>
                </div>
            

                <div class="modal fade" id="car<?php echo e($row->id); ?>" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
                  <div class="modal-dialog">
                    <div class="modal-content">
                      <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h6 class="modal-title alert alert-info" id="myModalLabel">Car List</h6>
                      </div>
                      <div style="overflow: auto;" class="modal-body">
                        
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal" aria-hidden="true">Close</button>
                      </div>
                    </div>
                  </div>
                </div>

            

                

            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            
        </tbody>
    </table>  

            

        </div>
    </div>
</div>



<div class="modal fade" id="add" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel">Register Organization</h4>
      </div>
      <div style="overflow: auto;" class="modal-body">

            <form class="form" action="/addOrganization" method="post">
              <?php echo csrf_field(); ?>

                    <div class="form-group">
                        <label for="u_name" class="text-info">Organization Name:</label><br>
                        <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-home"></i></span>
                        <input type="text" class="form-control" name="organizationName" placeholder="Enter Organization name" required>
                        </div>
                    </div>                                 
                    
                    <div class="form-group">
                        <label for="u_password" class="text-info">Activity Type:</label><br>
                        <select class="form-control" id="select_table" name="activityType" required>
                        <option value="">Select Activity Type</option>
                        <option value="Day">Day</option>
                        <option value="Night">Night</option>
                        <option value="Day and Night">Day and Night</option>
                        <option value="One Way Trip">Trip (One Way)</option>
                        <option value="Round Trip">Trip (Round Trip)</option>
                       </select>
                    </div>

                    <div class="form-group">
                        <label for="u_name" class="text-info">Vehicle Type:</label><br>
                        <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-car"></i></span>
                        <input type="text" class="form-control" name="vehicleType" placeholder="Enter Vehicle Type" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="u_name" class="text-info">Activity Location:</label><br>
                        <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-map"></i></span>
                        <input type="text" class="form-control" name="activityLocation" placeholder="Enter Activity Location" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="u_phone" class="text-info">Price Daily:</label><br>
                        <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-money"></i></span>
                        <input id="price" type="number" class="form-control" name="organizationPrice" oninput="getPrice()" placeholder="Enter Price" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="u_phone" class="text-info">Contract Start at:</label><br>
                        <div class="input-group">
                        <span class="input-group-addon"><i class="fa-solid fa-clock"></i></span>
                        <input id="start" type="date" class="form-control" name="organizationContractStart" placeholder="Enter Contract Starting Date" onchange="getDay()" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="u_phone" class="text-info">Contract End at:</label><br>
                        <div class="input-group">
                        <span class="input-group-addon"><i class="fa-solid fa-clock"></i></span>
                        <input id="end" type="date" class="form-control" name="organizationContractEnd" placeholder="Enter Contract Ending Date" onchange="getDay()" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="u_phone" class="text-info">Total Days:</label><br>
                        <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-home"></i></span>
                        <input id="totalDays" type="number" class="form-control" name="organizationContractDays" placeholder="Total Days" readonly required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="u_phone" class="text-info">Total Price:</label><br>
                        <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-money"></i></span>
                        <input id="totalPrice" type="number" class="form-control" name="organizationTotalPrice" placeholder="Total Price" readonly required>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <input type="submit" name="submit" class="btn btn-info btn-md btn-block pull-right" value="Register Organization">
                    </div>
            </form>




      </div>
    </div>
  </div>
</div>

<script>
function getPrice(){
    var price = Number(document.getElementById('price').value);
    var totalDays = Number(document.getElementById('totalDays').value);
    document.getElementById('totalPrice').value = price * totalDays;
}
function getDay(){
    var start = document.getElementById('start').value;
    var end = document.getElementById('end').value;
    var date1 = new Date(start);
    var date2 = new Date(end);
    var Difference_In_Time = date2.getTime() - date1.getTime();
    var Difference_In_Days = Difference_In_Time / (1000 * 3600 * 24);
    document.getElementById('totalDays').value = Difference_In_Days;

    getPrice();
}

</script><?php /**PATH C:\xampp\htdocs\damuli\resources\views/SuperAdmin/organization.blade.php ENDPATH**/ ?>