'use strict';

var cli = require('./cli.js');

cli
.parse(process.argv);
if (!cli.args.length || cli.matchedCommand !== true) {
    cli.help();
}