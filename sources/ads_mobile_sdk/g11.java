package ads_mobile_sdk;

import com.ironsource.C3522b4;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class g11 {
    public final b11 a;

    public final void b(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.a.d(value);
    }

    public final void c(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.a.e(value);
    }

    public final void d(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.a.f(value);
    }

    public final void e(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.a.h(value);
    }

    public final void f(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.a.i(value);
    }

    public final void g(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.a.o(value);
    }

    public final void h(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.a.s(value);
    }

    public g11(b11 b11Var) {
        this.a = b11Var;
    }

    public final /* synthetic */ e11 a() {
        vz0 vz0VarB = this.a.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
        return (e11) vz0VarB;
    }

    public final void a(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.a.c(value);
    }

    public final void c() {
        ot1 value = ot1.OS_ANDROID;
        Intrinsics.checkNotNullParameter(value, "value");
        this.a.n();
    }

    public final void c(int i) {
        this.a.e(i);
    }

    public final void a(int i) {
        this.a.a(i);
    }

    public final void b(int i) {
        this.a.b(i);
    }

    public final void b() {
        Intrinsics.checkNotNullParameter("CUI_NAME_ANR_DETECTED", C3522b4.i.X);
        this.a.n("CUI_NAME_ANR_DETECTED");
    }
}
