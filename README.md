[Main file]
1
main.tf
providers.tf (helm)
configmap.tf
secret.tf

(apiserver) deployment.tf
(apiserver) service.tf

mysql-deployment.tf
mysql-service.tf

2
modules/kube-prometheus
- main.tf
- namespaces.tf
- variables.tf
  
3
/metrics-server

[Infrastructure diagram]
![k8s](https://github.com/user-attachments/assets/3b39acf1-8af0-4adb-839f-62ee322c1e48)
