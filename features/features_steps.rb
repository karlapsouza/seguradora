#Dado(/^que eu acesso o site da youse$/) do 
#  visit 'www.youse.com.br'
#end

Dado(/^que eu acesso o site da youse$/) do
  site = "https://www.youse.com.br/"
  visit site
  sleep(1)
end

E(/^eu clico no botão "([^"]*)"$/) do |btn|
  if ENV==['firefox'] || ENV['chrome']
    page.find(btn).click
  else
    page.find(btn).trigger('click')
  end
end

E(/^eu clico no primeiro elemento "([^"]*)"$/) do |elemento|
  first(elemento).click
  #expect(page.status_code).to eq(200)
end

E(/^eu clico no link "([^"]*)"$/) do |link|
  find(:xpath, "//a[@href='#{link}']").click
  #expect(page.status_code).to eq(200)
end

E(/^eu preencho o campo "([^"]*)" com o valor "([^"]*)" e aciono o Enter$/) do |elemento,texto|
  find(elemento).set(texto)
  find(elemento).native.send_key("\n")
  #expect(page.status_code).to eq(200)
end

E(/^eu preencho o campo "([^"]*)" com "([^"]*)"$/) do |elemento, texto|
  #page.fill_in elemento, :with => texto
  find(elemento).set(texto)
end

E(/^eu seleciono o valor "([^"]*)" no campo "([^"]*)"$/) do |valor, campo|
  option = "option[#{valor}]"
  selecionado = find(campo).find(:xpath, option)
  selecionado.click
  puts("Valor selecionado: #{selecionado.text}")
end

E(/^eu espero aparecer a mensagem "([^"]*)"$/) do |mensagem|
	expect(page).to have_content(text)
end

E(/^eu não devo ver a mensagem "([^"]*)"$/) do |mensagem|
  expect(page).to_not have_content(mensagem)
end

Dado(/^eu espero (\d+) segundo$/) do |s|
  sleep(s.to_i)
end

Dado(/^que eu preencho os dados para o teste$/) do
  if ($passou == nil)
   dados()
  end
end

=begin

E(/^eu preencho o campo "([^"]*)" com (o|a) (nome|senha|email|cpf) informado(a)$/) do |elemento, valor|
  #page.fill_in elemento, :with => texto
  if valor==cpf
    @cpf=cpf
    find(elemento).set(@cpf)
  elsif valor==nome
    @nome=nome
    find(elemento).set(@nome)
  elsif valor==email
    @email=email
    find(elemento).set(@email)
  elsif valor==senha
    @esenha=senha
    find(elemento).set(@senha)
  end
end

=end

def dados()
  fd = IO.sysopen("/dev/tty", "a+")
  a = IO.new(fd,"a+")
  a.puts "Informe o email:"
  $email = a.gets.gsub!("\n","")
  a.puts "Informe a senha:"
  $senha = a.gets.gsub!("\n","")
  a.puts "Informe o nome conforme está no cartão:"
  $nome = a.gets.gsub!("\n","")
  a.puts "Informe o CPF:"
  $cpf = a.gets.gsub!("\n","")
  $passou = true
end

E(/^eu preencho o campo "([^"]*)" com o nome informado$/) do |elemento|
  find(elemento).set($nome)
end

E(/^eu preencho o campo "([^"]*)" com a senha informada$/) do |elemento|
  find(elemento).set($senha)
end

E(/^eu preencho o campo "([^"]*)" com o email informado$/) do |elemento|
  find(elemento).set($email)
end

E(/^eu preencho o campo "([^"]*)" com o cpf informado$/) do |elemento|
  find(elemento).set($cpf)
end
