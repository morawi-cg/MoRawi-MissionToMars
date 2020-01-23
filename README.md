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


## Todo

- [x] Support basic REST APIs.
- [x] Design layers of APIs to interconnect the 3 vehicle stages .
- [x] Make convenient wrappers for creating API handlers for the different languages based upon each of the 3 vehicle components.
- [x] tests for all APIs & their interactions.
- [x] Organize the code with packages.
- [x] Building a deployment process.

### Mysql

A good way to pass the create script through another one is to follow this way
```
   mysql -u root -e"set @temp=1; `cat /home/mysql/Desktop/mysql_config_linux.sql`"

```

### Debug
A tool called delve came handy, a link is left below:
```
go get -u github.com/go-delve/delve/cmd/dlv
```
