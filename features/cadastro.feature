# language: pt

Funcionalidade: Cadastrar usuário

	Cenário: Fazer cadastro
		Dado que eu preencho os dados para o teste
		E que eu acesso o site da youse
		E eu clico no botão ".y-page__button-nav"
		E eu espero 1 segundo
		E eu clico no link "/users/sign_up"
		E eu espero 1 segundo
		E eu preencho o campo "#user_name" com o nome informado
		E eu preencho o campo "#user_email" com o email informado
		E eu preencho o campo "#user_password" com a senha informada
		E eu preencho o campo "#user_password_confirmation" com a senha informada
		E eu clico no botão ".button--primary"
		E eu não devo ver a mensagem "já está em uso"


	Cenário: Logar
		Dado que eu preencho os dados para o teste
		E que eu acesso o site da youse
		E eu clico no botão ".y-page__button-nav"
		E eu espero aparecer a mensagem "PRÓXIMO PASSO"
		E eu preencho o campo "#email" com o email informado
		E eu clico no botão ".button--primary"
		E eu espero aparecer a mensagem "ENTRAR"
		E eu preencho o campo "#user_password" com a senha informada
		E eu clico no botão ".button--primary"
		E eu espero aparecer a mensagem "Login efetuado com sucesso."

	Cenário: Deslogar
		Dado que eu preencho os dados para o teste
		E que eu acesso o site da youse 
		E eu clico no botão ".y-page__button-nav"
		E eu espero aparecer a mensagem "PRÓXIMO PASSO"
		E eu preencho o campo "#email" com o email informado
		E eu clico no botão ".button--primary"
		E eu espero aparecer a mensagem "ENTRAR"
		E eu preencho o campo "#user_password" com a senha informada
		E eu clico no botão ".button--primary"
		E eu espero aparecer a mensagem "Login efetuado com sucesso."
		E eu clico no botão ".account-header__account-link.account-header__account-with-sub-menu"
		E eu clico no botão ".sub-account-dropdown__menu>li>#track_logout"
		E eu espero aparecer a mensagem "Olá, somos a Youse."
