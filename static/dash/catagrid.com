<VirtualHost *:80>
  # Admin email, Server Name (domain name), and any aliases
  ServerAdmin adam.tock@gmail.com
  ServerName  catagrid.com
  ServerAlias www.catagrid.com

  # Index file and Document Root (where the public files are located)
  DirectoryIndex index.html index.php
  DocumentRoot /srv/www/catagrid.com/public_html

  # Log file locations
  LogLevel warn
  ErrorLog  /srv/www/catagrid.com/log/error.log
  CustomLog /srv/www/catagrid.com/log/access.log combined
</VirtualHost>
