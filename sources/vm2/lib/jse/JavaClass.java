package vm2.lib.jse;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import vm2.LuaString;
import vm2.LuaValue;
import vm2.NoLuaAccess;
import vm2.lib.jse.CoerceJavaToLua;

/* JADX INFO: loaded from: classes6.dex */
public class JavaClass extends JavaInstance implements CoerceJavaToLua.Coercion {
    Map fields;
    Map innerclasses;
    Map methods;
    static final Map classes = Collections.synchronizedMap(new HashMap());
    static final LuaValue NEW = LuaValue.valueOf("new");

    @Override // vm2.lib.jse.CoerceJavaToLua.Coercion
    public LuaValue coerce(Object obj) {
        return this;
    }

    @Override // vm2.lib.jse.JavaInstance, vm2.LuaUserdata, vm2.LuaValue
    public /* bridge */ /* synthetic */ LuaValue get(LuaValue luaValue) {
        return super.get(luaValue);
    }

    @Override // vm2.lib.jse.JavaInstance, vm2.LuaUserdata, vm2.LuaValue
    public /* bridge */ /* synthetic */ void set(LuaValue luaValue, LuaValue luaValue2) {
        super.set(luaValue, luaValue2);
    }

    public static JavaClass forClass(Class cls) {
        Map map = classes;
        JavaClass javaClass = (JavaClass) map.get(cls);
        if (javaClass != null) {
            return javaClass;
        }
        JavaClass javaClass2 = new JavaClass(cls);
        map.put(cls, javaClass2);
        return javaClass2;
    }

    public JavaClass(Class cls) {
        super(cls);
        if (!canAccessClass(cls)) {
            throw new RuntimeException();
        }
        this.jclass = this;
    }

    private boolean canAccessField(Field field) {
        return field.getAnnotation(NoLuaAccess.class) == null;
    }

    private boolean canAccessMethod(Method method) {
        return method.getAnnotation(NoLuaAccess.class) == null;
    }

    private boolean canAccessClass(Class cls) {
        return cls.getAnnotation(NoLuaAccess.class) == null;
    }

    public Field getField(LuaValue luaValue) {
        if (this.fields == null) {
            HashMap map = new HashMap();
            for (Field field : ((Class) this.m_instance).getFields()) {
                if (Modifier.isPublic(field.getModifiers()) && canAccessField(field)) {
                    map.put(LuaValue.valueOf(field.getName()), field);
                    try {
                        if (!field.isAccessible()) {
                            field.setAccessible(true);
                        }
                    } catch (SecurityException unused) {
                    }
                }
            }
            this.fields = map;
        }
        return (Field) this.fields.get(luaValue);
    }

    public LuaValue getMethod(LuaValue luaValue) {
        Object objForMethods;
        if (this.methods == null) {
            HashMap map = new HashMap();
            for (Method method : ((Class) this.m_instance).getMethods()) {
                if (Modifier.isPublic(method.getModifiers()) && canAccessMethod(method)) {
                    String name = method.getName();
                    List arrayList = (List) map.get(name);
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                        map.put(name, arrayList);
                    }
                    arrayList.add(JavaMethod.forMethod(method));
                }
            }
            HashMap map2 = new HashMap();
            Constructor<?>[] constructors = ((Class) this.m_instance).getConstructors();
            ArrayList arrayList2 = new ArrayList();
            for (int i = 0; i < constructors.length; i++) {
                if (Modifier.isPublic(constructors[i].getModifiers())) {
                    arrayList2.add(JavaConstructor.forConstructor(constructors[i]));
                }
            }
            int size = arrayList2.size();
            if (size != 0) {
                if (size == 1) {
                    map2.put(NEW, arrayList2.get(0));
                } else {
                    map2.put(NEW, JavaConstructor.forConstructors((JavaConstructor[]) arrayList2.toArray(new JavaConstructor[arrayList2.size()])));
                }
            }
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                List list = (List) entry.getValue();
                LuaString luaStringValueOf = LuaValue.valueOf(str);
                if (list.size() == 1) {
                    objForMethods = list.get(0);
                } else {
                    objForMethods = JavaMethod.forMethods((JavaMethod[]) list.toArray(new JavaMethod[list.size()]));
                }
                map2.put(luaStringValueOf, objForMethods);
            }
            this.methods = map2;
        }
        return (LuaValue) this.methods.get(luaValue);
    }

    public Class getInnerClass(LuaValue luaValue) {
        if (this.innerclasses == null) {
            HashMap map = new HashMap();
            for (Class<?> cls : ((Class) this.m_instance).getClasses()) {
                if (canAccessClass(cls)) {
                    String name = cls.getName();
                    map.put(LuaValue.valueOf(name.substring(Math.max(name.lastIndexOf(36), name.lastIndexOf(46)) + 1)), cls);
                }
            }
            this.innerclasses = map;
        }
        return (Class) this.innerclasses.get(luaValue);
    }

    public LuaValue getConstructor() {
        return getMethod(NEW);
    }
}
