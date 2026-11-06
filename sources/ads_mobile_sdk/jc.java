package ads_mobile_sdk;

import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class jc {
    public final gc a;

    public final /* synthetic */ void b(lo0 lo0Var, ArrayList values) {
        Intrinsics.checkNotNullParameter(lo0Var, "<this>");
        Intrinsics.checkNotNullParameter(values, "values");
        this.a.b(values);
    }

    public final lo0 c() {
        List listI = this.a.i();
        Intrinsics.checkNotNullExpressionValue(listI, "getIncludingRegexesList(...)");
        return new lo0(listI);
    }

    public final lo0 b() {
        List listH = this.a.h();
        Intrinsics.checkNotNullExpressionValue(listH, "getExcludingRegexesList(...)");
        return new lo0(listH);
    }

    public jc(gc gcVar) {
        this.a = gcVar;
    }

    public final /* synthetic */ hc a() {
        vz0 vz0VarB = this.a.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
        return (hc) vz0VarB;
    }

    public final /* synthetic */ void a(lo0 lo0Var, ArrayList values) {
        Intrinsics.checkNotNullParameter(lo0Var, "<this>");
        Intrinsics.checkNotNullParameter(values, "values");
        this.a.a(values);
    }

    public final void a(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.a.a(value);
    }
}
