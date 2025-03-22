#!/usr/bin/env bash

# Label/Annotate resources to mark them a part of the Helm release.
kubectl annotate CustomResourceDefinition.apiextensions.k8s.io wasmplugins.extensions.istio.io meta.helm.sh/release-name=istio-istiod --overwrite=true
kubectl label CustomResourceDefinition.apiextensions.k8s.io wasmplugins.extensions.istio.io app.kubernetes.io/managed-by=Helm --overwrite=true
kubectl annotate CustomResourceDefinition.apiextensions.k8s.io destinationrules.networking.istio.io meta.helm.sh/release-name=istio-istiod --overwrite=true
kubectl label CustomResourceDefinition.apiextensions.k8s.io destinationrules.networking.istio.io app.kubernetes.io/managed-by=Helm --overwrite=true
kubectl annotate CustomResourceDefinition.apiextensions.k8s.io envoyfilters.networking.istio.io meta.helm.sh/release-name=istio-istiod --overwrite=true
kubectl label CustomResourceDefinition.apiextensions.k8s.io envoyfilters.networking.istio.io app.kubernetes.io/managed-by=Helm --overwrite=true
kubectl annotate CustomResourceDefinition.apiextensions.k8s.io gateways.networking.istio.io meta.helm.sh/release-name=istio-istiod --overwrite=true
kubectl label CustomResourceDefinition.apiextensions.k8s.io gateways.networking.istio.io app.kubernetes.io/managed-by=Helm --overwrite=true
kubectl annotate CustomResourceDefinition.apiextensions.k8s.io proxyconfigs.networking.istio.io meta.helm.sh/release-name=istio-istiod --overwrite=true
kubectl label CustomResourceDefinition.apiextensions.k8s.io proxyconfigs.networking.istio.io app.kubernetes.io/managed-by=Helm --overwrite=true
kubectl annotate CustomResourceDefinition.apiextensions.k8s.io serviceentries.networking.istio.io meta.helm.sh/release-name=istio-istiod --overwrite=true
kubectl label CustomResourceDefinition.apiextensions.k8s.io serviceentries.networking.istio.io app.kubernetes.io/managed-by=Helm --overwrite=true
kubectl annotate CustomResourceDefinition.apiextensions.k8s.io sidecars.networking.istio.io meta.helm.sh/release-name=istio-istiod --overwrite=true
kubectl label CustomResourceDefinition.apiextensions.k8s.io sidecars.networking.istio.io app.kubernetes.io/managed-by=Helm --overwrite=true
kubectl annotate CustomResourceDefinition.apiextensions.k8s.io virtualservices.networking.istio.io meta.helm.sh/release-name=istio-istiod --overwrite=true
kubectl label CustomResourceDefinition.apiextensions.k8s.io virtualservices.networking.istio.io app.kubernetes.io/managed-by=Helm --overwrite=true
kubectl annotate CustomResourceDefinition.apiextensions.k8s.io workloadentries.networking.istio.io meta.helm.sh/release-name=istio-istiod --overwrite=true
kubectl label CustomResourceDefinition.apiextensions.k8s.io workloadentries.networking.istio.io app.kubernetes.io/managed-by=Helm --overwrite=true
kubectl annotate CustomResourceDefinition.apiextensions.k8s.io workloadgroups.networking.istio.io meta.helm.sh/release-name=istio-istiod --overwrite=true
kubectl label CustomResourceDefinition.apiextensions.k8s.io workloadgroups.networking.istio.io app.kubernetes.io/managed-by=Helm --overwrite=true
kubectl annotate CustomResourceDefinition.apiextensions.k8s.io authorizationpolicies.security.istio.io meta.helm.sh/release-name=istio-istiod --overwrite=true
kubectl label CustomResourceDefinition.apiextensions.k8s.io authorizationpolicies.security.istio.io app.kubernetes.io/managed-by=Helm --overwrite=true
kubectl annotate CustomResourceDefinition.apiextensions.k8s.io peerauthentications.security.istio.io meta.helm.sh/release-name=istio-istiod --overwrite=true
kubectl label CustomResourceDefinition.apiextensions.k8s.io peerauthentications.security.istio.io app.kubernetes.io/managed-by=Helm --overwrite=true
kubectl annotate CustomResourceDefinition.apiextensions.k8s.io requestauthentications.security.istio.io meta.helm.sh/release-name=istio-istiod --overwrite=true
kubectl label CustomResourceDefinition.apiextensions.k8s.io requestauthentications.security.istio.io app.kubernetes.io/managed-by=Helm --overwrite=true
kubectl annotate CustomResourceDefinition.apiextensions.k8s.io telemetries.telemetry.istio.io meta.helm.sh/release-name=istio-istiod --overwrite=true
kubectl label CustomResourceDefinition.apiextensions.k8s.io telemetries.telemetry.istio.io app.kubernetes.io/managed-by=Helm --overwrite=true
kubectl annotate ServiceAccount --namespace=istio-system istio-reader-service-account meta.helm.sh/release-name=istio-istiod --overwrite=true
kubectl annotate ServiceAccount --namespace=istio-system istio-reader-service-account meta.helm.sh/release-namespace=istio-system --overwrite=true
kubectl label ServiceAccount --namespace=istio-system istio-reader-service-account app.kubernetes.io/managed-by=Helm --overwrite=true

