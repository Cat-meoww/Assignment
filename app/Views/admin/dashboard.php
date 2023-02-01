<?= $this->extend('layout/main') ?>

<?= $this->section('content') ?>

<section class="mt-5 d-flex flex-wrap gap">
    <?php foreach ($types as $item):?>
        <a  class="btn btn-outline"  href="<?= base_url('/admin/Themes/'.$item->id) ?>">
        <div class="card card-h text-bg-warning thumbnail  col col-3 ">
           
            <div class="card-body d-flex align-items-center justify-content-center">
                <?= $item->Type ?>
            </div>
            
        </div>
        </a>
    <?php endforeach ?>

</section>


<?= $this->endSection() ?>