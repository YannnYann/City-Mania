package ads_mobile_sdk;

import android.webkit.WebView;
import com.ironsource.G4;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class o implements rn {
    public static final o f = new o(new sn());
    public final hg2 a = new hg2();
    public Date b;
    public boolean c;
    public final sn d;
    public boolean e;

    public o(sn snVar) {
        this.d = snVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // ads_mobile_sdk.rn
    public final void a(boolean z) {
        if (!this.e && z) {
            this.a.getClass();
            Date date = new Date();
            Date date2 = this.b;
            if (date2 == null || date.after(date2)) {
                this.b = date;
                if (this.c) {
                    Iterator it = Collections.unmodifiableCollection(q9.c.b).iterator();
                    while (it.hasNext()) {
                        r9 r9Var = ((p9) it.next()).d;
                        Date date3 = this.b;
                        Date date4 = date3 != null ? (Date) date3.clone() : null;
                        r9Var.getClass();
                        if (date4 != null) {
                            JSONObject jSONObject = new JSONObject();
                            pe2.a(jSONObject, G4.a.d, Long.valueOf(date4.getTime()));
                            qd2.a.a((WebView) r9Var.b.get(), "setLastActivity", jSONObject);
                        }
                    }
                }
            }
        }
        this.e = z;
    }
}
