-module(kuberl_v1_flocker_volume_source).

-export([encode/1]).

-export_type([kuberl_v1_flocker_volume_source/0]).

-type kuberl_v1_flocker_volume_source() ::
    #{ 'datasetName' => binary(),
       'datasetUUID' => binary()
     }.

encode(#{ 'datasetName' := DatasetName,
          'datasetUUID' := DatasetUUID
        }) ->
    #{ 'datasetName' => DatasetName,
       'datasetUUID' => DatasetUUID
     }.
