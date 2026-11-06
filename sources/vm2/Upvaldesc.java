package vm2;

/* JADX INFO: loaded from: classes6.dex */
public class Upvaldesc {
    public final short idx;
    public final boolean instack;
    public LuaString name;

    public Upvaldesc(LuaString luaString, boolean z, int i) {
        this.name = luaString;
        this.instack = z;
        this.idx = (short) i;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append((int) this.idx);
        sb.append(this.instack ? " instack " : " closed ");
        sb.append(String.valueOf(this.name));
        return sb.toString();
    }
}
