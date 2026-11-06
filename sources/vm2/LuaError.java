package vm2;

/* JADX INFO: loaded from: classes6.dex */
public class LuaError extends RuntimeException {
    private static final long serialVersionUID = 1;
    protected Throwable cause;
    protected String fileline;
    protected int level;
    private LuaValue object;
    protected String traceback;

    @Override // java.lang.Throwable
    public String getMessage() {
        String str = this.traceback;
        if (str != null) {
            return str;
        }
        String message = super.getMessage();
        if (message == null) {
            return null;
        }
        if (this.fileline == null) {
            return message;
        }
        return this.fileline + " " + message;
    }

    public LuaValue getMessageObject() {
        LuaValue luaValue = this.object;
        if (luaValue != null) {
            return luaValue;
        }
        String message = getMessage();
        if (message != null) {
            return LuaValue.valueOf(message);
        }
        return null;
    }

    public LuaError(Throwable th) {
        super("vm error: " + th);
        this.cause = th;
        this.level = 1;
    }

    public LuaError(String str) {
        super(str);
        this.level = 1;
    }

    public LuaError(String str, int i) {
        super(str);
        this.level = i;
    }

    public LuaError(LuaValue luaValue) {
        super(luaValue.tojstring());
        this.object = luaValue;
        this.level = 1;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }
}
