var WppController = function() {
	
	this.model = new WppModel();
	
	this.setLatestWlppr = function() {
		this.model.getLatestWlppr(function(data) {
			for(var i in data.root.items.item) {
				var url = data.root.items.item[i].url.split('Retina');
				var resolution = 'mini';
				
				$('#WppLatest ul').append(_.template(templates.wppThumb, {url: url[0]+resolution+url[1], name: data.root.items.item[i].titre}));
			}
		});
	}
}