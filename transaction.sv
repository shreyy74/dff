
class transaction;

    rand bit d;
    bit q;

    function void display(string name);

        $display("--------------------");
        $display("%s", name);
        $display("D = %0d", d);
        $display("Q = %0d", q);
        $display("--------------------");

    endfunction

endclass
