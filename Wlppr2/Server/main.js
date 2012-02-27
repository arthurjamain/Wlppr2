var express = require('express'),
    path = require('path'),
    request = require('request');


var app = express.createServer();


/**
*
*  Config
*
**/

app.set('views', path.resolve(__dirname, 'views'));
app.set('view engine', 'ejs');
app.use(express.static( path.resolve(__dirname, 'public')));


/**
*
*  Router
*
**/
app.get('/', function(req, res){
	res.render('index', {
      
  });
});

app.get('/latestWlppr', function(req, res){

	sendQuery({string:'type=last', method:'GET'}, function(data) {
		console.log(data);
		res.send(data);
		res.end();
	});
	
});

var sendQuery = function(opt, cb) {
	request('http://wlppr.com/xml.php?'+opt.string, function(e, r, b) {
		cb(b);
	});
}

console.log('Wlppr2 Running on port 80');
app.listen(80);