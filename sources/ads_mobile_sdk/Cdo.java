package ads_mobile_sdk;

import android.content.Context;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: renamed from: ads_mobile_sdk.do, reason: invalid class name */
/* JADX INFO: loaded from: classes.dex */
public final class Cdo {
    public static final HashMap d = new HashMap();
    public static volatile Cdo e;
    public final eo a = new eo();
    public final Context b;
    public volatile ArrayList c;

    public final void b() {
        d.put("FireTVFOSDAT", ds0.a(this.b));
    }

    public Cdo(Context context) {
        this.b = context != null ? context.getApplicationContext() : null;
        b();
    }

    public final List a() {
        if (this.c != null) {
            return this.c;
        }
        synchronized (this) {
            if (this.c != null) {
                return this.c;
            }
            try {
                ArrayList arrayList = new ArrayList();
                for (Map.Entry entry : d.entrySet()) {
                    if (((ds0) ((ru1) entry.getValue())).a()) {
                        eo eoVar = this.a;
                        String str = (String) entry.getKey();
                        Context context = this.b;
                        eoVar.getClass();
                        cs0 cs0VarA = eo.a(context, str);
                        if (cs0VarA != null) {
                            arrayList.add(cs0VarA);
                        }
                    }
                }
                this.c = arrayList;
                return this.c;
            } catch (Exception e2) {
                Log.e("OMIDLIB", "Error getting supported attestation mechanisms", e2);
                this.c = new ArrayList();
                return this.c;
            }
        }
    }

    public static Cdo a(Context context) {
        if (e == null) {
            synchronized (Cdo.class) {
                try {
                    if (e == null) {
                        e = new Cdo(context);
                    }
                } finally {
                }
            }
        }
        return e;
    }
}
