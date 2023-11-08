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

Go to **http://<your_public_ip>>:9021/clusters** , check the info displayed in the home screen.
Do the same with the info inside **Cluster Overview**
You are seeing all the metrics, true?

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

## Creating and Triggering Alerts

To create alerts first of all we need to configure them. Go to the home page of health+ and select **Intelligent alerts**

![health5](img/health5.png)

![health6](img/health6.png)

First of all, check all the notification center.
Under the section **Health+ Free** activate **Under min in sync replicas != 0** and set the email , please remember to **Update** once you set the email

![health7](img/health7.png)

![health8](img/health8.png)

Lets create a topic in Control Center (Home-->Topics and then **+ Add Topic** )with the following configuration:
- Topic Name: error
- Number of Partitions: 3
click on **Customize Settings**
inside Custom availablity settings:
- replication_factor: 3
- min_insync_replicas: 3

Then clic on **Save & Create**

![health9](img/health9.png)

Now lets stop one of the brokers to trigger the alert 
```bash
docker stop workshop-kafka2
```
Check Control Center. Wait for red flags
Which metrics can you see in Health+?
Have you recieved the alert?