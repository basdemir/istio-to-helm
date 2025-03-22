#!/usr/bin/env bash

# Label/Annotate resources to mark them a part of the Helm release.
kubectl annotate HorizontalPodAutoscaler.autoscaling --namespace=istio-system istiod-stable meta.helm.sh/release-name=pilot
kubectl annotate HorizontalPodAutoscaler.autoscaling --namespace=istio-system istiod-stable meta.helm.sh/release-namespace=istio-system
kubectl label HorizontalPodAutoscaler.autoscaling --namespace=istio-system istiod-stable app.kubernetes.io/managed-by=Helm
kubectl annotate ClusterRole.rbac.authorization.k8s.io istiod-clusterrole-stable-istio-system meta.helm.sh/release-name=pilot
kubectl label ClusterRole.rbac.authorization.k8s.io istiod-clusterrole-stable-istio-system app.kubernetes.io/managed-by=Helm
kubectl annotate ClusterRole.rbac.authorization.k8s.io istiod-gateway-controller-stable-istio-system meta.helm.sh/release-name=pilot
kubectl label ClusterRole.rbac.authorization.k8s.io istiod-gateway-controller-stable-istio-system app.kubernetes.io/managed-by=Helm
kubectl annotate ClusterRoleBinding.rbac.authorization.k8s.io istiod-clusterrole-stable-istio-system meta.helm.sh/release-name=pilot
kubectl label ClusterRoleBinding.rbac.authorization.k8s.io istiod-clusterrole-stable-istio-system app.kubernetes.io/managed-by=Helm
kubectl annotate ClusterRoleBinding.rbac.authorization.k8s.io istiod-gateway-controller-stable-istio-system meta.helm.sh/release-name=pilot
kubectl label ClusterRoleBinding.rbac.authorization.k8s.io istiod-gateway-controller-stable-istio-system app.kubernetes.io/managed-by=Helm
kubectl annotate ConfigMap --namespace=istio-system istio-stable meta.helm.sh/release-name=pilot
kubectl annotate ConfigMap --namespace=istio-system istio-stable meta.helm.sh/release-namespace=istio-system
kubectl label ConfigMap --namespace=istio-system istio-stable app.kubernetes.io/managed-by=Helm
kubectl annotate Deployment.apps --namespace=istio-system istiod-stable meta.helm.sh/release-name=pilot
kubectl annotate Deployment.apps --namespace=istio-system istiod-stable meta.helm.sh/release-namespace=istio-system
kubectl label Deployment.apps --namespace=istio-system istiod-stable app.kubernetes.io/managed-by=Helm
kubectl annotate ConfigMap --namespace=istio-system istio-sidecar-injector-stable meta.helm.sh/release-name=pilot
kubectl annotate ConfigMap --namespace=istio-system istio-sidecar-injector-stable meta.helm.sh/release-namespace=istio-system
kubectl label ConfigMap --namespace=istio-system istio-sidecar-injector-stable app.kubernetes.io/managed-by=Helm
kubectl annotate MutatingWebhookConfiguration.admissionregistration.k8s.io istio-sidecar-injector-stable meta.helm.sh/release-name=pilot
kubectl label MutatingWebhookConfiguration.admissionregistration.k8s.io istio-sidecar-injector-stable app.kubernetes.io/managed-by=Helm
kubectl annotate PodDisruptionBudget.policy --namespace=istio-system istiod-stable meta.helm.sh/release-name=pilot
kubectl annotate PodDisruptionBudget.policy --namespace=istio-system istiod-stable meta.helm.sh/release-namespace=istio-system
kubectl label PodDisruptionBudget.policy --namespace=istio-system istiod-stable app.kubernetes.io/managed-by=Helm
kubectl annotate ClusterRole.rbac.authorization.k8s.io istio-reader-clusterrole-stable-istio-system meta.helm.sh/release-name=pilot
kubectl label ClusterRole.rbac.authorization.k8s.io istio-reader-clusterrole-stable-istio-system app.kubernetes.io/managed-by=Helm
kubectl annotate ClusterRoleBinding.rbac.authorization.k8s.io istio-reader-clusterrole-stable-istio-system meta.helm.sh/release-name=pilot
kubectl label ClusterRoleBinding.rbac.authorization.k8s.io istio-reader-clusterrole-stable-istio-system app.kubernetes.io/managed-by=Helm
kubectl annotate Role.rbac.authorization.k8s.io --namespace=istio-system istiod-stable meta.helm.sh/release-name=pilot
kubectl annotate Role.rbac.authorization.k8s.io --namespace=istio-system istiod-stable meta.helm.sh/release-namespace=istio-system
kubectl label Role.rbac.authorization.k8s.io --namespace=istio-system istiod-stable app.kubernetes.io/managed-by=Helm
kubectl annotate RoleBinding.rbac.authorization.k8s.io --namespace=istio-system istiod-stable meta.helm.sh/release-name=pilot
kubectl annotate RoleBinding.rbac.authorization.k8s.io --namespace=istio-system istiod-stable meta.helm.sh/release-namespace=istio-system
kubectl label RoleBinding.rbac.authorization.k8s.io --namespace=istio-system istiod-stable app.kubernetes.io/managed-by=Helm
kubectl annotate Service --namespace=istio-system istiod-stable meta.helm.sh/release-name=pilot
kubectl annotate Service --namespace=istio-system istiod-stable meta.helm.sh/release-namespace=istio-system
kubectl label Service --namespace=istio-system istiod-stable app.kubernetes.io/managed-by=Helm
kubectl annotate ServiceAccount --namespace=istio-system istiod-stable meta.helm.sh/release-name=pilot
kubectl annotate ServiceAccount --namespace=istio-system istiod-stable meta.helm.sh/release-namespace=istio-system
kubectl label ServiceAccount --namespace=istio-system istiod-stable app.kubernetes.io/managed-by=Helm
kubectl annotate ValidatingWebhookConfiguration.admissionregistration.k8s.io istio-validator-stable-istio-system meta.helm.sh/release-name=pilot
kubectl label ValidatingWebhookConfiguration.admissionregistration.k8s.io istio-validator-stable-istio-system app.kubernetes.io/managed-by=Helm


# Run the actual Helm install operation
helm upgrade --install pilot --namespace istio-system -f pilot-values.yaml oci://gcr.io/istio-release/charts/istiod
