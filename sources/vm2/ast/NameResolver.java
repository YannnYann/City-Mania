package vm2.ast;

import java.util.List;
import vm2.LuaValue;
import vm2.ast.Exp;
import vm2.ast.Stat;

/* JADX INFO: loaded from: classes6.dex */
public class NameResolver extends Visitor {
    private NameScope scope = null;

    @Override // vm2.ast.Visitor
    public void visit(NameScope nameScope) {
    }

    private void pushScope() {
        this.scope = new NameScope(this.scope);
    }

    private void popScope() {
        this.scope = this.scope.outerScope;
    }

    @Override // vm2.ast.Visitor
    public void visit(Block block) {
        pushScope();
        block.scope = this.scope;
        super.visit(block);
        popScope();
    }

    @Override // vm2.ast.Visitor
    public void visit(FuncBody funcBody) {
        pushScope();
        NameScope nameScope = this.scope;
        nameScope.functionNestingCount++;
        funcBody.scope = nameScope;
        super.visit(funcBody);
        popScope();
    }

    @Override // vm2.ast.Visitor
    public void visit(Stat.LocalFuncDef localFuncDef) {
        defineLocalVar(localFuncDef.name);
        super.visit(localFuncDef);
    }

    @Override // vm2.ast.Visitor
    public void visit(Stat.NumericFor numericFor) {
        pushScope();
        numericFor.scope = this.scope;
        defineLocalVar(numericFor.name);
        super.visit(numericFor);
        popScope();
    }

    @Override // vm2.ast.Visitor
    public void visit(Stat.GenericFor genericFor) {
        pushScope();
        genericFor.scope = this.scope;
        defineLocalVars(genericFor.names);
        super.visit(genericFor);
        popScope();
    }

    @Override // vm2.ast.Visitor
    public void visit(Exp.NameExp nameExp) {
        Name name = nameExp.name;
        name.variable = resolveNameReference(name);
        super.visit(nameExp);
    }

    @Override // vm2.ast.Visitor
    public void visit(Stat.FuncDef funcDef) {
        Name name = funcDef.name.name;
        name.variable = resolveNameReference(name);
        funcDef.name.name.variable.hasassignments = true;
        super.visit(funcDef);
    }

    @Override // vm2.ast.Visitor
    public void visit(Stat.Assign assign) {
        super.visit(assign);
        int size = assign.vars.size();
        for (int i = 0; i < size; i++) {
            assign.vars.get(i).markHasAssignment();
        }
    }

    @Override // vm2.ast.Visitor
    public void visit(Stat.LocalAssign localAssign) {
        visitExps(localAssign.values);
        defineLocalVars(localAssign.names);
        int size = localAssign.names.size();
        List<Exp> list = localAssign.values;
        int size2 = list != null ? list.size() : 0;
        boolean z = size2 > 0 && size2 < size && localAssign.values.get(size2 + (-1)).isvarargexp();
        for (int i = 0; i < size; i++) {
            if (i >= (z ? size2 - 1 : size2)) {
                break;
            }
            if (localAssign.values.get(i) instanceof Exp.Constant) {
                localAssign.names.get(i).variable.initialValue = ((Exp.Constant) localAssign.values.get(i)).value;
            }
        }
        if (z) {
            return;
        }
        while (size2 < size) {
            localAssign.names.get(size2).variable.initialValue = LuaValue.NIL;
            size2++;
        }
    }

    @Override // vm2.ast.Visitor
    public void visit(ParList parList) {
        List<Name> list = parList.names;
        if (list != null) {
            defineLocalVars(list);
        }
        if (parList.isvararg) {
            this.scope.define("arg");
        }
        super.visit(parList);
    }

    public void defineLocalVars(List<Name> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            defineLocalVar(list.get(i));
        }
    }

    public void defineLocalVar(Name name) {
        name.variable = this.scope.define(name.name);
    }

    public Variable resolveNameReference(Name name) {
        Variable variableFind = this.scope.find(name.name);
        if (variableFind.isLocal() && this.scope.functionNestingCount != variableFind.definingScope.functionNestingCount) {
            variableFind.isupvalue = true;
        }
        return variableFind;
    }
}
