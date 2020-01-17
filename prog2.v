module m1(A,B,C,D,E,F,G,H);
input A,B;
output C,D,E,F,G,H;
assign C =A&B;
assign D =!(A&B);
assign E =!(A|B);
assign F =A^B;
assign G =!(A^B);
assign H =!A;
endmodule
module test;
reg a,b;
wire c,d,e,f,g,h;
m1 g1(a,b,c,d,e,f,g,h);
initial begin
$display("A\tB\tC\tD\tE\tF\tG\tH\t");
$monitor("%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t",a,b,c,d,e,f,g,h);
$dumpfile("first.vcd");
$dumpvars(0,test);
a=0;b=0;
#10 a=0;b=1;
#10 a=1;b=0;
#10 a=1;b=1;
#10
$finish;
end 
endmodule

