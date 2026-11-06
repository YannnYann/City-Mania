package vm2;

import java.lang.ref.WeakReference;
import vm2.LuaTable;

/* JADX INFO: loaded from: classes6.dex */
public class WeakTable implements Metatable {
    private LuaValue backing;
    private boolean weakkeys;
    private boolean weakvalues;

    public static LuaTable make(boolean z, boolean z2) {
        LuaString luaStringValueOf;
        if (z && z2) {
            luaStringValueOf = LuaString.valueOf("kv");
        } else if (z) {
            luaStringValueOf = LuaString.valueOf("k");
        } else if (z2) {
            luaStringValueOf = LuaString.valueOf("v");
        } else {
            return LuaValue.tableOf();
        }
        LuaTable luaTableTableOf = LuaValue.tableOf();
        luaTableTableOf.setmetatable(LuaValue.tableOf(new LuaValue[]{LuaValue.MODE, luaStringValueOf}));
        return luaTableTableOf;
    }

    public WeakTable(boolean z, boolean z2, LuaValue luaValue) {
        this.weakkeys = z;
        this.weakvalues = z2;
        this.backing = luaValue;
    }

    @Override // vm2.Metatable
    public boolean useWeakKeys() {
        return this.weakkeys;
    }

    @Override // vm2.Metatable
    public boolean useWeakValues() {
        return this.weakvalues;
    }

    @Override // vm2.Metatable
    public LuaValue toLuaValue() {
        return this.backing;
    }

    @Override // vm2.Metatable
    public LuaTable.Slot entry(LuaValue luaValue, LuaValue luaValue2) {
        LuaValue luaValueStrongvalue = luaValue2.strongvalue();
        if (luaValueStrongvalue == null) {
            return null;
        }
        if (this.weakkeys && !luaValue.isnumber() && !luaValue.isstring() && !luaValue.isboolean()) {
            if (this.weakvalues && !luaValueStrongvalue.isnumber() && !luaValueStrongvalue.isstring() && !luaValueStrongvalue.isboolean()) {
                return new WeakKeyAndValueSlot(luaValue, luaValueStrongvalue, null);
            }
            return new WeakKeySlot(luaValue, luaValueStrongvalue, null);
        }
        if (this.weakvalues && !luaValueStrongvalue.isnumber() && !luaValueStrongvalue.isstring() && !luaValueStrongvalue.isboolean()) {
            return new WeakValueSlot(luaValue, luaValueStrongvalue, null);
        }
        return LuaTable.defaultEntry(luaValue, luaValueStrongvalue);
    }

    public static abstract class WeakSlot implements LuaTable.Slot {
        protected Object key;
        protected LuaTable.Slot next;
        protected Object value;

        @Override // vm2.LuaTable.Slot
        public int arraykey(int i) {
            return 0;
        }

        public abstract WeakSlot copy(LuaTable.Slot slot);

        @Override // vm2.LuaTable.Slot
        public abstract int keyindex(int i);

        public abstract LuaTable.Slot set(LuaValue luaValue);

        public WeakSlot(Object obj, Object obj2, LuaTable.Slot slot) {
            this.key = obj;
            this.value = obj2;
            this.next = slot;
        }

        @Override // vm2.LuaTable.Slot
        public LuaTable.StrongSlot first() {
            LuaValue luaValueStrongkey = strongkey();
            LuaValue luaValueStrongvalue = strongvalue();
            if (luaValueStrongkey != null && luaValueStrongvalue != null) {
                return new LuaTable.NormalEntry(luaValueStrongkey, luaValueStrongvalue);
            }
            this.key = null;
            this.value = null;
            return null;
        }

        @Override // vm2.LuaTable.Slot
        public LuaTable.StrongSlot find(LuaValue luaValue) {
            LuaTable.StrongSlot strongSlotFirst = first();
            if (strongSlotFirst != null) {
                return strongSlotFirst.find(luaValue);
            }
            return null;
        }

        @Override // vm2.LuaTable.Slot
        public boolean keyeq(LuaValue luaValue) {
            LuaTable.StrongSlot strongSlotFirst = first();
            return strongSlotFirst != null && strongSlotFirst.keyeq(luaValue);
        }

        @Override // vm2.LuaTable.Slot
        public LuaTable.Slot rest() {
            return this.next;
        }

