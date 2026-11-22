
class monitor;

    virtual intf vif;
    mailbox mon2scb;

    function new(virtual intf vif, mailbox mon2scb);

        this.vif = vif;
        this.mon2scb = mon2scb;

    endfunction

    task main();

        transaction trans;

        repeat(10)
        begin
            @(negedge vif.clk);
            @(posedge vif.clk);

            #1;

            trans = new();

            trans.d = vif.d;
            trans.q = vif.q;

            trans.display("MONITOR");

            mon2scb.put(trans);
        end

    endtask

endclass

