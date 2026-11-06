package vm2.lib.jse;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import vm2.LuaDouble;
import vm2.LuaInteger;
import vm2.LuaString;
import vm2.LuaValue;

/* JADX INFO: loaded from: classes6.dex */
public class CoerceJavaToLua {
    static final Map COERCIONS;
    static final Coercion arrayCoercion;
    static final Coercion instanceCoercion;
    static final Coercion luaCoercion;

    public interface Coercion {
        LuaValue coerce(Object obj);
    }

    public static final class BoolCoercion implements Coercion {
        private BoolCoercion() {
        }

        @Override // vm2.lib.jse.CoerceJavaToLua.Coercion
        public LuaValue coerce(Object obj) {
            return ((Boolean) obj).booleanValue() ? LuaValue.TRUE : LuaValue.FALSE;
        }
    }

    public static final class IntCoercion implements Coercion {
        private IntCoercion() {
        }

        @Override // vm2.lib.jse.CoerceJavaToLua.Coercion
        public LuaValue coerce(Object obj) {
            return LuaInteger.valueOf(((Number) obj).intValue());
        }
    }

    public static final class CharCoercion implements Coercion {
        private CharCoercion() {
        }

        @Override // vm2.lib.jse.CoerceJavaToLua.Coercion
        public LuaValue coerce(Object obj) {
            return LuaInteger.valueOf((int) ((Character) obj).charValue());
        }
    }

    public static final class DoubleCoercion implements Coercion {
        private DoubleCoercion() {
        }

        @Override // vm2.lib.jse.CoerceJavaToLua.Coercion
        public LuaValue coerce(Object obj) {
            return LuaDouble.valueOf(((Number) obj).doubleValue());
        }
    }

    public static final class StringCoercion implements Coercion {
        private StringCoercion() {
        }

        @Override // vm2.lib.jse.CoerceJavaToLua.Coercion
        public LuaValue coerce(Object obj) {
            return LuaString.valueOf(obj.toString());
        }
    }

    public static final class BytesCoercion implements Coercion {
        private BytesCoercion() {
        }

        @Override // vm2.lib.jse.CoerceJavaToLua.Coercion
        public LuaValue coerce(Object obj) {
            return LuaValue.valueOf((byte[]) obj);
        }
    }

    public static final class ClassCoercion implements Coercion {
        private ClassCoercion() {
        }

        @Override // vm2.lib.jse.CoerceJavaToLua.Coercion
        public LuaValue coerce(Object obj) {
            return JavaClass.forClass((Class) obj);
        }
    }

    public static final class InstanceCoercion implements Coercion {
        private InstanceCoercion() {
        }

        @Override // vm2.lib.jse.CoerceJavaToLua.Coercion
        public LuaValue coerce(Object obj) {
            return new JavaInstance(obj);
        }
    }

    public static final class ArrayCoercion implements Coercion {
        private ArrayCoercion() {
        }

        @Override // vm2.lib.jse.CoerceJavaToLua.Coercion
        public LuaValue coerce(Object obj) {
            return new JavaArray(obj);
        }
    }

    public static final class LuaCoercion implements Coercion {
        private LuaCoercion() {
        }

        @Override // vm2.lib.jse.CoerceJavaToLua.Coercion
        public LuaValue coerce(Object obj) {
            return (LuaValue) obj;
        }
    }

    static {
        Map mapSynchronizedMap = Collections.synchronizedMap(new HashMap());
        COERCIONS = mapSynchronizedMap;
        BoolCoercion boolCoercion = new BoolCoercion();
        IntCoercion intCoercion = new IntCoercion();
        CharCoercion charCoercion = new CharCoercion();
        DoubleCoercion doubleCoercion = new DoubleCoercion();
        StringCoercion stringCoercion = new StringCoercion();
        BytesCoercion bytesCoercion = new BytesCoercion();
        ClassCoercion classCoercion = new ClassCoercion();
        mapSynchronizedMap.put(Boolean.class, boolCoercion);
        mapSynchronizedMap.put(Byte.class, intCoercion);
        mapSynchronizedMap.put(Character.class, charCoercion);
        mapSynchronizedMap.put(Short.class, intCoercion);
        mapSynchronizedMap.put(Integer.class, intCoercion);
        mapSynchronizedMap.put(Long.class, doubleCoercion);
        mapSynchronizedMap.put(Float.class, doubleCoercion);
        mapSynchronizedMap.put(Double.class, doubleCoercion);
        mapSynchronizedMap.put(String.class, stringCoercion);
        mapSynchronizedMap.put(byte[].class, bytesCoercion);
        mapSynchronizedMap.put(Class.class, classCoercion);
        instanceCoercion = new InstanceCoercion();
        arrayCoercion = new ArrayCoercion();
        luaCoercion = new LuaCoercion();
    }

    public static LuaValue coerce(Object obj) {
        if (obj == null) {
            return LuaValue.NIL;
        }
        Class<?> cls = obj.getClass();
        Map map = COERCIONS;
        Coercion coercion = (Coercion) map.get(cls);
        if (coercion == null) {
            if (cls.isArray()) {
                coercion = arrayCoercion;
            } else {
                coercion = obj instanceof LuaValue ? luaCoercion : instanceCoercion;
            }
            map.put(cls, coercion);
        }
        return coercion.coerce(obj);
    }
}
