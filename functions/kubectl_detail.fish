function kubectl_detail
  set namespace ""
  set resource ""
  getopts $argv | while read -l key value
      switch $key
          case n
            set namespace $value
          case r
            set resource $value
      end
  end
  if test "$namespace" = ""
    set namespace (kubectl config view --minify --output 'jsonpath={..namespace}')
  end
  if test "$resource" = ""
    echo "set resource name like svc,pod by -r option"
    return
  end
  kubectl get $resource -n $namespace | cut -f 1 -d " " | peco | read -l r
  kubectl get $resource $r -n $namespace -o yaml
end
