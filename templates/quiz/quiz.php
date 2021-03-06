<?php
    include'header.php';
    $numquestions = $quiz->countQuestions();
    $leadersToShow = 10;
?>
    <div id="container" class="quiz with-menu">
      <div class="row">
          <div id="intro" class="col-md-6 col-md-offset-3">
              <?php if (isset($error)) { echo '<div id="updater" class="alert alert-danger">'.$error
                  .'</div>'; } ?>
          <h2><?php echo $quiz->getName(); ?></h2>
          <h4><?php echo $quiz->getDescription(); ?></h4>
          <p>Une fois que vous avez commencé le quiz, vous devez répondre à toutes les questions. Si vous essayez de revenir à la question précédente, votre score sera réinitialisé et vous serez renvoyé au début</p>
          <p>Pour chaque question, choisissez une réponse et cliquez sur<strong>'Soumettre une réponse'</strong>.La question suivante vous sera alors posée.</p>
          <p>Ce quiz a <strong><?php echo $numquestions; ?></strong> questions.</p>
          <p>Vous obtiendrez votre score à la fin du quiz.</p>
          <div id="leaders-score">
                <h4>Top <?php echo $leadersToShow; ?></h4>
                <div class="row">
                  <div class="table">
                    <div class="table-cell">
                      <ul class="leaders col-md-12">
                        <?php
                        $leaders = $quiz->getLeaders($leadersToShow);
                        $counter = 1;
                        foreach ($leaders as $leader) :

                            echo '<li><h3>' . $leader["name"].'<strong id="score">' . $leader["score"]. '/' . $numquestions .'</strong>' .'</h3></li>';

                            //Use modulus to create new sub-list if required.
                            if ($counter % (round($leadersToShow/2)) == 0) :
                                echo '</ul>' . PHP_EOL . '<ul class="leaders col-md-12">' . PHP_EOL;
                            endif;

                            $counter++;

                        endforeach;
                        ?>
                      </ul>
                    </div>
                  </div>
                </div>
            </div><!-- leaders-score-->
              <div>
                  <form id="questionBox" method="post" action="<?php echo $root; ?>/quiz/process">
                      <p>
                          <input type="hidden" name="quizid" value="<?php echo $quiz->getId(); ?>" />
                          <input type="submit" id="submitstart" name="starter" class="btn btn-lg btn-success"
                          value="Soumettre une réponse" />
                      </p>
                  </form>
              </div>
          </div>

      </div><!-- /.row -->

    </div><!--container-->
<?php include 'footer.php';
