package ads_mobile_sdk;

import android.net.Uri;
import android.util.Base64;
import androidx.webkit.WebViewCompat;
import com.google.common.base.Splitter;
import com.ironsource.C3522b4;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.coroutines.Continuation;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public final class uv extends fp2 {
    public final CoroutineScope c;
    public final dz3 d;
    public final g83 e;
    public final ex0 f;
    public final o21 g;
    public final Mutex h;
    public Deferred i;
    public mv j;
    public Job k;

    public uv(CoroutineScope backgroundScope, dz3 webviewCompatWrapper, g83 rootTraceCreator, ex0 flags, o21 gmaUtil) {
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(webviewCompatWrapper, "webviewCompatWrapper");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(gmaUtil, "gmaUtil");
        this.c = backgroundScope;
        this.d = webviewCompatWrapper;
        this.e = rootTraceCreator;
        this.f = flags;
        this.g = gmaUtil;
        this.h = MutexKt.Mutex$default(false, 1, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object b(ads_mobile_sdk.uv r6, kotlin.coroutines.Continuation r7) {
        /*
            boolean r0 = r7 instanceof ads_mobile_sdk.tv
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.tv r0 = (ads_mobile_sdk.tv) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            ads_mobile_sdk.tv r0 = new ads_mobile_sdk.tv
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r7)
            goto L59
        L29:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L31:
            kotlin.ResultKt.throwOnFailure(r7)
            ads_mobile_sdk.ex0 r7 = r6.f
            r7.getClass()
            java.lang.String r2 = "key"
            java.lang.String r4 = "gads:chrome_variations_initialization_task_enabled"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r2)
            java.lang.Boolean r2 = java.lang.Boolean.TRUE
            ads_mobile_sdk.ir r5 = ads_mobile_sdk.yr.b
            java.lang.Object r7 = r7.a(r4, r2, r5)
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            boolean r7 = r7.booleanValue()
            if (r7 == 0) goto L59
            r0.c = r3
            java.lang.Object r6 = a(r6, r0)
            if (r6 != r1) goto L59
            return r1
        L59:
            ads_mobile_sdk.q01 r6 = new ads_mobile_sdk.q01
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            r6.<init>(r7)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.uv.b(ads_mobile_sdk.uv, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.nc1
    public final Object u(Continuation continuation) {
        return b(this, continuation);
    }

    public static final mv a(uv uvVar) {
        g83 g83Var = uvVar.e;
        s11 s11Var = s11.CUI_NAME_GET_WEBVIEW_VARIATIONS;
        List listEmptyList = CollectionsKt__CollectionsKt.emptyList();
        ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
        if (hs3.b().a == null) {
            tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
            try {
                try {
                    uvVar.d.getClass();
                    String variationsHeader = WebViewCompat.getVariationsHeader();
                    Intrinsics.checkNotNullExpressionValue(variationsHeader, "getVariationsHeader(...)");
                    if (StringsKt__StringsKt.isBlank(variationsHeader)) {
                        Splitter splitter = f01.a;
                        f01.a(nv.a);
                        CloseableKt.closeFinally(tu2VarA, null);
                        return null;
                    }
                    try {
                        lv lvVarA = lv.a(Base64.decode(variationsHeader, 0));
                        ex0 ex0Var = uvVar.f;
                        ex0Var.getClass();
                        Intrinsics.checkNotNullParameter("gads:parse_chrome_variations_client_header", C3522b4.i.W);
                        xw xwVarA = ((Boolean) ex0Var.a("gads:parse_chrome_variations_client_header", Boolean.TRUE, yr.b)).booleanValue() ? xw.a(Base64.decode(variationsHeader, 2), er0.b()) : null;
                        Intrinsics.checkNotNull(lvVarA);
                        mv mvVar = new mv(variationsHeader, lvVarA, xwVarA);
                        Splitter splitter2 = f01.a;
                        f01.a(new ov(mvVar));
                        uvVar.j = mvVar;
                        CloseableKt.closeFinally(tu2VarA, null);
                        return mvVar;
                    } catch (Throwable exception) {
                        Intrinsics.checkNotNullParameter(exception, "exception");
                        rr3 rr3VarA = hs3.a();
                        rr3VarA.e().m = false;
                        rr3VarA.a(exception);
                        CloseableKt.closeFinally(tu2VarA, null);
                    }
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
                    } finally {
                    }
                }
            } catch (Exception exception2) {
                Intrinsics.checkNotNullParameter(exception2, "exception");
                rr3 rr3VarA2 = hs3.a();
                rr3VarA2.e().m = false;
                rr3VarA2.a(exception2);
                CloseableKt.closeFinally(tu2VarA, null);
            }
        } else {
            rr3 rr3VarA3 = hs3.a(s11Var, CollectionsKt__CollectionsKt.emptyList(), true);
            try {
                try {
                    uvVar.d.getClass();
                    String variationsHeader2 = WebViewCompat.getVariationsHeader();
                    Intrinsics.checkNotNullExpressionValue(variationsHeader2, "getVariationsHeader(...)");
                    if (StringsKt__StringsKt.isBlank(variationsHeader2)) {
                        Splitter splitter3 = f01.a;
                        f01.a(nv.a);
                        CloseableKt.closeFinally(rr3VarA3, null);
                        return null;
                    }
                    try {
                        lv lvVarA2 = lv.a(Base64.decode(variationsHeader2, 0));
                        ex0 ex0Var2 = uvVar.f;
                        ex0Var2.getClass();
                        Intrinsics.checkNotNullParameter("gads:parse_chrome_variations_client_header", C3522b4.i.W);
                        xw xwVarA2 = ((Boolean) ex0Var2.a("gads:parse_chrome_variations_client_header", Boolean.TRUE, yr.b)).booleanValue() ? xw.a(Base64.decode(variationsHeader2, 2), er0.b()) : null;
                        Intrinsics.checkNotNull(lvVarA2);
                        mv mvVar2 = new mv(variationsHeader2, lvVarA2, xwVarA2);
                        Splitter splitter4 = f01.a;
                        f01.a(new ov(mvVar2));
                        uvVar.j = mvVar2;
                        CloseableKt.closeFinally(rr3VarA3, null);
                        return mvVar2;
                    } catch (Throwable exception3) {
                        Intrinsics.checkNotNullParameter(exception3, "exception");
                        rr3 rr3VarA4 = hs3.a();
                        rr3VarA4.e().m = false;
                        rr3VarA4.a(exception3);
                        CloseableKt.closeFinally(rr3VarA3, null);
                    }
                } catch (Exception exception4) {
                    Intrinsics.checkNotNullParameter(exception4, "exception");
                    rr3 rr3VarA5 = hs3.a();
                    rr3VarA5.e().m = false;
                    rr3VarA5.a(exception4);
                    CloseableKt.closeFinally(rr3VarA3, null);
                }
            } catch (Throwable th2) {
                try {
                    rr3VarA3.b(th2);
                    if (th2 instanceof v24) {
                        throw th2;
                    }
                    if (!(th2 instanceof TimeoutCancellationException) && !(th2 instanceof CancellationException)) {
                        rr3VarA3.a(th2);
                    }
                    if (th2 instanceof TimeoutCancellationException) {
                        throw new i21(th2);
                    }
                    if (th2 instanceof CancellationException) {
                        throw new wz0(th2);
                    }
                    if (th2 instanceof w01) {
                        throw th2;
                    }
                    throw new b01(th2);
                } finally {
                }
            }
        }
        return null;
    }

    public final Map a(Uri uri) {
        String strA;
        Intrinsics.checkNotNullParameter(uri, "uri");
        ex0 ex0Var = this.f;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:parse_chrome_variations_client_header", C3522b4.i.W);
        if (!((Boolean) ex0Var.a("gads:parse_chrome_variations_client_header", Boolean.TRUE, yr.b)).booleanValue()) {
            return null;
        }
        if (!this.g.c(uri) && !this.g.a(uri)) {
            o21 o21Var = this.g;
            o21Var.getClass();
            Intrinsics.checkNotNullParameter(uri, "uri");
            if (o21Var.b(uri)) {
                String string = uri.toString();
                ex0 ex0Var2 = o21Var.c;
                ex0Var2.getClass();
                List defaultValue = CollectionsKt__CollectionsJVMKt.listOf("^[^?]*(/mads/gma|/gampad/ads|/pagead/ads).*");
                Intrinsics.checkNotNullParameter("gads:ad_request_url_pattern_match", C3522b4.i.W);
                Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
                List list = (List) ex0Var2.a("gads:ad_request_url_pattern_match", defaultValue, yr.g);
                if (!(list instanceof Collection) || !list.isEmpty()) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        Regex regex = new Regex((String) it.next());
                        Intrinsics.checkNotNull(string);
                        if (regex.containsMatchIn(string)) {
                        }
                    }
                }
            }
            return null;
        }
        mv mvVar = this.j;
        if (mvVar == null) {
            BuildersKt__Builders_commonKt.launch$default(this.c, null, null, new sv(this, null), 3, null);
        }
        if (mvVar == null || (strA = mvVar.a()) == null) {
            return null;
        }
        ex0 ex0Var3 = this.f;
        ex0Var3.getClass();
        Intrinsics.checkNotNullParameter("gads:client_data_header", C3522b4.i.W);
        Intrinsics.checkNotNullParameter("x-client-data", "defaultValue");
        return MapsKt__MapsJVMKt.mapOf(TuplesKt.to((String) ex0Var3.a("gads:client_data_header", "x-client-data", yr.o), strA));
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.uv r12, kotlin.coroutines.Continuation r13) {
        /*
            Method dump skipped, instruction units count: 223
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.uv.a(ads_mobile_sdk.uv, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
