Sweat Shoppe API
============

### JSON API spec
A demo API can be found (here)[young-basin-6053.herokuapp.com]

#### Implemented

* `/items` returns all items in the server catalog in a JSON array
* `/items/find_by_name/:term` returns all items whose names contain the given term.
  *Coming soon: trigram fuzzy search*
* `/items/find_by_price/:lower/:upper` returns a set of items whose prices fall
  within the given bound, sorted in ascending order by price. **Note that these prices must be denoted in
cents**
* `/items/find_under_price/:upper` returns a set of items under the
  given price, sorted in ascending order by price.

#### Item spec
* Currently the Item JSON only supports the following keys:
    * `id:integer`
    * `name:string`
    * `price:integer` *Note this is in cents*

### Setting up Postgres for development
* Install Postgres and lib/devel packages using brew, apt, yum, or
  whatever
* Open up the postgres terminal with `sudo -u postgres psql`
* postgres user should by default have no password
* Enter the following: `create user sweat with createdb password
  'shoppe'
