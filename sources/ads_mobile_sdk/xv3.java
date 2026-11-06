package ads_mobile_sdk;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class xv3 extends RuntimeException {
    private final List<String> a;

    public np1 a() {
        return new np1(getMessage());
    }

    public xv3(tw1 tw1Var) {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
        this.a = null;
    }
}
