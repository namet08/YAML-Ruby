Given("that the user accesses the login page") do
  visit "/"
  expect(page).to have_css(".login_logo")
end

When("he fills in valid email and password") do
  @info = YAML.load_file("features/support/test mass.yml")

  find("#user-name").set @info["user_name"]
  find("#password").set @info["password"]
  find("#login-button").click
end

Then("he is logged into the platform") do
  expect(page).to have_css(".shopping_cart_link")
end

When("he fills in invalid email and password") do
  @info = YAML.load_file("features/support/test mass.yml")

  find("#user-name").set @info["user_name_error"]
  find("#password").set @info["password_error"]
  find("#login-button").click
end

Then("ele não é logado na plataforma") do
  msg_error = "Epic sadface: Username and password do not match any user in this service"
  expect(page).to have_css("div[class='error-message-container error']", :text => msg_error)
end
