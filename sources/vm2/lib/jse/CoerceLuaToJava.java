package vm2.lib.jse;

import java.lang.reflect.Array;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import vm2.LuaString;
import vm2.LuaValue;

/* JADX INFO: loaded from: classes6.dex */
public class CoerceLuaToJava {
    static final Map COERCIONS;
    static int SCORE_NULL_VALUE = 16;
    static int SCORE_UNCOERCIBLE = 65536;
    static int SCORE_WRONG_TYPE = 256;

    public interface Coercion {
        Object coerce(LuaValue luaValue);

        int score(LuaValue luaValue);
    }

    public static Object coerce(LuaValue luaValue, Class cls) {
        return getCoercion(cls).coerce(luaValue);
    }

    static {
        Map mapSynchronizedMap = Collections.synchronizedMap(new HashMap());
        COERCIONS = mapSynchronizedMap;
        BoolCoercion boolCoercion = new BoolCoercion();
        NumericCoercion numericCoercion = new NumericCoercion(0);
        NumericCoercion numericCoercion2 = new NumericCoercion(1);
        NumericCoercion numericCoercion3 = new NumericCoercion(2);
        NumericCoercion numericCoercion4 = new NumericCoercion(3);
        NumericCoercion numericCoercion5 = new NumericCoercion(4);
        NumericCoercion numericCoercion6 = new NumericCoercion(5);
        NumericCoercion numericCoercion7 = new NumericCoercion(6);
        StringCoercion stringCoercion = new StringCoercion(0);
        StringCoercion stringCoercion2 = new StringCoercion(1);
        mapSynchronizedMap.put(Boolean.TYPE, boolCoercion);
        mapSynchronizedMap.put(Boolean.class, boolCoercion);
        mapSynchronizedMap.put(Byte.TYPE, numericCoercion);
        mapSynchronizedMap.put(Byte.class, numericCoercion);
        mapSynchronizedMap.put(Character.TYPE, numericCoercion2);
        mapSynchronizedMap.put(Character.class, numericCoercion2);
        mapSynchronizedMap.put(Short.TYPE, numericCoercion3);
        mapSynchronizedMap.put(Short.class, numericCoercion3);
        mapSynchronizedMap.put(Integer.TYPE, numericCoercion4);
        mapSynchronizedMap.put(Integer.class, numericCoercion4);
        mapSynchronizedMap.put(Long.TYPE, numericCoercion5);
        mapSynchronizedMap.put(Long.class, numericCoercion5);
        mapSynchronizedMap.put(Float.TYPE, numericCoercion6);
        mapSynchronizedMap.put(Float.class, numericCoercion6);
        mapSynchronizedMap.put(Double.TYPE, numericCoercion7);
        mapSynchronizedMap.put(Double.class, numericCoercion7);
        mapSynchronizedMap.put(String.class, stringCoercion);
        mapSynchronizedMap.put(byte[].class, stringCoercion2);
    }

    public static final class BoolCoercion implements Coercion {
        public String toString() {
            return "BoolCoercion()";
        }

        @Override // vm2.lib.jse.CoerceLuaToJava.Coercion
        public int score(LuaValue luaValue) {
            return luaValue.type() != 2 ? 1 : 0;
        }

        @Override // vm2.lib.jse.CoerceLuaToJava.Coercion
        public Object coerce(LuaValue luaValue) {
            return luaValue.toboolean() ? Boolean.TRUE : Boolean.FALSE;
        }
    }

    public static final class NumericCoercion implements Coercion {
        static final int TARGET_TYPE_BYTE = 0;
        static final int TARGET_TYPE_CHAR = 1;
        static final int TARGET_TYPE_DOUBLE = 6;
        static final int TARGET_TYPE_FLOAT = 5;
        static final int TARGET_TYPE_INT = 3;
        static final int TARGET_TYPE_LONG = 4;
        static final int TARGET_TYPE_SHORT = 2;
        static final String[] TYPE_NAMES = {"byte", "char", "short", "int", "long", "float", "double"};
        final int targetType;

        public String toString() {
            return "NumericCoercion(" + TYPE_NAMES[this.targetType] + ")";
        }

        public NumericCoercion(int i) {
            this.targetType = i;
        }

