-module(kuberl_v1_service_status).

-export([encode/1]).

-export_type([kuberl_v1_service_status/0]).

-type kuberl_v1_service_status() ::
    #{ 'loadBalancer' => kuberl_v1_load_balancer_status:kuberl_v1_load_balancer_status()
     }.

encode(#{ 'loadBalancer' := LoadBalancer
        }) ->
    #{ 'loadBalancer' => LoadBalancer
     }.
