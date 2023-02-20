package ast;

public class CastExpr extends Expr {
    
    final Type type;
    final Expr expr;

    public CastExpr(Type type, Expr expr, Location loc) {
        super(loc);
        this.type = type;
        this.expr = expr;
    }

    public Type getType(){
        return type;
    }
    public Expr getExpr() {
        return expr;
    }

    @Override
    public String toString() {
        return null;
    }
}
 