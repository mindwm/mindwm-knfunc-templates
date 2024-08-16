# Overview
A flake template of [Knative function](https://knative.dev/docs/functions/) to process [MindWM](https://mindwm.github.io/) events.

# Create new project
To prepare new knfunc project in Python use [nix package manager](https://nixos.org/download/)

```sh
mkdit my-knfunc
cd my-knfunc
nix flake init --refresh -t github:mindwm/mindwm-knfunc-templates#python
nix develop
# or `direnv allow` in case you are a direnv user
```

# Quick start
The [devshell](https://github.com/numtide/devshell) provides a couple useful functions in menu

```
🔨 Welcome to devshell

[[general commands]]

  build            - build an OCI container
  build_and_deploy - build and deploy knfunc
  deploy           - deploy knfunc to the cluster
  menu             - prints this menu
  push             - push an OCI container to the registry
  render           - render k8s manifests
  sample_env       - source .env.sample
  serve            - serve knfunc locally
  test             - run test_func
  undeploy         - remove the knfunc from the cluster
```

Edit the `func.yaml` file and set proper repository endpoint and a function name. Then just run the `build_and_deploy` helper which will render k8s resources, build an OCI container with a function, push it to the registry and apply k8s manifests.
