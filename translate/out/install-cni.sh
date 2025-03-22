#!/usr/bin/env bash

# Label/Annotate resources to mark them a part of the Helm release.
kubectl annotate ClusterRole.rbac.authorization.k8s.io istio-cni meta.helm.sh/release-name=cni
kubectl label ClusterRole.rbac.authorization.k8s.io istio-cni app.kubernetes.io/managed-by=Helm
kubectl annotate ClusterRole.rbac.authorization.k8s.io istio-cni-repair-role meta.helm.sh/release-name=cni
kubectl label ClusterRole.rbac.authorization.k8s.io istio-cni-repair-role app.kubernetes.io/managed-by=Helm
kubectl annotate ClusterRoleBinding.rbac.authorization.k8s.io istio-cni meta.helm.sh/release-name=cni
kubectl label ClusterRoleBinding.rbac.authorization.k8s.io istio-cni app.kubernetes.io/managed-by=Helm
kubectl annotate ClusterRoleBinding.rbac.authorization.k8s.io istio-cni-repair-rolebinding meta.helm.sh/release-name=cni
kubectl label ClusterRoleBinding.rbac.authorization.k8s.io istio-cni-repair-rolebinding app.kubernetes.io/managed-by=Helm
kubectl annotate ConfigMap --namespace=istio-system istio-cni-config meta.helm.sh/release-name=cni
kubectl annotate ConfigMap --namespace=istio-system istio-cni-config meta.helm.sh/release-namespace=istio-system
kubectl label ConfigMap --namespace=istio-system istio-cni-config app.kubernetes.io/managed-by=Helm
kubectl annotate DaemonSet.apps --namespace=istio-system istio-cni-node meta.helm.sh/release-name=cni
kubectl annotate DaemonSet.apps --namespace=istio-system istio-cni-node meta.helm.sh/release-namespace=istio-system
kubectl label DaemonSet.apps --namespace=istio-system istio-cni-node app.kubernetes.io/managed-by=Helm
kubectl annotate ServiceAccount --namespace=istio-system istio-cni meta.helm.sh/release-name=cni
kubectl annotate ServiceAccount --namespace=istio-system istio-cni meta.helm.sh/release-namespace=istio-system
kubectl label ServiceAccount --namespace=istio-system istio-cni app.kubernetes.io/managed-by=Helm


# Run the actual Helm install operation
helm upgrade --install cni --namespace istio-system -f cni-values.yaml oci://gcr.io/istio-release/charts/cni
