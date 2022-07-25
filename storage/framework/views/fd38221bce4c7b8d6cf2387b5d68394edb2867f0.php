  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <!-- search form -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
              <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form>
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">MAIN NAVIGATION</li>
        <li class="<?php if($page == 'dashboard'): ?> <?php echo e('active'); ?> <?php endif; ?>">
          <a href="/Dashboard">
            <i class="fa fa-dashboard"></i> <span>Dashboard</span>
        </a>
        </li>
<?php if(session('accType') == 'Super Admin' || session('accType') == 'supervisor'): ?>
  <li class="<?php if($page == 'organization'): ?> <?php echo e('active'); ?> <?php endif; ?>"><a href="/Organization"><i class="fa fa-users"></i>Organizations</a></li>
<?php endif; ?>
<?php if(session('accType') == 'Super Admin'): ?>        
        <li class="treeview <?php if($page == 'fuel' || $page == 'maintenance' || $page == 'warehouse'): ?> <?php echo e('active'); ?> <?php endif; ?>">
          <a href="#">
            <i class="fa fa-list"></i> <span>Request</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
<?php endif; ?>
            <li class="<?php if($page == 'fuel'): ?> <?php echo e('active'); ?> <?php endif; ?>"><a href="/fuel"><i class="fa fa-car"></i>Fuel</a></li>
            <li class="<?php if($page == 'maintenance'): ?> <?php echo e('active'); ?> <?php endif; ?>"><a href="/maintenance"><i class="fa fa-gear"></i>Maintenance</a></li>            
            <li class="<?php if($page == 'warehouse'): ?> <?php echo e('active'); ?> <?php endif; ?>"><a href="#"><i class="fa fa-home"></i>Warehouse</a></li>
<?php if(session('accType') == 'Super Admin'): ?>
          </ul>
        </li>
<?php endif; ?>
<?php if(session('accType') == 'Super Admin'): ?>
        <li class="<?php if($page == 'admin'): ?> <?php echo e('active'); ?> <?php endif; ?>">
        <a href="/admin"><i class="fa fa-home"></i>Admin Department</a>
        </li>
        <li class="<?php if($page == 'fleet Officer'): ?> <?php echo e('active'); ?> <?php endif; ?>">
        <a href="/fleet Officer"><i class="fa fa-user"></i>Fleet Officers</a>
        </li>
        <li class="<?php if($page == 'filling station'): ?> <?php echo e('active'); ?> <?php endif; ?>">
        <a href="/filling station"><i class="fa fa-home"></i>Filling Stations</a>
        </li>
        <li class="<?php if($page == 'fuel department'): ?> <?php echo e('active'); ?> <?php endif; ?>">
        <a href="/fuel department"><i class="fa fa-user"></i>Fuel Department</a>
        </li>
        <li class="<?php if($page == 'maintenance department'): ?> <?php echo e('active'); ?> <?php endif; ?>">
        <a href="/maintenance department"><i class="fa fa-user"></i>Maintenance Department</a>
        </li>
        <li class="<?php if($page == 'finance'): ?> <?php echo e('active'); ?> <?php endif; ?>">
        <a href="/finance"><i class="fa fa-money"></i>Finance Department</a>
        </li>
        <li class="<?php if($page == 'storekeeper'): ?> <?php echo e('active'); ?> <?php endif; ?>">
        <a href="/storekeeper"><i class="fa fa-home"></i>Storekeeper</a>
        </li>
<?php endif; ?>
        <li class="<?php if($page == 'vehicle'): ?> <?php echo e('active'); ?> <?php endif; ?>">
        <a href="/vehicle"><i class="fa fa-car"></i>Vehicle</a></li>
<?php if(session('accType') == 'Super Admin'): ?>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-cogs"></i> <span>Settings</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            
            <li><a href="#"><i class="fa fa-gear"></i> Manage Super Admin</a></li>
          </ul>
        </li>
<?php endif; ?>
       
      </ul>
       
    </section>
    <!-- /.sidebar -->
  </aside><?php /**PATH C:\xampp\htdocs\damuli\resources\views/nav.blade.php ENDPATH**/ ?>