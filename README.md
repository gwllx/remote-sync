# Remote Sync

A GitHub Action to sync files with a remote server using rsync.

## Inputs

| Input      | Description                         | Required | Default |
| ---------- | ----------------------------------- | -------- | ------- |
| ``source`` | Source directory to deploy.         | Yes      | -       |
| ``target`` | Destination directory.              | Yes      | -       |
| ``host``   | Remote server hostname.             | Yes      | -       |
| ``user``   | Remote server username.             | Yes      | -       |
| ``key``    | Private SSH key.                    | Yes      | -       |
| ``args``   | Additional arguments for rsync. | No       | Empty   |

## Example

```yml
steps:
  - uses: gwllx/remote-sync@v1
    with:
      source: *
      target: /
      host: ${{ secrets.DEPLOY_HOST }}
      user: ${{ secrets.DEPLOY_USER }}
      key: ${{ secrets.DEPLOY_KEY }}
      args: -rv --delete
```