        @Override // vm2.lib.jse.CoerceLuaToJava.Coercion
        public int score(LuaValue luaValue) {
            int i;
            if (luaValue.type() == 5) {
                luaValue = luaValue.tonumber();
                if (luaValue.isnil()) {
                    return CoerceLuaToJava.SCORE_UNCOERCIBLE;
                }
                i = 4;
            } else {
                i = 0;
            }
            if (luaValue.isint()) {
                switch (this.targetType) {
                    case 0:
                        int i2 = luaValue.toint();
                        return i + (i2 != ((byte) i2) ? CoerceLuaToJava.SCORE_WRONG_TYPE : 0);
                    case 1:
                        int i3 = luaValue.toint();
                        if (i3 == ((byte) i3)) {
                            i = 1;
                        } else if (i3 != ((char) i3)) {
                            i = CoerceLuaToJava.SCORE_WRONG_TYPE;
                        }
                        return i + i;
                    case 2:
                        int i4 = luaValue.toint();
                        if (i4 == ((byte) i4)) {
                            i = 1;
                        } else if (i4 != ((short) i4)) {
                            i = CoerceLuaToJava.SCORE_WRONG_TYPE;
                        }
                        return i + i;
                    case 3:
                        int i5 = luaValue.toint();
                        if (i5 == ((byte) i5)) {
                            i = 2;
                        } else if (i5 == ((char) i5) || i5 == ((short) i5)) {
                            i = 1;
                        }
                        return i + i;
                    case 4:
                        return i + 1;
                    case 5:
                        return i + 1;
                    case 6:
                        return i + 2;
                    default:
                        return CoerceLuaToJava.SCORE_WRONG_TYPE;
                }
            }
            if (luaValue.isnumber()) {
                switch (this.targetType) {
                    case 0:
                        return CoerceLuaToJava.SCORE_WRONG_TYPE;
                    case 1:
                        return CoerceLuaToJava.SCORE_WRONG_TYPE;
                    case 2:
                        return CoerceLuaToJava.SCORE_WRONG_TYPE;
                    case 3:
                        return CoerceLuaToJava.SCORE_WRONG_TYPE;
                    case 4:
                        double d = luaValue.todouble();
                        return i + (d != ((double) ((long) d)) ? CoerceLuaToJava.SCORE_WRONG_TYPE : 0);
                    case 5:
                        double d2 = luaValue.todouble();
                        return i + (d2 != ((double) ((float) d2)) ? CoerceLuaToJava.SCORE_WRONG_TYPE : 0);
                    case 6:
                        double d3 = luaValue.todouble();
                        return i + ((d3 == ((double) ((long) d3)) || d3 == ((double) ((float) d3))) ? 1 : 0);
                    default:
                        return CoerceLuaToJava.SCORE_WRONG_TYPE;
                }
            }
            return CoerceLuaToJava.SCORE_UNCOERCIBLE;
        }

        @Override // vm2.lib.jse.CoerceLuaToJava.Coercion
        public Object coerce(LuaValue luaValue) {
            switch (this.targetType) {
                case 0:
                    return Byte.valueOf((byte) luaValue.toint());
                case 1:
                    return Character.valueOf((char) luaValue.toint());
                case 2:
                    return Short.valueOf((short) luaValue.toint());
                case 3:
                    return Integer.valueOf(luaValue.toint());
                case 4:
                    return Long.valueOf((long) luaValue.todouble());
                case 5:
                    return Float.valueOf((float) luaValue.todouble());
                case 6:
                    return Double.valueOf(luaValue.todouble());
                default:
                    return null;
            }
        }
    }

    public static final class StringCoercion implements Coercion {
        public static final int TARGET_TYPE_BYTES = 1;
        public static final int TARGET_TYPE_STRING = 0;
        final int targetType;

        public StringCoercion(int i) {
            this.targetType = i;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("StringCoercion(");
            sb.append(this.targetType == 0 ? "String" : "byte[]");
            sb.append(")");
            return sb.toString();
        }

        @Override // vm2.lib.jse.CoerceLuaToJava.Coercion
        public int score(LuaValue luaValue) {
            int iType = luaValue.type();
            if (iType == 1) {
                return CoerceLuaToJava.SCORE_NULL_VALUE;
            }
            if (iType != 5) {
                return this.targetType == 0 ? CoerceLuaToJava.SCORE_WRONG_TYPE : CoerceLuaToJava.SCORE_UNCOERCIBLE;
            }
            if (luaValue.checkstring().isValidUtf8()) {
                return this.targetType == 0 ? 0 : 1;
            }
            if (this.targetType == 1) {
                return 0;
            }
            return CoerceLuaToJava.SCORE_WRONG_TYPE;
        }

        @Override // vm2.lib.jse.CoerceLuaToJava.Coercion
        public Object coerce(LuaValue luaValue) {
            if (luaValue.isnil()) {
                return null;
            }
            if (this.targetType == 0) {
                return luaValue.tojstring();
            }
            LuaString luaStringCheckstring = luaValue.checkstring();
            int i = luaStringCheckstring.m_length;
            byte[] bArr = new byte[i];
            luaStringCheckstring.copyInto(0, bArr, 0, i);
            return bArr;
        }
    }

