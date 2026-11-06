package vm2.lib.jse;

import vm2.lib.StringLib;

/* JADX INFO: loaded from: classes6.dex */
public class JseStringLib extends StringLib {
    @Override // vm2.lib.StringLib
    public String format(String str, double d) {
        try {
            return String.format(str, Double.valueOf(d));
        } catch (Throwable unused) {
            return super.format(str, d);
        }
    }
}
