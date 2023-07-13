# sportalliance.phpVersion
Allows to define the used PHP Version. For supported versions, see [Different PHP versions](Home.md#different-php-versions)

*_Example_*
```
sportalliance.phpVersion = "php80";
```

# sportalliance.systemConfig
Define shopware systemconfig values.

*_Example_*
```
sportalliance.systemConfig = {
    "foo.bar.testString" = "false";
};
```

# sportalliance.additionalPhpConfig
Define additional php.ini settings, which are used for php-fpm and php-cli.

*_Example_*
```
sportalliance.additionalPhpConfig = ''
    memory_limit = 200M
'';
```

# sportalliance.additionalPhpExtensions
Define additional PHP extensions that are included in php-fpm and php-cli.

*_Example_*
```
sportalliance.additionalPhpExtensions = [
   "mailparse"
];
```

# sportalliance.additionalServerAlias
Define additional server aliases that are added to caddy.

*_Example_*
```
sportalliance.additionalServerAlias = [
   "example.com"
];
```

# sportalliance.additionalVhostConfig
Define additional vhost configurations that are appended to the general vhost configuration.

*_Example_*
```
sportalliance.additionalVhostConfig = ''
  tls internal
'';
```

# sportalliance.enableRabbitMq
Enables the RabbitMQ message broker and amqp PHP extension. Can be used for the Symfony message queue.

*_Example_*
```
sportalliance.enableRabbitMq = true;
```

# sportalliance.enableElasticsearch
Enables the Elasticsearch service and configures Shopware to use Elasticsearch in addition to the default
MySQL search.

*_Example_*
```
sportalliance.enableElasticsearch = true;
```

# sportalliance.importDatabaseDumps

You can import a list of links of database dumps by using the command `importdb`.
Define a list of links like in the example below.

Supported files:
- *.sql
- *.gz
- *.zip

*_Example_*
```
sportalliance.importDatabaseDumps = [
    "http://localhost/dump.sql.gz"
    "http://localhost/admin_logins.sql"
];
```

# sportalliance.documentRoot
Changes the default document root (`public`) of caddy to the specified value

*_Example for the current folder_*
```
sportalliance.documentRoot = ".";
```

# sportalliance.projectRoot
Changes the default root of the project to the specified value (no `/` as pre- or suffix required)

*_Example for a `project` folder inside the current folder_*
```
sportalliance.projectRoot = "project";
```

# sportalliance.staticFilePaths
Adjusts the defined matcher paths for caddy. You might want to adjust those to access/handle `*.php` files.

**NOTE**: The path can not be empty!

*_Example_*
```
sportalliance.staticFilePaths = "myCustomFolder/*";
```

# sportalliance.fallbackRedirectMediaUrl
Fallback redirect URL for media not found on local storage. Best for CDN purposes without downloading them.

*_Example_*
```
sportalliance.fallbackRedirectMediaUrl = "https://my-cool-cdn-in-public-staging.example-cdn.com";
```

# kellerkinder.additionalPackages
Define packages that should be installed additionally.

*_Example_*
```
kellerkinder.additionalPackages = [ pkgs.jpegoptim pkgs.optipng pkgs.gifsicle ];
```
