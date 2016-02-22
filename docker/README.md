# Coral Deployment
Coral is composed of few smaller applications:

* Xenia
* Pillar
* Atoll
* Cay
* Sponge

These applications are dependent on each other as loosely-coupled. This document helps you deploy the applications using [Docker Compose](https://docs.docker.com/compose/).

![Coral Architecture](../trust-product-architecture-current.png)

## Docker-Compose
You must have [Docker Compose](https://docs.docker.com/compose/install/) installed before you begin installing these components.

Docker compose needs its input from an YAML file. We've created [one](./docker-compose.yml) with defaults. Please feel free to change as per your needs. 

##### Deploy
The following command deploys all the applications and runs them as Docker containers at various ports.

~~~
> docker-compose up -d
~~~

##### Log
You can see the log using the following command:

~~~
> docker-compose logs
~~~

##### Undeploy
Undeploy all the applications using this command:

~~~
> docker-compose down
~~~

##### Manage Containers
Since all these applications are deployed as Docker containers, you should be able to manage them using various Docker commands.

See [Docker Commands](https://docs.docker.com/engine/reference/commandline/cli/).

## Coral Data
For now, use your local Coral Mongo Database.

We'll soon have a dump that can be restored onto a Mongo Database as a Docker Container. Please stay tuned...

## Test
Now that all the applications are deployed, you should be able to verify them. Using curl (command-line) or from a browser, try these URLs and make sure you get http status code of ```200```.

##### Important
Since, these are applications running inside containers in a VM, you must obtain the VM's IP addresss and use that as your host for the URL.

~~~
> docker-machine ip default
192.168.99.100
~~~

##### Pillar

~~~
http://192.168.99.100:8080/about
http://192.168.99.100:8080/api/tags
~~~

##### Cay

~~~
http://192.168.99.100:4000/1.0/query/top_commenters_by_count
~~~
