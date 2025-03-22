# IstioOperator to Helm Migration

This folder contains auto-generated output from the `istioctl manifest translate` command.
Note the `manifest translate` command only outputs this folders contents, and does not modify the cluster state.

Follow the instructions below for each component to complete the migration.

# Components
* ✅ **Component `base`**: migration is supported!

  ⚠️ Component rendering is different between Istioctl and Helm!
  This may be from incompatibilities between the two installation methods.
  Review the difference between the two and take appropriate actions to resolve these, if needed: `diff diff-base-helm-output.yaml diff-base-istioctl-output.yaml`.

  The translated values have been written to base-values.yaml.
  You may use these directly, or follow the guided `install-base.sh` script.
* ✅ **Component `pilot`**: migration is supported!

  ⚠️ Component rendering is different between Istioctl and Helm!
  This may be from incompatibilities between the two installation methods.
  Review the difference between the two and take appropriate actions to resolve these, if needed: `diff diff-pilot-helm-output.yaml diff-pilot-istioctl-output.yaml`.

  The translated values have been written to pilot-values.yaml.
  You may use these directly, or follow the guided `install-pilot.sh` script.
* ❌ **Component `istio-ingressgateway`**: migration is **NOT** directly supported!
* ✅ **Component `cni`**: migration is supported!

  ⚠️ Component rendering is different between Istioctl and Helm!
  This may be from incompatibilities between the two installation methods.
  Review the difference between the two and take appropriate actions to resolve these, if needed: `diff diff-cni-helm-output.yaml diff-cni-istioctl-output.yaml`.

  The translated values have been written to cni-values.yaml.
  You may use these directly, or follow the guided `install-cni.sh` script.
