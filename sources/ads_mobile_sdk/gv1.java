package ads_mobile_sdk;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class gv1 {
    public final dv1 a;

    public final /* synthetic */ void b(lo0 lo0Var, ArrayList values) {
        Intrinsics.checkNotNullParameter(lo0Var, "<this>");
        Intrinsics.checkNotNullParameter(values, "values");
        this.a.b(values);
    }

    public final /* synthetic */ no0 c() {
        Map mapI = this.a.i();
        Intrinsics.checkNotNullExpressionValue(mapI, "getDataMap(...)");
        return new no0(mapI);
    }

    public final lo0 d() {
        List listJ = this.a.j();
        Intrinsics.checkNotNullExpressionValue(listJ, "getWaterfallAdaptersList(...)");
        return new lo0(listJ);
    }

    public final lo0 b() {
        List listH = this.a.h();
        Intrinsics.checkNotNullExpressionValue(listH, "getAdaptersList(...)");
        return new lo0(listH);
    }

    public gv1(dv1 dv1Var) {
        this.a = dv1Var;
    }

    public final /* synthetic */ ev1 a() {
        vz0 vz0VarB = this.a.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
        return (ev1) vz0VarB;
    }

    public final /* synthetic */ void a(lo0 lo0Var, ArrayList values) {
        Intrinsics.checkNotNullParameter(lo0Var, "<this>");
        Intrinsics.checkNotNullParameter(values, "values");
        this.a.a(values);
    }

    public final /* synthetic */ void a(no0 no0Var, LinkedHashMap map) {
        Intrinsics.checkNotNullParameter(no0Var, "<this>");
        Intrinsics.checkNotNullParameter(map, "map");
        this.a.a(map);
    }
}
