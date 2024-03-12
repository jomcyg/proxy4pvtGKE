# project and region to deploy to IAP proxy into
project = "jmc-devsecops"
region = "asia-south1"

## DNS managed zone accessible from the public internet
dns_managed_zone = "jmc-dns-managed-zone"

## users you want to grant access via the IAP proxy
accessors = [
    "user:jomcy@google.com",
]

# support email address for the IAP brand.
# if there is an IAP brand in your project, make this empty string: ""
# To check whether you already have a brand, type `gcloud alpha iap oauth-brands list`
iap_support_email = ""