kubectl annotate ServiceAccount --namespace=istio-system istiod-stable meta.helm.sh/release-namespace=istio-system --overwrite=true
kubectl annotate ServiceAccount --namespace=istio-system istiod-stable meta.helm.sh/release-name=istio-istiod --overwrite=true
kubectl label ServiceAccount --namespace=istio-system istiod-stable app.kubernetes.io/managed-by=Helm --overwrite=true

kubectl annotate ConfigMap --namespace=istio-system istio-stable meta.helm.sh/release-name=istio-istiod --overwrite=true
kubectl annotate ConfigMap --namespace=istio-system istio-stable app.kubernetes.io/managed-by=Helm --overwrite=true
kubectl label ConfigMap --namespace=istio-system istio-stable meta.helm.sh/release-namespace=istio-system --overwrite=true
kubectl annotate ConfigMap --namespace=istio-system istio-stable meta.helm.sh/release-namespace=istio-system --overwrite=true
kubectl label ConfigMap --namespace=istio-system istio-stable app.kubernetes.io/managed-by=Helm --overwrite=true

kubectl annotate ConfigMap --namespace=istio-system istio-sidecar-injector-stable meta.helm.sh/release-name=istio-istiod --overwrite=true
kubectl annotate ConfigMap --namespace=istio-system istio-sidecar-injector-stable app.kubernetes.io/managed-by=Helm --overwrite=true
kubectl label ConfigMap --namespace=istio-system istio-sidecar-injector-stable meta.helm.sh/release-namespace=istio-system --overwrite=true
kubectl annotate ConfigMap --namespace=istio-system istio-sidecar-injector-stable meta.helm.sh/release-namespace=istio-system --overwrite=true
kubectl label ConfigMap --namespace=istio-system istio-sidecar-injector-stable app.kubernetes.io/managed-by=Helm --overwrite=true

kubectl annotate ClusterRole istiod-clusterrole-stable-istio-system app.kubernetes.io/managed-by=Helm --overwrite=true
kubectl annotate ClusterRole istiod-clusterrole-stable-istio-system meta.helm.sh/release-name=istio-istiod --overwrite=true
kubectl annotate ClusterRole istiod-clusterrole-stable-istio-system meta.helm.sh/release-namespace=istio-system --overwrite=true
kubectl label ClusterRole istiod-clusterrole-stable-istio-system app.kubernetes.io/managed-by=Helm --overwrite=true
kubectl label ClusterRole istiod-clusterrole-stable-istio-system meta.helm.sh/release-name=istio-istiod --overwrite=true
kubectl label ClusterRole istiod-clusterrole-stable-istio-system meta.helm.sh/release-namespace=istio-system --overwrite=true

