#!/usr/bin/env zsh

# kubectl get pods and grep for arg in the results.
kgpg () {
    if [ -z $1 ] ; then
        kubectl get pods
    else
        kubectl get pods | grep $1
    fi
}

# Run a shell session inside the first matching pod based on your input
kubesh () {
    if [ -z $1 ]; then
        echo "Usage: kubesh <pod>"
        return 1
    fi
    POD=$(kubectl get pod|grep $1|head -1|awk '{print $1}')
    echo "Shelling into pod $POD"
    kubectl exec -ti $POD -- sh
}
