package vm2.lib.jse;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import vm2.LuaError;
import vm2.LuaFunction;
import vm2.LuaValue;
import vm2.Varargs;

/* JADX INFO: loaded from: classes6.dex */
class JavaMethod extends JavaMember {
    static final Map methods = Collections.synchronizedMap(new HashMap());
    final Method method;

    public static JavaMethod forMethod(Method method) {
        Map map = methods;
        JavaMethod javaMethod = (JavaMethod) map.get(method);
        if (javaMethod != null) {
            return javaMethod;
        }
        JavaMethod javaMethod2 = new JavaMethod(method);
        map.put(method, javaMethod2);
        return javaMethod2;
    }

    public static LuaFunction forMethods(JavaMethod[] javaMethodArr) {
        return new Overload(javaMethodArr);
    }

    private JavaMethod(Method method) {
        super(method.getParameterTypes(), method.getModifiers());
        this.method = method;
        try {
            if (method.isAccessible()) {
                return;
            }
            method.setAccessible(true);
        } catch (SecurityException unused) {
        }
    }

    @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
    public LuaValue call() {
        return LuaValue.error("method cannot be called without instance");
    }

    @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
    public LuaValue call(LuaValue luaValue) {
        return invokeMethod(luaValue.checkuserdata(), LuaValue.NONE);
    }

    @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        return invokeMethod(luaValue.checkuserdata(), luaValue2);
    }

    @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
        return invokeMethod(luaValue.checkuserdata(), LuaValue.varargsOf(luaValue2, luaValue3));
    }

    @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
    public Varargs invoke(Varargs varargs) {
        return invokeMethod(varargs.checkuserdata(1), varargs.subargs(2));
    }

    public LuaValue invokeMethod(Object obj, Varargs varargs) {
        try {
            return CoerceJavaToLua.coerce(this.method.invoke(obj, convertArgs(varargs)));
        } catch (InvocationTargetException e) {
            throw new LuaError(e.getTargetException());
        } catch (Exception e2) {
            return LuaValue.error("coercion error " + e2);
        }
    }

    public static class Overload extends LuaFunction {
        final JavaMethod[] methods;

        public Overload(JavaMethod[] javaMethodArr) {
            this.methods = javaMethodArr;
        }

        @Override // vm2.LuaValue
        public LuaValue call() {
            return LuaValue.error("method cannot be called without instance");
        }

        @Override // vm2.LuaValue
        public LuaValue call(LuaValue luaValue) {
            return invokeBestMethod(luaValue.checkuserdata(), LuaValue.NONE);
        }

        @Override // vm2.LuaValue
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
            return invokeBestMethod(luaValue.checkuserdata(), luaValue2);
        }

        @Override // vm2.LuaValue
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
            return invokeBestMethod(luaValue.checkuserdata(), LuaValue.varargsOf(luaValue2, luaValue3));
        }

        @Override // vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            return invokeBestMethod(varargs.checkuserdata(1), varargs.subargs(2));
        }

        private LuaValue invokeBestMethod(Object obj, Varargs varargs) {
            int i = CoerceLuaToJava.SCORE_UNCOERCIBLE;
            JavaMethod javaMethod = null;
            int i2 = 0;
            while (true) {
                JavaMethod[] javaMethodArr = this.methods;
                if (i2 >= javaMethodArr.length) {
                    break;
                }
                int iScore = javaMethodArr[i2].score(varargs);
                if (iScore < i) {
                    javaMethod = this.methods[i2];
                    if (iScore == 0) {
                        break;
                    }
                    i = iScore;
                }
                i2++;
            }
            if (javaMethod == null) {
                LuaValue.error("no coercible public method");
            }
            return javaMethod.invokeMethod(obj, varargs);
        }
    }
}
