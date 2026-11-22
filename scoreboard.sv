
class scoreboard;

    mailbox mon2scb;

    function new(mailbox mon2scb);
        this.mon2scb = mon2scb;
    endfunction

    task main();

        transaction trans;

        repeat(10)
        begin
            mon2scb.get(trans);

            if (trans.q == trans.d)

                $display("PASS: Expected Q=%0d, Actual Q=%0d",
                         trans.d, trans.q);

            else

                $error("FAIL: Expected Q=%0d, Actual Q=%0d",
                       trans.d, trans.q);

        end

    endtask

endclass
