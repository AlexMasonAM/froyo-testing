#Rspec Controller Tests Woo!

##Important steps
---

+ `$ rails g rspec:controller yogurts`

##Rspec Methods
---

+ `render_template(:view_filename)`
+ `be_success`
+ `include([array, of, things])`
+ `eq()`
+ `be_a(Class)`
+ `be_persisted`
+ `redirect_to(path or path_helper)`
+ `change(Class, :count).by(num)`

##Controller Spec

We need to cover the following specs:

- The Index action should render a template called Index.
- On the Index view, I should see a list of all yogurts, which means something has to be assigned to represent all yogurts.
- The Show action should render a template called Show.
- On the Show view, I should see the yogurt I asked for (by id) in the URL.
- The New action should render a template called New.
- On the New view, I should see a form connected to a new yogurt (@yogurt).
- The Edit action should render a template called Edit.
- On the Edit view, I should see a form connected to the existing yogurt record (@yogurt) that I wish to edit.
- I should know what valid attributes for a yogurt are/are not.
- (if valid attributes) The Create action should save the new yogurt to the database.
- (if valid attributes) After the save, the app should redirect me to the Index of yogurts.
- (if invalid attributes) The Create action should not save the new yogurt record.
- (if invalid attributes) The New view should be rendered again.
- (if valid attributes) The Update action should save the updated yogurt record (@yogurt) to the database.
- (if valid attributes) After the save, the app should redirect me to the Index of yogurts.
- (if invalid attributes) The Update action should not save the updated yogurt record.
- (if invalid attributes) The Edit view should be rendered again.
- The Destroy action should delete the selected yogurt.
- After the yogurt is deleted, the app should redirect me to the index of yogurts.

##Example Completed Spec

https://github.com/ga-students/WDI_LA_7-8/blob/master/08-week/froyo_specs_class_1/spec/controllers/yogurts_controller_spec.rb