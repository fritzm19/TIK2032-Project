<!DOCTYPE html>
<html lang="en">

<head>
  <title>Blog | Fritz Manambe</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="author" content="Fritz Elbert Christopel Manambe">
  <link rel="stylesheet" href="css/style.css">
  <!--
    <script src="script.js"></script>
  -->
</head>

<body>
  <div class="container">
    <header>
      <div class="nav-bar">
        <div class="nav-bar-left">
          <!--
            <span style="color: white;">Logo</span>
            -->
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
      <h1 align="center">Blog</h1>
      
      <section>
        <?php
          $articles = include 'php/get_blog.php';
          foreach ($articles as $articles) {
            echo '<article>';
              echo '<div class="article">';
                echo '<h1>';
                  echo '' . $articles['title'] . '';
                echo '</h1>';
                echo '<img src="' . $articles['image_path'] . '" alt="' . $articles['image_alt'] . '">';
                echo '<p>';
                  echo '' . $articles['content'] . '';
                echo '</p>';
                echo '<a href="' . $articles['url'] . '">';
                echo 'read more </a>';
              echo '</div>';
            echo '</article>';
          }
        ?>
      </section>
    </div>
  </div>

  <footer>
    <div class="footer">
      &copy; 2024 Fritz Manambe. All rights reserved.
    </div>
  </footer>
</body>

</div>