        @Override // vm2.LuaTable.Slot
        public LuaTable.Slot set(LuaTable.StrongSlot strongSlot, LuaValue luaValue) {
            LuaValue luaValueStrongkey = strongkey();
            if (luaValueStrongkey != null && strongSlot.find(luaValueStrongkey) != null) {
                return set(luaValue);
            }
            if (luaValueStrongkey != null) {
                this.next = this.next.set(strongSlot, luaValue);
                return this;
            }
            return this.next.set(strongSlot, luaValue);
        }

        @Override // vm2.LuaTable.Slot
        public LuaTable.Slot add(LuaTable.Slot slot) {
            LuaTable.Slot slot2 = this.next;
            if (slot2 != null) {
                slot = slot2.add(slot);
            }
            this.next = slot;
            return (strongkey() == null || strongvalue() == null) ? this.next : this;
        }

        @Override // vm2.LuaTable.Slot
        public LuaTable.Slot remove(LuaTable.StrongSlot strongSlot) {
            LuaValue luaValueStrongkey = strongkey();
            if (luaValueStrongkey == null) {
                return this.next.remove(strongSlot);
            }
            if (strongSlot.keyeq(luaValueStrongkey)) {
                this.value = null;
                return this;
            }
            this.next = this.next.remove(strongSlot);
            return this;
        }

        @Override // vm2.LuaTable.Slot
        public LuaTable.Slot relink(LuaTable.Slot slot) {
            return (strongkey() == null || strongvalue() == null) ? slot : (slot == null && this.next == null) ? this : copy(slot);
        }

        public LuaValue strongkey() {
            return (LuaValue) this.key;
        }

        public LuaValue strongvalue() {
            return (LuaValue) this.value;
        }
    }

    public static class WeakKeySlot extends WeakSlot {
        private final int keyhash;

        public WeakKeySlot(LuaValue luaValue, LuaValue luaValue2, LuaTable.Slot slot) {
            super(WeakTable.weaken(luaValue), luaValue2, slot);
            this.keyhash = luaValue.hashCode();
        }

        public WeakKeySlot(WeakKeySlot weakKeySlot, LuaTable.Slot slot) {
            super(weakKeySlot.key, weakKeySlot.value, slot);
            this.keyhash = weakKeySlot.keyhash;
        }

        @Override // vm2.WeakTable.WeakSlot, vm2.LuaTable.Slot
        public int keyindex(int i) {
            return LuaTable.hashmod(this.keyhash, i);
        }

        @Override // vm2.WeakTable.WeakSlot
        public LuaTable.Slot set(LuaValue luaValue) {
            this.value = luaValue;
            return this;
        }

        @Override // vm2.WeakTable.WeakSlot
        public LuaValue strongkey() {
            return WeakTable.strengthen(this.key);
        }

        @Override // vm2.WeakTable.WeakSlot
        public WeakSlot copy(LuaTable.Slot slot) {
            return new WeakKeySlot(this, slot);
        }
    }

    public static class WeakValueSlot extends WeakSlot {
        public WeakValueSlot(LuaValue luaValue, LuaValue luaValue2, LuaTable.Slot slot) {
            super(luaValue, WeakTable.weaken(luaValue2), slot);
        }

        public WeakValueSlot(WeakValueSlot weakValueSlot, LuaTable.Slot slot) {
            super(weakValueSlot.key, weakValueSlot.value, slot);
        }

        @Override // vm2.WeakTable.WeakSlot, vm2.LuaTable.Slot
        public int keyindex(int i) {
            return LuaTable.hashSlot(strongkey(), i);
        }

        @Override // vm2.WeakTable.WeakSlot
        public LuaTable.Slot set(LuaValue luaValue) {
            this.value = WeakTable.weaken(luaValue);
            return this;
        }

        @Override // vm2.WeakTable.WeakSlot
        public LuaValue strongvalue() {
            return WeakTable.strengthen(this.value);
        }

        @Override // vm2.WeakTable.WeakSlot
        public WeakSlot copy(LuaTable.Slot slot) {
            return new WeakValueSlot(this, slot);
        }
    }

    public static class WeakKeyAndValueSlot extends WeakSlot {
        private final int keyhash;

