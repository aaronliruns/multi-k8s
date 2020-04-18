# multi-k8s end states

<u>Deployments</u>

`aaron@aaron-desktop:~/Workspaces/multi-k8s$ kubectl get deployments
NAME                  READY   UP-TO-DATE   AVAILABLE   AGE
client-deployment     3/3     3            3           55s
postgres-deployment   1/1     1            1           55s
redis-deployment      1/1     1            1           55s
server-deployment     3/3     3            3           54s
worker-deployment     1/1     1            1           54s`



<u>Secrets</u>

`aaron@aaron-desktop:~/Workspaces/multi-k8s$ kubectl get secrets
NAME                  TYPE                                  DATA   AGE
default-token-rp6df   kubernetes.io/service-account-token   3      7h21m
pgpassword            Opaque                                1      175m`



<u>PVC</u>

`aaron@aaron-desktop:~/Workspaces/multi-k8s$ kubectl get pvc
NAME                               STATUS   VOLUME                                     CAPACITY   ACCESS MODES   STORAGECLASS   AGE
database-persistent-volume-claim   Bound    pvc-b25678cd-7bf6-4ee0-94e9-f4f4f83306c8   2Gi        RWO            standard       2m45s`