kubectl annotate ClusterRole istiod-gateway-controller-stable-istio-system app.kubernetes.io/managed-by=Helm --overwrite=true
kubectl annotate ClusterRole istiod-gateway-controller-stable-istio-system meta.helm.sh/release-name=istio-istiod --overwrite=true
kubectl annotate ClusterRole istiod-gateway-controller-stable-istio-system meta.helm.sh/release-namespace=istio-system --overwrite=true
kubectl label ClusterRole istiod-gateway-controller-stable-istio-system app.kubernetes.io/managed-by=Helm --overwrite=true
kubectl label ClusterRole istiod-gateway-controller-stable-istio-system meta.helm.sh/release-name=istio-istiod --overwrite=true
kubectl label ClusterRole istiod-gateway-controller-stable-istio-system meta.helm.sh/release-namespace=istio-system --overwrite=true

kubectl annotate ClusterRole istio-reader-clusterrole-stable-istio-system app.kubernetes.io/managed-by=Helm --overwrite=true
kubectl annotate ClusterRole istio-reader-clusterrole-stable-istio-system meta.helm.sh/release-name=istio-istiod --overwrite=true
kubectl annotate ClusterRole istio-reader-clusterrole-stable-istio-system meta.helm.sh/release-namespace=istio-system --overwrite=true
kubectl label ClusterRole istio-reader-clusterrole-stable-istio-system app.kubernetes.io/managed-by=Helm --overwrite=true
kubectl label ClusterRole istio-reader-clusterrole-stable-istio-system meta.helm.sh/release-name=istio-istiod --overwrite=true
kubectl label ClusterRole istio-reader-clusterrole-stable-istio-system meta.helm.sh/release-namespace=istio-system --overwrite=true

kubectl annotate ClusterRoleBinding istio-reader-clusterrole-stable-istio-system app.kubernetes.io/managed-by=Helm --overwrite=true
kubectl annotate ClusterRoleBinding istio-reader-clusterrole-stable-istio-system meta.helm.sh/release-name=istio-istiod --overwrite=true
kubectl annotate ClusterRoleBinding istio-reader-clusterrole-stable-istio-system meta.helm.sh/release-namespace=istio-system --overwrite=true
kubectl label ClusterRoleBinding istio-reader-clusterrole-stable-istio-system app.kubernetes.io/managed-by=Helm --overwrite=true
kubectl label ClusterRoleBinding istio-reader-clusterrole-stable-istio-system meta.helm.sh/release-name=istio-istiod --overwrite=true
kubectl label ClusterRoleBinding istio-reader-clusterrole-stable-istio-system meta.helm.sh/release-namespace=istio-system --overwrite=true

kubectl annotate ClusterRoleBinding istiod-gateway-controller-stable-istio-system app.kubernetes.io/managed-by=Helm --overwrite=true
kubectl annotate ClusterRoleBinding istiod-gateway-controller-stable-istio-system meta.helm.sh/release-name=istio-istiod --overwrite=true
kubectl annotate ClusterRoleBinding istiod-gateway-controller-stable-istio-system meta.helm.sh/release-namespace=istio-system --overwrite=true
kubectl label ClusterRoleBinding istiod-gateway-controller-stable-istio-system app.kubernetes.io/managed-by=Helm --overwrite=true
kubectl label ClusterRoleBinding istiod-gateway-controller-stable-istio-system meta.helm.sh/release-name=istio-istiod --overwrite=true
kubectl label ClusterRoleBinding istiod-gateway-controller-stable-istio-system meta.helm.sh/release-namespace=istio-system --overwrite=true

