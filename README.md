## A BACnet and Modbus gateway for the Raspberry PI 

This is a skeleton server project that works on [resin.io][resin-link] for the Raspberry PI.

This project installs [CBMS Studio][cbmsstudio] which provides communication to BACnet and Modbus systems and contains a web based graphical interface for displaying real time data. It also installs Nginx, InfluxDB and Grafana for displaying historical information in a web based dashboard.
 
To get this project up and running, you will need to signup for a resin.io account [here][signup-page] and set up a device, have a look at the [Getting Started tutorial][gettingStarted-link]. Once you are set up with resin.io, you will need to clone this repo locally:
```
$ git clone https://github.com/gurtlerc/cbms-pi-resin-io.git 
```
Then add your resin.io application's remote repository to your local repository:
```
$ git remote add resin username@git.resin.io:username/myapp.git
```
and push the code to the newly added remote:
```
$ git push resin master
```
It should take a few minutes for the code to push. While you wait, lets enable device URLs so we can see the server outside of our local network. This option can be found in the `Actions` tab in your device dashboard.

Once the device is loaded, you should be able to open the device URL and see the CBMS Studio home page. The username for the webpage is admin and the password is blank.

![CBMS Studio Home Page](/img/cbms-home-page.png)

Note: The grafana package takes a few minutes to initialize it's database. The grafana link will not work until the database has finished loading. The username for the webpage is admin and the password is blank. The username for grafana is admin and the password is admin.

[cbmsstudio]:http://cbmsstudio.com
[resin-link]:https://resin.io/
[signup-page]:https://dashboard.resin.io/signup
[gettingStarted-link]:http://docs.resin.io/#/pages/installing/gettingStarted.md
