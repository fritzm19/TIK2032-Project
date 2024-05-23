<!DOCTYPE html>
<html lang="en">

<head>
	<title>Gallery | Fritz Manambe</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="author" content="Fritz Elbert Christopel Manambe">
	<link rel="stylesheet" href="css/style.css">
</head>

<body>
	<div class="container">
		<header>
			<div class="nav-bar">
				<div class="nav-bar-left">
					<!-- Logo -->
				</div>
				<div class="menu">
					<nav>
						<ul>
							<li><a href="index.html">Home</a></li>
							<li><a href="gallery.php">Gallery</a></li>
							<li><a href="blog.php">Blog</a></li>
							<li><a href="contact.html">Contact</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</header>

		<div class="main-content">
			<h1 align="center">Gallery</h1>
			<div class="gallery">
				<?php
					$images = include 'php/get_gallery.php';
					foreach ($images as $image) {
						echo '<div class="gallery-image">';
						echo '<img src="' . $image['image_path'] . '" height=100% width=100%>';
						echo '</div>';
					}
				?>
			</div>
		
		</div>
	</div>

	<footer>
		<div class="footer">
			© 2024 Fritz Manambe. All rights reserved.
		</div>
	</footer>
</body>

</html>
