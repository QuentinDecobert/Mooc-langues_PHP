<?php
    include'quiz/header.php'; 

    $quizUser = $simple->getQuizUser($user->getId());

    $userScore = 0;
    foreach ($quizUser as $score) {
        $userScore = $userScore + $score->score;
    }

    $userTime = 0;
    foreach ($quizUser as $time) {
        $userTime = $userTime + $time->time_taken;
    }

    $userNumEx = count($quizUser);

    $heures=intval($userTime / 3600);
    $minutes=intval(($userTime % 3600) / 60);
    $secondes=intval((($userTime % 3600) % 60));

?>
    <div id="container" class="quiz with-menu">
        <div class="row">
        <div class="col-xs-12 col-sm-12">
          <p class="pull-right visible-xs">
            <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">Toggle nav</button>
          </p>
          <div class="jumbotron">
            <h2>Hello <?php echo $user->getName(); ?> !</h2>
            <p>Apprendre l'anglais avec Wavy n'a jamais été aussi simple.</p>
          </div>
        </div><!--/span-->
        </div><!--/row-->

        <div class="row">
          <div class="col-xs-4 col-sm-4">
            <div class="list-group-item text-center">
              <h4>Votre score total</h4>
              <h4>
                <?php
                  echo $userScore;
                ?> 
              </h4>
            </div>
          </div>
          <div class="col-xs-4 col-sm-4">
            <div class="list-group-item text-center">
              <h4>Votre temps total</h4>
              <h4>
                <?php
                  echo $heures."h".$minutes."m".$secondes."s";
                ?> 
              </h4>
            </div>
          </div>
          <div class="col-xs-4 col-sm-4">
            <div class="list-group-item text-center">
              <h4>Exercices terminés</h4>
              <h4>
                <?php
                  echo $userNumEx;
                ?> 
              </h4>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-xs-9 col-sm-9">
            <h4>Tous les exercices</h4>
            <div class="list-group">
            <?php foreach ($categories as $categorie) : 
                  echo '<a href="'.$root . '/categories/' . $categorie->id .'" class="list-group-item">';
                  echo '<h4 class="list-group-item-heading">'. $categorie->name . '</h4>';
                  echo '<p class="list-group-item-text">'. $categorie->description . '</p>';
                  echo '</a>';
                  foreach ($quizzes as $quiz) : 
                    if ($categorie->name == $quiz->category) {
                      echo '<a href="'.$root . '/quiz/' . $quiz->id .'" class="">';
                      
                      foreach ($quizUser as $userQuizId) {
                        if ($userQuizId->quiz_id == $quiz->id) {
                          echo '<p class="list-group-item">'. $quiz->name . ' <span class="glyphicon glyphicon-ok text-right" aria-hidden="true"></span></p>';
                        }
                        else{
                          echo '<p class="list-group-item">'. $quiz->name . '</p>';
                        }
                      }
                      //echo '<p class="list-group-item-text">'. $quiz->description . '</p>';
                      echo '</a>';
                    }
                  endforeach;
                  echo "<br>";
              endforeach;
              ?>
            </div>
          </div><!--/span-->
        </div><!--/row-->
      
        
    </div><!--container-->
<?php include 'quiz/footer.php';
