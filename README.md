# <p>Mo Rawi Mission to Mars</p>
<p>This is a software based conceptualization of a Mars space launch vehicle.</p>
<p>It has each stage of the launch vehicle described within a software package, the total number of stages are 3.</p> 
<p>Each was given in a different programming language. Certain amount of time was given to understand new technologies that form individual part.</p> 
<p>The booster package is based upon go, aided yb a mysql based database, the 2nd stage is a Python2 package, 3rd is nodejs with mongo as db.</p>
<p>Each stage was to be run from a docker based container, the DBs are each in own container</p>
<p>docker compose was used to test individual containers, then the connected structure</P>
<p>Kompose the kubernetes based tool will be used to translate docker compose based YAML files into the Kubernetes alternative services and deployments.</p>

```
-----------------------------------------------------------------------
First Stage (Booster)                                   | Description |
------------------------------------------------------- | -------------
App                                                     |             |
  Handler :common,'HTTP functions handle input and error|             | 
          :fuelParts.go:                                |             |              
          :tanks.go:                                    |             |
  Module                                                |             |
          :module.go                                    |             |
  App     :app.go                                       |             |
config                                                  |             |
  config  :config.go                                    |             |
main.go                                                 |             |
--------------------------------------------------------|-------------|
Second Stage (Check Booster statue)                     |             |
--------------------------------------------------------|-------------|
stage2.py                                               |             |
--------------------------------------------------------|-------------|
Third Stage (Cargo)                                     |             |
--------------------------------------------------------|-------------|
App                                                     |             |
   Modules: cargo.js                                    |             |
   routes.js                                            |             |
Config                                                  |             |
   database.js                                          |             |                                          
Public                                                  |             |
   core.js                                              |             |
   index.html                                           |             |
README.md	                                        |             |
package-lock.json	                                |             |
package.json	                                        |             |
server.js                                               |             |
-----------------------------------------------------------------------

```
<p>Diagraming was used as software's success in presenting a solution will depend on the correct visualization of functions and flows.</p>
<p>[This is a general diagram with focus on the booster stage]<img src=Mars-Stages-Diagram-Booster.jpeg></p>
<p>The Image above is an example of the booster stage.</p> 


## Project story road map stages:

- [] initiate 'docker-compose up' this will process the 'docker-compose.yaml' file, it will complete steps below
- [] Build Go container located in __MoRawi-MoissionToMars__/Booster, test as a stand a lone container,(docker-compose).
- [] Build the mysql or mariadb container, needed by the booster. It is inside "__MoRawi-MissionToMars__/todoapp-db",test using docker compose as an individual package/container.
- [] Build stage2 container,(based upon python2.7), test via docker-compose .
- [] Build cargo,(node-js), based container, test dependencies,(using docker-compose).
- [] Build mongo-db based container, (using docker-compose), named the folder cargo-db.
- [] Build a complete module connecting all the components using docker compose to test.
- [] once test and validation is complete try to translate to kuberneted based files using compose
- [] Obtain compose by 'curl -L https://github.com/kubernetes/kompose/releases/download/v1.20.0/kompose-linux-amd64 -o kompose'
- [] Run kompose 'convert -f docker-compose.yaml'
- [] Translate the successful services to Kubernetes portable units using Kompose..
- [] Test all to ensure they work as required.


### Test & Debug, tips and ideas: [Booster]
A tool called delve came handy, a link is left below:
```
go get -u github.com/go-delve/delve/cmd/dlv
```
Trying to test with dlv will reveal issues with code via the debug flag
testing the binary 'booster' done via the link below:
```
curl 127.0.0.1:3000/?users=booster
```

### Mysql [Booster dependency]

A good way to pass the db-create script through mysql-prompt:
```
   mysql -u root -e"set @temp=1; `cat $PATHTOMYSQLSCRIPT/mysql_config_linux.sql`"

```


<p>[The output of the test for port binding]<img src=BoosterTest.png></p>


### Extra Testing & Dependencies:
Some testing was implemented on vms, this was to understand the software functionality, solving dependency & better understanding the way in which porting to containers should be done.

Packages such as Node-JS based ones & Golang based ones , needed extas dependencies installed on the hosting vms, this was handled through the discovery & teting process, aimed at the software functionality:

```
└─┬ mongoose@5.8.9 
  ├── bson@1.1.3 
  ├── kareem@2.3.1 
  ├─┬ mongodb@3.4.1 
  │ ├─┬ require_optional@1.0.1 
  │ │ ├── resolve-from@2.0.0 
  │ │ └── semver@5.7.1 
  │ └─┬ saslprep@1.0.3 
  │   └─┬ sparse-bitfield@3.0.3 
  │     └── memory-pager@1.5.0 
  ├── mongoose-legacy-pluralize@1.0.2 
  ├── mpath@0.6.0 
  ├─┬ mquery@3.2.2 
  │ ├── bluebird@3.5.1 
  │ └─┬ debug@3.1.0 
  │   └── ms@2.0.0 
  ├── ms@2.1.2 
  ├── regexp-clone@1.0.0 
  ├── safe-buffer@5.1.2 
  ├── sift@7.0.1 
  └── sliced@1.0.1 


```

### Docker compose 
To bring up the components using a docker compose command. Each folder for each stage unit had a docker compose file to allow for unit test. A central docker compose file is available to run the entire collection of services.

```

 docker-compose up    # -d flag might follow the up to make it run in the background

```
To stop

``` 
 docker-compose stop <service name> 
 # The specific service name would be arrived at from the docker-compose file 

```
To start specific service 

```
 docker-compose start <service name>

```

To delete service 

```
 docker-compose rm -f <service name>

```


To run a command on a container, used for testing

```
 docker-compose run <service name > command # command could be ls

```
To scale

```
 docker-compose scale <service name>=<number> 

```


 
