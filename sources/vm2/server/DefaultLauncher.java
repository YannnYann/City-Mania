package vm2.server;

import com.ironsource.C3522b4;
import java.io.InputStream;
import java.io.Reader;
import vm2.Globals;
import vm2.LuaValue;
import vm2.Varargs;
import vm2.lib.jse.CoerceJavaToLua;
import vm2.lib.jse.JsePlatform;

/* JADX INFO: loaded from: classes6.dex */
public class DefaultLauncher implements Launcher {
    protected Globals g = JsePlatform.standardGlobals();

    @Override // vm2.server.Launcher
    public Object[] launch(String str, Object[] objArr) {
        return launchChunk(this.g.load(str, C3522b4.i.Z), objArr);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // vm2.server.Launcher
    public Object[] launch(InputStream inputStream, Object[] objArr) {
        Globals globals = this.g;
        return launchChunk(globals.load(inputStream, C3522b4.i.Z, "bt", globals), objArr);
    }

    @Override // vm2.server.Launcher
    public Object[] launch(Reader reader, Object[] objArr) {
        return launchChunk(this.g.load(reader, C3522b4.i.Z), objArr);
    }

    private Object[] launchChunk(LuaValue luaValue, Object[] objArr) {
        int length = objArr.length;
        LuaValue[] luaValueArr = new LuaValue[length];
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            luaValueArr[i2] = CoerceJavaToLua.coerce(objArr[i2]);
        }
        Varargs varargsInvoke = luaValue.invoke(LuaValue.varargsOf(luaValueArr));
        int iNarg = varargsInvoke.narg();
        Object[] objArr2 = new Object[iNarg];
        while (i < iNarg) {
            int i3 = i + 1;
            LuaValue luaValueArg = varargsInvoke.arg(i3);
            int iType = luaValueArg.type();
            if (iType == -2) {
                objArr2[i] = Integer.valueOf(luaValueArg.toint());
            } else if (iType == 1) {
                objArr2[i] = null;
            } else if (iType == 2) {
                objArr2[i] = Boolean.valueOf(luaValueArg.toboolean());
            } else if (iType == 4) {
                objArr2[i] = Double.valueOf(luaValueArg.todouble());
            } else if (iType == 5) {
                objArr2[i] = luaValueArg.tojstring();
            } else if (iType == 6) {
                objArr2[i] = luaValueArg.touserdata();
            } else {
                objArr2[i] = luaValueArg;
            }
            i = i3;
        }
        return objArr2;
    }
}
