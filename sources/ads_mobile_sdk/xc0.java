package ads_mobile_sdk;

import android.os.Bundle;
import androidx.browser.customtabs.CustomTabsCallback;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.io.CloseableKt;
import kotlinx.coroutines.TimeoutCancellationException;

/* JADX INFO: loaded from: classes.dex */
public final class xc0 extends CustomTabsCallback {
    public final /* synthetic */ zc0 a;

    public xc0(zc0 zc0Var) {
        this.a = zc0Var;
    }

    @Override // androidx.browser.customtabs.CustomTabsCallback
    public final void onNavigationEvent(int i, Bundle bundle) {
        g83 g83Var = this.a.c;
        s11 s11Var = s11.CUI_NAME_CUSTOM_TABS_NAVIGATION_EVENT;
        ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
        List listEmptyList = CollectionsKt__CollectionsKt.emptyList();
        if (hs3.b().a == null) {
            tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
            try {
                hs3.a().e().A = Integer.valueOf(i);
                Unit unit = Unit.INSTANCE;
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
                                if (!(th instanceof w01)) {
                                    throw new b01(th);
                                }
                                throw th;
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
                hs3.a().e().A = Integer.valueOf(i);
                Unit unit2 = Unit.INSTANCE;
                CloseableKt.closeFinally(rr3VarA, null);
            } catch (Throwable th2) {
                try {
                    rr3VarA.b(th2);
                    if (!(th2 instanceof v24)) {
                        if (!(th2 instanceof TimeoutCancellationException) && !(th2 instanceof CancellationException)) {
                            rr3VarA.a(th2);
                        }
                        if (!(th2 instanceof TimeoutCancellationException)) {
                            if (!(th2 instanceof CancellationException)) {
                                if (!(th2 instanceof w01)) {
                                    throw new b01(th2);
                                }
                                throw th2;
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
