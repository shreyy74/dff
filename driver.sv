
class driver;

    virtual intf vif;
    mailbox gen2driv;

    function new(virtual intf vif, mailbox gen2driv);

        this.vif = vif;
        this.gen2driv = gen2driv;

    endfunction

    task main();

        transaction trans;

        repeat(10)
        begin
            gen2driv.get(trans);

            @(negedge vif.clk);

            vif.d <= trans.d;

            $display("DRIVER: D = %0d", trans.d);
        end

    endtask

endclass
