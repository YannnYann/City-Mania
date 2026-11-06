package ads_mobile_sdk;

import ads_mobile_sdk.yh1;
import android.net.Uri;
import android.util.Base64;
import com.ironsource.C3522b4;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.TimeoutCancellationException;

/* JADX INFO: loaded from: classes.dex */
public final class w7 implements v7 {
    public final vw3 a;
    public final ex0 b;
    public final g83 c;

    public w7(vw3 urlPinger, ex0 flags, g83 rootTraceCreator) {
        Intrinsics.checkNotNullParameter(urlPinger, "urlPinger");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        this.a = urlPinger;
        this.b = flags;
        this.c = rootTraceCreator;
    }

    /* JADX WARN: Finally extract failed */
    public final boolean a(o6 adQualityData) {
        rr3 rr3VarA;
        Intrinsics.checkNotNullParameter(adQualityData, "adQualityData");
        yh1.f<String> fVarV = adQualityData.v();
        if (fVarV.isEmpty()) {
            return true;
        }
        g83 g83Var = this.c;
        s11 s11Var = s11.CUI_NAME_AQM_URL_PING;
        List listEmptyList = CollectionsKt__CollectionsKt.emptyList();
        ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
        if (hs3.b().a == null) {
            tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
            try {
                String strEncodeToString = Base64.encodeToString(((o6) ((n6) adQualityData.u()).i().b()).c(), 10);
                ArrayList arrayList = new ArrayList();
                rr3VarA = hs3.a(s11.CUI_NAME_AQM_URL_MACRO_EXPAND, CollectionsKt__CollectionsKt.emptyList(), true);
                try {
                    for (String str : fVarV) {
                        Intrinsics.checkNotNull(str);
                        ex0 ex0Var = this.b;
                        ex0Var.getClass();
                        Intrinsics.checkNotNullParameter("gads:ad_quality_macro", C3522b4.i.W);
                        Intrinsics.checkNotNullParameter("@gw_aq_data@", "defaultValue");
                        String str2 = (String) ex0Var.a("gads:ad_quality_macro", "@gw_aq_data@", yr.o);
                        Intrinsics.checkNotNull(strEncodeToString);
                        arrayList.add(Uri.parse(StringsKt__StringsJVMKt.replace$default(str, str2, strEncodeToString, false, 4, (Object) null)));
                    }
                    Unit unit = Unit.INSTANCE;
                    CloseableKt.closeFinally(rr3VarA, null);
                    vw3 vw3Var = this.a;
                    List uris = CollectionsKt___CollectionsKt.toList(arrayList);
                    vw3Var.getClass();
                    Intrinsics.checkNotNullParameter(uris, "uris");
                    Iterator it = uris.iterator();
                    while (it.hasNext()) {
                        vw3Var.e.mo2951trySendJP2dKIU(new Pair((Uri) it.next(), null));
                    }
                    CloseableKt.closeFinally(tu2VarA, null);
                } catch (Throwable th) {
                    try {
                        rr3VarA.b(th);
                        if (th instanceof v24) {
                            throw th;
                        }
                        if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                            rr3VarA.a(th);
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
            } catch (Throwable th2) {
                try {
                    tu2VarA.b(th2);
                    if (th2 instanceof v24) {
                        throw th2;
                    }
                    if (!(th2 instanceof TimeoutCancellationException) && !(th2 instanceof CancellationException)) {
                        tu2VarA.a(th2);
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
                } catch (Throwable th3) {
                    try {
                        throw th3;
                    } catch (Throwable th4) {
                        CloseableKt.closeFinally(tu2VarA, th3);
                        throw th4;
                    }
                }
            }
        } else {
            rr3VarA = hs3.a(s11Var, CollectionsKt__CollectionsKt.emptyList(), true);
            try {
                String strEncodeToString2 = Base64.encodeToString(((o6) ((n6) adQualityData.u()).i().b()).c(), 10);
                ArrayList arrayList2 = new ArrayList();
                rr3VarA = hs3.a(s11.CUI_NAME_AQM_URL_MACRO_EXPAND, CollectionsKt__CollectionsKt.emptyList(), true);
                try {
                    for (String str3 : fVarV) {
                        Intrinsics.checkNotNull(str3);
                        ex0 ex0Var2 = this.b;
                        ex0Var2.getClass();
                        Intrinsics.checkNotNullParameter("gads:ad_quality_macro", C3522b4.i.W);
                        Intrinsics.checkNotNullParameter("@gw_aq_data@", "defaultValue");
                        String str4 = (String) ex0Var2.a("gads:ad_quality_macro", "@gw_aq_data@", yr.o);
                        Intrinsics.checkNotNull(strEncodeToString2);
                        arrayList2.add(Uri.parse(StringsKt__StringsJVMKt.replace$default(str3, str4, strEncodeToString2, false, 4, (Object) null)));
                    }
                    Unit unit2 = Unit.INSTANCE;
                    CloseableKt.closeFinally(rr3VarA, null);
                    vw3 vw3Var2 = this.a;
                    List uris2 = CollectionsKt___CollectionsKt.toList(arrayList2);
                    vw3Var2.getClass();
                    Intrinsics.checkNotNullParameter(uris2, "uris");
                    Iterator it2 = uris2.iterator();
                    while (it2.hasNext()) {
                        vw3Var2.e.mo2951trySendJP2dKIU(new Pair((Uri) it2.next(), null));
                    }
                    CloseableKt.closeFinally(rr3VarA, null);
                } catch (Throwable th5) {
                    try {
                        rr3VarA.b(th5);
                        if (th5 instanceof v24) {
                            throw th5;
                        }
                        if (!(th5 instanceof TimeoutCancellationException) && !(th5 instanceof CancellationException)) {
                            rr3VarA.a(th5);
                        }
                        if (th5 instanceof TimeoutCancellationException) {
                            throw new i21(th5);
                        }
                        if (th5 instanceof CancellationException) {
                            throw new wz0(th5);
                        }
                        if (th5 instanceof w01) {
                            throw th5;
                        }
                        throw new b01(th5);
                    } catch (Throwable th6) {
                        try {
                            throw th6;
                        } finally {
                        }
                    }
                }
            } catch (Throwable th7) {
                try {
                    rr3VarA.b(th7);
                    if (th7 instanceof v24) {
                        throw th7;
                    }
                    if (!(th7 instanceof TimeoutCancellationException) && !(th7 instanceof CancellationException)) {
                        rr3VarA.a(th7);
                    }
                    if (th7 instanceof TimeoutCancellationException) {
                        throw new i21(th7);
                    }
                    if (th7 instanceof CancellationException) {
                        throw new wz0(th7);
                    }
                    if (th7 instanceof w01) {
                        throw th7;
                    }
                    throw new b01(th7);
                } catch (Throwable th62) {
                    try {
                        throw th62;
                    } finally {
                    }
                }
            }
        }
        return true;
    }
}
