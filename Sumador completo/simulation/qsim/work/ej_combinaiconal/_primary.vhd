library verilog;
use verilog.vl_types.all;
entity ej_combinaiconal is
    port(
        SW1             : in     vl_logic;
        SW2             : in     vl_logic;
        led             : out    vl_logic
    );
end ej_combinaiconal;
