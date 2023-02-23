{ pkgs, config, inputs, lib, ... }:

{
  sportalliance.phpVersion = "php74";
  sportalliance.additionalPhpConfig = ''
    memory_limit = 200M
  '';
  sportalliance.additionalPhpExtensions = [ "mailparse" ];
  sportalliance.enableRabbitMq = false;
  sportalliance.enableElasticsearch = false;
  sportalliance.documentRoot = ".";
  sportalliance.staticFilePaths = "/files/* /media/*";
}
