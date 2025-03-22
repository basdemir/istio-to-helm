```bash
helm template istio-base istio/base -f base/values.yaml | kubectl delete -f -
# Optional
helm upgrade --install \
  cert-manager jetstack/cert-manager \
  --namespace cert-manager \
  --create-namespace \
  --version v1.17.0 \
  --set crds.enabled=true
k label ns default istio.io/rev=stable
k create ns istio-system  
helm upgrade --install -n istio-system istio-base istio/base -f base/values.yaml
helm upgrade --install -n istio-system istio-istiod istio/istiod -f istiod/values.yaml
helm upgrade --install -n istio-system istio-cni istio/cni -f cni/values.yaml
helm upgrade --install ingress-ext -f ./ingressgateway/values-ext.yaml  istio/gateway -n istio-system
helm upgrade --install ingress-int -f ./ingressgateway/values-int.yaml  istio/gateway -n istio-system

# !!!!! With kind you must do for localhost:80

kubectl patch deployments.apps -n istio-system istio-ingressgateway -p '{"spec":{"template":{"spec":{"containers":[{"name":"istio-proxy","ports":[{"containerPort":80,"hostPort":80},{"containerPort":443,"hostPort":443}]}]}}}}'

# For old deployment on test and all envs

kubectl patch deployments.apps -n istio-system istio-ingressgateway -p '{"spec":{"template":{"spec":{"containers":[{"name":"istio-proxy","ports":[{"containerPort":8080,"hostPort":80},{"containerPort":8443,"hostPort":443}]}]}}}}'

kubectl appply -f ./samples

```
# Istio Operator Removal 

```bash
istioctl operator remove --purge --dry-run # to see whats installed

istioctl operator remove --purge
All revisions of Istio operator will be removed from cluster, Proceed? (y/N) y
Removing Istio operator...
  Removed Deployment:istio-operator:istio-operator.
  Removed Service:istio-operator:istio-operator.
  Removed ServiceAccount:istio-operator:istio-operator.
  Removed ClusterRole::istio-operator.
  Removed ClusterRoleBinding::istio-operator.
```

