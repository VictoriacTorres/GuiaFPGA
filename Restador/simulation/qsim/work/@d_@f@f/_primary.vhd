library verilog;
use verilog.vl_types.all;
entity D_FF is
    port(
        D               : in     vl_logic;
        CLOCK           : in     vl_logic;
        Q               : out    vl_logic
    );
end D_FF;
