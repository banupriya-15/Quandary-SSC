package ast;

import java.io.PrintStream;

public class Program extends ASTNode {

    final StmtList stmtList;
    final String argName;


    public Program(String argName,StmtList stmtList, Location loc) {
        super(loc);
        this.argName = argName;
        this.stmtList = stmtList;

    }

    public String getArgName()
    {
        return argName;
    }
    public StmtList getStmtList() {
        return stmtList;
    }

    public void println(PrintStream ps) {
        //ps.println(expr);
    }
}
