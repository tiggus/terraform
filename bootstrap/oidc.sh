# create skeleton json file
aws iam create-open-id-connect-provider \
    --generate-cli-skeleton > oidc-<provider>n.json

# create oidc provider
aws iam create-open-id-connect-provider \
    --cli-input-json file://oidc-<provider>.json

# create role
aws iam create-role \
    --role-name oidc-<provider> \
    --assume-role-policy-document file://oidc-<provider>-role.json

# assign role
aws iam attach-role-policy \
    --policy-arn arn:aws:iam::aws:policy/ReadOnlyAccess \
    --role-name oidc-<provider>
