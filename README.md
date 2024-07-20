파일 구성

1 
/metrics-server

2
module
> main.tf
> namespaces.tf
> variables.tf

3
main.tf
providers.tf (helm)
configmap.tf
secret.tf

(apiserver) deployment.tf
(apiserver) service.tf

mysql-deployment.tf
mysql-service.tf

