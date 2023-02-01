<?= $this->extend('layout/main') ?>

<?= $this->section('content') ?>
<nav aria-label="breadcrumb" class="mt-3 ms-4">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="<?= base_url("/")?>">Home</a></li>
    <li class="breadcrumb-item active" aria-current="page">Themes</li>
  </ol>
</nav>

<section class="mt-5 d-flex flex-wrap gap ">
    <?php foreach ($themes as $item) : ?>
        <a class="btn btn-outline" href="<?= base_url('/admin/Type/' . $type->id . '/Theme/' . $item->id . "/edit") ?>">
            <div class="card card-h text-bg-warning thumbnail  col col-3 ">

                <div class="card-body d-flex align-items-center justify-content-center">
                    <h4> <?= $item->Name ?> </h4>
                </div>

            </div>
        </a>
    <?php endforeach ?>

</section>
<hr>

<h1 class="mt-5">Saved Books</h1>
<section class="mt-5 d-flex flex-wrap flex-row  gap">
    <?php foreach ($Books as $Book) : ?>
        <a class="btn btn-outline" href="<?= base_url('/admin/Edit/' . $Book->UUID) ?>">
            <div class="card card-h text-bg-primary flex-wrap ">

                <div class="card-body d-flex align-items-center justify-content-center">
                    Bookid: <?= $Book->id ?><br>
                    Modifed_on <?= $Book->timestamp ?>
                </div>

            </div>
        </a>
    <?php endforeach ?>


</section>


<?= $this->endSection() ?>