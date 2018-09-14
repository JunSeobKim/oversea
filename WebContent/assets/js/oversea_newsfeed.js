$(document).ready(function() {
	var win = $(window);

	// Each time the user scrolls
	win.scroll(function() {
		// End of the document reached?
		if ($(document).height() - win.height() == win.scrollTop()) {
			$('#loading').show();

			// Uncomment this AJAX call to test it
			/*
			 * $.ajax({ url: 'get-post.php', dataType: 'html', success:
			 * function(html) { $('#posts').append(html); $('#loading').hide(); }
			 * });
			 */
			$('#newsfeed_area').append(randomPost());
			$('#loading').hide();
		}
	});
});

// Generate a random post
function randomPost() {
	// Paragraphs that will appear in the post
	var paragraphs = [ '내용입니다~' ];

	// Shuffle the paragraphs
	for (var i = paragraphs.length - 1; !!i; --i) {
		var j = Math.floor(Math.random() * i);
		var p = paragraphs[i];
		paragraphs[i] = paragraphs[j];
		paragraphs[j] = p;
	}

	// Generate the post
	var post = '<li>';
    post += '<article>';
    post += '<header><h1>Random Article!</h1></header>';
    post += paragraphs.join('');
    post += '</article>';
    post += '</li>';

	return post;
}