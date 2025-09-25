- `$ terraform import oci_identity_domains_user.test_user "idcsEndpoint/{idcsEndpoint}/users/{userId}" `

``` shell
$ terraform import oci_identity_domains_user.this "idcsEndpoint/https://idcs-3bd620bcdd6f4b5abd41fc79861ae4b7.identity.oraclecloud.com/users/d697e3ab3b6740c891ada6296c277e52"
$ TF_LOG=DEBUG OCI_GO_SDK_DEBUG=v terraform apply
{"schemas":["urn:ietf:params:scim:api:messages:2.0:Error","urn:ietf:params:scim:api:oracle:idcs:extension:messages:Error"],"detail":"The primary email must be specified.","status":"400","urn:ietf:params:scim:api:oracle:idcs:extension:messages:Error":{"messageId":"error.identity.user.primaryEmailNotSpecified"}}
```
- [Fine-Tuning OCI CLI Responses for Identity Domains](https://www.ateam-oracle.com/post/fine-tuning-oci-cli-response-outputs-for-identity-domains)

- get user details from `emeaisv` Identity Domain:
  - `oci identity-domains users list --endpoint  https://idcs-ac0d7bb28a9440488b4c489d28d113d8.identity.oraclecloud.com:443 --profile emeaisv-idcs | jq '.data.resources[] | select(."display-name" == "Bogdan Darie")'`
- and then import it in Terraform using `oci_identity_domains_user` resource: `terraform import oci_identity_domains_user.this "idcsEndpoint/https://idcs-ac0d7bb28a9440488b4c489d28d113d8.identity.oraclecloud.com/users/25ad5c3e31c24e92a16329b687f8374a"`

``` shell
$ terraform import oci_identity_domains_user.this "idcsEndpoint/https://idcs-ac0d7bb28a9440488b4c489d28d113d8.identity.oraclecloud.com/users/1726f9ca6cc04fce859ad274620a0b23"
oci_identity_domains_user.this: Importing from ID "idcsEndpoint/https://idcs-ac0d7bb28a9440488b4c489d28d113d8.identity.oraclecloud.com/users/1726f9ca6cc04fce859ad274620a0b23"...
oci_identity_domains_user.this: Import prepared!
  Prepared oci_identity_domains_user for import
oci_identity_domains_user.this: Refreshing state... [id=idcsEndpoint/https://idcs-ac0d7bb28a9440488b4c489d28d113d8.identity.oraclecloud.com/users/1726f9ca6cc04fce859ad274620a0b23]

Import successful!

The resources that were imported are shown above. These resources are now in
your Terraform state and will henceforth be managed by Terraform.
```

terraform import oci_identity_domains_user.test_user "idcsEndpoint/https://idcs-3bd620bcdd6f4b5abd41fc79861ae4b7.identity.oraclecloud.com:443/users/d697e3ab3b6740c891ada6296c277e52"

``` shell
$ terraform import oci_identity_domains_user.this "idcsEndpoint/https://idcs-3bd620bcdd6f4b5abd41fc79861ae4b7.identity.oraclecloud.com:443/users/d697e3ab3b6740c891ada6296c277e52"
oci_identity_domains_user.this: Importing from ID "idcsEndpoint/https://idcs-3bd620bcdd6f4b5abd41fc79861ae4b7.identity.oraclecloud.com:443/users/d697e3ab3b6740c891ada6296c277e52"...
oci_identity_domains_user.this: Import prepared!
  Prepared oci_identity_domains_user for import
oci_identity_domains_user.this: Refreshing state... [id=idcsEndpoint/https://idcs-3bd620bcdd6f4b5abd41fc79861ae4b7.identity.oraclecloud.com:443/users/d697e3ab3b6740c891ada6296c277e52]
╷
│ Error: 401-BadErrorResponse,
│ Suggestion: Please retry or contact support for help with service: Identity Domains User
│ Documentation: https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/identity_domains_user
│ API Reference: https://docs.oracle.com/iaas/api/#/en/identity-domains/v1/User/GetUser
│ Request Target: GET https://idcs-3bd620bcdd6f4b5abd41fc79861ae4b7.identity.oraclecloud.com:443/admin/v1/Users/d697e3ab3b6740c891ada6296c277e52
│ Provider version: 7.15.0, released on 2025-08-21. This provider is 4 Update(s) behind to current.
│ Service: Identity Domains User
│ Operation Name: GetUser
│ OPC request ID: ccb97da96a5c2f0b15fa1cfc255a7405/Mi9FV0Jr700000000
```
