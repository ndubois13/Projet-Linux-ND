# Projet Linux

Nous allons faire un wordpress de haute dispo, à l'aide scripts Ansible et Terraform.

Au niveau du terraform nous aurons : 

- fichier providers.tf 
- fichier variables.tf 
- fichier de script principal
- dossier template

Côté Ansible : 

- fichier playbooks.yml
- dossier template 
- fichier default.j2 
- fichier haproxy.cfg.j2 
- fichier index.html.j2 
- fichier exports.j2 
- fichier docker-compose.yml.j2 
- dossier ifconfig.io 

## Terraform

Les fichiers tf et le template.

### Variables.tf

Indique les variables utilisées.

#### Variables pour les instances

- Variable region
- Variable instance_name
- Variable image_name
- Variable flavor_name
- Variable backend_number_of_instances

#### Variables réseaux

- Variable service_name
- Variable vlan_id
- Variable vlan_dhcp_start
- Variable vlan_dhcp_finish
- Variable vlan_dhcp_network

#### Instances

Dans cette partie on a le côté front et back 

1. Front avec HAproxy et NDS server

2. Back qui contient les instances de GRA et SBG

## Répertoire Ansible

Ici nous aurons :

1. Dans un répertoire template, tous les templates en .j2
2. Le playbook

### Playbook.yml

Cela sert à config les instances

#### Config du Front

Dans cette partie nous configurons HAproxy et NFS

#### Config Back

Ici nous configurons le serveur nginx, puis on installe docker-compose
