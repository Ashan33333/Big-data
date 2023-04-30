
#  Hadoop-based data analysis platform for e-commerce websites

This project was developed as an assignment for the examination of **Big Data Management Technologies**, a course in the master's degree programme in *Computer Science at the University of Camerino.* 

### Table of Contents:
1. [Introduction](#introduction)
1. [Technologies](#technologies)  
1. [Prerequisite](#prerequisites)
1. [Installation & Configuration](#installation-and-configuration)  
    1. [HDFS](#hdfs)
    2. [MySQL](#mysql)
    3. [Spak](#spark)
   4. [Zeppelin](#zeppelin)
1. [Usage](#usage)  
1. [Results](#results)  
    1. [Browser usage](#Browserusage-1)
    2. [TOP products](#TOP-1)
    3. [Age group division](#3)
    4. [Access the hight items](#4)
    5. [Quarterly access statistics](#6)
    6. [Moth statistics partition](#7)
    7. [Access period analysis](#8)
1. [Contact Information](#contact-information) 

<br />

## Introduction

The goal of this project is to build a tool for data analysis of e-commerce platforms. By using the Website Data Analysis Platform, businesses can increase sales and customer satisfaction. This project helps businesses understand their customers' behavior and make smarter decisions.


The overall system architecture is depicted in the figure below.
<p align="center">
  <img src="https://user-images.githubusercontent.com/100694015/235360102-1e9b6275-0326-40fd-9e0b-adf3d107530c.png" alt="alt text" width="500"/>
</p>!
Let us examine how such tools were utilized within the project:

1. Use Spark SQL to parse access logs, clean and upload them to hdfs

2. Read the files in hdfs, perform secondary cleaning, and write the result set to hdfs in parquet

3. Use Spark SQL to partition the access time by day and output

4. Use zeppelin to display the visualization of statistical results

<p align="right">(<a href="#table-of-contents">back to top ⬆️</a>)</p>

## Technologies

**Technologies**

**Spark**

<p align="center">
  <img src="https://user-images.githubusercontent.com/100694015/235360145-fe71ff56-8069-4ded-8a9f-012eb13bc0f1.png" alt="alt text" width="500"/>
</p>
Spark is a general-purpose distributed data processing engine that is suitable for use in a wide range of circumstances. It is capable of handling several petabytes of data at a time, distributed across a cluster of thousands of cooperating physical or virtual servers. On top of the Spark core data processing engine, there are libraries for SQL, machine learning, graph computation, and stream processing, which can be used together in an application. Spark relies on an in-memory processing model which drastically reduces IO operations and can be up to 100x faster than Hadoop on similar tasks.

**Hadoop Distributed File System (HDFS)**

<p align="center">
  <img src="https://user-images.githubusercontent.com/100694015/235360174-85d263d2-918e-4008-949f-243e4115e8a7.png" alt="alt text" width="500"/>
</p>

Hadoop Distributed File System (HDFS) is a distributed file system designed to run on commodity hardware. It has many similarities with existing distributed file systems but the differences from other distributed file systems are significant. HDFS is highly fault-tolerant and is designed to be deployed on low-cost hardware. HDFS employs a NameNode and DataNode architecture to implement a distributed file system that provides high-performance access to data across highly scalable Hadoop clusters.

**MySQL**
<p align="center">
  <img src="https://user-images.githubusercontent.com/100694015/235360201-d7578a3c-bda6-463e-8e55-460291e13d7f.png" alt="alt text" width="500"/>
</p>

MySQL is a database management system that helps to manipulate database stored in different tables in the computer. It is a relational database management system (often shortened to RDBMS) that uses Structured Query Language (SQL) to interact with the database. MySQL is released under an open-source license. It is fast, reliable, scalable, and easy to use.

**Apache Zeppelin**
<p align="center">
  <img src="https://user-images.githubusercontent.com/100694015/235360222-3669837f-aef1-454c-9159-c5a88f683059.png" alt="alt text" width="500"/>
</p>

Apache Zeppelin is a web-based notebook that enables interactive data analytics. It provides an easy-to-use and collaborative platform for data exploration, visualization, sharing, and collaboration. Zeppelin supports many interpreters such as Apache Spark, Python, JDBC, and others. It is designed to make data science easier and more accessible to everyone.

## Prerequisites

 - Java version: 1.8
   
  - Scala version: 2.11.12
   
   -  Hadoop version: hadoop-2.7.5
   
   -  spark version: spark-2.3.1
   
  -   MySQL version: 5.7.22
   
   -  zeppelin version: 0.10.1
    
<p align="right">(<a href="#table-of-contents">back to top ⬆️</a>)</p>

## installation-and-configuration


<h3 id="hdfs">HDFS</h3>

1.Download Hadoop Distribution: Go to the official Apache Hadoop website and download the latest version of the Hadoop distribution that includes HDFS.

2.Install Java: Hadoop requires Java to be installed on your system. Download and install Java Development Kit (JDK) 1.8 or higher.

3.Configure SSH: Hadoop requires SSH to communicate between nodes in the cluster. Generate SSH keys and copy them to all the nodes in the cluster. Ensure that SSH access is enabled for all the nodes.

4.Configure Hadoop Environment: Extract the downloaded Hadoop distribution and set the Hadoop environment variables in the .bashrc or .bash_profile file.

5.Configure Hadoop Cluster: Configure the Hadoop cluster by editing the configuration files in the Hadoop distribution. The two important files are core-site.xml and hdfs-site.xml. Edit the files to specify the Hadoop cluster configuration.

6.Format HDFS: Format HDFS by running the following command:

  
``` hdfs namenode -format```

7.Start Hadoop Cluster: Start the Hadoop cluster by running the following command:

```start-all.sh```

8.Verify Hadoop Installation: Verify the Hadoop installation by accessing the Hadoop web interface at http://localhost:50070/ or http://<namenode_hostname>:50070/ in your web browser.

9. Create HDFS directories: Create HDFS directories by running the following command:

```hdfs dfs -mkdir /user/<username>```

10. Verify HDFS installation: Verify the HDFS installation by running the following command:

```hdfs dfs -ls /```

<h3 id="mysql">MySQL</h3>

1.Download MySQL: Go to the official MySQL website and download the appropriate MySQL installer based on your operating system.

2.Install MySQL: Run the downloaded installer and follow the installation wizard to install MySQL.

3.Configure MySQL: After the installation is complete, you will be prompted to configure MySQL. Follow the instructions to set the root password, create MySQL users, and configure other MySQL settings.

4.Verify MySQL Installation: Verify the MySQL installation by accessing the MySQL command line client by running the following command:

```mysql -u root -p```

Enter the root password you set during the installation process.

5.Create a Database: Create a new database by running the following command:

```CREATE DATABASE <database_name>;```

6.Create a User: Create a new user by running the following command:

```CREATE USER '<username>'@'localhost' IDENTIFIED BY '<password>';```

7.Grant Privileges: Grant privileges to the user by running the following command:

```GRANT ALL PRIVILEGES ON <database_name>.* TO '<username>'@'localhost';```

8.Exit MySQL Command Line Client: Exit the MySQL command line client by running the following command:

**exit;**

9.Configure MySQL Remote Access: If you want to access MySQL remotely, you need to configure MySQL to allow remote access. Edit the MySQL configuration file (my.cnf or my.ini) and comment out the line that says "bind-address=127.0.0.1" to allow remote connections.

10.Restart MySQL: Restart MySQL to apply the changes by running the following command:

```sudo service mysql restart```

<h3 id="spark">Spark</h3>

1.Download Spark: Go to the official Apache Spark website and download the latest version of Apache Spark.

2.Install Java: Spark requires Java to be installed on your system. Download and install Java Development Kit (JDK) 1.8 or higher.

3.Extract Spark: Extract the downloaded Spark archive to a location on your system.

4.Configure Spark Environment: Set the Spark environment variables in the .bashrc or .bash_profile file. Set the following environment variables:

```export SPARK_HOME=<path_to_spark_directory>```

```export PATH=$SPARK_HOME/bin:$PATH```

5.Configure Spark Cluster: If you want to run Spark in a cluster mode, edit the spark-env.sh file located in the conf directory of your Spark installation to specify the Spark cluster configuration.

6.Start Spark: Start Spark by running the following command:

```$SPARK_HOME/sbin/start-all.sh```

This will start the Spark Master and Spark Workers.

7.Verify Spark Installation: Verify the Spark installation by accessing the Spark web interface at http://localhost:8080 in your web browser.

8.Run a Spark Application: Run a sample Spark application to verify that Spark is working correctly. You can use the following command to run the sample application:

```$SPARK_HOME/bin/spark-submit --class org.apache.spark.examples.SparkPi --master local[*] $SPARK_HOME/examples/jars/spark-examples_2.11-<version>-hadoop<version>.jar```

This command will run the SparkPi example application and calculate an approximation of Pi.

9.Stop Spark: Stop Spark by running the following command:

```$SPARK_HOME/sbin/stop-all.sh```
<h3 id="zeppelin">Zeppelin</h3>

1.Download Zeppelin: Go to the official Apache Zeppelin website and download the latest version of Apache Zeppelin.

2.Install Java: Zeppelin requires Java to be installed on your system. Download and install Java Development Kit (JDK) 1.8 or higher.

3.Extract Zeppelin: Extract the downloaded Zeppelin archive to a location on your system.

4.Configure Zeppelin Environment: Set the Zeppelin environment variables in the .bashrc or .bash_profile file. Set the following environment variables:

```export ZEPPELIN_HOME=<path_to_zeppelin_directory>```

```export PATH=$ZEPPELIN_HOME/bin:$PATH```

5.Configure Zeppelin Ports: Configure the Zeppelin ports by editing the zeppelin-site.xml file located in the conf directory of your Zeppelin installation. Set the following properties:

```zeppelin.server.port: <port_number>```

```zeppelin.server.ssl.port: <ssl_port_number>```

6.Start Zeppelin: Start Zeppelin by running the following command:

```$ZEPPELIN_HOME/bin/zeppelin-daemon.sh start```

7.Verify Zeppelin Installation: Verify the Zeppelin installation by accessing the Zeppelin web interface at http://localhost:8099/
index in your web browser.

8.Configure Zeppelin Interpreter: Configure the Zeppelin interpreter to work with the tools and languages you will be using. This can be done by going to the Zeppelin web interface, selecting the Interpreter menu and configuring the interpreters for the tools and languages you will be using.

9.Create a Zeppelin Notebook: Create a new Zeppelin notebook by clicking on the "Create new note" button on the Zeppelin web interface. A new notebook will be created, and you can start writing code and executing it.

10.Stop Zeppelin: Stop Zeppelin by running the following command:

```$ZEPPELIN_HOME/bin/zeppelin-daemon.sh stop```

<p align="right">(<a href="#table-of-contents">back to top ⬆️</a>)</p>

## Usage
<h3 id="usage1">1</h3>

 - Open Navicat and create a new MySQL connection.

 - In the "New Connection" dialog box, select MySQL as the database type, enter the username and password, and click the "Test Connection" button to test whether the connection is successful.

 - If the connection is successful, expand the "localhost" node in the left navigation pane, find the lpl database, right-click and select "Run SQL file".

 - In the pop-up dialog box, select the SQL file to be executed (i.e., lpl.sql), and click the "Run" button to wait for the SQL script to finish executing.
<h3 id="usage1">2</h3>

 - Open IntelliJ IDEA, select the "File" menu, and click "Open".
In the pop-up dialog box, find the project directory, select the unzipped project folder, and click "OK".

 - Wait for the dependency packages to be downloaded, then click the "Maven Projects" tool window at the bottom of IDEA, expand the project node, find the "SpringbootLpIApplication" class, right-click on the class, and select "Run SpringbootLpIApplication".
<h3 id="usage1">3</h3>

 -  Open a web browser and enter the URL "localhost:8099/index".

 - If everything is normal, the project homepage will be displayed.
 
 <p align="right">(<a href="#table-of-contents">back to top ⬆️</a>)</p>

## Results
 -This project helps businesses understand their customers' behavior and make smarter decisions. By using the Website Data Analysis Platform, businesses can increase sales and customer satisfaction.
<h3 id="Browserusage-1">Browser usage</h3>

**The first analysis result** is browser usage, it shows which browsers customers are using to visit the website. This helps businesses improve website compatibility.
<p align="center">
  <img src="https://user-images.githubusercontent.com/100694015/235359776-5fa2e749-3028-427b-929a-9db370680738.png" alt="alt text" width="500"/>
</p>


<h3 id="TOP-1">TOP products</h3>

**The second result**  is the top N products based on traffic, it shows which products are most popular and helps businesses develop marketing strategies.
<p align="center">
  <img src="https://user-images.githubusercontent.com/100694015/235359686-c25c350a-a7d1-442b-bf24-e1f0240af015.png" alt="alt text" width="500"/>
</p>
<h3 id="3">Age group division</h3>

**The third result** is province statistics, and the fourth result is age group division, which helps businesses understand the preferences of customers in different provinces and ages, and carry out precise marketing.
<p align="center">
  <img src="https://user-images.githubusercontent.com/100694015/235360452-c6cd032c-ab85-4a79-8837-b145ce0a30b9.png" alt="alt text" width="500"/>
</p>


<p align="center">
  <img src="https://user-images.githubusercontent.com/100694015/235360367-c476403f-896f-46dd-ae77-7a2bbc1ec6a7.png" alt="alt text" width="500"/>
</p>

<h3 id="4">Access the hight items</h3>

**The fifth result** is the most visited product on a specific day, which helps businesses identify popular products for targeted promotion.
<p align="center">
  <img src="https://user-images.githubusercontent.com/100694015/235360656-789313f5-34b8-4e66-9814-9c7225226ede.png" alt="alt text" width="500"/>
</p>
<h3 id="6">Quarterly access statistics</h3>

**The sixth result**is quarterly visit statistics, which helps businesses understand customer behavior for marketing.
<p align="center">
  <img src="https://user-images.githubusercontent.com/100694015/235360591-c5b05bb3-7f7c-4763-bb48-6906e196b080.png" alt="alt text" width="500"/>
</p>

<h3 id="7">Moth statistics partition</h3>


**The seventh result** is monthly visit statistics, which helps businesses understand customer behavior in different months for targeted marketing.
<p align="center">
  <img src="https://user-images.githubusercontent.com/100694015/235359621-b8146d8a-d7a7-4667-a7db-d1c368766e5b.png" alt="alt text" width="500"/>
</p>
<h3 id="8">Access period analysis</h3>


 **The last result**  is that interview time, which helps businesses understand when customers visit the website for improve customer service.
<p align="center">
  <img src="https://user-images.githubusercontent.com/100694015/235359579-a4786c3e-5909-4843-8a6d-5be5e47c8122.png?raw=true" alt="alt text" width="500"/>
</p>

<p align="right">(<a href="#table-of-contents">back to top ⬆️</a>)</p>

## Contact Information

| Contact | Mail |
| --- | --- |
| Gu yuzhan | yuzhan.gu@studenti.unicam.it |
| Guo yushan| yushan.guo@studenti.unicam.it |
| Ma deyuan | deyuan.ma@studenti.unicam.it |

