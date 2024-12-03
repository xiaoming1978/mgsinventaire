 <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Mise en jour Employee
        
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Accueil</a></li>
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
                  <label for="fname">Numéro d'employée</label>
                  <input type="text" class="form-control" id="no_employee" name="no_employee" placeholder="Numéro d'employée" value="<?php echo $user_data['no_employee'] ?>" autocomplete="off">
                </div>
                </div>

                 <div class="col-md-6">
                <div class="form-group">
                  <label for="username">Nom</label>
                  <input type="text" class="form-control" id="nom" name="nom" placeholder="Nom" value="<?php echo $user_data['nom'] ?>" autocomplete="off">
                </div>
                </div>
                 <div class="col-md-6">
                <div class="form-group">
                  <label for="lname">Prénom</label>
                  <input type="text" class="form-control" id="prenom" name="prenom" placeholder="Prénom" value="<?php echo $user_data['prenom'] ?>" autocomplete="off">
                </div>
                </div>

                <div class="col-md-6">

                <div class="form-group">
                  <label for="password">Crédit</label>
                  <input type="text" class="form-control" id="credit" name="credit"  value="<?php echo $user_data['Credit'] ?>" placeholder="Crédit"  autocomplete="off">
                </div>
                </div>
                       
                              
              
                </div>


              </div>
              <!-- /.box-body -->

              <div class="box-footer">
                <button type="submit" class="btn btn-primary">Mettre à jour</button>
                <a href="<?php echo base_url('Controller_employee/') ?>" class="btn btn-warning">Retour</a>
              </div>
            </form>
          </div>
          <!-- /.box -->
        </div>
        <!-- col-md-12 -->
      </div>
      <!-- /.row -->
        </div>
          <!-- /.row -->
        </div>
        <!-- /.box-body -->
       
      </div>
      <!-- /.box -->

 

    </section>

<script type="text/javascript">
  $(document).ready(function() {
    $("#groups").select2();

    $("#mainUserNav").addClass('active');
    $("#manageUserNav").addClass('active');
  });
</script>
