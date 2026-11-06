package ads_mobile_sdk;

import com.google.android.gms.common.internal.Constants;
import java.util.Map;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes.dex */
public final class t91 {
    public static final /* synthetic */ KProperty[] b = {kk.a(t91.class, "impressionData", "getImpressionData()Ljava/util/Map;", 0)};
    public final tn3 a = new tn3(null);

    public final String a() {
        tn3 tn3Var = this.a;
        KProperty[] kPropertyArr = b;
        Map map = (Map) tn3Var.getValue(this, kPropertyArr[0]);
        Object obj = map != null ? map.get("targetAppId") : null;
        String str = obj instanceof String ? (String) obj : null;
        if (str != null) {
            return str;
        }
        Map map2 = (Map) this.a.getValue(this, kPropertyArr[0]);
        Object obj2 = map2 != null ? map2.get(Constants.KEY_TARGET_PACKAGE_NAME) : null;
        if (obj2 instanceof String) {
            return (String) obj2;
        }
        return null;
    }
}
