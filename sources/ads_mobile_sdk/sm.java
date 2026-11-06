package ads_mobile_sdk;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class sm {
    public final im a;

    public final /* synthetic */ void b(no0 no0Var, LinkedHashMap map) {
        Intrinsics.checkNotNullParameter(no0Var, "<this>");
        Intrinsics.checkNotNullParameter(map, "map");
        this.a.b(map);
    }

    public final /* synthetic */ void c(no0 no0Var, LinkedHashMap map) {
        Intrinsics.checkNotNullParameter(no0Var, "<this>");
        Intrinsics.checkNotNullParameter(map, "map");
        this.a.c(map);
    }

    public final /* synthetic */ void d(no0 no0Var, LinkedHashMap map) {
        Intrinsics.checkNotNullParameter(no0Var, "<this>");
        Intrinsics.checkNotNullParameter(map, "map");
        this.a.d(map);
    }

    public final /* synthetic */ void e(no0 no0Var, LinkedHashMap map) {
        Intrinsics.checkNotNullParameter(no0Var, "<this>");
        Intrinsics.checkNotNullParameter(map, "map");
        this.a.e(map);
    }

    public final /* synthetic */ void f(no0 no0Var, LinkedHashMap map) {
        Intrinsics.checkNotNullParameter(no0Var, "<this>");
        Intrinsics.checkNotNullParameter(map, "map");
        this.a.f(map);
    }

    public final /* synthetic */ void g(no0 no0Var, LinkedHashMap map) {
        Intrinsics.checkNotNullParameter(no0Var, "<this>");
        Intrinsics.checkNotNullParameter(map, "map");
        this.a.g(map);
    }

    public final /* synthetic */ lo0 h() {
        List listN = this.a.n();
        Intrinsics.checkNotNullExpressionValue(listN, "getLoggingOnlyExperimentIdsList(...)");
        return new lo0(listN);
    }

    public final /* synthetic */ no0 i() {
        Map mapO = this.a.o();
        Intrinsics.checkNotNullExpressionValue(mapO, "getSignalAdapterConfigsMap(...)");
        return new no0(mapO);
    }

    public final void j() {
        this.a.p();
    }

    public final void b(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.a.b(value);
    }

    public final /* synthetic */ no0 c() {
        Map mapI = this.a.i();
        Intrinsics.checkNotNullExpressionValue(mapI, "getAdUnitAndFormatToMediationConfigsMap(...)");
        return new no0(mapI);
    }

    public final /* synthetic */ no0 d() {
        Map mapJ = this.a.j();
        Intrinsics.checkNotNullExpressionValue(mapJ, "getAdUnitAndFormatToRequestSignalsMap(...)");
        return new no0(mapJ);
    }

    public final /* synthetic */ no0 e() {
        Map mapK = this.a.k();
        Intrinsics.checkNotNullExpressionValue(mapK, "getAdUnitPatternsMap(...)");
        return new no0(mapK);
    }

    public final /* synthetic */ no0 f() {
        Map mapL = this.a.l();
        Intrinsics.checkNotNullExpressionValue(mapL, "getAdapterInitializationConfigsMap(...)");
        return new no0(mapL);
    }

    public final /* synthetic */ no0 g() {
        Map mapM = this.a.m();
        Intrinsics.checkNotNullExpressionValue(mapM, "getAdmobSignalAdapterConfigsMap(...)");
        return new no0(mapM);
    }

    public sm(im imVar) {
        this.a = imVar;
    }

    public final /* synthetic */ jm a() {
        vz0 vz0VarB = this.a.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
        return (jm) vz0VarB;
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

    public final void a(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.a.a(value);
    }

    public final void a(long j) {
        this.a.a(j);
    }

    public final void b(long j) {
        this.a.b(j);
    }

    public final /* synthetic */ no0 b() {
        Map mapH = this.a.h();
        Intrinsics.checkNotNullExpressionValue(mapH, "getAdManagerSignalAdapterConfigsMap(...)");
        return new no0(mapH);
    }
}