        public WeakKeyAndValueSlot(LuaValue luaValue, LuaValue luaValue2, LuaTable.Slot slot) {
            super(WeakTable.weaken(luaValue), WeakTable.weaken(luaValue2), slot);
            this.keyhash = luaValue.hashCode();
        }

        public WeakKeyAndValueSlot(WeakKeyAndValueSlot weakKeyAndValueSlot, LuaTable.Slot slot) {
            super(weakKeyAndValueSlot.key, weakKeyAndValueSlot.value, slot);
            this.keyhash = weakKeyAndValueSlot.keyhash;
        }

        @Override // vm2.WeakTable.WeakSlot, vm2.LuaTable.Slot
        public int keyindex(int i) {
            return LuaTable.hashmod(this.keyhash, i);
        }

        @Override // vm2.WeakTable.WeakSlot
        public LuaTable.Slot set(LuaValue luaValue) {
            this.value = WeakTable.weaken(luaValue);
            return this;
        }

        @Override // vm2.WeakTable.WeakSlot
        public LuaValue strongkey() {
            return WeakTable.strengthen(this.key);
        }

        @Override // vm2.WeakTable.WeakSlot
        public LuaValue strongvalue() {
            return WeakTable.strengthen(this.value);
        }

        @Override // vm2.WeakTable.WeakSlot
        public WeakSlot copy(LuaTable.Slot slot) {
            return new WeakKeyAndValueSlot(this, slot);
        }
    }

    public static LuaValue weaken(LuaValue luaValue) {
        int iType = luaValue.type();
        if (iType != 3 && iType != 9) {
            if (iType == 6) {
                return new WeakUserdata(luaValue);
            }
            if (iType != 7) {
                return luaValue;
            }
        }
        return new WeakValue(luaValue);
    }

    public static LuaValue strengthen(Object obj) {
        if (obj instanceof WeakReference) {
            obj = ((WeakReference) obj).get();
        }
        if (obj instanceof WeakValue) {
            return ((WeakValue) obj).strongvalue();
        }
        return (LuaValue) obj;
    }

    public static class WeakValue extends LuaValue {
        WeakReference ref;

        public WeakValue(LuaValue luaValue) {
            this.ref = new WeakReference(luaValue);
        }

        @Override // vm2.LuaValue
        public int type() {
            illegal("type", "weak value");
            return 0;
        }

        @Override // vm2.LuaValue
        public String typename() {
            illegal("typename", "weak value");
            return null;
        }

        @Override // vm2.LuaValue, vm2.Varargs
        public String toString() {
            return "weak<" + this.ref.get() + ">";
        }

        @Override // vm2.LuaValue
        public LuaValue strongvalue() {
            return (LuaValue) this.ref.get();
        }

        @Override // vm2.LuaValue
        public boolean raweq(LuaValue luaValue) {
            Object obj = this.ref.get();
            return obj != null && luaValue.raweq((LuaValue) obj);
        }
    }

    public static final class WeakUserdata extends WeakValue {
        private final LuaValue mt;
        private final WeakReference ob;

        private WeakUserdata(LuaValue luaValue) {
            super(luaValue);
            this.ob = new WeakReference(luaValue.touserdata());
            this.mt = luaValue.getmetatable();
        }

        @Override // vm2.WeakTable.WeakValue, vm2.LuaValue
        public LuaValue strongvalue() {
            Object obj = this.ref.get();
            if (obj != null) {
                return (LuaValue) obj;
            }
            Object obj2 = this.ob.get();
            if (obj2 == null) {
                return null;
            }
            LuaUserdata luaUserdataUserdataOf = LuaValue.userdataOf(obj2, this.mt);
            this.ref = new WeakReference(luaUserdataUserdataOf);
            return luaUserdataUserdataOf;
        }
    }

    @Override // vm2.Metatable
    public LuaValue wrap(LuaValue luaValue) {
        return this.weakvalues ? weaken(luaValue) : luaValue;
    }

    @Override // vm2.Metatable
    public LuaValue arrayget(LuaValue[] luaValueArr, int i) {
        LuaValue luaValueStrengthen = luaValueArr[i];
        if (luaValueStrengthen != null && (luaValueStrengthen = strengthen(luaValueStrengthen)) == null) {
            luaValueArr[i] = null;
        }
        return luaValueStrengthen;
    }
}
