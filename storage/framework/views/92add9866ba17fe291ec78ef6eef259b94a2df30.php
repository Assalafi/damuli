<div>
    <div  class="row justify-content-center align-items-center center">
        <div class="col-md-12 col-xs-12">
        <div class="vehicled-header alert alert-info">
            <i class="fa fa-user"></i> VEHICLE
            <button href="#" class="btn btn-sm btn-success pull-right" data-toggle="modal" data-target="#add"><i class="fa fa-plus"></i>Add Vehicle</button>
        </div>

        <table id="example" class="table table-striped table-bordered" style="width:100%">
        <thead>
            <tr>
                <th>vehicle Name</th>
                <th>vehicle Type</th>
                <th>vehicle Color</th>
                <th>Plate Number</th>
                <th>vehicle Owner Name</th>
                <th>vehicle Owner Phone</th>
                
                <th>Fleet Officer</th>              
                <th>vehicle Status</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <?php $__currentLoopData = $vehicles; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $row): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <tr>
                <td><?php echo e($row->vehicleName); ?></td>
                <td><?php echo e($row->vehicleType); ?></td>
                <td><?php echo e($row->vehicleColor); ?></td>
                <td><?php echo e($row->vehiclePlateNumber); ?></td>
                <td><?php echo e($row->vehicleOwnerName); ?></td>
                <td><?php echo e($row->vehicleOwnerPhone); ?></td>
                
                <td><?php echo e($row->fleetId); ?></td>
                <td><?php echo e($row->vehicleStatus); ?></td>
                <td>
                    <button class="btn btn-info btn-sm" data-toggle="modal" data-target="#edit<?php echo e($row->id); ?>"><i class="fa fa-edit"></i></button>
                    <button class="btn btn-danger btn-sm" data-toggle="modal" data-target="#delete<?php echo e($row->id); ?>"><i class="fa fa-times"></i></button>
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

                            <form class="form" action="/deleteVehicle" method="post">
                              <?php echo csrf_field(); ?>
                              <input type="hidden" name="user_id" value="<?php echo e($row->id); ?>">
                              <input type="hidden" name="page" value="vehicle">
                                    
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal" aria-hidden="true">Close</button>
                                <button type="submit" class="btn btn-primary">Comfirm</button>
                              </div>
                            </form>

                      </div>
                    </div>
                  </div>
                </div>

            

                <div class="modal fade" id="edit<?php echo e($row->id); ?>" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
                  <div class="modal-dialog">
                    <div class="modal-content">
                      <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="myModalLabel">Edit Vehicle</h4>
                      </div>
                      <div style="overflow: auto;" class="modal-body">



                            <form class="form" action="/updateVehicle" method="post">
                              <?php echo csrf_field(); ?>
                              <input type="hidden" name="vehicle_id" value="<?php echo e($row->id); ?>">
                                    <div class="form-group">
                                        <label for="u_name" class="text-info">vehicle Name:</label><br>
                                        <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-vehicle"></i></span>
                                        <input type="text" class="form-control" name="vehicleName" value="<?php echo e($row->vehicleName); ?>" placeholder="Enter vehicle name" required>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="u_name" class="text-info">vehicle Type:</label><br>
                                        <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-vehicle"></i></span>
                                        <input type="text" class="form-control" name="vehicleType" value="<?php echo e($row->vehicleType); ?>" placeholder="Enter vehicle Type" required>
                                        </div>
                                    </div>                                    
                                    <div class="form-group">
                                        <label for="u_name" class="text-info">Color:</label><br>
                                        <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-vehicle"></i></span>
                                        <input type="text" class="form-control" name="vehicleColor" value="<?php echo e($row->vehicleColor); ?>" placeholder="Enter vehicle Color" required>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="u_email" class="text-info">Plate Number:</label><br>
                                        <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-vehicle"></i></span>
                                        <input type="text" class="form-control" name="plateNumber" value="<?php echo e($row->vehiclePlateNumber); ?>" placeholder="Enter Plate Number" required>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="u_phone" class="text-info">vehicle Owner Name:</label><br>
                                        <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                        <input type="tel" class="form-control" name="vehicleOwnerName" value="<?php echo e($row->vehicleOwnerName); ?>" placeholder="Enter vehicle Owner Name">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="u_phone" class="text-info">vehicle Owner Phone:</label><br>
                                        <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-phone"></i></span>
                                        <input type="tel" class="form-control" name="vehicleOwnerPhone" value="<?php echo e($row->vehicleOwnerPhone); ?>" placeholder="Enter vehicle Owner Phone">
                                        </div>
                                    </div>
                                    
                                    
                                    <div class="form-group">
                                        <input type="submit" name="submit" class="btn btn-info btn-md btn-block pull-right" value="Update vehicle">
                                    </div>
                            </form>




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
        <h4 class="modal-title" id="myModalLabel">Create Vehicle</h4>
      </div>
      <div style="overflow: auto;" class="modal-body">



            <form class="form" action="/addVehicle" method="post">
              <?php echo csrf_field(); ?>
                    <div class="form-group">
                        <label for="u_name" class="text-info">vehicle Name:</label><br>
                        <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-vehicle"></i></span>
                        <input type="text" class="form-control" name="vehicleName" placeholder="Enter vehicle name" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="u_name" class="text-info">vehicle Type:</label><br>
                        <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-vehicle"></i></span>
                        <input type="text" class="form-control" name="vehicleType" placeholder="Enter vehicle Type" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="u_name" class="text-info">Color:</label><br>
                        <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-vehicle"></i></span>
                        <input type="text" class="form-control" name="vehicleColor" placeholder="Enter vehicle Color" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="u_email" class="text-info">Plate Number:</label><br>
                        <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-vehicle"></i></span>
                        <input type="text" class="form-control" name="vehiclePlateNumber" placeholder="Enter Plate Number" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="u_phone" class="text-info">vehicle Owner Name:</label><br>
                        <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-user"></i></span>
                        <input type="tel" class="form-control" name="vehicleOwnerName" placeholder="Enter vehicle Owner Name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="u_phone" class="text-info">vehicle Owner Phone:</label><br>
                        <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-phone"></i></span>
                        <input type="tel" class="form-control" name="vehicleOwnerPhone" placeholder="Enter vehicle Owner Phone">
                        </div>
                    </div>
                    
                    
                    <div class="form-group">
                        <input type="submit" name="submit" class="btn btn-info btn-md btn-block pull-right" value="Register vehicle">
                    </div>
            </form>




      </div>
    </div>
  </div>
</div><?php /**PATH C:\xampp\htdocs\damuli\resources\views/SuperAdmin/vehicle.blade.php ENDPATH**/ ?>