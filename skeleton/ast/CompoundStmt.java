package ast;

public class CompoundStmt extends Stmt {

    final StmtList body;

    public CompoundStmt(StmtList body, Location loc) {
        super(loc);
        this.body = body;
    }

    public StmtList getBody() {
        return body;
    }

    @Override
    public String toString() {
        return null;
    }
}
