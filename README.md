sweat-shoppe
============

### Setting up Postgres for development
* Install Postgres and lib/devel packages using brew, apt, yum, or
  whatever
* Open up the postgres terminal with `sudo -u postgres psql`
* postgres user should by default have no password
* Enter the following: `create user sweat with createdb password
  'shoppe'
