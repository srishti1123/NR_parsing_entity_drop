drop ={
    "rule-1" ={
        account_id =4438260
        action ="drop_attributes"
        nrql ="select Channel  from Log "

    }
    "rule-2" ={
        account_id =4438260
        action="drop_attributes"
        nrql="select agentName from StorageSample"
    }
}