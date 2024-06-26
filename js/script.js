document.addEventListener("DOMContentLoaded", function () {
	if (document.getElementById("gallery")) {
		fetch("php/get_gallery.php")
			.then((response) => response.json())
			.then((data) => {
				const galleryDiv = document.getElementById("gallery");
				data.forEach((image) => {
					const img = document.createElement("img");
					// Use absolute path to the image directory
					img.src = image.image_path;
					img.alt = image.image_alt;
					galleryDiv.appendChild(img);
				});
			})
			.catch((error) => console.error("Error fetching gallery data:", error));
	}

	if (document.getElementById("blog")) {
		fetch("php/get_blog.php")
			.then((response) => response.json())
			.then((data) => {
				const blogDiv = document.getElementById("blog");
				data.forEach((article) => {
					const articleDiv = document.createElement("div");
					const title = document.createElement("h2");
					title.textContent = article.title;
					const content = document.createElement("p");
					content.textContent = article.content;
					articleDiv.appendChild(title);
					articleDiv.appendChild(content);
					blogDiv.appendChild(articleDiv);
				});
			})
			.catch((error) => console.error("Error fetching blog data:", error));
	}
});

/*
window.onload = function () {
	alert("Welcome to my personal homepage!");
};
*/

// Add functionality to a button (if you add one in the HTML)
/*
document.addEventListener("DOMContentLoaded", (event) => {
	const button = document.createElement("button");
	button.textContent = "Click Me!";
	document.body.appendChild(button);

	button.addEventListener("click", function () {
		alert("Button was clicked!");
	});
});
*/