    public static final class ArrayCoercion implements Coercion {
        final Coercion componentCoercion;
        final Class componentType;

        public ArrayCoercion(Class cls) {
            this.componentType = cls;
            this.componentCoercion = CoerceLuaToJava.getCoercion(cls);
        }

        public String toString() {
            return "ArrayCoercion(" + this.componentType.getName() + ")";
        }

        @Override // vm2.lib.jse.CoerceLuaToJava.Coercion
        public int score(LuaValue luaValue) {
            int iType = luaValue.type();
            if (iType == 1) {
                return CoerceLuaToJava.SCORE_NULL_VALUE;
            }
            if (iType != 3) {
                if (iType == 6) {
                    return CoerceLuaToJava.inheritanceLevels(this.componentType, luaValue.touserdata().getClass().getComponentType());
                }
                return CoerceLuaToJava.SCORE_UNCOERCIBLE;
            }
            if (luaValue.length() == 0) {
                return 0;
            }
            return this.componentCoercion.score(luaValue.get(1));
        }

        @Override // vm2.lib.jse.CoerceLuaToJava.Coercion
        public Object coerce(LuaValue luaValue) {
            int iType = luaValue.type();
            if (iType != 3) {
                if (iType != 6) {
                    return null;
                }
                return luaValue.touserdata();
            }
            int length = luaValue.length();
            Object objNewInstance = Array.newInstance((Class<?>) this.componentType, length);
            int i = 0;
            while (i < length) {
                int i2 = i + 1;
                Array.set(objNewInstance, i, this.componentCoercion.coerce(luaValue.get(i2)));
                i = i2;
            }
            return objNewInstance;
        }
    }

    public static final int inheritanceLevels(Class cls, Class cls2) {
        if (cls2 == null) {
            return SCORE_UNCOERCIBLE;
        }
        if (cls == cls2) {
            return 0;
        }
        int iMin = Math.min(SCORE_UNCOERCIBLE, inheritanceLevels(cls, cls2.getSuperclass()) + 1);
        for (Class<?> cls3 : cls2.getInterfaces()) {
            iMin = Math.min(iMin, inheritanceLevels(cls, cls3) + 1);
        }
        return iMin;
    }

    public static final class ObjectCoercion implements Coercion {
        final Class targetType;

        public ObjectCoercion(Class cls) {
            this.targetType = cls;
        }

        public String toString() {
            return "ObjectCoercion(" + this.targetType.getName() + ")";
        }

        @Override // vm2.lib.jse.CoerceLuaToJava.Coercion
        public int score(LuaValue luaValue) {
            int iType = luaValue.type();
            if (iType == 1) {
                return CoerceLuaToJava.SCORE_NULL_VALUE;
            }
            if (iType == 2) {
                return CoerceLuaToJava.inheritanceLevels(this.targetType, Boolean.class);
            }
            if (iType == 4) {
                return CoerceLuaToJava.inheritanceLevels(this.targetType, luaValue.isint() ? Integer.class : Double.class);
            }
            if (iType == 5) {
                return CoerceLuaToJava.inheritanceLevels(this.targetType, String.class);
            }
            if (iType == 6) {
                return CoerceLuaToJava.inheritanceLevels(this.targetType, luaValue.touserdata().getClass());
            }
            return CoerceLuaToJava.inheritanceLevels(this.targetType, luaValue.getClass());
        }

        @Override // vm2.lib.jse.CoerceLuaToJava.Coercion
        public Object coerce(LuaValue luaValue) {
            int iType = luaValue.type();
            if (iType == 1) {
                return null;
            }
            if (iType == 2) {
                return luaValue.toboolean() ? Boolean.TRUE : Boolean.FALSE;
            }
            if (iType == 4) {
                return Double.valueOf(luaValue.isint() ? luaValue.toint() : luaValue.todouble());
            }
            if (iType != 5) {
                return iType != 6 ? luaValue : luaValue.optuserdata(this.targetType, (Object) null);
            }
            return luaValue.tojstring();
        }
    }

    public static Coercion getCoercion(Class cls) {
        Coercion objectCoercion;
        Map map = COERCIONS;
        Coercion coercion = (Coercion) map.get(cls);
        if (coercion != null) {
            return coercion;
        }
        if (cls.isArray()) {
            cls.getComponentType();
            objectCoercion = new ArrayCoercion(cls.getComponentType());
        } else {
            objectCoercion = new ObjectCoercion(cls);
        }
        map.put(cls, objectCoercion);
        return objectCoercion;
    }
}
