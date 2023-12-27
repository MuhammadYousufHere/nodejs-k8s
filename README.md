# Nodejs Application

This is poc application running on Minikube

# Dashboard

To Deploy Dashboard for Kubernetes run following:

```bash
kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.7.0/aio/deploy/recommended.yaml

```

Enable the access to the Dashboard by using `kubectl` :

```bash
kubectl proxy

```

Kubectl will make Dashboard available at
http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/.

Now you need Bearer Access token to login to dashboard

follow this to create admin user and clustor role binding: https://github.com/kubernetes/dashboard/blob/master/docs/user/access-control/creating-sample-user.md

run this to get a token :

```bash
kubectl -n kubernetes-dashboard create token admin-user
```
