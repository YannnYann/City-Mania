package info.flowersoft.theotown.scripting;

/* JADX INFO: loaded from: classes4.dex */
public class ScriptException extends RuntimeException {
    public ScriptException(String str, Script script, Throwable th) {
        StringBuilder sb = new StringBuilder();
        sb.append("In script ");
        sb.append(script != null ? script.getName() : "<unknown>");
        sb.append(" in ");
        sb.append(str);
        sb.append(": ");
        super(sb.toString(), th);
    }
}
