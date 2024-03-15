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


HW4

скопировать на созданую ВМ файлы
deploy.sh
install_mongodb.sh
install_ruby.sh
startup.sh
запустить startup.sh

testapp_IP = 51.250.11.121
testapp_port = 9292


HW5

Создать сервисный аккаунт

FOLDER_ID=$(yc config list | grep folder-id  | cut -d ":" -f2 | xargs)
SERVICE_NAME="serviceacc"
yc iam service-account create --name=$SERVICE_NAME --folder-id=$FOLDER_ID
# Access rules
ACCT_ID=$(yc iam service-account get $SERVICE_NAME | \
          grep ^id | \
                    awk '{print [}')
                    echo "ACCT_ID=$ACCT_ID"
                    yc resource-manager folder add-access-binding --id $FOLDER_ID --service-account-id $ACCT_ID \
                        --role editor

#  create IAM key
 yc iam key create --service-account-id $ACCT_ID --output ./key.json
 ']}')

 Установить пакер для макос

brew tap hashicorp/tap
brew install hashicorp/tap/packer

установить плагин для билдера от Яндекса

packer plugins install github.com/hashicorp/yandex

проверить конфиг файл

packer validate ./ubuntu16.json

создать образ

packer build ./ubuntu16.json

testapp_IP = 51.250.6.169

testapp_port = 9292
