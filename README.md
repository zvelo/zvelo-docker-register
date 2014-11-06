[![wercker status](https://app.wercker.com/status/539604dd8f44e2fe2be5f46ac4442cd9/m "wercker status")](https://app.wercker.com/project/bykey/539604dd8f44e2fe2be5f46ac4442cd9)
  
zvelo-docker-regsiter is a fork of jwilder/docker-register.  It handles the registration of other zvelo services containers running on the same host in etcd.  The zvelo services containers that need to be registered must expose a port.  The zvelo-docker-register container must be launched on all hosts.
   
*To now more about docker-register, read the documentation in the [jwilder/docker-register repository](https://github.com/jwilder/docker-register) or the [Wiki](https://github.com/zvelo/zvelo-docker-register/wiki)*
 
### Usage 
To launch the container with fleet:
```zsh
fleetctl submit zvelo-docker-register@<ID>.service
fleetctl start zvelo-docker-register@1.service
```