kubectl annotate ClusterRoleBinding istiod-clusterrole-stable-istio-system app.kubernetes.io/managed-by=Helm --overwrite=true
kubectl annotate ClusterRoleBinding istiod-clusterrole-stable-istio-system meta.helm.sh/release-name=istio-istiod --overwrite=true
kubectl annotate ClusterRoleBinding istiod-clusterrole-stable-istio-system meta.helm.sh/release-namespace=istio-system --overwrite=true
kubectl label ClusterRoleBinding istiod-clusterrole-stable-istio-system app.kubernetes.io/managed-by=Helm --overwrite=true
kubectl label ClusterRoleBinding istiod-clusterrole-stable-istio-system meta.helm.sh/release-name=istio-istiod --overwrite=true
kubectl label ClusterRoleBinding istiod-clusterrole-stable-istio-system meta.helm.sh/release-namespace=istio-system --overwrite=true

kubectl annotate Role --namespace=istio-system istiod-stable app.kubernetes.io/managed-by=Helm --overwrite=true
kubectl annotate Role --namespace=istio-system istiod-stable meta.helm.sh/release-name=istio-istiod --overwrite=true
kubectl annotate Role --namespace=istio-system istiod-stable meta.helm.sh/release-namespace=istio-system --overwrite=true
kubectl label Role --namespace=istio-system istiod-stable app.kubernetes.io/managed-by=Helm --overwrite=true
kubectl label Role --namespace=istio-system istiod-stable meta.helm.sh/release-name=istio-istiod --overwrite=true
kubectl label Role --namespace=istio-system istiod-stable meta.helm.sh/release-namespace=istio-system --overwrite=true

kubectl annotate RoleBinding --namespace=istio-system istiod-stable app.kubernetes.io/managed-by=Helm --overwrite=true
kubectl annotate RoleBinding --namespace=istio-system istiod-stable meta.helm.sh/release-name=istio-istiod --overwrite=true
kubectl annotate RoleBinding --namespace=istio-system istiod-stable meta.helm.sh/release-namespace=istio-system --overwrite=true
kubectl label RoleBinding --namespace=istio-system istiod-stable app.kubernetes.io/managed-by=Helm --overwrite=true
kubectl label RoleBinding --namespace=istio-system istiod-stable meta.helm.sh/release-name=istio-istiod --overwrite=true
kubectl label RoleBinding --namespace=istio-system istiod-stable meta.helm.sh/release-namespace=istio-system --overwrite=true

kubectl annotate Service --namespace=istio-system istiod-stable app.kubernetes.io/managed-by=Helm --overwrite=true
kubectl annotate Service --namespace=istio-system istiod-stable meta.helm.sh/release-name=istio-istiod --overwrite=true
kubectl annotate Service --namespace=istio-system istiod-stable meta.helm.sh/release-namespace=istio-system --overwrite=true
kubectl label Service --namespace=istio-system istiod-stable app.kubernetes.io/managed-by=Helm --overwrite=true
kubectl label Service --namespace=istio-system istiod-stable meta.helm.sh/release-name=istio-istiod --overwrite=true
kubectl label Service --namespace=istio-system istiod-stable meta.helm.sh/release-namespace=istio-system --overwrite=true

kubectl annotate Deployment --namespace=istio-system istiod-stable app.kubernetes.io/managed-by=Helm --overwrite=true
kubectl annotate Deployment --namespace=istio-system istiod-stable meta.helm.sh/release-name=istio-istiod --overwrite=true
kubectl annotate Deployment --namespace=istio-system istiod-stable meta.helm.sh/release-namespace=istio-system --overwrite=true
kubectl label Deployment --namespace=istio-system istiod-stable app.kubernetes.io/managed-by=Helm --overwrite=true
kubectl label Deployment --namespace=istio-system istiod-stable meta.helm.sh/release-name=istio-istiod --overwrite=true
kubectl label Deployment --namespace=istio-system istiod-stable meta.helm.sh/release-namespace=istio-system --overwrite=true

