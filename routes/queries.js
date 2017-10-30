const express    = require( 'express' );
var   Pool       = require( 'pg' ).Pool;
var   bodyParser = require( 'body-parser' );
const app        = express();

var config =
{
	host:     'localhost',
	user:     'Owner',
	password: 'ZnVjazM1MA',
	database: 'rudiment1',
};

var pool = new Pool( config );

app.set( 'port', ( 8080 ) );
app.use( bodyParser.json( { type: 'application/json' } ) );
app.use( bodyParser.urlencoded( { extended: true } ) );

// Queries

function getAllWorkshops( req, res )
{
	try
	{
		var response = pool.query( 'SELECT name AS Workshop FROM public.Workshops' );
		console.log( JSON.stringify( response.rows ) );
		res.json( response.rows );
	}
	catch ( e )
	{
		console.error( 'Error: ' + e );
	}
}

module.exports =
{
	getAllWorkshops: getAllWorkshops
};
