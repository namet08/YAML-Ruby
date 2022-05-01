Dado("que o usuário esta logado com {string}") do |mass_test|
  visit "/"
  expect(page).to have_css(".login_logo")

  @info = YAML.load_file("constants/constants_login.yml")[mass_test]
  raise "Login não encontrado" if @info.nil?

  find("#user-name").set @info["user_name"]
  find("#password").set @info["password"]
  sleep 3
end