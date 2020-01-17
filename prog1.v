module m1(A,B,C,D,E,F,G,H);
input A,B;
output C,D,E,F,G,H;
and(C,A,B);
nand(D,A,B);
nor (E,A,B);
xor(F,A,B);
xnor(G,A,B);
not(H,A);
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