kubectl annotate HorizontalPodAutoscaler --namespace=istio-system istiod-stable app.kubernetes.io/managed-by=Helm --overwrite=true
kubectl annotate HorizontalPodAutoscaler --namespace=istio-system istiod-stable meta.helm.sh/release-name=istio-istiod --overwrite=true
kubectl annotate HorizontalPodAutoscaler --namespace=istio-system istiod-stable meta.helm.sh/release-namespace=istio-system --overwrite=true
kubectl label HorizontalPodAutoscaler --namespace=istio-system istiod-stable app.kubernetes.io/managed-by=Helm --overwrite=true
kubectl label HorizontalPodAutoscaler --namespace=istio-system istiod-stable meta.helm.sh/release-name=istio-istiod --overwrite=true
kubectl label HorizontalPodAutoscaler --namespace=istio-system istiod-stable meta.helm.sh/release-namespace=istio-system --overwrite=true

kubectl annotate MutatingWebhookConfiguration --namespace=istio-system istio-sidecar-injector-stable app.kubernetes.io/managed-by=Helm --overwrite=true
kubectl annotate MutatingWebhookConfiguration --namespace=istio-system istio-sidecar-injector-stable meta.helm.sh/release-name=istio-istiod --overwrite=true
kubectl annotate MutatingWebhookConfiguration --namespace=istio-system istio-sidecar-injector-stable meta.helm.sh/release-namespace=istio-system --overwrite=true
kubectl label MutatingWebhookConfiguration --namespace=istio-system istio-sidecar-injector-stable app.kubernetes.io/managed-by=Helm --overwrite=true
kubectl label MutatingWebhookConfiguration --namespace=istio-system istio-sidecar-injector-stable meta.helm.sh/release-name=istio-istiod --overwrite=true
kubectl label MutatingWebhookConfiguration --namespace=istio-system istio-sidecar-injector-stable meta.helm.sh/release-namespace=istio-system --overwrite=true

kubectl annotate ValidatingWebhookConfiguration --namespace=istio-system istio-validator-stable-istio-system app.kubernetes.io/managed-by=Helm --overwrite=true
kubectl annotate ValidatingWebhookConfiguration --namespace=istio-system istio-validator-stable-istio-system meta.helm.sh/release-name=istio-istiod --overwrite=true
kubectl annotate ValidatingWebhookConfiguration --namespace=istio-system istio-validator-stable-istio-system meta.helm.sh/release-namespace=istio-system --overwrite=true
kubectl label ValidatingWebhookConfiguration --namespace=istio-system istio-validator-stable-istio-system app.kubernetes.io/managed-by=Helm --overwrite=true
kubectl label ValidatingWebhookConfiguration --namespace=istio-system istio-validator-stable-istio-system meta.helm.sh/release-name=istio-istiod --overwrite=true
kubectl label ValidatingWebhookConfiguration --namespace=istio-system istio-validator-stable-istio-system meta.helm.sh/release-namespace=istio-system --overwrite=true

kubectl label pdb --namespace=istio-system istiod-stable app.kubernetes.io/managed-by=Helm --overwrite=true
kubectl label pdb --namespace=istio-system istio-ingressgateway app.kubernetes.io/managed-by=Helm --overwrite=true
kubectl label pdb --namespace=istio-system istio-ingressgateway-internal app.kubernetes.io/managed-by=Helm --overwrite=true

kubectl annotate pdb --namespace=istio-system istiod-stable meta.helm.sh/release-name=istio-istiod --overwrite=true
kubectl annotate pdb --namespace=istio-system istio-ingressgateway meta.helm.sh/release-name=istio-istiod --overwrite=true
kubectl annotate pdb --namespace=istio-system istio-ingressgateway-internal meta.helm.sh/release-name=istio-istiod --overwrite=true

kubectl annotate pdb --namespace=istio-system istiod-stable meta.helm.sh/release-namespace=istio-system --overwrite=true
kubectl annotate pdb --namespace=istio-system istio-ingressgateway meta.helm.sh/release-namespace=istio-system --overwrite=true
kubectl annotate pdb --namespace=istio-system istio-ingressgateway-internal meta.helm.sh/release-namespace=istio-system --overwrite=true


# Run the actual Helm install operation
helm upgrade --install base --namespace istio-system -f base-values.yaml oci://gcr.io/istio-release/charts/base
