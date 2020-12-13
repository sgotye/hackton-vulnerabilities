fun main () =
    let
        val storage = [];
        val context = Context 1337 10217 storage;
        val init_params = [ SCInt 1337, SCString "aviacompany", SCInt 1338, SCString "fuelcompany", SCString "This very simple agreement", SCInt 1339 ];
        val result = Runtime.call 1 context init_params;

        (*fuelcompany rejectAgreement*)
        val params = [];
        val storage = Option.valOf (get result);
        val context = Context 1338 10217 storage;
        val result = Runtime.call 3 context params;

        (*customer changeAgreementDetails*)
        val params = [SCString "This is another simple agreement", SCInt 1300];
        val storage = Option.valOf (get result);
        val context = Context 1337 10217 storage;
        val result = Runtime.call 5 context params;
    in
        if Option.isNone (get_err result) then
            print(campaign_toPrettyString ((Option.valOf( scValue_to_campaign( decodeValue(Option.valOf(get ( result ))))))))
        else
            print(Option.valOf(get_err ( result )))

    end;
    

main ();
