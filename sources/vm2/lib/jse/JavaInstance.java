package vm2.lib.jse;

import java.lang.reflect.Field;
import vm2.LuaError;
import vm2.LuaUserdata;
import vm2.LuaValue;

/* JADX INFO: loaded from: classes6.dex */
class JavaInstance extends LuaUserdata {
    JavaClass jclass;

    public JavaInstance(Object obj) {
        super(obj);
    }

    @Override // vm2.LuaUserdata, vm2.LuaValue
    public LuaValue get(LuaValue luaValue) {
        if (this.jclass == null) {
            this.jclass = JavaClass.forClass(this.m_instance.getClass());
        }
        Field field = this.jclass.getField(luaValue);
        if (field != null) {
            try {
                return CoerceJavaToLua.coerce(field.get(this.m_instance));
            } catch (Exception e) {
                throw new LuaError(e);
            }
        }
        LuaValue method = this.jclass.getMethod(luaValue);
        if (method != null) {
            return method;
        }
        Class innerClass = this.jclass.getInnerClass(luaValue);
        if (innerClass != null) {
            return JavaClass.forClass(innerClass);
        }
        return super.get(luaValue);
    }

    @Override // vm2.LuaUserdata, vm2.LuaValue
    public void set(LuaValue luaValue, LuaValue luaValue2) {
        if (this.jclass == null) {
            this.jclass = JavaClass.forClass(this.m_instance.getClass());
        }
        Field field = this.jclass.getField(luaValue);
        if (field != null) {
            try {
                field.set(this.m_instance, CoerceLuaToJava.coerce(luaValue2, field.getType()));
                return;
            } catch (Exception e) {
                throw new LuaError(e);
            }
        }
        super.set(luaValue, luaValue2);
    }
}
