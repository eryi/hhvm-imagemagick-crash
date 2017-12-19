<?php
//use a big image that takes more than 1 sec for your cpu to encode
$image = new \Imagick(__DIR__ . '/brenda-godinez-227275.jpg');
$image->scaleImage(20000, 20000, true);
$image->setImageFormat("jpeg");
$image->writeImage('big2.jpg');
