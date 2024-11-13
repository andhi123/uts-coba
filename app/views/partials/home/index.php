<?php 
$page_id = null;
$comp_model = new SharedController;
$current_page = $this->set_current_page_link();
?>
<div>
    <div  class="border-top">
        <div class="container">
            <div class="row ">
                <div class="col-sm-5 comp-grid">
                </div>
                <div class="col-md-6 comp-grid">
                    <h4 >E-Klinik</h4>
                </div>
                <div class="col-md-3 col-sm-4 comp-grid">
                    <?php $rec_count = $comp_model->getcount_rekammedis();  ?>
                    <a class="animated zoomIn record-count alert alert-primary"  href="<?php print_link("rekam_medis/") ?>">
                        <div class="row">
                            <div class="col-2">
                                <i class="fa fa-database "></i>
                            </div>
                            <div class="col-10">
                                <div class="flex-column justify-content align-center">
                                    <div class="title">Rekam Medis</div>
                                    <small class=""></small>
                                </div>
                            </div>
                            <h4 class="value"><strong><?php echo $rec_count; ?></strong></h4>
                        </div>
                    </a>
                </div>
                <div class="col-md-3 col-sm-4 comp-grid">
                    <?php $rec_count = $comp_model->getcount_dokter();  ?>
                    <a class="animated zoomIn record-count alert alert-secondary"  href="<?php print_link("dokter/") ?>">
                        <div class="row">
                            <div class="col-2">
                                <i class="fa fa-user-md "></i>
                            </div>
                            <div class="col-10">
                                <div class="flex-column justify-content align-center">
                                    <div class="title">Dokter</div>
                                    <small class=""></small>
                                </div>
                            </div>
                            <h4 class="value"><strong><?php echo $rec_count; ?></strong></h4>
                        </div>
                    </a>
                </div>
                <div class="col-md-3 col-sm-4 comp-grid">
                    <?php $rec_count = $comp_model->getcount_pasien();  ?>
                    <a class="animated zoomIn record-count alert alert-warning"  href="<?php print_link("pasien/") ?>">
                        <div class="row">
                            <div class="col-2">
                                <i class="fa fa-user "></i>
                            </div>
                            <div class="col-10">
                                <div class="flex-column justify-content align-center">
                                    <div class="title">Pasien</div>
                                    <small class=""></small>
                                </div>
                            </div>
                            <h4 class="value"><strong><?php echo $rec_count; ?></strong></h4>
                        </div>
                    </a>
                </div>
                <div class="col-md-3 col-sm-4 comp-grid">
                    <?php $rec_count = $comp_model->getcount_pengguna();  ?>
                    <a class="animated zoomIn record-count alert alert-danger"  href="<?php print_link("pengguna/") ?>">
                        <div class="row">
                            <div class="col-2">
                                <i class="fa fa-users "></i>
                            </div>
                            <div class="col-10">
                                <div class="flex-column justify-content align-center">
                                    <div class="title">Pengguna</div>
                                    <small class=""></small>
                                </div>
                            </div>
                            <h4 class="value"><strong><?php echo $rec_count; ?></strong></h4>
                        </div>
                    </a>
                </div>
                <div class="col-md-12 comp-grid">
                    <div class="bg-secondary ">
                        <?php  
                        $this->render_page("rekam_medis/list?orderby=rekam_medis.tanggal_periksa&ordertype=DESC&limit_count=20"); 
                        ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
