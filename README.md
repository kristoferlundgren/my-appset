# ArgoCD ApplicationSet template

Deploy this ApplicationSet and configure these values:

```yaml
appset:
  applicationProject: <ArgoCD AppProject>
  namespace: <ApplicationSet namespace>
  path: <Git path>
  repoURL: <Git repo URL>
  revision: <Git branch/tag>
```

Place app.yaml files where you deploy your Helm charts or Kustomization:

  <appset.repoURL>/<appset.path>/my-app/app.yaml (empty file)

Put the appropriate code in this directory:

- `<Git-repo>/Apps/my-app/`.

The directory content will be deployed by an ArgoCD Application, managed by the ArgoCD ApplicationSet.

## Self deployment

Please consider deploying the ApplicationSet itself as an Application managed by the ApplicationSet.
This allows the ApplicationSet to be managed using GitOps principles.
The file `appset.app.yaml` suggests an app to do this exact thing.
