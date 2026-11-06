package vm2.ast;

import com.ironsource.R6;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public class NameScope {
    private static final Set<String> LUA_KEYWORDS = new HashSet();
    public int functionNestingCount;
    public final Map<String, Variable> namedVariables;
    public final NameScope outerScope;

    static {
        String[] strArr = {"and", "break", R6.w1, "else", "elseif", "end", "false", "for", "function", "if", "in", "local", "nil", "not", "or", "repeat", "return", "then", "true", "until", "while"};
        for (int i = 0; i < 21; i++) {
            LUA_KEYWORDS.add(strArr[i]);
        }
    }

    public NameScope() {
        this.namedVariables = new HashMap();
        this.outerScope = null;
        this.functionNestingCount = 0;
    }

    public NameScope(NameScope nameScope) {
        this.namedVariables = new HashMap();
        this.outerScope = nameScope;
        this.functionNestingCount = nameScope != null ? nameScope.functionNestingCount : 0;
    }

    public Variable find(String str) throws IllegalArgumentException {
        validateIsNotKeyword(str);
        for (NameScope nameScope = this; nameScope != null; nameScope = nameScope.outerScope) {
            if (nameScope.namedVariables.containsKey(str)) {
                return nameScope.namedVariables.get(str);
            }
        }
        Variable variable = new Variable(str);
        this.namedVariables.put(str, variable);
        return variable;
    }

    public Variable define(String str) throws IllegalStateException, IllegalArgumentException {
        validateIsNotKeyword(str);
        Variable variable = new Variable(str, this);
        this.namedVariables.put(str, variable);
        return variable;
    }

    private void validateIsNotKeyword(String str) {
        if (LUA_KEYWORDS.contains(str)) {
            throw new IllegalArgumentException("name is a keyword: '" + str + "'");
        }
    }
}
