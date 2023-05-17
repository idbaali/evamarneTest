<?php
include_once('spectacles.php');
include_once('header.php');
?>
<main>
    <div>
        <h1 class="event">Événements à venir</h1>

        <div class="container-fluid bg-transparent my-4 p-3" style="position: relative;">
            <div class="direction row row-cols-1 row-cols-xs-2 row-cols-sm-2 row-cols-md-3 row-cols-lg-3 g-3">
                <?php
                $spectacles = getSpectacles();
                foreach ($spectacles as $spectacle) :
                    $number_place_dispo = $spectacle['number_place_dispo'] - $spectacle['nombre_billets_vendus'];
                    ?>
                    <div class="col pb-5">
                        <div class="card-body1">
                            <div class="date clearfix mb-3">
                                <span class="float-start badge rounded-pill bg-primary"></span>
                            </div>
                            <h2 class="card-title"><?php echo $spectacle['spectacle_name']; ?></h2>
                            <h3 class="card-title"><?php $concert = new DateTime($spectacle['spectacle_start']); echo $concert->format('d M y h:m'); ?></h3>
                            <h4 class="card-title"><?php echo $spectacle['spectacle_timing']; ?></h4>
                            <h3 class="card-title">Il reste <?php echo $number_place_dispo; ?> places</h3>
                        </div>
                        <?php if ($spectacle['price'] != 20) : ?>
                            <div class="card-body2">
                                <p class="gratos">C'est gratuit !!</p>
                                <p class="gratos"><?php echo $spectacle['price']; ?></p>
                                <p><?php echo $spectacle['spectacle_description']; ?></p>
                                <div class="text-right">
                                    <a href="#" class="btn">JE PARTICIPE</a>
                                </div>
                            </div>
                        <?php else : ?>
                            <div class="card-body3">
                                <p class="gratos sorry mb-5">C'est complet, sorry !</p>
                            </div>
                        <?php endif; ?>
                    </div>
                <?php endforeach; ?>
            </div>
        </div>
    </div>
</main>


<?php
include_once('footer.php');
?>