package ads_mobile_sdk;

import com.google.common.base.Function;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public abstract class fm3 {
    public static iv2 a(ts3 ts3Var, Throwable th) {
        lq0 lq0Var = lq0.EVENT_ID_UNSPECIFIED;
        ((st1) ts3Var.a).a(20307, -1L, th, null);
        return iv2.x();
    }

    public static wr0 a(File file, yl3 yl3Var, final ts3 ts3Var) {
        iv2 iv2VarX = iv2.x();
        return new wr0(file, ((xr0) yl3Var).a, new ur0(iv2VarX), new Function() { // from class: ads_mobile_sdk.fm3$$ExternalSyntheticLambda1
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return fm3.a(ts3Var, (Throwable) obj);
            }
        });
    }

    public static byte[] b(ts3 ts3Var, Throwable th) {
        lq0 lq0Var = lq0.EVENT_ID_UNSPECIFIED;
        ((st1) ts3Var.a).a(20309, -1L, th, null);
        return new byte[0];
    }

    public static wr0 b(File file, yl3 yl3Var, final ts3 ts3Var) {
        return new wr0(file, ((xr0) yl3Var).a, new sr0(new byte[0]), new Function() { // from class: ads_mobile_sdk.fm3$$ExternalSyntheticLambda2
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return fm3.b(ts3Var, (Throwable) obj);
            }
        });
    }

    public static byte[] c(ts3 ts3Var, Throwable th) {
        lq0 lq0Var = lq0.EVENT_ID_UNSPECIFIED;
        ((st1) ts3Var.a).a(20308, -1L, th, null);
        return new byte[0];
    }

    public static wr0 c(File file, yl3 yl3Var, final ts3 ts3Var) {
        return new wr0(file, ((xr0) yl3Var).a, new sr0(new byte[0]), new Function() { // from class: ads_mobile_sdk.fm3$$ExternalSyntheticLambda0
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return fm3.c(ts3Var, (Throwable) obj);
            }
        });
    }
}
