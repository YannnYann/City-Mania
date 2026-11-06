package ads_mobile_sdk;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class yr {
    public static final ir b = ir.a;
    public static final kr c = kr.a;
    public static final rr d = rr.a;
    public static final mr e = mr.a;
    public static final nr f = nr.a;
    public static final qr g = qr.a;
    public static final or h = or.a;
    public static final pr i = pr.a;
    public static final sr j = sr.a;
    public static final jr k = jr.a;
    public static final ur l = ur.a;
    public static final tr m = tr.a;
    public static final vr n = vr.a;
    public static final wr o = wr.a;
    public static final xr p = xr.a;
    public static final lr q = lr.a;
    public final xw0 a;

    public yr(xw0 flagValueProvider) {
        Intrinsics.checkNotNullParameter(flagValueProvider, "flagValueProvider");
        this.a = flagValueProvider;
    }

    public final Object a(String key, Object obj, Function1 converter) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(converter, "converter");
        Object objA = ((hr) this.a).a(key, converter);
        return objA == null ? obj : objA;
    }
}
