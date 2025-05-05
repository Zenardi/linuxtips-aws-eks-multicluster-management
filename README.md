# Projeto Final Parte 01 - Multicluster Management com ArgoCD :rocket: :rocket: :rocket: 

![ArgoCD](/assets/projeto-final-argocd-workload.drawio.png)

## Setup
```shell
Exportar credenciais
export AWS_ACCESS_KEY_ID=""
export AWS_SECRET_ACCESS_KEY=""
export AWS_SESSION_TOKEN=""
export AWS_CA_BUNDLE="" # Se atras de proxy

# Criar S3 Bucket (variavel bucket em backend.tfvars)

# Criar rede (networking)
cd networking
terraform apply --auto-approve -var-file=environment/prod/terraform.tfvars

# Executar apply
bash apply.sh

# Destruir
bash destroy.sh
```