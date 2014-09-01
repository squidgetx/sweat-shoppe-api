Sweat Shoppe API
============

### JSON API spec
A demo API can be found (here)[young-basin-6053.herokuapp.com]

#### Implemented

* `/items` returns all items in the server catalog in a JSON array
* `/items/:id` returns a single item with the matched id. *At risk of
  deprecation, since no one will be looking up items by id really* 
* `/find/:term` returns all items whose names contain the given term.
  *Coming soon: trigram fuzzy search* *Route name subject to change in
favor of items/find/:term*

#### To be implemented
(Route names subject to change)

* `/items/price/:lower/:upper` returns a set of items whose prices fall
  within the given bound
* `/items/prices/:lower/:upper` returns a set of item **arrays**, where
  the sum of the prices in each array falls within the given bound

#### Item spec
* Currently the Item JSON only supports the following keys:
    * `id:integer`
    * `name:string`
    * `price:decimal`
    * `created_at:datetime` *At risk of deprecation*
    * `updated_at:datetime` *At risk of deprecation*

### Setting up Postgres for development
* Install Postgres and lib/devel packages using brew, apt, yum, or
  whatever
* Open up the postgres terminal with `sudo -u postgres psql`
* postgres user should by default have no password
* Enter the following: `create user sweat with createdb password
  'shoppe'
