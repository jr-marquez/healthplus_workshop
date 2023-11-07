# Workshop Health+

## First Steps
To be able to use health + you'll need to create a confluent cloud account, please create one in: 
- https://www.confluent.io/get-started/

Once you have a confluent cloud account please create a cloud api to send metrics to Confluent Cloud
![cloud api](img/cloudapi.png)

Clic **add key** , give **global access** and save api key and secret 

inside a terminal (powershell in windows), execute :
```bash
ssh ec2-user@<your_assigned_public_ip>
```
The password is shared by your instructor.

Then:
```bash
cd /home/ec2-user/healthplus_workshop/docker
```
modify the file .my-env with your credentials
```bash
vi .my-env
```
set the environment variables 
```bash
source .my-env
```
Then run docker compose:
```bash
docker-compose  up -d
```
## Walkthrough Control Center

Wait around for 3 minutes while the metrics are sent to Confluent Cloud and the dashboard is generated. 
Meanwhile go to **http://<your_public_ip>>:9021/clusters** , check the info displayed in the home screen.
Do the same with the info inside **Cluster Overview**

Now lets stop control center:
```bash
docker stop workshop-control-center
```
and edit docker-compose.yml:
```bash
vi docker-compose.yml
```
change the line from:
```bash
CONTROL_CENTER_MODE_ENABLE: "all"
```
to

```bash
CONTROL_CENTER_MODE_ENABLE: "management"
```
start docker again:
```bash
docker-compose up -d
```
wait 1 minute and try to open again **http://<your_public_ip>:9021/clusters**

do you see something different?

## Walkthrough Cloud UI
Go to your cloud enviroment and check health + , to do so:

![health1](img/health1.png)

and then go to:

![health2](img/health2.png)

change the name of the monitoing cluster (put **production**):

![health3](img/health3.png)

![health4](img/health4.png)

Explore the metrics inside Health+