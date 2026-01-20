# Azure Infrastructure Automation with Terraform

Este repositório contém códigos de **Infraestrutura como Código (IaC)** para provisionamento automatizado de recursos no Microsoft Azure utilizando Terraform.

O projeto demonstra boas práticas de segurança, modularização e gestão de recursos em nuvem.

## 🚀 Tecnologias Utilizadas
* **Terraform** (HCL)
* **Microsoft Azure** (Provider)
* **Git** (Version Control)

## 🛠️ Arquitetura e Recursos
O código automatiza a criação dos seguintes recursos:
* **Resource Groups:** Organização lógica dos recursos.
* **Networking:** Criação de VNet, Subnets e Interfaces de Rede (NIC).
* **Segurança:** Implementação de Network Security Groups (NSG) para controle de tráfego (Porta 22 SSH).
* **Compute:** Provisionamento de Máquinas Virtuais Linux (Ubuntu Server) com IP Público Estático (SKU Standard).
* **Gestão de Estado:** Tratamento de erros de cotas regionais (SkuNotAvailable) e adaptação de regiões (West US / East US 2).

## 🔒 Segurança
* **Segredos:** Nenhuma senha ou credencial é armazenada no código (hardcoded).
* **Input Seguro:** A senha de administrador é solicitada em tempo de execução e marcada como `sensitive`, não aparecendo nos logs do terminal.
* **Git Ignore:** Arquivos de estado (`.tfstate`) e variáveis sensíveis são ignorados pelo controle de versão.


### Pré-requisitos
* [Terraform](https://www.terraform.io/downloads) instalado.
* [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) instalado e autenticado (`az login`).
