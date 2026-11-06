package ads_mobile_sdk;

import android.net.Uri;
import android.webkit.JavascriptInterface;
import com.ironsource.C3522b4;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.TimeoutCancellationException;

/* JADX INFO: loaded from: classes.dex */
public final class uk1 {
    public final r31 a;
    public final ks3 b;
    public final eo2 c;
    public final t91 d;
    public final g83 e;
    public final rb f;
    public final ex0 g;

    public uk1(r31 webView, ks3 traceMetaSet, eo2 eo2Var, t91 t91Var, g83 rootTraceCreator, rb adSpamClient, ex0 flags) {
        Intrinsics.checkNotNullParameter(webView, "webView");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(adSpamClient, "adSpamClient");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.a = webView;
        this.b = traceMetaSet;
        this.c = eo2Var;
        this.d = t91Var;
        this.e = rootTraceCreator;
        this.f = adSpamClient;
        this.g = flags;
    }

    @JavascriptInterface
    public final String getClickSignals(String clickString) {
        Intrinsics.checkNotNullParameter(clickString, "clickString");
        if (clickString.length() == 0) {
            return "";
        }
        g83 g83Var = this.e;
        s11 s11Var = s11.CUI_NAME_CLICK_SIGNALS;
        ks3 ks3Var = this.b;
        List listEmptyList = CollectionsKt__CollectionsKt.emptyList();
        if (hs3.b().a == null) {
            tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
            try {
                String strA = this.f.a(this.a, clickString);
                CloseableKt.closeFinally(tu2VarA, null);
                return strA;
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
        } else {
            rr3 rr3VarA = hs3.a(s11Var, CollectionsKt__CollectionsKt.emptyList(), true);
            try {
                String strA2 = this.f.a(this.a, clickString);
                CloseableKt.closeFinally(rr3VarA, null);
                return strA2;
            } catch (Throwable th2) {
                try {
                    rr3VarA.b(th2);
                    if (th2 instanceof v24) {
                        throw th2;
                    }
                    if (!(th2 instanceof TimeoutCancellationException) && !(th2 instanceof CancellationException)) {
                        rr3VarA.a(th2);
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
    }

    @JavascriptInterface
    public final void notify(String url) throws InterruptedException {
        Intrinsics.checkNotNullParameter(url, "url");
        if (url.length() == 0) {
            return;
        }
        g41 g41VarB = this.a.b();
        Uri uri = Uri.parse(url);
        g41VarB.getClass();
        Intrinsics.checkNotNullParameter(uri, "uri");
        BuildersKt__BuildersKt.runBlocking$default(null, new w31(g41VarB, uri, null), 1, null);
    }

    @JavascriptInterface
    public final void notifyResult(String resultJsonString) throws InterruptedException {
        Intrinsics.checkNotNullParameter(resultJsonString, "resultJsonString");
        g41 g41VarB = this.a.b();
        g41VarB.getClass();
        Intrinsics.checkNotNullParameter(resultJsonString, "resultJsonString");
        BuildersKt__BuildersKt.runBlocking$default(null, new x31(g41VarB, resultJsonString, null), 1, null);
    }

    @JavascriptInterface
    public final String getViewSignals() {
        g83 g83Var = this.e;
        s11 s11Var = s11.CUI_NAME_VIEW_SIGNALS;
        ks3 ks3Var = this.b;
        List listEmptyList = CollectionsKt__CollectionsKt.emptyList();
        if (hs3.b().a == null) {
            tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
            try {
                String strA = this.f.a(this.a);
                CloseableKt.closeFinally(tu2VarA, null);
                return strA;
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
                } finally {
                }
            }
        } else {
            rr3 rr3VarA = hs3.a(s11Var, CollectionsKt__CollectionsKt.emptyList(), true);
            try {
                String strA2 = this.f.a(this.a);
                CloseableKt.closeFinally(rr3VarA, null);
                return strA2;
            } catch (Throwable th2) {
                try {
                    rr3VarA.b(th2);
                    if (!(th2 instanceof v24)) {
                        if (!(th2 instanceof TimeoutCancellationException) && !(th2 instanceof CancellationException)) {
                            rr3VarA.a(th2);
                        }
                        if (!(th2 instanceof TimeoutCancellationException)) {
                            if (!(th2 instanceof CancellationException)) {
                                if (th2 instanceof w01) {
                                    throw th2;
                                }
                                throw new b01(th2);
                            }
                            throw new wz0(th2);
                        }
                        throw new i21(th2);
                    }
                    throw th2;
                } finally {
                }
            }
        }
    }

    @JavascriptInterface
    public final String getViewSignalsJson() {
        g83 g83Var = this.e;
        s11 s11Var = s11.CUI_NAME_VIEW_SIGNALS;
        ks3 ks3Var = this.b;
        List listEmptyList = CollectionsKt__CollectionsKt.emptyList();
        if (hs3.b().a == null) {
            tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
            try {
                ex0 ex0Var = this.g;
                ex0Var.getClass();
                Intrinsics.checkNotNullParameter("gads:add_placement_id_in_view_signals:enabled", C3522b4.i.W);
                if (!((Boolean) ex0Var.a("gads:add_placement_id_in_view_signals:enabled", Boolean.TRUE, yr.b)).booleanValue()) {
                    String strA = this.f.a(this.a);
                    CloseableKt.closeFinally(tu2VarA, null);
                    return strA;
                }
                String strA2 = this.f.a(this.a, this.c, this.d);
                CloseableKt.closeFinally(tu2VarA, null);
                return strA2;
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
                } finally {
                }
            }
        } else {
            rr3 rr3VarA = hs3.a(s11Var, CollectionsKt__CollectionsKt.emptyList(), true);
            try {
                ex0 ex0Var2 = this.g;
                ex0Var2.getClass();
                Intrinsics.checkNotNullParameter("gads:add_placement_id_in_view_signals:enabled", C3522b4.i.W);
                if (!((Boolean) ex0Var2.a("gads:add_placement_id_in_view_signals:enabled", Boolean.TRUE, yr.b)).booleanValue()) {
                    String strA3 = this.f.a(this.a);
                    CloseableKt.closeFinally(rr3VarA, null);
                    return strA3;
                }
                String strA4 = this.f.a(this.a, this.c, this.d);
                CloseableKt.closeFinally(rr3VarA, null);
                return strA4;
            } catch (Throwable th2) {
                try {
                    rr3VarA.b(th2);
                    if (!(th2 instanceof v24)) {
                        if (!(th2 instanceof TimeoutCancellationException) && !(th2 instanceof CancellationException)) {
                            rr3VarA.a(th2);
                        }
                        if (!(th2 instanceof TimeoutCancellationException)) {
                            if (!(th2 instanceof CancellationException)) {
                                if (th2 instanceof w01) {
                                    throw th2;
                                }
                                throw new b01(th2);
                            }
                            throw new wz0(th2);
                        }
                        throw new i21(th2);
                    }
                    throw th2;
                } finally {
                }
            }
        }
    }
}
