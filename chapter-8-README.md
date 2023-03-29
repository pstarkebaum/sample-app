ti create session in chapter 8 we run

  $ rails generate controller Sessions new

in config/routes.rb we add

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

get and "/login" are the type of http request and "/login" is the path
while to: "sessions#new" is the controller and action

the rails generate command also make a test, to which we add 
  get login_path

going to the /login URL will be the page of a form to log in.
we'll create the form with the form_with helper.
We use the form_with helper as we did in the signup form, but we are not 
making a model in the database like the User model, so there is no instance variable.
with the signup form we said
  form_with(model: @user) do |f|
    f.label :name
    f.text_field :name

makes the html for a form that will assign the name attribute of a User model.

<form accept-charset="UTF-8" action="/users" class="new_user"
      id="new_user" method="post">
  <input name="authenticity_token" type="hidden"
         value="NNb6+J/j46LcrgYUC60wQ2titMuJQ5lLqyAbnbAUkdo=" />
  <label for="user_name">Name</label>
  <input id="user_name" name="user[name]" type="text" />

the for attribute in the label binds the label to the input. 
name="user[name]" allows Rails to make and initialization hash via the params variable. when press the button, it submit the form, which is a post to /signup. this activates the create action, which creates a new User with the fields filled in with the params[:user]