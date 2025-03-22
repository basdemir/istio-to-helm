#!/usr/bin/env bash

# Label/Annotate resources to mark them a part of the Helm release.
kubectl annotate CustomResourceDefinition.apiextensions.k8s.io wasmplugins.extensions.istio.io meta.helm.sh/release-name=base
kubectl label CustomResourceDefinition.apiextensions.k8s.io wasmplugins.extensions.istio.io app.kubernetes.io/managed-by=Helm
kubectl annotate CustomResourceDefinition.apiextensions.k8s.io destinationrules.networking.istio.io meta.helm.sh/release-name=base
kubectl label CustomResourceDefinition.apiextensions.k8s.io destinationrules.networking.istio.io app.kubernetes.io/managed-by=Helm
kubectl annotate CustomResourceDefinition.apiextensions.k8s.io envoyfilters.networking.istio.io meta.helm.sh/release-name=base
kubectl label CustomResourceDefinition.apiextensions.k8s.io envoyfilters.networking.istio.io app.kubernetes.io/managed-by=Helm
kubectl annotate CustomResourceDefinition.apiextensions.k8s.io gateways.networking.istio.io meta.helm.sh/release-name=base
kubectl label CustomResourceDefinition.apiextensions.k8s.io gateways.networking.istio.io app.kubernetes.io/managed-by=Helm
kubectl annotate CustomResourceDefinition.apiextensions.k8s.io proxyconfigs.networking.istio.io meta.helm.sh/release-name=base
kubectl label CustomResourceDefinition.apiextensions.k8s.io proxyconfigs.networking.istio.io app.kubernetes.io/managed-by=Helm
kubectl annotate CustomResourceDefinition.apiextensions.k8s.io serviceentries.networking.istio.io meta.helm.sh/release-name=base
kubectl label CustomResourceDefinition.apiextensions.k8s.io serviceentries.networking.istio.io app.kubernetes.io/managed-by=Helm
kubectl annotate CustomResourceDefinition.apiextensions.k8s.io sidecars.networking.istio.io meta.helm.sh/release-name=base
kubectl label CustomResourceDefinition.apiextensions.k8s.io sidecars.networking.istio.io app.kubernetes.io/managed-by=Helm
kubectl annotate CustomResourceDefinition.apiextensions.k8s.io virtualservices.networking.istio.io meta.helm.sh/release-name=base
kubectl label CustomResourceDefinition.apiextensions.k8s.io virtualservices.networking.istio.io app.kubernetes.io/managed-by=Helm
kubectl annotate CustomResourceDefinition.apiextensions.k8s.io workloadentries.networking.istio.io meta.helm.sh/release-name=base
kubectl label CustomResourceDefinition.apiextensions.k8s.io workloadentries.networking.istio.io app.kubernetes.io/managed-by=Helm
kubectl annotate CustomResourceDefinition.apiextensions.k8s.io workloadgroups.networking.istio.io meta.helm.sh/release-name=base
kubectl label CustomResourceDefinition.apiextensions.k8s.io workloadgroups.networking.istio.io app.kubernetes.io/managed-by=Helm
kubectl annotate CustomResourceDefinition.apiextensions.k8s.io authorizationpolicies.security.istio.io meta.helm.sh/release-name=base
kubectl label CustomResourceDefinition.apiextensions.k8s.io authorizationpolicies.security.istio.io app.kubernetes.io/managed-by=Helm
kubectl annotate CustomResourceDefinition.apiextensions.k8s.io peerauthentications.security.istio.io meta.helm.sh/release-name=base
kubectl label CustomResourceDefinition.apiextensions.k8s.io peerauthentications.security.istio.io app.kubernetes.io/managed-by=Helm
kubectl annotate CustomResourceDefinition.apiextensions.k8s.io requestauthentications.security.istio.io meta.helm.sh/release-name=base
kubectl label CustomResourceDefinition.apiextensions.k8s.io requestauthentications.security.istio.io app.kubernetes.io/managed-by=Helm
kubectl annotate CustomResourceDefinition.apiextensions.k8s.io telemetries.telemetry.istio.io meta.helm.sh/release-name=base
kubectl label CustomResourceDefinition.apiextensions.k8s.io telemetries.telemetry.istio.io app.kubernetes.io/managed-by=Helm
kubectl annotate ServiceAccount --namespace=istio-system istio-reader-service-account meta.helm.sh/release-name=base
kubectl annotate ServiceAccount --namespace=istio-system istio-reader-service-account meta.helm.sh/release-namespace=istio-system
kubectl label ServiceAccount --namespace=istio-system istio-reader-service-account app.kubernetes.io/managed-by=Helm


# Run the actual Helm install operation
helm upgrade --install base --namespace istio-system -f base-values.yaml oci://gcr.io/istio-release/charts/base
