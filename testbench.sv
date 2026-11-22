
`include "interface.sv"
`include "test.sv"

module tbench_top;
    intf i_intf();

    initial begin
        i_intf.clk = 0;
        forever #5 i_intf.clk = ~i_intf.clk;
    end

    test t1(i_intf);

    dff d1(
        .clk(i_intf.clk),
        .d(i_intf.d),
        .q(i_intf.q)
    );

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars;
    end
endmodule
