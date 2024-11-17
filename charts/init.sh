kubectl create namespace bitwarden
kubectl delete secret custom-secret -n bitwarden
kubectl create secret generic custom-secret --from-env-file=.env -n bitwarden
kubectl delete -f volumes.yaml
kubectl apply -f volumes.yaml
# helm upgrade bitwarden bitwarden/self-host --install --namespace bitwarden --values my-values.yaml
# pushd /mnt/disk0/kube-data/bitwarden
# mkdir -p {dtatprotection,licenses,applogs/admin,applogs/api,attachments,applogs/events,applogs/icons,applogs/identity,db/data,db/log,db/backups,applogs/notifications,applogs/scim,applogs/sso}
# popd
