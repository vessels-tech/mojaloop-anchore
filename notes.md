
## Failures:

```
Image Digest: sha256:42d2a70e2faa0280166a167eff1d3b0f65d776e105707f5f421d3c763609fca7
Full Tag: docker.io/mojaloop/bulk-api-adapter:v7.1.1-snapshot
Status: fail
Last Eval: 2019-10-04T06:51:17Z
Policy ID: 2c53a13c-1765-11e8-82ef-23527761d060

Image Digest: sha256:c25ca28a13dfbaca8590f7a9fb512a09f42b389c2ff5ab63edb2b829fda319ae
Full Tag: docker.io/mojaloop/central-directory:v2.4
Status: fail
Last Eval: 2019-10-04T06:55:32Z
Policy ID: 2c53a13c-1765-11e8-82ef-23527761d060

Image Digest: sha256:ecb196a0adf4b7628d02053b6ccaa24807ebcceb55e4e59a8489cdf408dfb709
Full Tag: docker.io/mojaloop/central-end-user-registry:v2.4
Status: fail
Last Eval: 2019-10-04T06:58:26Z
Policy ID: 2c53a13c-1765-11e8-82ef-23527761d060

Image Digest: sha256:abf40682797d602d0b4c40def779edb671893a97e64b42687aaa95acfb085148
Full Tag: docker.io/mojaloop/central-event-processor:v7.1.1
Status: fail
Last Eval: 2019-10-04T07:02:55Z
Policy ID: 2c53a13c-1765-11e8-82ef-23527761d060

Image Digest: sha256:6122cc1225fe7b8f53a2e3363d67382ca25ef105f54ddd5a5681a8cb4ed3e96d
Full Tag: docker.io/mojaloop/quoting-service:v7.4.0-snapshot
Status: fail
Last Eval: 2019-10-04T07:26:32Z
Policy ID: 2c53a13c-1765-11e8-82ef-23527761d060

Image Digest: sha256:891a1c96a6be188ffab5efef6536b48f3b9ed8bd5f61ade5666717b3a168b2ea
Full Tag: docker.io/mojaloop/simulator:v7.2.1
Status: fail
Last Eval: 2019-10-04T07:30:53Z
Policy ID: 2c53a13c-1765-11e8-82ef-23527761d060
```


Hi Victor, I just the anchore-cli across all of the images in the helm release, and found a lot of failures:
