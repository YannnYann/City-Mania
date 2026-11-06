package ads_mobile_sdk;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.view.View;
import android.view.ViewGroup;
import com.google.gson.JsonObject;
import com.ironsource.C3522b4;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.TimeoutCancellationException;

/* JADX INFO: loaded from: classes.dex */
public final class rb extends nc1 {
    public final Context c;
    public final ex0 d;
    public final o21 e;
    public final f0 f;
    public final sz g;
    public final String h;
    public final g83 i;
    public fa j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public rb(Context applicationContext, ex0 flags, o21 gmaUtil, f0 activityTracker, sz concurrencyObjects, String afmaVersion, g83 rootTraceCreator) {
        super(s11.CUI_NAME_SDKINIT_INIT_SPAM, 2);
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(gmaUtil, "gmaUtil");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        Intrinsics.checkNotNullParameter(concurrencyObjects, "concurrencyObjects");
        Intrinsics.checkNotNullParameter(afmaVersion, "afmaVersion");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        this.c = applicationContext;
        this.d = flags;
        this.e = gmaUtil;
        this.f = activityTracker;
        this.g = concurrencyObjects;
        this.h = afmaVersion;
        this.i = rootTraceCreator;
    }

    public final String b(List viewUris, View view) {
        String strB;
        Intrinsics.checkNotNullParameter(viewUris, "viewUris");
        if ((viewUris instanceof Collection) && viewUris.isEmpty()) {
            return "";
        }
        Iterator it = viewUris.iterator();
        while (it.hasNext()) {
            if (this.e.b((Uri) it.next())) {
                g83 g83Var = this.i;
                s11 s11Var = s11.CUI_NAME_VIEW_SIGNALS;
                List listEmptyList = CollectionsKt__CollectionsKt.emptyList();
                ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
                if (hs3.b().a == null) {
                    tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                    try {
                        fa faVarG = g();
                        strB = faVarG.a.b(i(), a(viewUris), view, this.f.g());
                        CloseableKt.closeFinally(tu2VarA, null);
                    } catch (Throwable th) {
                        try {
                            tu2VarA.b(th);
                            if (th instanceof v24) {
                                throw th;
                            }
                            if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                                tu2VarA.a(th);
                            }
                            if (th instanceof TimeoutCancellationException) {
                                throw new i21(th);
                            }
                            if (th instanceof CancellationException) {
                                throw new wz0(th);
                            }
                            if (th instanceof w01) {
                                throw th;
                            }
                            throw new b01(th);
                        } catch (Throwable th2) {
                            try {
                                throw th2;
                            } catch (Throwable th3) {
                                CloseableKt.closeFinally(tu2VarA, th2);
                                throw th3;
                            }
                        }
                    }
                } else {
                    rr3 rr3VarA = hs3.a(s11Var, CollectionsKt__CollectionsKt.emptyList(), true);
                    try {
                        fa faVarG2 = g();
                        strB = faVarG2.a.b(i(), a(viewUris), view, this.f.g());
                        CloseableKt.closeFinally(rr3VarA, null);
                    } catch (Throwable th4) {
                        try {
                            rr3VarA.b(th4);
                            if (th4 instanceof v24) {
                                throw th4;
                            }
                            if (!(th4 instanceof TimeoutCancellationException) && !(th4 instanceof CancellationException)) {
                                rr3VarA.a(th4);
                            }
                            if (th4 instanceof TimeoutCancellationException) {
                                throw new i21(th4);
                            }
                            if (th4 instanceof CancellationException) {
                                throw new wz0(th4);
                            }
                            if (th4 instanceof w01) {
                                throw th4;
                            }
                            throw new b01(th4);
                        } catch (Throwable th5) {
                            try {
                                throw th5;
                            } catch (Throwable th6) {
                                CloseableKt.closeFinally(rr3VarA, th5);
                                throw th6;
                            }
                        }
                    }
                }
                Intrinsics.checkNotNull(strB);
                return strB;
            }
        }
        return "";
    }

    @Override // ads_mobile_sdk.nc1
    public final Object u(Continuation continuation) {
        fa faVar;
        Context context = this.c;
        rz rzVar = this.g.d;
        sa flags = this.d.u;
        Intrinsics.checkNotNullParameter(flags, "flags");
        la builder = na.W();
        Intrinsics.checkNotNullExpressionValue(builder, "newBuilder(...)");
        Intrinsics.checkNotNullParameter(builder, "builder");
        Intrinsics.checkNotNullParameter(ma.GMA, "value");
        builder.h();
        flags.getClass();
        Intrinsics.checkNotNullParameter("gads:ad_spam_gass_call:enabled", C3522b4.i.W);
        Boolean bool = Boolean.TRUE;
        ir irVar = yr.b;
        builder.f(((Boolean) flags.a("gads:ad_spam_gass_call:enabled", bool, irVar)).booleanValue());
        Intrinsics.checkNotNullParameter("gads:as_af:enabled", C3522b4.i.W);
        builder.a(((Boolean) flags.a("gads:as_af:enabled", bool, irVar)).booleanValue());
        Intrinsics.checkNotNullParameter("gads:as_afsp:enabled", C3522b4.i.W);
        Boolean bool2 = Boolean.FALSE;
        builder.b(((Boolean) flags.a("gads:as_afsp:enabled", bool2, irVar)).booleanValue());
        Intrinsics.checkNotNullParameter("gads:as_fisp:enabled", C3522b4.i.W);
        builder.k(((Boolean) flags.a("gads:as_fisp:enabled", bool, irVar)).booleanValue());
        Intrinsics.checkNotNullParameter("gads:as_spuwsp:enabled", C3522b4.i.W);
        builder.l(((Boolean) flags.a("gads:as_spuwsp:enabled", bool, irVar)).booleanValue());
        Intrinsics.checkNotNullParameter("gads:as_rav", C3522b4.i.W);
        nr nrVar = yr.f;
        kb value = kb.a(((Number) flags.a("gads:as_rav", 2, nrVar)).intValue());
        if (value == null) {
            value = kb.ADSHIELD_VERSION_1;
        }
        Intrinsics.checkNotNullParameter(value, "value");
        builder.b(value);
        Intrinsics.checkNotNullParameter("gads:as_fav", C3522b4.i.W);
        kb value2 = kb.a(((Number) flags.a("gads:as_fav", 3, nrVar)).intValue());
        if (value2 == null) {
            value2 = kb.ADSHIELD_VERSION_1;
        }
        Intrinsics.checkNotNullParameter(value2, "value");
        builder.a(value2);
        Intrinsics.checkNotNullParameter("gads:as_emcs:enabled", C3522b4.i.W);
        builder.i(((Boolean) flags.a("gads:as_emcs:enabled", bool, irVar)).booleanValue());
        vt1 builder2 = wt1.A();
        Intrinsics.checkNotNullExpressionValue(builder2, "newBuilder(...)");
        Intrinsics.checkNotNullParameter(builder2, "builder");
        Intrinsics.checkNotNullParameter("gads:as_rcs", C3522b4.i.W);
        Intrinsics.checkNotNullParameter("https://pagead2.googlesyndication.com/pagead/ping?e=2&f=1", "defaultValue");
        wr wrVar = yr.o;
        String value3 = (String) flags.a("gads:as_rcs", "https://pagead2.googlesyndication.com/pagead/ping?e=2&f=1", wrVar);
        Intrinsics.checkNotNullParameter(value3, "value");
        builder2.a(value3);
        Intrinsics.checkNotNullParameter("gads:as_lsr", C3522b4.i.W);
        builder2.a(((Number) flags.a("gads:as_lsr", Float.valueOf(0.01f), yr.e)).floatValue());
        Intrinsics.checkNotNullParameter("gads:as_lbs", C3522b4.i.W);
        rr rrVar = yr.d;
        builder2.a(((Number) flags.a("gads:as_lbs", 1000L, rrVar)).longValue());
        Duration.Companion companion = Duration.Companion;
        DurationUnit durationUnit = DurationUnit.MINUTES;
        long jM2881getInWholeMillisecondsimpl = Duration.m2881getInWholeMillisecondsimpl(DurationKt.toDuration(1, durationUnit));
        Intrinsics.checkNotNullParameter("gads:as_li_ms", C3522b4.i.W);
        builder2.b(((Number) flags.a("gads:as_li_ms", Long.valueOf(jM2881getInWholeMillisecondsimpl), rrVar)).longValue());
        vz0 vz0VarB = builder2.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
        wt1 value4 = (wt1) vz0VarB;
        Intrinsics.checkNotNullParameter(value4, "value");
        builder.a(value4);
        Intrinsics.checkNotNullParameter("gads:as_vsb:enabled", C3522b4.i.W);
        builder.j(((Boolean) flags.a("gads:as_vsb:enabled", bool2, irVar)).booleanValue());
        DurationUnit durationUnit2 = DurationUnit.SECONDS;
        long jM2881getInWholeMillisecondsimpl2 = Duration.m2881getInWholeMillisecondsimpl(DurationKt.toDuration(1, durationUnit2));
        Intrinsics.checkNotNullParameter("gads:as_st_ms", C3522b4.i.W);
        builder.g(((Number) flags.a("gads:as_st_ms", Long.valueOf(jM2881getInWholeMillisecondsimpl2), rrVar)).longValue());
        Intrinsics.checkNotNullParameter("gads:as_asqs_ms", C3522b4.i.W);
        builder.a(((Number) flags.a("gads:as_asqs_ms", 100L, rrVar)).longValue());
        long jM2881getInWholeMillisecondsimpl3 = Duration.m2881getInWholeMillisecondsimpl(DurationKt.toDuration(5, durationUnit2));
        Intrinsics.checkNotNullParameter("gads:as_asw_ms", C3522b4.i.W);
        builder.b(((Number) flags.a("gads:as_asw_ms", Long.valueOf(jM2881getInWholeMillisecondsimpl3), rrVar)).longValue());
        Intrinsics.checkNotNullParameter("gads:as_emassqs:enabled", C3522b4.i.W);
        builder.h(((Boolean) flags.a("gads:as_emassqs:enabled", bool, irVar)).booleanValue());
        Intrinsics.checkNotNullParameter("gads:as_gst_ms", C3522b4.i.W);
        builder.c(((Number) flags.a("gads:as_gst_ms", 200L, rrVar)).longValue());
        Intrinsics.checkNotNullParameter("gads:as_list_ms", C3522b4.i.W);
        builder.e(((Number) flags.a("gads:as_list_ms", 200L, rrVar)).longValue());
        long jM2881getInWholeMillisecondsimpl4 = Duration.m2881getInWholeMillisecondsimpl(DurationKt.toDuration(10, durationUnit));
        Intrinsics.checkNotNullParameter("gads:as_hrt_ms", C3522b4.i.W);
        builder.d(((Number) flags.a("gads:as_hrt_ms", Long.valueOf(jM2881getInWholeMillisecondsimpl4), rrVar)).longValue());
        Intrinsics.checkNotNullParameter("gads:as_pic", C3522b4.i.W);
        Intrinsics.checkNotNullParameter("", "defaultValue");
        String value5 = (String) flags.a("gads:as_pic", "", wrVar);
        Intrinsics.checkNotNullParameter(value5, "value");
        builder.c(value5);
        Intrinsics.checkNotNullParameter("gads:as_dic", C3522b4.i.W);
        Intrinsics.checkNotNullParameter("", "defaultValue");
        String value6 = (String) flags.a("gads:as_dic", "", wrVar);
        Intrinsics.checkNotNullParameter(value6, "value");
        builder.a(value6);
        long jM2881getInWholeMillisecondsimpl5 = Duration.m2881getInWholeMillisecondsimpl(DurationKt.toDuration(500, DurationUnit.MILLISECONDS));
        Intrinsics.checkNotNullParameter("gads:as_mt_ms", C3522b4.i.W);
        builder.f(((Number) flags.a("gads:as_mt_ms", Long.valueOf(jM2881getInWholeMillisecondsimpl5), rrVar)).longValue());
        Intrinsics.checkNotNullParameter("gads:as_caau:enabled", C3522b4.i.W);
        builder.d(((Boolean) flags.a("gads:as_caau:enabled", bool, irVar)).booleanValue());
        Intrinsics.checkNotNullParameter("gads:as_ls:enabled", C3522b4.i.W);
        builder.g(((Boolean) flags.a("gads:as_ls:enabled", bool2, irVar)).booleanValue());
        Intrinsics.checkNotNullParameter("gads:as_eaiep:enabled", C3522b4.i.W);
        builder.e(((Boolean) flags.a("gads:as_eaiep:enabled", bool2, irVar)).booleanValue());
        Intrinsics.checkNotNullParameter("gads:as_cqstot:enabled", C3522b4.i.W);
        builder.c(((Boolean) flags.a("gads:as_cqstot:enabled", bool2, irVar)).booleanValue());
        tv2 builder3 = uv2.D();
        Intrinsics.checkNotNullExpressionValue(builder3, "newBuilder(...)");
        Intrinsics.checkNotNullParameter(builder3, "builder");
        Intrinsics.checkNotNullParameter("gads:as_ubi:enabled", C3522b4.i.W);
        builder3.b(((Boolean) flags.a("gads:as_ubi:enabled", bool2, irVar)).booleanValue());
        Intrinsics.checkNotNullParameter("gads:as_aspud_ms", C3522b4.i.W);
        builder3.a(((Number) flags.a("gads:as_aspud_ms", 0L, rrVar)).longValue());
        long jM2881getInWholeMillisecondsimpl6 = Duration.m2881getInWholeMillisecondsimpl(DurationKt.toDuration(1, DurationUnit.HOURS));
        Intrinsics.checkNotNullParameter("gads:as_pae_ms", C3522b4.i.W);
        builder3.c(((Number) flags.a("gads:as_pae_ms", Long.valueOf(jM2881getInWholeMillisecondsimpl6), rrVar)).longValue());
        Intrinsics.checkNotNullParameter("gads:as_pru", C3522b4.i.W);
        Intrinsics.checkNotNullParameter("https://pagead2.googlesyndication.com/mads/asp", "defaultValue");
        String value7 = (String) flags.a("gads:as_pru", "https://pagead2.googlesyndication.com/mads/asp", wrVar);
        Intrinsics.checkNotNullParameter(value7, "value");
        builder3.a(value7);
        Intrinsics.checkNotNullParameter("gads:as_rpd:enabled", C3522b4.i.W);
        builder3.a(((Boolean) flags.a("gads:as_rpd:enabled", bool2, irVar)).booleanValue());
        Intrinsics.checkNotNullParameter("gads:as_mrpda", C3522b4.i.W);
        builder3.b(((Number) flags.a("gads:as_mrpda", 5L, rrVar)).longValue());
        Intrinsics.checkNotNullParameter("gads:as_rbi_ms", C3522b4.i.W);
        builder3.d(((Number) flags.a("gads:as_rbi_ms", 60000L, rrVar)).longValue());
        vz0 vz0VarB2 = builder3.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB2, "build(...)");
        uv2 value8 = (uv2) vz0VarB2;
        Intrinsics.checkNotNullParameter(value8, "value");
        builder.a(value8);
        vz0 vz0VarB3 = builder.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB3, "build(...)");
        na naVar = (na) ((la) ((na) vz0VarB3).u()).b(this.h).b();
        synchronized (fa.b) {
            try {
                if (fa.c == null) {
                    context.getClass();
                    rzVar.getClass();
                    naVar.getClass();
                    fa.c = new fa(new id0(new v9(), new z9(), new ba(), new da(), rzVar, context, naVar));
                }
                faVar = fa.c;
            } catch (Throwable th) {
                throw th;
            }
        }
        Intrinsics.checkNotNullExpressionValue(faVar, "getInstance(...)");
        Intrinsics.checkNotNullParameter(faVar, "<set-?>");
        this.j = faVar;
        g().a.a.b();
        return new q01(Unit.INSTANCE);
    }

    public final fa g() {
        fa faVar = this.j;
        if (faVar != null) {
            return faVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("adShieldClient");
        return null;
    }

    public final Context i() {
        Activity activityG = this.f.g();
        return activityG != null ? activityG : this.c;
    }

    public final String a(View view, String clickString) {
        Intrinsics.checkNotNullParameter(clickString, "clickString");
        fa faVarG = g();
        String strA = faVarG.a.a(i(), clickString, view, this.f.g());
        Intrinsics.checkNotNullExpressionValue(strA, "getClickSignals(...)");
        return strA;
    }

    public final String a(ViewGroup viewGroup) {
        fa faVarG = g();
        String strB = faVarG.a.b(i(), null, viewGroup, this.f.g());
        Intrinsics.checkNotNullExpressionValue(strB, "getViewSignals(...)");
        return strB;
    }

    public final String a(r31 r31Var, eo2 eo2Var, t91 t91Var) {
        AtomicLong atomicLong;
        String strA = a(r31Var);
        long j = (eo2Var == null || (atomicLong = eo2Var.a) == null) ? 0L : atomicLong.get();
        String strA2 = t91Var != null ? t91Var.a() : null;
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("ms", strA);
        if (j > 0) {
            jsonObject.addProperty("plcmtid", Long.valueOf(j));
        }
        ex0 ex0Var = this.d;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:enable_impression_data:enabled", C3522b4.i.W);
        if (((Boolean) ex0Var.a("gads:enable_impression_data:enabled", Boolean.TRUE, yr.b)).booleanValue() && strA2 != null && strA2.length() != 0) {
            jsonObject.addProperty("subpn", strA2);
        }
        String string = jsonObject.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    public final Uri a(Uri uri, View view) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        Intrinsics.checkNotNullParameter(view, "view");
        String strA = a(CollectionsKt__CollectionsJVMKt.listOf(uri), view);
        if (StringsKt__StringsKt.isBlank(strA)) {
            return uri;
        }
        m21 m21Var = o21.f;
        return m21.a(uri, strA);
    }

    public final String a(List clickUris, View view) {
        String strA;
        Intrinsics.checkNotNullParameter(clickUris, "clickUris");
        if (!(clickUris instanceof Collection) || !clickUris.isEmpty()) {
            Iterator it = clickUris.iterator();
            while (it.hasNext()) {
                Uri uri = (Uri) it.next();
                o21 o21Var = this.e;
                o21Var.getClass();
                Intrinsics.checkNotNullParameter(uri, "uri");
                if (o21Var.b(uri) && o21Var.a(uri)) {
                    Intrinsics.checkNotNullParameter(uri, "uri");
                    String queryParameter = uri.getQueryParameter("ms");
                    if (queryParameter == null || StringsKt__StringsKt.isBlank(queryParameter)) {
                        g83 g83Var = this.i;
                        s11 s11Var = s11.CUI_NAME_CLICK_SIGNALS;
                        List listEmptyList = CollectionsKt__CollectionsKt.emptyList();
                        ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
                        if (hs3.b().a == null) {
                            tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                            try {
                                fa faVarG = g();
                                strA = faVarG.a.a(i(), a(clickUris), view, this.f.g());
                                CloseableKt.closeFinally(tu2VarA, null);
                            } catch (Throwable th) {
                                try {
                                    tu2VarA.b(th);
                                    if (!(th instanceof v24)) {
                                        if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                                            tu2VarA.a(th);
                                        }
                                        if (!(th instanceof TimeoutCancellationException)) {
                                            if (!(th instanceof CancellationException)) {
                                                if (th instanceof w01) {
                                                    throw th;
                                                }
                                                throw new b01(th);
                                            }
                                            throw new wz0(th);
                                        }
                                        throw new i21(th);
                                    }
                                    throw th;
                                } catch (Throwable th2) {
                                    try {
                                        throw th2;
                                    } catch (Throwable th3) {
                                        CloseableKt.closeFinally(tu2VarA, th2);
                                        throw th3;
                                    }
                                }
                            }
                        } else {
                            rr3 rr3VarA = hs3.a(s11Var, CollectionsKt__CollectionsKt.emptyList(), true);
                            try {
                                fa faVarG2 = g();
                                strA = faVarG2.a.a(i(), a(clickUris), view, this.f.g());
                                CloseableKt.closeFinally(rr3VarA, null);
                            } catch (Throwable th4) {
                                try {
                                    rr3VarA.b(th4);
                                    if (!(th4 instanceof v24)) {
                                        if (!(th4 instanceof TimeoutCancellationException) && !(th4 instanceof CancellationException)) {
                                            rr3VarA.a(th4);
                                        }
                                        if (!(th4 instanceof TimeoutCancellationException)) {
                                            if (!(th4 instanceof CancellationException)) {
                                                if (th4 instanceof w01) {
                                                    throw th4;
                                                }
                                                throw new b01(th4);
                                            }
                                            throw new wz0(th4);
                                        }
                                        throw new i21(th4);
                                    }
                                    throw th4;
                                } catch (Throwable th5) {
                                    try {
                                        throw th5;
                                    } catch (Throwable th6) {
                                        CloseableKt.closeFinally(rr3VarA, th5);
                                        throw th6;
                                    }
                                }
                            }
                        }
                        Intrinsics.checkNotNull(strA);
                        return strA;
                    }
                }
            }
            return "";
        }
        return "";
    }

    public final void b(List stackTrace) {
        Intrinsics.checkNotNullParameter(stackTrace, "stackTrace");
        cl3 cl3Var = g().a.c.b;
        synchronized (cl3Var) {
            cl3Var.a.clear();
            cl3Var.a.addAll(stackTrace);
        }
    }

    public final String a(List list) {
        Object next;
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            Uri uri = (Uri) next;
            if (this.e.b(uri) && uri.getQueryParameter("ai") != null) {
                break;
            }
        }
        Uri uri2 = (Uri) next;
        if (uri2 == null) {
            return null;
        }
        return uri2.getQueryParameter("ai");
    }
}
