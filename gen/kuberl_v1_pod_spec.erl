-module(kuberl_v1_pod_spec).

-export([encode/1]).

-export_type([kuberl_v1_pod_spec/0]).

-type kuberl_v1_pod_spec() ::
    #{ 'activeDeadlineSeconds' => integer(),
       'affinity' => kuberl_v1_affinity:kuberl_v1_affinity(),
       'automountServiceAccountToken' => boolean(),
       'containers' := list(),
       'dnsPolicy' => binary(),
       'hostAliases' => list(),
       'hostIPC' => boolean(),
       'hostNetwork' => boolean(),
       'hostPID' => boolean(),
       'hostname' => binary(),
       'imagePullSecrets' => list(),
       'initContainers' => list(),
       'nodeName' => binary(),
       'nodeSelector' => maps:map(),
       'priority' => integer(),
       'priorityClassName' => binary(),
       'restartPolicy' => binary(),
       'schedulerName' => binary(),
       'securityContext' => kuberl_v1_pod_security_context:kuberl_v1_pod_security_context(),
       'serviceAccount' => binary(),
       'serviceAccountName' => binary(),
       'subdomain' => binary(),
       'terminationGracePeriodSeconds' => integer(),
       'tolerations' => list(),
       'volumes' => list()
     }.

encode(#{ 'activeDeadlineSeconds' := ActiveDeadlineSeconds,
          'affinity' := Affinity,
          'automountServiceAccountToken' := AutomountServiceAccountToken,
          'containers' := Containers,
          'dnsPolicy' := DnsPolicy,
          'hostAliases' := HostAliases,
          'hostIPC' := HostIPC,
          'hostNetwork' := HostNetwork,
          'hostPID' := HostPID,
          'hostname' := Hostname,
          'imagePullSecrets' := ImagePullSecrets,
          'initContainers' := InitContainers,
          'nodeName' := NodeName,
          'nodeSelector' := NodeSelector,
          'priority' := Priority,
          'priorityClassName' := PriorityClassName,
          'restartPolicy' := RestartPolicy,
          'schedulerName' := SchedulerName,
          'securityContext' := SecurityContext,
          'serviceAccount' := ServiceAccount,
          'serviceAccountName' := ServiceAccountName,
          'subdomain' := Subdomain,
          'terminationGracePeriodSeconds' := TerminationGracePeriodSeconds,
          'tolerations' := Tolerations,
          'volumes' := Volumes
        }) ->
    #{ 'activeDeadlineSeconds' => ActiveDeadlineSeconds,
       'affinity' => Affinity,
       'automountServiceAccountToken' => AutomountServiceAccountToken,
       'containers' => Containers,
       'dnsPolicy' => DnsPolicy,
       'hostAliases' => HostAliases,
       'hostIPC' => HostIPC,
       'hostNetwork' => HostNetwork,
       'hostPID' => HostPID,
       'hostname' => Hostname,
       'imagePullSecrets' => ImagePullSecrets,
       'initContainers' => InitContainers,
       'nodeName' => NodeName,
       'nodeSelector' => NodeSelector,
       'priority' => Priority,
       'priorityClassName' => PriorityClassName,
       'restartPolicy' => RestartPolicy,
       'schedulerName' => SchedulerName,
       'securityContext' => SecurityContext,
       'serviceAccount' => ServiceAccount,
       'serviceAccountName' => ServiceAccountName,
       'subdomain' => Subdomain,
       'terminationGracePeriodSeconds' => TerminationGracePeriodSeconds,
       'tolerations' => Tolerations,
       'volumes' => Volumes
     }.
