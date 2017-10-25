# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (x has_many y e.g. User has_many Recipes)
    - trip has_many trip_categories and many categories through trip_categories.
- [x] Include at least one belongs_to relationship (x belongs_to y e.g. Post belongs_to User)
    - trip_category belongs to trip and category, trip belongs to user, user has many trips.
- [x] Include at least one has_many through relationship (x has_many y through z e.g. Recipe has_many Items through Ingredients)
    - trip has_many categories through trip_categories and category has_many trips through trip_categories
- [x] The "through" part of the has_many through includes at least one user submittable attribute (attribute_name e.g. ingredients.quantity)
    - categories have a name and you can use an exisiting cateogory or create new
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
    - all kinds of validations in user and trip models, for name and email uniqueness, for length of trip content and more.
- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
    - class methods for users by role, by attributes, by joined attributes in index showcase
- [x] Include a nested form writing to an associated model using a custom attribute writer (form URL, model name e.g. /recipe/new, Item)
    - the trip categories fields
- [x] Include signup (how e.g. Devise)
- [x] Include login (how e.g. Devise)
- [x] Include logout (how e.g. Devise)
    - users can signup, login and logout
- [x] Include third party signup/login (how e.g. Devise/OmniAuth)
     - users can login through Facebook
- [x] Include nested resource show or index (URL e.g. users/2/recipes)
    - the user's trips are nested
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients)
    - trip accepts nested attributes for categories, has nested resource too for its categories
- [x] Include form display of validation errors (form URL e.g. /recipes/new)
    - errors show up and fields are required

Confirm:
- [x] The application is pretty DRY
     - I created whole new app to restructure original version where I had two separate types of user, now user has roles to keep it dry and in one controller and model
- [x] Limited logic in controllers
    - I added the needed methods in the model class
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate
    - I use 3 partials for users and 2 for trips
