# tofu test fails with functions from a mock_provider

Execute a test without any AWS creds in your environment and this happens:

```
tests/main.tftest.hcl... fail
  run "default"... fail

Error: Invalid provider configuration

Provider "registry.opentofu.org/hashicorp/aws" requires explicit
configuration. Add a provider block to the root module and configure the
provider's required arguments as described in the provider documentation.


Error: No valid credential sources found

  with provider["registry.opentofu.org/hashicorp/aws"],
  on provider["registry.opentofu.org/hashicorp/aws"] with no configuration line 1:
  (source code not available)

Please see https://registry.terraform.io/providers/hashicorp/aws
for more information about providing credentials.

Error: failed to refresh cached credentials, no EC2 IMDS role found,
operation error ec2imds: GetMetadata, exceeded maximum number of attempts, 3,
request send failed, Get
"http://169.254.169.254/latest/meta-data/iam/security-credentials/": read tcp
10.230.19.85:56806->169.254.169.254:80: read: connection reset by peer


Failure! 0 passed, 1 failed.
```
