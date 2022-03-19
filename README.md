# README

To run this project you need to do next: step by step please

* Clone development branch of this project:
```
git clone --branch development https://github.com/sanelca/pennylane-recipes.git
```
* You must to install meilisearch locally: 
Run in gitbash: 
```
curl -L https://install.meilisearch.com | sh
```
After you install meilisearch run next command:
```
./meilisearch --master-key="pennylane-test22"
```
* Run in terminal: `bundle install`

* Run in terminal: `yarn install`

* Find model Recipe in `app/models/recipe.rb` and cut all codes from the class
it should look like this:
```
class Recipe < ApplicationRecord
end
```

run in terminal:

```
rake db:create
rake db:migrate
rake db:seed
```

After that all data from JSON will be inserted into database

Now return back all code from recipe.rb model

After all these steps all what you need to do is to run project
rails server and that is it...

