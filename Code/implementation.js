
// TODO: make this chrome specific?
// it works fine on firefox
// it works fine on opera
chrome.storage.sync.get(
	{
		font: 'tux',
		unicodeAltText: false
	},
	function (items) {
		var lookup = tux;
		if(items.font == 'gardiner')
		{
			lookup = garinder;
		}

		let images = document.getElementsByTagName('img');
		for (let i = 0; i < images.length; ++i) {
			var filename = images[i].src.split('/').pop();
			filename = filename.split('?')[0];
			if (filename.endsWith(".png")) {
				if (filename in lookup) {
					images[i].src = "data:image/png;base64," + lookup[filename];
				}
			}
		}
	});