package ast;

public class FormalDeclList  extends ASTNode {

    final VarDecl first;
    final FormalDeclList rest;

    public FormalDeclList( VarDecl first, FormalDeclList rest, Location loc) {
        super(loc);
        this.first = first;
        this.rest= rest;
    }

    public VarDecl getFirst() {
        return first;
    }

    public FormalDeclList getRest()
    {
        return rest;
    }
    @Override
    public String toString() {
        return null;
    }
}
