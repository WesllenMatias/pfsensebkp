# pfsensebkp

![PFSENSE](https://user-images.githubusercontent.com/46201054/56322699-28b0fe00-6140-11e9-9c77-d45c754f22c2.jpg)

Scripts para backup de um servidor PFsense para outro servidor conectados via IPsec e enviando mensagem para telegram.


Deve ser estabelecido comunicação via SSH de confiança entre PFsense e Servidor destino do Backup:

**ssh-copy-id -o BindAddress=[ip_da_interface] -i [caminho_do_id_rsa.pub] [user]@[ip_servidor_destino]**

Feito isso deve ser adicionado a crontab do Pfsense o horário e o caminho a executar o script criado.

OBS: Baixar via pkg mananger o cron no pfsense ou usar o comando abaixo:

**pkg install cron -y**

