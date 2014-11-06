[![wercker status](https://app.wercker.com/status/539604dd8f44e2fe2be5f46ac4442cd9/m "wercker status")](https://app.wercker.com/project/bykey/539604dd8f44e2fe2be5f46ac4442cd9)

See jwilder/docker-register README in wiki [https://github.com/zvelo/zvelo-docker-register/wiki]

### Build Image
docker build -t zvelo/zvelo-docker-register .

### Usage

To run it:
```bash
    fleetctl submit zvelo-docker-register@.service
    fleetctl start zvelo-docker-register@1.service
```

