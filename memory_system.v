module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output reg [7:0] memory
);

    // This should instantiate 4 instances of
    // byte_memory, and then demultiplex
    // data and store into the one selected by
    // addr

    // It should then multiplex the output of the
    // memory specified by addr into the memory
    // output for display on the LEDs

    // you will need 2 demultiplexers:
    // 1. Demultiplex data -> selected byte
    // 2. Demultiplex store -> selected byte

    // and one multiplexer:
    // 1. Multiplex selected byte -> memory


    // demux outputs
    reg [3:0] enabled_latch;



    // demux to select which byte_memory is selected
    always @(store, addr, data) begin
        enabled_latch = 4'b0000;
        if (store) begin
            case (addr)
                2'b00: enabled_latch[0] = 1'b1;
                2'b01: enabled_latch[1] = 1'b1;
                2'b10: enabled_latch[2] = 1'b1;
                2'b11: enabled_latch[3] = 1'b1;
            endcase
        end
    end

    // memory storage 4 bits 8 wide (4 bytes)
    reg [7:0] mem [3:0];
    // create the byte memories    
    genvar i;
    generate 
        for (i = 0; i < 4; i = i + 1) begin : byte_memory
            always @(store, addr, data) begin 
                if (enabled_latch[i]) begin
                    mem[i] <= data; 
                end
            end
        end
    endgenerate

    // output mux from mem to memory 
    always @(store, addr, data) begin
        case (addr)
            2'b00: memory = mem[0];
            2'b01: memory = mem[1];
            2'b10: memory = mem[2];
            2'b11: memory = mem[3];
            default: memory = 8'bzzzzzzzz; //z's are not set to 1 or 0 yet since its memory.
        endcase
    end


endmodule