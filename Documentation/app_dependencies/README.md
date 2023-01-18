I checked package.json of front-end & back-end to know which dependencies & devdependencies in udagram app built on it, and get the most important in these packages in :

 "engines": {
    "node": "14.15.0"  // node version
  },
  "main": "server.ts",  // root file server
## back-end 
 "dependencies": {
    "aws-sdk": "^2.429.0",    // for aws cli
    "dotenv": "^8.2.0",    // for enviroment
    "express": "^4.16.4",  // app framework
    "pg": "^8.7.1",      // for postgres database
    "sequelize": "^6.5.0",   // for database
    "sequelize-typescript": "^2.1.3"
  },
  "devDependencies": {
    "chai": "^4.2.0",  //for testing
    "mocha": "^6.1.4",
    "eslint": "^6.8.0",   // for code lint
    "ts-node-dev": "^1.0.0-pre.32",  // for build
    "typescript": "^4.2.3"
  }
}

## front-end
"dependencies": {
    "@angular/common": "^8.2.14", // for angular framework
    "@angular/core": "^8.2.14",
  
  },
  "devDependencies": {
    "jasmine-core": "~2.99.1",  //for testing
    "karma": "~3.1.4",
    "ts-node": "~8.0.0",
    "tslint": "~5.12.0",
    "typescript": "^3.5.3"
  },
}
