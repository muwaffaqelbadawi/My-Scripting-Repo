# Test Environment

<#
# ssh-ed25519 255 Wkn+q+YEUQMnjx3SkM+nQr0J2Nb9Dm6yBJTOUQ9sW1A
# ssh-ed25519 255 8c:67:f8:70:7c:b1:15:1e:87:b4:b8:3f:77:a5:7b:a8
#>

# Obtain the key fingerprint
ssh-keyscan -t rsa "<server IP>"

# Obtain the key fingerprint
ssh-keyscan -t rsa "<server IP>" | ssh-keygen -lf -