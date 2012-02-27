var WppModel = function() {
	
	this.baseUrl = 'localhost';
	
	this.getLatestWlppr = function(cb) {
		$.get('/latestWlppr', function(data) {
			cb(xml2json.parser(data));
		}, 'text');
	}
	
}