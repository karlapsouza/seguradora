# language: pt

Funcionalidade: Cotar seguro veículo

	Cenário: Cotar seguro
		Dado que eu preencho os dados para o teste
		E que eu acesso o site da youse
		E eu clico no botão ".y-page__button-nav"
		E eu espero 1 segundo
		E eu preencho o campo "#email" com o email informado
		E eu clico no botão ".button--primary"
		E eu preencho o campo "#user_password" com a senha informada
		E eu clico no botão ".button--primary"
		E eu clico no link "/auto/order/new"
		E eu espero aparecer a mensagem "Oi, a gente quer conhecer você melhor, é rapidinho"
		E eu preencho o campo "#auto_order_flow_lead_person_data_lead_person_attributes_name" com o nome informado
		E eu espero 1 segundo
		E eu seleciono o valor "2" no campo "#auto_order_flow_lead_person_data_insured_person_attributes_same_as_lead_person"  
		E eu preencho o campo "#auto_order_flow_lead_person_data_lead_person_attributes_phone" com "11999999999"
		E eu preencho o campo "#auto_order_flow_lead_person_data_lead_person_attributes_email" com o email informado
		E eu clico no botão ".button--primary"
		E eu espero aparecer a mensagem "Agora, fale um pouquinho sobre o seu carro."
		E eu seleciono o valor "4" no campo "#auto_order_flow_pricing_requirements_vehicle_attributes_make"
		E eu seleciono o valor "20" no campo "#auto_order_flow_pricing_requirements_vehicle_attributes_model"
		E eu seleciono o valor "3" no campo "#auto_order_flow_pricing_requirements_vehicle_attributes_year"
		E eu seleciono o valor "3" no campo "#auto_order_flow_pricing_requirements_vehicle_attributes_version"
		E eu seleciono o valor "4" no campo "#auto_order_flow_pricing_requirements_vehicle_attributes_brand_new"
		E eu seleciono o valor "2" no campo "#auto_order_flow_pricing_requirements_vehicle_attributes_usage"
		E eu seleciono o valor "2" no campo "#auto_order_flow_pricing_requirements_vehicle_attributes_purchased"
		E eu seleciono o valor "2" no campo "#auto_order_flow_pricing_requirements_vehicle_attributes_purchased"
		E eu preencho o campo "#auto_order_flow_pricing_requirements_vehicle_attributes_address_attributes_zipcode" com "14806030"
		E eu seleciono o valor "1" no campo "#auto_order_flow_pricing_requirements_driver_attributes_same_as_insured_person"
		E eu seleciono o valor "3" no campo "#auto_order_flow_pricing_requirements_driver_attributes_gender"
		E eu preencho o campo "#auto_order_flow_pricing_requirements_driver_attributes_date_of_birth" com "02041989"
		E eu seleciono o valor "2" no campo "#auto_order_flow_pricing_requirements_driver_attributes_years_since_last_claim"
		E eu clico no botão ".hl2~.button.button--primary"
		E eu espero aparecer a mensagem "Nossas sugestões de planos especialmente para vc."
		E eu clico no primeiro elemento ".plan-card__call-to-action>.button_to>.button--plan"
		E eu espero aparecer a mensagem "Prontinho: Esse é o valor final do seguro que é a sua cara."
		E eu espero aparecer a mensagem "Aeee! Estamos quase lá."
		E eu preencho o campo "#auto_order_flow_insured_person_data_insured_person_attributes_name" com o nome informado
		E eu preencho o campo "#auto_order_flow_insured_person_data_insured_person_attributes_cpf" com o cpf informado
		E eu clico no primeiro elemento ".select2-selection__rendered>.select2-selection__placeholder"
		E eu preencho o campo ".select2-search__field" com o valor "Analista de negócios" e aciono o Enter
		E eu seleciono o valor "2" no campo "#auto_order_flow_insured_person_data_insured_person_attributes_nationality"
		E eu seleciono o valor "4" no campo "#auto_order_flow_insured_person_data_insured_person_attributes_salary_range"
		E eu preencho o campo "#auto_order_flow_insured_person_data_insured_person_attributes_address_attributes_number" com "123"
		E eu preencho o campo "#auto_order_flow_insured_person_data_insured_person_attributes_address_attributes_complement" com "Ap. 53"
		E eu clico no botão ".narrative-form__field>.narrative-form__paragraph>.button--primary"
		E eu espero 1 segundo
		E eu espero aparecer a mensagem "Estamos cada vez mais perto de fechar seu seguro :D"
		E eu preencho o campo "#auto_order_flow_vehicle_data_vehicle_attributes_license_plate" com "CEA-1234"
		E eu seleciono o valor "2" no campo "#auto_order_flow_vehicle_data_vehicle_attributes_bullet_proof"
		E eu espero 1 segundo
		E eu clico no botão ".narrative-form__field>.button.button--primary"
		E eu espero aparecer a mensagem "Para a efetivação deste seguro, a seguradora poderá solicitar a instalação de um Dispositivo de Segurança ou a realização de uma Vistoria Prévia."




