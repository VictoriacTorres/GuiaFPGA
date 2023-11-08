library verilog;
use verilog.vl_types.all;
entity ej_combinaiconal_vlg_sample_tst is
    port(
        SW1             : in     vl_logic;
        SW2             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end ej_combinaiconal_vlg_sample_tst;
