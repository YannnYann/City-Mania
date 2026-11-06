package ads_mobile_sdk;

import android.view.View;
import android.webkit.WebView;
import java.util.Collections;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class l9 extends sn {
    public static final l9 d = new l9();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // ads_mobile_sdk.sn
    public final void a(boolean z) {
        Iterator it = Collections.unmodifiableCollection(q9.c.a).iterator();
        while (it.hasNext()) {
            r9 r9Var = ((p9) it.next()).d;
            if (r9Var.b.get() != 0) {
                qd2.a.a((WebView) r9Var.b.get(), "setState", z ? "foregrounded" : "backgrounded", r9Var.a);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // ads_mobile_sdk.sn
    public final boolean b() {
        Iterator it = Collections.unmodifiableCollection(q9.c.b).iterator();
        while (it.hasNext()) {
            View view = (View) ((p9) it.next()).c.get();
            if (view != null && view.hasWindowFocus()) {
                return true;
            }
        }
        return false;
    }
}
