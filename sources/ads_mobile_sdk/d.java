package ads_mobile_sdk;

import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class d {
    public final LinkedHashMap a;

    public final void a(String str, dw2 dw2Var) {
        LinkedHashMap linkedHashMap = this.a;
        if (dw2Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMap.put(str, dw2Var);
    }

    public d(int i) {
        this.a = ud0.a(i);
    }
}
