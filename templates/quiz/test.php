<?php include 'header.php'; ?>
<div id="container" class="quiz with-menu">
    <div class="row">
        <div class="col-md-12">
        <?php
        if (! $session->get('last') ) :
                $question = $quiz->getQuestion($num);
                $answers = $quiz->getAnswers($num);
            ?>


            <h1 style="font-size: 50px;font-family:Roboto Bold;">Question <?php echo $num; ?></h1>
            <p style="font-size: 25px;font-family:Roboto Bold;" class="col-md-4 col-md-offset-4"><?php echo $question->getText(); ?></p>

            <form id="questionBox" class="col-md-4 col-md-offset-4" method="post" action="<?php echo $root; ?>/quiz/process">
                <ul class="list">
                <?php
                $shuffledAnswers = SimpleQuiz\Utils\Base\Utils::shuffleAssoc($answers);

                $acount = 0;
                foreach ($shuffledAnswers as $answer)
                {
                    echo '<li class="list__item"> <input type="radio" class="radio" name="foo" id="answer' . $acount . '" value="' . $answer . '" name="answers" />' .PHP_EOL;
                    echo '<label class="label--radio" for="answer' . $acount . '">' . $answer . '</label> </li>' . PHP_EOL;
                    $acount++;
                }
                ?>
                </ul>
            <p>
                <input type="hidden" name="nonce" value="<?php echo $nonce; ?>" />
                <input type="hidden" name="num" value="<?php echo $num; ?>" />
                <input type="hidden" name="quizid" value="<?php echo $quiz->getId(); ?>" />
                <input type="submit" id="submit" class="btn btn-primary" name="submit" value="Soumetter votre réponse" />
            </p>
        </form>


        <?php else:
            $percentage = round(((int) $session->get('score') / (int) $quiz->countQuestions()) * 100);
            ?>
            <div id="finalscore" class="col-md-6 col-md-offset-3" style="margin-top:5%;">
            <h2 id="score" style="font-family:Roboto Bold;"><?php echo $user->getName(); ?> a repondu à <?php echo $session->get('score'); ?> sont correctes sur <?php echo $quiz->countQuestions(); ?></h2>
            <h2 class="userscore" style="text-align:center;"><?php echo $percentage; ?>%</h2>
            <h3 id="time" style="text-align:center;">Temps passé : <?php echo $timetaken['mins'] . $timetaken['secs']; ?></h3>

            <p id="compare" style="text-align:center;"><a class="btn btn-primary" href="<?php echo $root; ?>/quiz/<?php echo $quiz->getId(); ?>/results">Comparer vos résultats !</a></p>
            </div>
        <?php endif; ?>
        </div>
    </div>
</div><!--container-->
<?php include 'footer.php';
