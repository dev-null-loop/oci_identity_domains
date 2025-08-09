### Filtering  https://datatracker.ietf.org/doc/html/rfc7644#section-3.4.2.2

### Testing
``` shell
# data[?contains("display-name", 'your_text_here')]
# oci iam compartment list --all --query 'data[*]."defined-tags"."Oracle-Tags".CreatedBy'  && definedTags.value = 'default/bd@oracle.com'"
# data.resources[*]
# jq '.data.resources[] | select(."display-name" == "George")|.schemas'
# data[?contains("attribute-name", `myCustomName`)]
#      jq '.data.resources[]|select(."display-name" == "Marius")'
# --query 'data.resources[?"display-name" == `Marius`]' # WORKS
# --query 'data[?"display-name" == `lb001`]'
```
- The following example works:

``` shell
data "oci_identity_domains_users" "these" {
  idcs_endpoint = var.idcs_endpoint
  user_filter   = "displayName sw \"B\""
}

locals {
  users = { for user in data.oci_identity_domains_users.these.users[*] :
	(user.display_name) => user.id
  }
}

output "users" {
  value = { for user in data.oci_identity_domains_users.these.users[*] :
	(user.display_name) => user.id
  }
}
```
