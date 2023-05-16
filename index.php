<?php
include_once('spectacles.php');
include_once('header.php');
?>
<main>
    <div>
        <h1 class="event">Evénements à venir</h1>

        <div class="container-fluid bg-trasparent my-4 p-3" style="position: relative;">

            <div class="direction row row-cols-1 row-cols-xs-2 row-cols-sm-2 row-cols-md-3 row-cols-lg-3 g-3">

                <?php
                $spectacles = getSpectacles();

                foreach ($spectacles as $spectacle) :
                    // var_dump($spectacles);
                ?>

                    <div class="col pb-5">
                        <div class="card-body1">
                            <div class="date clearfix mb-3"> <span class="float-start badge rounded-pill bg-primary"></span>
                            </div>
                            <h2 class="card-title">La tête dans les étoiles</h2>
                            <h3 class="card-title">12 janvier 2021 16h00</h3>
                            <h4 class="card-title">6 heures de folie</h4>
                            <h3 class="card-title">Il reste 22 places</h3>
                        </div>

                        <?php if ($spectacle['number_place_dispo'] != 50) : ?>
                            <div class="card-body2">
                                <p class="gratos"><?= $spectacle['price'] == 0.00 ? "C'est gratos !!" : $spectacle['price'] . ' € par personne' ?> </p>
                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Vitae reiciendis blanditiis voluptas delectus tempora voluptates, cum nam dolor aperiam architecto odio sapiente cupiditate nulla illo! Eum velit quis esse quos.</p>
                                <div class="text-right"> <a href="#" class="btn">JE PARTICIPE</a> </div>
                            </div>


                        <?php else : ?>
                            <div class="card-body3">
                                <p class="gratos3  mb-5">C'est complet, sorry !</p>
                            </div>


                        <?php endif; ?>

                    </div>
                <?php
                endforeach;
                ?>

            </div>
        </div>

    </div>

</main>

<?php
include_once('footer.php');
?>