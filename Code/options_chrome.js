function save_options()
{
  var fontName = document.getElementById('font').value;
  var unicodeAltTextChecked = false; //document.getElementById('unicode-alt-text').checked;
  chrome.storage.sync.set(
	{
		font: fontName,
		unicodeAltText: unicodeAltTextChecked
	},
	function()
	{
		// Update status to let user know options were saved.
		var status = document.getElementById('status');
		status.textContent = 'Options saved.';
		setTimeout(function()
			{
				status.textContent = '';
			}, 750);
  	});
}

function restore_options()
{
  chrome.storage.sync.get(
	{
		font: 'tux',
		unicodeAltText: false
	},
	function(items)
	{
		document.getElementById('font').value = items.font;
		//document.getElementById('unicode-alt-text').checked = items.unicodeAltText;
	});
}

document.addEventListener('DOMContentLoaded', restore_options);
document.getElementById('save').addEventListener('click',
    save_options);