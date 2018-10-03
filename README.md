# vagrant-mongo
vagrant config for create replica-set
```
git clone https://github.com/Hirukami/vagrant-mongo.git
cd vagrant-mongo
vagrant up
```

run commands in mongo on MASTER server
##### Step 1
Initiate replicaset
```
rs.initiate({_id: "rs0" , version: 1, members: [{ _id: 1, host: "10.0.34.31:27017", priority: 5 } ]})
```
##### Step 2
import data
```
mongoimport --host 127.0.0.1:27017 -v --file=zips.json
```
##### Step 3
Add arbiter
```
rs.addArb("10.0.34.33:27017")  
```
##### Step 4
for replica with priority 0
```
rs.add({host: "10.0.34.32:27017", priority: 0}) 
```
-----
for hidden repcica
```
rs.add({host: "10.0.34.32:27017", priority: 0, hidden: true})  
```
-----
