# Class: users
#
# This class manages 60 user accounts to approximate what we see in
# the ops catalogs.
#
class profile::users {
  userwrapper::user { "user1":
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC6NVGNn6s4+12HfciwE/XYoNmfAfSUrrvUoYCjIE2C9v6ZHhoHY8UaYbxSNEzySSdZ+rt+wgQ9tTz1JCx0ka2t8+YLi0HnV0JWnbPZMkIBFTsoJnt/lnme9D1g1LBrxzCGuWTR3Son2dPwbx6nzOCMczanH/iTKbRHVu6Gu4VfsJn7C1il+9g1kaYL4Z+u9ACxOVFbWKrvNyTBlT8TFQaK/fq6QdxfG2ackjeVKbEpjVsO8zqJ5eEsNgWGbSjbU2pPG8r8+cc8sOz4nNbrTcDjx7pxKz8HPiHJv5VVHxjykuuGC8EpfZZqpJ7LXVVKEnoxi8c7JSeGtYZaXcUhztgD'
  }
}