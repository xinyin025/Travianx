<?php 

/** --------------------------------------------------- **\
| ********* DO NOT REMOVE THIS COPYRIGHT NOTICE ********* |
+---------------------------------------------------------+
| Credits:     All the developers including the leaders:  |
|              Advocaite & Dzoki & Donnchadh              |
|                                                         |
| Copyright:   TravianX Project All rights reserved       |
\** --------------------------------------------------- **/
 
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN">

<html>
<head>
    <title></title>
</head>

<body>
    <div id="header">
        <div id="mtop">
            <a href="dorf1.php" id="n1" accesskey="1" name="n1"><img src="img/x.gif" title="Village overview" alt="Village overview"></a> <a href="dorf2.php" id="n2" accesskey="2" name="n2"><img src="img/x.gif" title="Village centre" alt="Village centre"></a> <a href="karte.php" id="n3" accesskey="3" name="n3"><img src="img/x.gif" title="Map" alt="Map"></a> <a href="statistiken.php" id="n4" accesskey="4" name="n4"><img src="img/x.gif" title="Statistics" alt="Statistics"></a> <?php
                    if($message->unread && !$message->nunread) {
                    $class = "i2";
                    }
                    else if(!$message->unread && $message->nunread) {
                    $class = "i3";
                    }
                    else if($message->unread && $message->nunread) {
                    $class = "i1";
                    }
                    else {
                    $class = "i4";
                    }
                    ?>

            <div id="n5" class="<?php echo $class ?>">
                <a href="berichte.php" accesskey="5"><img src="img/x.gif" class="l" title="Reports" alt="Reports"></a> <a href="nachrichten.php" accesskey="6"><img src="img/x.gif" class="r" title="Messages" alt="Messages"></a>
            </div><?php
                    if ($database->getUserField($session->username, 'plus', 1) <= strtotime('now')) { ?><a href="plus.php" id="plus" name="plus"><span class="plus_text"><span class="plus_g">P</span><span class="plus_o">l</span><span class="plus_g">u</span><span class="plus_o">s</span></span><img src="img/x.gif" id="btn_plus" class="inactive" title="Plus menu" alt="Plus menu" name="btn_plus"></a> <?php } else { ?> <a href="plus.php" id="plus" name="plus"><span class="plus_text"><span class="plus_g">P</span><span class="plus_o">l</span><span class="plus_g">u</span><span class="plus_o">s</span></span><img src="img/x.gif" id="btn_plus" class="active" title="Plus menu" alt="Plus menu" name="btn_plus"></a> <?php } ?>

            <div class="clear"></div>
        </div>
    </div>
</body>
</html>