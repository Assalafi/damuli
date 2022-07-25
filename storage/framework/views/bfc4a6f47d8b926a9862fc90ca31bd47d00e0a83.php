<!DOCTYPE html>
<html>
<head>
  <?php echo $__env->make('css', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
</head>

<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  
  <?php echo $__env->make('header', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

  <!-- Left side column. contains the logo and sidebar -->
  <?php echo $__env->make('nav', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

  <!-- Content Wrapper. Contains page content -->
  <div style="min-height: 600px;">
    <div class="content-wrapper">
      <div class="box box-default">
        <section class="content">
          <?php if($page == 'dashboard'): ?>
          <?php echo $__env->make('admin/'.$page, \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
          <?php else: ?>
          <?php echo $__env->make('SuperAdmin/'.$page, \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
          <?php endif; ?>

        </section>
      </div>
    </div>
  </div>


  
  <?php echo $__env->make('footer', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

</div>
 
  
  <?php echo $__env->make('js', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>


</body>
</html>
<?php /**PATH C:\xampp\htdocs\damuli\resources\views/index.blade.php ENDPATH**/ ?>