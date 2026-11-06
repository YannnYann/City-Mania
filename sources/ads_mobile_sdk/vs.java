package ads_mobile_sdk;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class vs {
    public final ss a;

    public final void b(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.a.b(value);
    }

    public vs(ss ssVar) {
        this.a = ssVar;
    }

    public final /* synthetic */ ts a() {
        vz0 vz0VarB = this.a.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
        return (ts) vz0VarB;
    }

    public final /* synthetic */ void a(no0 no0Var, LinkedHashMap map) {
        Intrinsics.checkNotNullParameter(no0Var, "<this>");
        Intrinsics.checkNotNullParameter(map, "map");
        this.a.a(map);
    }

    public final void a(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.a.a(value);
    }

    public final void a(boolean z) {
        this.a.a(z);
    }

    public final void b(boolean z) {
        this.a.b(z);
    }

    public final /* synthetic */ no0 b() {
        Map mapH = this.a.h();
        Intrinsics.checkNotNullExpressionValue(mapH, "getServerParametersMap(...)");
        return new no0(mapH);
    }
}
