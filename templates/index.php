<?php
    include'quiz/header.php'; 
?>
    <div id="container" class="quiz with-menu">
        <div class="row">
        <div class="col-xs-12 col-sm-12">
          <p class="pull-right visible-xs">
            <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">Toggle nav</button>
          </p>
          <div class="jumbotron">
            <div>Hello 
            <?php
              $userScore = $simple->getUserScore($user->getId());
              echo $userScore;
            ?> 
             !</div>
            <p>A simple framework for creating and displaying quizzes. Written in PHP.</p>
          </div>
        </div><!--/span-->
        </div><!--/row-->

        <div class="row">
          <div class="col-xs-9 col-sm-9">
            <h4>Tous les exercices</h4>
            <div class="list-group">
            <?php foreach ($categories as $categorie) : 
                  echo '<a href="'.$root . '/categories/' . $categorie->id .'" class="list-group-item">';
                  echo '<h4 class="list-group-item-heading">'. $categorie->name . '</h4>';
                  echo '<p class="list-group-item-text">'. $categorie->description . '</p>';
                  echo '</a>';
              endforeach;
              ?>
            </div>
          </div><!--/span-->
        </div><!--/row-->
      
        
    </div><!--container-->
<?php include 'quiz/footer.php';
