package interpreter;

public class QRef extends QVal{
    
    final QObj referent;
    QRef(QObj referent)
    {
        this.referent=referent;
    }

    @Override
    public String toString()
    {
       if(referent == null)
           {
            return "nil";
           }
        return referent.toString();
    }
}
