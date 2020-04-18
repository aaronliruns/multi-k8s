# multi-k8s end states

<u>Deployments</u>

aaron@aaron-desktop:~/Workspaces/multi-k8s$ kubectl get deployments<br/>
NAME                  READY   UP-TO-DATE   AVAILABLE   AGE<br/>
client-deployment     3/3     3            3           55s<br/>
postgres-deployment   1/1     1            1           55s<br/>
redis-deployment      1/1     1            1           55s<br/>
server-deployment     3/3     3            3           54s<br/>
worker-deployment     1/1     1            1           54s<br/>



<u>Secrets</u>

aaron@aaron-desktop:~/Workspaces/multi-k8s$ kubectl get secrets<br/>
NAME                  TYPE                                  DATA   AGE<br/>
default-token-rp6df   kubernetes.io/service-account-token   3      7h21m<br/>
pgpassword            Opaque                                1      175m<br/>



<u>PVC</u>

aaron@aaron-desktop:~/Workspaces/multi-k8s$ kubectl get pvc<br/>
NAME                               STATUS   VOLUME                                     CAPACITY   ACCESS MODES   STORAGECLASS   AGE<br/>
database-persistent-volume-claim   Bound    pvc-b25678cd-7bf6-4ee0-94e9-f4f4f83306c8   2Gi        RWO            standard       2m45s<br/>

