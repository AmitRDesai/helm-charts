helm upgrade -f self-host/my-values.yaml \
  bitwarden ./self-host \
  --install \
  --namespace bitwarden \
  --history-max=3