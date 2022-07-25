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
        <li class="@if($page == 'dashboard') {{ 'active' }} @endif">
          <a href="/Dashboard">
            <i class="fa fa-dashboard"></i> <span>Dashboard</span>
        </a>
        </li>
@if(session('accType') == 'Super Admin' || session('accType') == 'supervisor')
  <li class="@if($page == 'organization') {{ 'active' }} @endif"><a href="/Organization"><i class="fa fa-users"></i>Organizations</a></li>
@endif
@if(session('accType') == 'Super Admin')        
        <li class="treeview @if($page == 'fuel' || $page == 'maintenance' || $page == 'warehouse') {{ 'active' }} @endif">
          <a href="#">
            <i class="fa fa-list"></i> <span>Request</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
@endif
            <li class="@if($page == 'fuel') {{ 'active' }} @endif"><a href="/fuel"><i class="fa fa-car"></i>Fuel</a></li>
            <li class="@if($page == 'maintenance') {{ 'active' }} @endif"><a href="/maintenance"><i class="fa fa-gear"></i>Maintenance</a></li>            
            <li class="@if($page == 'warehouse') {{ 'active' }} @endif"><a href="#"><i class="fa fa-home"></i>Warehouse</a></li>
@if(session('accType') == 'Super Admin')
          </ul>
        </li>
@endif
@if(session('accType') == 'Super Admin')
        <li class="@if($page == 'admin') {{ 'active' }} @endif">
        <a href="/admin"><i class="fa fa-home"></i>Admin Department</a>
        </li>
        <li class="@if($page == 'fleet Officer') {{ 'active' }} @endif">
        <a href="/fleet Officer"><i class="fa fa-user"></i>Fleet Officers</a>
        </li>
        <li class="@if($page == 'filling station') {{ 'active' }} @endif">
        <a href="/filling station"><i class="fa fa-home"></i>Filling Stations</a>
        </li>
        <li class="@if($page == 'fuel department') {{ 'active' }} @endif">
        <a href="/fuel department"><i class="fa fa-user"></i>Fuel Department</a>
        </li>
        <li class="@if($page == 'maintenance department') {{ 'active' }} @endif">
        <a href="/maintenance department"><i class="fa fa-user"></i>Maintenance Department</a>
        </li>
        <li class="@if($page == 'finance') {{ 'active' }} @endif">
        <a href="/finance"><i class="fa fa-money"></i>Finance Department</a>
        </li>
        <li class="@if($page == 'storekeeper') {{ 'active' }} @endif">
        <a href="/storekeeper"><i class="fa fa-home"></i>Storekeeper</a>
        </li>
@endif
        <li class="@if($page == 'vehicle') {{ 'active' }} @endif">
        <a href="/vehicle"><i class="fa fa-car"></i>Vehicle</a></li>
@if(session('accType') == 'Super Admin')
        <li class="treeview">
          <a href="#">
            <i class="fa fa-cogs"></i> <span>Settings</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            {{-- <li><a href="#"><i class="fa fa-plus-circle"></i> Create User</a></li> --}}
            <li><a href="#"><i class="fa fa-gear"></i> Manage Super Admin</a></li>
          </ul>
        </li>
@endif
       
      </ul>
       
    </section>
    <!-- /.sidebar -->
  </aside>