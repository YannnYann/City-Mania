package vm2.lib.jse;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import vm2.LuaError;
import vm2.LuaValue;
import vm2.Varargs;
import vm2.lib.VarArgFunction;

/* JADX INFO: loaded from: classes6.dex */
class JavaConstructor extends JavaMember {
    static final Map constructors = Collections.synchronizedMap(new HashMap());
    final Constructor constructor;

    public static JavaConstructor forConstructor(Constructor constructor) {
        Map map = constructors;
        JavaConstructor javaConstructor = (JavaConstructor) map.get(constructor);
        if (javaConstructor != null) {
            return javaConstructor;
        }
        JavaConstructor javaConstructor2 = new JavaConstructor(constructor);
        map.put(constructor, javaConstructor2);
        return javaConstructor2;
    }

    public static LuaValue forConstructors(JavaConstructor[] javaConstructorArr) {
        return new Overload(javaConstructorArr);
    }

    private JavaConstructor(Constructor constructor) {
        super(constructor.getParameterTypes(), constructor.getModifiers());
        this.constructor = constructor;
    }

    @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
    public Varargs invoke(Varargs varargs) {
        try {
            return CoerceJavaToLua.coerce(this.constructor.newInstance(convertArgs(varargs)));
        } catch (InvocationTargetException e) {
            throw new LuaError(e.getTargetException());
        } catch (Exception e2) {
            return LuaValue.error("coercion error " + e2);
        }
    }

    public static class Overload extends VarArgFunction {
        final JavaConstructor[] constructors;

        public Overload(JavaConstructor[] javaConstructorArr) {
            this.constructors = javaConstructorArr;
        }

        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            int i = CoerceLuaToJava.SCORE_UNCOERCIBLE;
            JavaConstructor javaConstructor = null;
            int i2 = 0;
            while (true) {
                JavaConstructor[] javaConstructorArr = this.constructors;
                if (i2 >= javaConstructorArr.length) {
                    break;
                }
                int iScore = javaConstructorArr[i2].score(varargs);
                if (iScore < i) {
                    javaConstructor = this.constructors[i2];
                    if (iScore == 0) {
                        break;
                    }
                    i = iScore;
                }
                i2++;
            }
            if (javaConstructor == null) {
                LuaValue.error("no coercible public method");
            }
            return javaConstructor.invoke(varargs);
        }
    }
}
