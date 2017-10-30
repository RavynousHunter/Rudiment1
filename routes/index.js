var express = require( 'express' );
var router  = express.Router();
var port    = 8080;

/* GET home page. */
router.get( '/', function( req, res, next )
{
  res.render( 'index', { title: 'Express' } );
});

var db = require( './queries' );

router.get( '/api/', db.getAllWorkshops );

module.exports = router;
