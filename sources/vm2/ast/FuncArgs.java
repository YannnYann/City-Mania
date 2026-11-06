package vm2.ast;

import java.util.ArrayList;
import java.util.List;
import vm2.LuaString;

/* JADX INFO: loaded from: classes6.dex */
public class FuncArgs extends SyntaxElement {
    public final List<Exp> exps;

    public static FuncArgs explist(List<Exp> list) {
        return new FuncArgs(list);
    }

    public static FuncArgs tableconstructor(TableConstructor tableConstructor) {
        return new FuncArgs(tableConstructor);
    }

    public static FuncArgs string(LuaString luaString) {
        return new FuncArgs(luaString);
    }

    public FuncArgs(List<Exp> list) {
        this.exps = list;
    }

    public FuncArgs(LuaString luaString) {
        ArrayList arrayList = new ArrayList();
        this.exps = arrayList;
        arrayList.add(Exp.constant(luaString));
    }

    public FuncArgs(TableConstructor tableConstructor) {
        ArrayList arrayList = new ArrayList();
        this.exps = arrayList;
        arrayList.add(tableConstructor);
    }

    public void accept(Visitor visitor) {
        visitor.visit(this);
    }
}
