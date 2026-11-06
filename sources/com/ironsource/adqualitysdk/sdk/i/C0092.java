package com.ironsource.adqualitysdk.sdk.i;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ȉ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0092 {

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public static C0092 f896;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final Context f902;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public static final String f898 = StringFog.decrypt("nmTNXE0MZeWzb81cUjpa67xqyVhT\n", "0guuPSFOF4o=\n");

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public static final Object f897 = new Object();

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public boolean f903 = true;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final HashMap f901 = new HashMap();

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final HashMap f900 = new HashMap();

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final ArrayList f899 = new ArrayList();

    public C0092(Context context) {
        this.f902 = context;
        new HandlerC0113(this, context.getMainLooper());
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static C0092 m1090(Context context) {
        C0092 c0092;
        synchronized (f897) {
            try {
                if (f896 == null) {
                    f896 = new C0092(context.getApplicationContext());
                }
                c0092 = f896;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0092;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final void m1091() {
        synchronized (this.f901) {
            try {
                Iterator it = new HashMap(this.f901).keySet().iterator();
                while (it.hasNext()) {
                    m1094((BroadcastReceiver) it.next());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final synchronized void m1092() {
        this.f903 = false;
        m1091();
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized void m1093() {
        this.f903 = true;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m1094(BroadcastReceiver broadcastReceiver) {
        synchronized (this.f901) {
            try {
                ArrayList arrayList = (ArrayList) this.f901.remove(broadcastReceiver);
                if (arrayList == null) {
                    return;
                }
                for (int i = 0; i < arrayList.size(); i++) {
                    IntentFilter intentFilter = (IntentFilter) arrayList.get(i);
                    for (int i2 = 0; i2 < intentFilter.countActions(); i2++) {
                        String action = intentFilter.getAction(i2);
                        ArrayList arrayList2 = (ArrayList) this.f900.get(action);
                        if (arrayList2 != null) {
                            if (arrayList2.size() <= 0) {
                                if (arrayList2.size() <= 0) {
                                    this.f900.remove(action);
                                }
                            } else {
                                if (arrayList2.get(0) != null) {
                                    throw new ClassCastException();
                                }
                                throw null;
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
