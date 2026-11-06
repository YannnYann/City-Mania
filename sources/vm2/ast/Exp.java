package vm2.ast;

import vm2.LuaValue;

/* JADX INFO: loaded from: classes6.dex */
public abstract class Exp extends SyntaxElement {

    public static abstract class PrimaryExp extends Exp {
        @Override // vm2.ast.Exp
        public boolean isfunccall() {
            return false;
        }

        @Override // vm2.ast.Exp
        public boolean isvarexp() {
            return false;
        }
    }

    public static abstract class VarExp extends PrimaryExp {
        @Override // vm2.ast.Exp.PrimaryExp, vm2.ast.Exp
        public boolean isvarexp() {
            return true;
        }

        public void markHasAssignment() {
        }
    }

    public static boolean isrightassoc(int i) {
        return i == 19 || i == 22;
    }

    public static Exp tableconstructor(TableConstructor tableConstructor) {
        return tableConstructor;
    }

    public abstract void accept(Visitor visitor);

    public boolean isfunccall() {
        return false;
    }

    public boolean isvarargexp() {
        return false;
    }

    public boolean isvarexp() {
        return false;
    }

    public static Exp constant(LuaValue luaValue) {
        return new Constant(luaValue);
    }

    public static Exp numberconstant(String str) {
        return new Constant(LuaValue.valueOf(str).tonumber());
    }

    public static Exp varargs() {
        return new VarargsExp();
    }

    public static Exp unaryexp(int i, Exp exp) {
        if (exp instanceof BinopExp) {
            BinopExp binopExp = (BinopExp) exp;
            if (precedence(i) > precedence(binopExp.op)) {
                return binaryexp(unaryexp(i, binopExp.lhs), binopExp.op, binopExp.rhs);
            }
        }
        return new UnopExp(i, exp);
    }

    public static Exp binaryexp(Exp exp, int i, Exp exp2) {
        if (exp instanceof UnopExp) {
            UnopExp unopExp = (UnopExp) exp;
            if (precedence(i) > precedence(unopExp.op)) {
                return unaryexp(unopExp.op, binaryexp(unopExp.rhs, i, exp2));
            }
        }
        if (exp instanceof BinopExp) {
            BinopExp binopExp = (BinopExp) exp;
            if (precedence(i) > precedence(binopExp.op) || (precedence(i) == precedence(binopExp.op) && isrightassoc(i))) {
                return binaryexp(binopExp.lhs, binopExp.op, binaryexp(binopExp.rhs, i, exp2));
            }
        }
        if (exp2 instanceof BinopExp) {
            BinopExp binopExp2 = (BinopExp) exp2;
            if (precedence(i) > precedence(binopExp2.op) || (precedence(i) == precedence(binopExp2.op) && !isrightassoc(i))) {
                return binaryexp(binaryexp(exp, i, binopExp2.lhs), binopExp2.op, binopExp2.rhs);
            }
        }
        return new BinopExp(exp, i, exp2);
    }

    public static int precedence(int i) {
        if (i == 25 || i == 26) {
            return 2;
        }
        switch (i) {
            case 13:
            case 20:
            case 21:
                return 6;
            case 14:
            case 15:
                return 4;
            case 16:
            case 17:
            case 18:
                return 5;
            case 19:
                return 7;
            case 22:
                return 3;
            case 23:
                return 2;
            default:
                switch (i) {
                    case 59:
                        return 0;
                    case 60:
                        return 1;
                    case 61:
                    case 62:
                    case 63:
                        return 2;
                    default:
                        throw new IllegalStateException("precedence of bad op " + i);
                }
        }
    }

    public static Exp anonymousfunction(FuncBody funcBody) {
        return new AnonFuncDef(funcBody);
    }

    public static NameExp nameprefix(String str) {
        return new NameExp(str);
    }

    public static ParensExp parensprefix(Exp exp) {
        return new ParensExp(exp);
    }

    public static IndexExp indexop(PrimaryExp primaryExp, Exp exp) {
        return new IndexExp(primaryExp, exp);
    }

    public static FieldExp fieldop(PrimaryExp primaryExp, String str) {
        return new FieldExp(primaryExp, str);
    }

    public static FuncCall functionop(PrimaryExp primaryExp, FuncArgs funcArgs) {
        return new FuncCall(primaryExp, funcArgs);
    }

