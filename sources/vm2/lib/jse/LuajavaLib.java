package vm2.lib.jse;

import com.ironsource.C3522b4;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import vm2.LuaError;
import vm2.LuaTable;
import vm2.LuaValue;
import vm2.Varargs;
import vm2.lib.VarArgFunction;

/* JADX INFO: loaded from: classes6.dex */
public class LuajavaLib extends VarArgFunction {
    static final int BINDCLASS = 1;
    static final int CREATEPROXY = 4;
    static final int INIT = 0;
    static final int LOADLIB = 5;
    static final int METHOD_MODIFIERS_VARARGS = 128;
    static final String[] NAMES = {"bindClass", "newInstance", "new", "createProxy", "loadLib"};
    static final int NEW = 3;
    static final int NEWINSTANCE = 2;

    @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
    public Varargs invoke(Varargs varargs) {
        try {
            int i = this.opcode;
            if (i == 0) {
                LuaValue luaValueArg = varargs.arg(2);
                LuaTable luaTable = new LuaTable();
                bind(luaTable, getClass(), NAMES, 1);
                luaValueArg.set("luajava", luaTable);
                if (!luaValueArg.get("package").isnil()) {
                    luaValueArg.get("package").get(C3522b4.i.r).set("luajava", luaTable);
                }
                return luaTable;
            }
            if (i == 1) {
                return JavaClass.forClass(classForName(varargs.checkjstring(1)));
            }
            if (i == 2 || i == 3) {
                LuaValue luaValueCheckvalue = varargs.checkvalue(1);
                return JavaClass.forClass(this.opcode == 2 ? classForName(luaValueCheckvalue.tojstring()) : (Class) luaValueCheckvalue.checkuserdata(Class.class)).getConstructor().invoke(varargs.subargs(2));
            }
            int i2 = 0;
            if (i == 4) {
                int iNarg = varargs.narg();
                int i3 = iNarg - 1;
                if (i3 <= 0) {
                    throw new LuaError("no interfaces");
                }
                LuaTable luaTableChecktable = varargs.checktable(iNarg);
                Class[] clsArr = new Class[i3];
                while (i2 < i3) {
                    int i4 = i2 + 1;
                    clsArr[i2] = classForName(varargs.checkjstring(i4));
                    i2 = i4;
                }
                return LuaValue.userdataOf(Proxy.newProxyInstance(getClass().getClassLoader(), clsArr, new ProxyInvocationHandler(luaTableChecktable)));
            }
            if (i == 5) {
                String strCheckjstring = varargs.checkjstring(1);
                String strCheckjstring2 = varargs.checkjstring(2);
                Class clsClassForName = classForName(strCheckjstring);
                Object objInvoke = clsClassForName.getMethod(strCheckjstring2, new Class[0]).invoke(clsClassForName, new Object[0]);
                if (objInvoke instanceof LuaValue) {
                    return (LuaValue) objInvoke;
                }
                return LuaValue.NIL;
            }
            throw new LuaError("not yet supported: " + this);
        } catch (InvocationTargetException e) {
            throw new LuaError(e.getTargetException());
        } catch (LuaError e2) {
            throw e2;
        } catch (Exception e3) {
            throw new LuaError(e3);
        }
    }

    public Class classForName(String str) throws ClassNotFoundException {
        return Class.forName(str, true, ClassLoader.getSystemClassLoader());
    }

    public static final class ProxyInvocationHandler implements InvocationHandler {
        private final LuaValue lobj;

        private ProxyInvocationHandler(LuaValue luaValue) {
            this.lobj = luaValue;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            LuaValue[] luaValueArr;
            LuaValue luaValue = this.lobj.get(method.getName());
            if (luaValue.isnil()) {
                return null;
            }
            int i = 0;
            boolean z = (method.getModifiers() & 128) != 0;
            int length = objArr != null ? objArr.length : 0;
            if (z) {
                int i2 = length - 1;
                Object obj2 = objArr[i2];
                int length2 = Array.getLength(obj2);
                luaValueArr = new LuaValue[i2 + length2];
                for (int i3 = 0; i3 < i2; i3++) {
                    luaValueArr[i3] = CoerceJavaToLua.coerce(objArr[i3]);
                }
                while (i < length2) {
                    luaValueArr[i + i2] = CoerceJavaToLua.coerce(Array.get(obj2, i));
                    i++;
                }
            } else {
                luaValueArr = new LuaValue[length];
                while (i < length) {
                    luaValueArr[i] = CoerceJavaToLua.coerce(objArr[i]);
                    i++;
                }
            }
            return CoerceLuaToJava.coerce(luaValue.invoke(luaValueArr).arg1(), method.getReturnType());
        }
    }
}
