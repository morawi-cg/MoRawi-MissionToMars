# <p>Mo Rawi Mission to Mars</p>
<p>This is a simple software based conceptualization of a Mars space launch vehicle. A scenario was presented.</p>
<p>It has each stage of the launch vehicle described within a class like software presentation, the total number of stages are 3.</p> 
<p>Each was given in a different programming language. An extra fexibility was offered to the participants in the technical challenge.</p> 
<p>This flexibility allows participants to change the language to a more preferred language.</p>
 
<p>Each stage was read & analyzed to derive the software functionality for a software class or likewise object</p>

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


## Project story road map stages
- [] Build Go container located in __M0Rawi-MoissionToMars__/Booster, test as a stand a lone container,(docker-compose).
- [] Build the mysql or mariadb container, needed by the booster. It is inside "__MoRawi-MissionToMars__/todoapp-db",test using docker compose as an individual package/container.
- [] Build stage2 container,(based upon python2.7, test via docker-compose .
- [] Build cargo,(node-js), based container, test dependencies,(using docker-compose).
- [] Build mongo-db based container, (using docker-compose), named the folder cargo-db.
- [] Build a complete module connecting all the components using docker compose to test.
- [] Translate the successful services to Kubernetes portable units using Kompose..
- [] Test all to ensure they work as required.

### Mysql

A good way to pass the db-create script through mysql-prompt:
```
   mysql -u root -e"set @temp=1; `cat $PATHTOMYSQLSCRIPT/mysql_config_linux.sql`"

```

### Test & Debug
A tool called delve came handy, a link is left below:
```
go get -u github.com/go-delve/delve/cmd/dlv
```
Trying to test with dlv will reveal issues with code via the debug flag
testing the binary 'booster' done via the link below:
```
curl 127.0.0.1:3000/?users=booster
```

<p>[The output of the test for port binding]<img src=BoosterTest.png></p>


### Extra Testing & Dependencies:
The Packages such as Node needed extas installed on the hosting vms, this was an erlier stage to form better understanding of certain technologies:

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