    public static MethodCall methodop(PrimaryExp primaryExp, String str, FuncArgs funcArgs) {
        return new MethodCall(primaryExp, str, funcArgs);
    }

    public static class NameExp extends VarExp {
        public final Name name;

        public NameExp(String str) {
            this.name = new Name(str);
        }

        @Override // vm2.ast.Exp.VarExp
        public void markHasAssignment() {
            this.name.variable.hasassignments = true;
        }

        @Override // vm2.ast.Exp
        public void accept(Visitor visitor) {
            visitor.visit(this);
        }
    }

    public static class ParensExp extends PrimaryExp {
        public final Exp exp;

        public ParensExp(Exp exp) {
            this.exp = exp;
        }

        @Override // vm2.ast.Exp
        public void accept(Visitor visitor) {
            visitor.visit(this);
        }
    }

    public static class FieldExp extends VarExp {
        public final PrimaryExp lhs;
        public final Name name;

        public FieldExp(PrimaryExp primaryExp, String str) {
            this.lhs = primaryExp;
            this.name = new Name(str);
        }

        @Override // vm2.ast.Exp
        public void accept(Visitor visitor) {
            visitor.visit(this);
        }
    }

    public static class IndexExp extends VarExp {
        public final Exp exp;
        public final PrimaryExp lhs;

        public IndexExp(PrimaryExp primaryExp, Exp exp) {
            this.lhs = primaryExp;
            this.exp = exp;
        }

        @Override // vm2.ast.Exp
        public void accept(Visitor visitor) {
            visitor.visit(this);
        }
    }

    public static class FuncCall extends PrimaryExp {
        public final FuncArgs args;
        public final PrimaryExp lhs;

        @Override // vm2.ast.Exp.PrimaryExp, vm2.ast.Exp
        public boolean isfunccall() {
            return true;
        }

        @Override // vm2.ast.Exp
        public boolean isvarargexp() {
            return true;
        }

        public FuncCall(PrimaryExp primaryExp, FuncArgs funcArgs) {
            this.lhs = primaryExp;
            this.args = funcArgs;
        }

        @Override // vm2.ast.Exp
        public void accept(Visitor visitor) {
            visitor.visit(this);
        }
    }

    public static class MethodCall extends FuncCall {
        public final String name;

        @Override // vm2.ast.Exp.FuncCall, vm2.ast.Exp.PrimaryExp, vm2.ast.Exp
        public boolean isfunccall() {
            return true;
        }

        public MethodCall(PrimaryExp primaryExp, String str, FuncArgs funcArgs) {
            super(primaryExp, funcArgs);
            this.name = new String(str);
        }

        @Override // vm2.ast.Exp.FuncCall, vm2.ast.Exp
        public void accept(Visitor visitor) {
            visitor.visit(this);
        }
    }

    public static class Constant extends Exp {
        public final LuaValue value;

        public Constant(LuaValue luaValue) {
            this.value = luaValue;
        }

        @Override // vm2.ast.Exp
        public void accept(Visitor visitor) {
            visitor.visit(this);
        }
    }

    public static class VarargsExp extends Exp {
        @Override // vm2.ast.Exp
        public boolean isvarargexp() {
            return true;
        }

        @Override // vm2.ast.Exp
        public void accept(Visitor visitor) {
            visitor.visit(this);
        }
    }

    public static class UnopExp extends Exp {
        public final int op;
        public final Exp rhs;

        public UnopExp(int i, Exp exp) {
            this.op = i;
            this.rhs = exp;
        }

        @Override // vm2.ast.Exp
        public void accept(Visitor visitor) {
            visitor.visit(this);
        }
    }

    public static class BinopExp extends Exp {
        public final Exp lhs;
        public final int op;
        public final Exp rhs;

        public BinopExp(Exp exp, int i, Exp exp2) {
            this.lhs = exp;
            this.op = i;
            this.rhs = exp2;
        }

        @Override // vm2.ast.Exp
        public void accept(Visitor visitor) {
            visitor.visit(this);
        }
    }

    public static class AnonFuncDef extends Exp {
        public final FuncBody body;

        public AnonFuncDef(FuncBody funcBody) {
            this.body = funcBody;
        }

        @Override // vm2.ast.Exp
        public void accept(Visitor visitor) {
            visitor.visit(this);
        }
    }
}
