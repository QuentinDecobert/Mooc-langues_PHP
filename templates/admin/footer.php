    <script src="<?php echo $root; ?>/res/bootstrap/assets/js/jquery.js"></script>
    <script src="<?php echo $root; ?>/res/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="<?php echo $root; ?>/res/js/admin.js"></script>
    <script>
        $( document ).ready(function() {
            $("#burger-open").hide();
        });

        $("#burger-close").click(function () {
            $(".vertical-menu").animate({
                left: '-200px'
            });
            $("#burger-close").hide();
            $("#burger-open").show();
            $(".horizontal-menu").animate({'margin-left':'0px'});
            $(".with-menu").animate({'margin-left':'0px'});
        });

        $("#burger-open").click(function () {
            $(".vertical-menu").animate({
                left: '0'
            });
            $("#burger-open").hide();
            $("#burger-close").show();
            $(".horizontal-menu").animate({'margin-left':'200px'});
            $(".with-menu").animate({'margin-left':'200px'});
        });
    </script>
</body>
</html>
