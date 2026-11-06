package vm2;

/* JADX INFO: loaded from: classes6.dex */
public final class UpValue {
    LuaValue[] array;
    int index;

    public UpValue(LuaValue[] luaValueArr, int i) {
        this.array = luaValueArr;
        this.index = i;
    }

    public String toString() {
        return this.index + "/" + this.array.length + " " + this.array[this.index];
    }

    public String tojstring() {
        return this.array[this.index].tojstring();
    }

    public final LuaValue getValue() {
        return this.array[this.index];
    }

    public final void setValue(LuaValue luaValue) {
        this.array[this.index] = luaValue;
    }

    public final void close() {
        LuaValue[] luaValueArr = this.array;
        int i = this.index;
        this.array = new LuaValue[]{luaValueArr[i]};
        luaValueArr[i] = null;
        this.index = 0;
    }
}
