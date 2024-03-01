# Alex-axtxx_infra
HW3
для подключения напрямую к someintrnalhost
ssh -A -J bastionIP someintranalhostIP

для ипользования  имени хоста  подключения напрямую
1. создать файл ~/.ssh/config
2. внести в него следующее соержимое:
	Host bastion
	HostName 51.250.84.191
	User appuser

	Host someinternalhost
	HostName 10.128.0.20
	ProxyJump bastion
	User appuser
3. после этого будет работать ssh someinternalhost


конфигурация ovpn
bastion_IP = 51.250.84.191
someinternalhost_IP = 10.128.0.20


HW3

скопировать на созданую ВМ файлы
deploy.sh
install_mongodb.sh
install_ruby.sh
startup.sh
запустить startup.sh

testapp_IP = 51.250.11.121
testapp_port = 9292
