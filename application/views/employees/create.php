

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
          Ajouter un nouveau employee
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Employee</li>
      </ol>
    </section>
<section class="content">

      <!-- SELECT2 EXAMPLE -->
      <div class="box box-default">
        <div class="box-header with-border">
    

          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
            <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-remove"></i></button>
          </div>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
          <div class="row">
        <div class="col-md-12 col-xs-12">
          
          <?php if($this->session->flashdata('success')): ?>
            <div class="alert alert-success alert-dismissible" role="alert">
              <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              <?php echo $this->session->flashdata('success'); ?>
            </div>
          <?php elseif($this->session->flashdata('error')): ?>
            <div class="alert alert-error alert-dismissible" role="alert">
              <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              <?php echo $this->session->flashdata('error'); ?>
            </div>
          <?php endif; ?>

         
            <form role="form" action="<?php base_url('Controller_Members/create') ?>" method="post">
              <div class="box-body">

                <?php echo validation_errors(); ?>
                <div class="row">
                
               <div class="col-md-6">
                <div class="form-group">
                  <label for="fname">Nom </label>
                  <input type="text" class="form-control" id="fname" name="nom" placeholder="Nom" autocomplete="off">
                </div>
                </div>

                <div class="col-md-6">
                <div class="form-group">
                  <label for="username">Prénom</label>
                  <input type="text" class="form-control" id="prenom" name="prenom" placeholder="Prénom" autocomplete="off">
                </div>
                </div>
                
               
                 <div class="col-md-6">
                <div class="form-group">
                  <label for="lname">Numéro d'employée</label>
                  <input type="text" class="form-control" id="noemployee" name="no_employee" placeholder="Numéro d'EMPLOYÉE" autocomplete="off">
                </div>
                </div>






              
                  
                  <div class="col-md-6">
                <div class="form-group">
                  <label for="password">Crédit</label>
                  <input type="text" class="form-control" id="credit" name="credit" placeholder="Crédit" autocomplete="off">
                </div>
                </div>

              </div>
              <!-- /.box-body -->

              <div class="box-footer">
                <button type="submit" class="btn btn-primary">Save & Close</button>
                <a href="<?php echo base_url('Controller_Employee/') ?>" class="btn btn-warning">Back</a>
              </div>
            </form>
          </div>
          <!-- /.box -->
        </div>
        <!-- col-md-12 -->
      </div>
          <!-- /.row -->
        </div>
        <!-- /.box-body -->
       
      </div>
      <!-- /.box -->

 

    </section>