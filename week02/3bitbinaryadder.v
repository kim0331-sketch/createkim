module fulladder( 
    input a, b, cin,
    output cout, sum );
    assign sum=(a^b)^cin;
    assign cout=(a&b)|((a^b)&cin);
endmodule
module top_module( 
    input [2:0] a, b,
    input cin,
    output [2:0] cout,
    output [2:0] sum );
    wire c1;
    wire c2;
    assign cout[0]=c1;
    assign cout[1]=c2;
    fulladder u_fulladder_0(.a(a[0]),
                            .b(b[0]),
                            .cin(cin),
                            .sum(sum[0]),
                            .cout(cout[0]));
    fulladder u_fulladder_1(.a(a[1]),
                            .b(b[1]),
                            .cin(c1),
                            .sum(sum[1]),
                            .cout(cout[1]));
    fulladder u_fulladder_2(.a(a[2]),
                            .b(b[2]),
                            .cin(c2),
                            .sum(sum[2]),
                            .cout(cout[2]));
endmodule
