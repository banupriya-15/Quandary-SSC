package ast;

public class VarDecl extends ASTNode {

    final Type type;
    final boolean isMutable;
    final String name;
    

    public VarDecl(Type type, boolean isMutable, String name, Location loc) {
        super(loc);
        this.type = type;
        this.isMutable= isMutable;
        this.name = name;

    }

    public String getName() {
        return name;
    }

    public Type getType()
    {
        return type;
    }

    public boolean isMutable()
    {
        return isMutable;
    }

    @Override
    public String toString() {
        return null;
    }  
}
