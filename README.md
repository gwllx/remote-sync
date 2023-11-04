# Remote Sync

A GitHub Action to sync files with a remote host using rsync.

## Inputs

| Name                           | Description                 |
| ------------------------------ | --------------------------- |
| ``source``                     | Local source directory.     |
| ``target``                     | Remote target directory.    |
| ``host``                       | Remote host name.           |
| ``user``                       | Remote user.                |
| ``key``                        | Private SSH key.            |
| ``args`` <sup>[optional]</sup> | Additional rsync arguments. |

## Example

```yml
steps:
  - uses: gwllx/remote-sync@v1
    with:
      source: .
      target: /www
      host: ${{ secrets.DEPLOY_HOST }}
      user: ${{ secrets.DEPLOY_USER }}
      key: ${{ secrets.DEPLOY_KEY }}
      args: -rv --delete
```
