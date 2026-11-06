package ads_mobile_sdk;

import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class mw1 {
    public final jw1 a;

    public final /* synthetic */ lo0 b() {
        List listH = this.a.h();
        Intrinsics.checkNotNullExpressionValue(listH, "getAdNetworkInfoList(...)");
        return new lo0(listH);
    }

    public mw1(jw1 jw1Var) {
        this.a = jw1Var;
    }

    public final /* synthetic */ kw1 a() {
        vz0 vz0VarB = this.a.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
        return (kw1) vz0VarB;
    }

    public final /* synthetic */ void a(lo0 lo0Var, ArrayList values) {
        Intrinsics.checkNotNullParameter(lo0Var, "<this>");
        Intrinsics.checkNotNullParameter(values, "values");
        this.a.a(values);
    }
}
