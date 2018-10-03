# vagrant-mongo
vagrant config for create replica-set
```
git clone https://github.com/Hirukami/vagrant-mongo.git
cd vagrant-mongo
vagrant up
```



run commands in mongo on MASTER server
```
rs.initiate({_id: "rs0" , version: 1, members: [{ _id: 0, host: "10.0.34.31:27017", priority: 5 } ]})
```
import data in MASTER
```
mongoimport --host 127.0.0.1:27017 -v --file=zips.json
```
```
rs.addArb("10.0.34.33:27017")  
rs.add({host: "10.0.34.32:27017", priority: 0})  
```
