module look_ahead_adder_unit(cout,s,p,g,cin); //this is the smallest unit in our circuit 
    output s,cout;                              //and calculates sum and cout
    input p,g,cin;
    assign cout=g|(p&cin);
    assign s=p^cin;
endmodule