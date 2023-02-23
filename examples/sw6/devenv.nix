{ pkgs, config, inputs, lib, ... }:

{
  sportalliance.phpVersion = "php81";
  sportalliance.additionalPhpConfig = ''
    memory_limit = 512M
  '';
  sportalliance.additionalPhpExtensions = [ "mailparse" ];
  sportalliance.enableRabbitMq = true;
  sportalliance.enableElasticsearch = true;
}
