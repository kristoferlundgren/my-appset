# ArgoCD ApplicationSet template

Deploy this ApplicationSet and configure these values:

## Installation

Please see script `bootstrap.sh`.

## Usage

The ApplicationSet uses the Git generator to find `app.yaml` files.
Each `app.yaml` then generates an ArgoCD Applcation CR.

Place `app.yaml` files where you deploy your Helm charts or Kustomizations:

`<Git-repo>/Apps/<app-name>/app.yaml` (empty file)

The directory content will be deployed by an ArgoCD Application, managed by the ArgoCD ApplicationSet.

## Self deployment

Please consider deploying the ApplicationSet itself as an Application managed by the ApplicationSet.
This allows the ApplicationSet to be managed using GitOps principles.
The file `/examples/Apps/AppSet/app.yaml` suggests an app to do this exact thing.
