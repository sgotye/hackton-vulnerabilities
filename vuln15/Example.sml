fun main () =
	let
        val storage = [];
        val context = Context 1337 10217 storage;
        val init_params = [ SCInt 1337, SCString "aviacompany", SCInt 1338, SCString "fuelcompany", SCString "This very simple agreement", SCInt 1339 ];
        val result = Runtime.call 1 context init_params;

        (*ApproveAgreement*)
        val params = [];
        val storage = Option.valOf (get result);
        val context = Context 1338 10217 storage;
        val result = Runtime.call 4 context params;

        (*createPriceChange*)
        val params = [SCInt 100, SCNegotiation WaitingCustomer, SCInt 10217];
        val storage = Option.valOf (get result);
        val context = Context 1338 10217 storage;
        val result = Runtime.call 11 context params;

        (*approvePrice*)
        val params = [];
        val storage = Option.valOf (get result);
        val context = Context 1337 10217 storage;
        val result = Runtime.call 9 context params;

        (*addTask*)
        val params = [SCInt 355, SCNegotiation WaitingSupplier, SCInt 300,
        SCString "captain3", SCInt 1000, SCString "fuelcompany0", SCInt 200,
        SCInt 200, SCInt 200, SCInt 0, SCInt 10217, SCInt 10217, SCInt 10217,
        SCInt 10217, SCTaskStatus GasRequested, SCPaymentType Pre ];
        val storage = Option.valOf (get result);
        val context = Context 1337 10217 storage;
        val result = Runtime.call 17 context params;

        (*approveTask*)
        val params = [SCInt 355];
        val storage = Option.valOf (get result);
        val context = Context 1338 10217 storage;
        val result = Runtime.call 13 context params;

        (*acceptTask*)
        val params = [SCInt 355];
        val storage = Option.valOf (get result);
        val context = Context 1000 10217 storage;
        val result = Runtime.call 15 context params;

        (*readyToPerformTask*)
        val params = [SCInt 355];
        val storage = Option.valOf (get result);
        val context = Context 1000 10217 storage;
        val result = Runtime.call 18 context params;


        (*requestGas*)
        val params = [SCInt 355, SCInt 200, SCInt 10217];
        val storage = Option.valOf (get result);
        val context = Context 300 10217 storage;
        val result = Runtime.call 19 context params;

        (*performTask*)
        val params = [SCInt 355];
        val storage = Option.valOf (get result);
        val context = Context 1000 10217 storage;
        val result = Runtime.call 21 context params;
    in
        if Option.isNone (get_err result) then
            print(campaign_toPrettyString ((Option.valOf( scValue_to_campaign( decodeValue(Option.valOf(get ( result ))))))))
        else
            print(Option.valOf(get_err ( result )))

    end;
    

main ();
