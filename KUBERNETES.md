
#docker logs -f CONTAINER_ID 
get ip of docker machine
docker-machine ip

1)
Run a docker image in a docker container in interactive mode
docker run -p 8080:8080 -it jboss/wildfly

Run a docker image in a docker container in detached mode
docker run -p 8080:8080 -d jboss/wildfly

2)
sudo usermod -a -G docker sloppy
git clone https://github.com/GoogleCloudPlatform/kubernetes.git
#docker -d
sh ./kubernetes/build/release.sh
export KUBERNETES_PROVIDER=vagrant
sh ./kubernetes/cluster/kube-up.sh
./kubernetes/cluster/kubectl.sh create -f mysql-server.yaml
./kubernetes/cluster/kubectl.sh get pods
./kubernetes/cluster/kubectl.sh get se,po -l context=docker-k8s-lab


3)
docker run swarm create
docker-swarm ps
docker ps
docker-machine creeate -d virtualbox --swarm --swarm-master --swarm-discovery token://ddc6c860405eed99c81e056690b28c93 swarm-master
docker-machine create -d virtualbox --swarm --swarm-master --swarm-discovery token://ddc6c860405eed99c81e056690b28c93 swarm-master
#eval "$(docker-machine env swarm-master)"
docker-machine create -d virtualbox --swarm  --swarm-discovery token://ddc6c860405eed99c81e056690b28c93 swarm-node-01
docker-machine ls

Output:

root@8D:/home/sloppy# eval "$(docker-machine env swarm-master)"
root@8D:/home/sloppy# docker-machine create -d virtualbox --swarm  --swarm-discovery token://ddc6c860405eed99c81e056690b28c93 swarm-node-01
INFO[0000] Creating SSH key...                          
INFO[0000] Creating VirtualBox VM...                    
INFO[0014] Starting VirtualBox VM...                    
INFO[0014] Waiting for VM to start...                   
INFO[0080] "swarm-node-01" has been created and is now the active machine. 
INFO[0080] To point your Docker client at it, run this in your shell: eval "$(docker-machine env swarm-node-01)" 
root@8D:/home/sloppy# docker-machine ls
NAME            ACTIVE   DRIVER       STATE     URL                         SWARM
swarm-master             virtualbox   Running   tcp://192.168.99.100:2376   swarm-master (master)
swarm-node-01   *        virtualbox   Running   tcp://192.168.99.101:2376   swarm-master



///////////////////////////////////////////////////
sudo docker-machine create --driver=virtualbox devoxxuk2015
 1965  docker run -p 8080:8080 -it jboss/wildfly
 1966  sudo docker run -p 8080:8080 -it jboss/wildfly
 1967  sudo docker run -p 8080:8080 -d jboss/wildfly
 1968  mkdir kubernetes
 1969  cd kubernetes/
 1970  export KUBERNETES_PROVIDER=vagrant
 1971  sudo which kubernetes
 1972  sudo whereis kubernetes
 1973  kubernetes
 1974  sudo apt-get install kubernetes
 1975  vagrant
 1976  find / -name kubre-up.sh
 1977  sudo 1!
 1978  sudo find / -name kubre-up.sh
 1979  sudo find / -name kuber-up.sh
 1980  git clone https://github.com/GoogleCloudPlatform/kubernetes.git
 1981  export KUBERNETES_PROVIDER=vagrant
 1982  cd clu
 1983  ll
 1984  cd kubernetes/
 1985  ll
 1986  cd cluster/
 1987  ll
 1988  ./kube-up.sh
 1989  cd ..
 1990  cd build/
 1991  ./release.sh 
 1992  sudo usermod -a -G docker sloppy
 1993  ./release.sh 
 1994  docker -d
 1995  sudo ./release.sh 
 1996  cd ..
 1997  cd cluster/
 1998  ll
 1999  ./kube-up.sh 
 2000  ./kube-down.sh 
 2001  ./kube-up.sh 
 2002  cd ..
 2003  ./kubernetes/cluster/kubectl.sh create -f mysql-server.yaml 
 2004  ./kubernetes/cluster/kubectl.sh get pod -l context=docker-k8s-lab
 2005  ./kubernetes/cluster/kubectl.sh create -f mysql-server.yaml 
 2006  ./kubernetes/cluster/kubectl.sh get pod -l context=docker-k8s-lab
 2007  ./kubernetes/cluster/kubectl.sh create -f mysql-server.yaml 
 2008  ./kubernetes/cluster/kubectl.sh get pod -l context=docker-k8s-lab
 2009  ./kubernetes/cluster/kubectl.sh get pods
 2010  vagrant status
 2011  cd kubernetes/
 2012  vagrant status
 2013  ./kubernetes/cluster/kubectl.sh get pods
 2014  ./cluster/kubectl.sh get pods
 2015  ifconfig
 2016  ./kubernetes/cluster/kubectl.sh get logs
 2017  ./kubernetes/cluster/kubectl.sh get log
 2018  ./kubernetes/cluster/kubectl.sh get log -l contextt=docker-k8s-lab
 2019  ./kubernetes/cluster/kubectl.sh get logs -l contextt=docker-k8s-lab
 2020  ./cluster/kubectl.sh get logs -l contextt=docker-k8s-lab
 2021  ./cluster/kubectl.sh get se,po -l contextt=docker-k8s-lab
 2022  ./cluster/kubectl.sh get po -l contextt=docker-k8s-lab
 2023  ./cluster/kubectl.sh get pod -l contextt=docker-k8s-lab
 2024  ./kubernetes/cluster/kubectl.sh get pods
 2025  ./cluster/kubectl.sh get pods

///////////////////////////////////////////////////////////////////////////////
























