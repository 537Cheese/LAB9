module controlunitTB();
    reg [31:0] I;
    reg Z;
    wire regW,ALUsrc,PCsrc,memRW,MemtoReg,sub;
    wire [2:0] ALUop;
    wire [1:0] IMMs;

    controlunit dut (I,Z,IMMs,regW,ALUsrc,ALUop,sub,PCsrc,memRW,MemtoReg);

    initial begin
    I = 32'b0;
    Z = 1'b0;
    #10 I = 32'h00f00193;
    #10 I = 32'h00700213;
    #10 I = 32'h004182b3;
    #10 I = 32'h06502223;
    #10 I = 32'h05d22183;
    #10 I = 32'h00518063;
    Z = 1'b1;

    end

    initial begin
        #1000 $stop;
    end

endmodule