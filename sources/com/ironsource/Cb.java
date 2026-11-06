package com.ironsource;

import android.text.TextUtils;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public class Cb {
    private final E0 a;

    public Cb(E0 e0) {
        this.a = e0;
    }

    public void a(boolean z) {
        a(z, false);
    }

    public void b(int i) {
        HashMap map = new HashMap();
        map.put("errorCode", Integer.valueOf(i));
        this.a.a(B0.SKIP_RELOAD_AD, map);
    }

    public void c() {
        this.a.a(B0.PRELOAD_ADUNIT_LOAD_SUCCESS, new HashMap());
    }

    public void d() {
        this.a.a(B0.RELOAD_AD, new HashMap());
    }

    public void a(boolean z, boolean z2) {
        HashMap map = new HashMap();
        if (z) {
            map.put(IronSourceConstants.EVENTS_PUBLISHER_LOAD, Boolean.TRUE);
        }
        if (z2) {
            map.put(IronSourceConstants.EVENTS_EXT1, "preload");
        }
        this.a.a(B0.LOAD_AD, map);
    }

    public void b(long j, int i, boolean z) {
        HashMap map = new HashMap();
        map.put("duration", Long.valueOf(j));
        map.put("errorCode", Integer.valueOf(i));
        if (z) {
            map.put(IronSourceConstants.EVENTS_EXT1, "preload");
        }
        this.a.a(B0.LOAD_AD_NO_FILL, map);
    }

    public void a(int i) {
        HashMap map = new HashMap();
        map.put("sessionDepth", Integer.valueOf(i));
        this.a.a(B0.DESTROY_AD, map);
    }

    public void b() {
        this.a.a(B0.PRELOAD_ADUNIT_INITIATED, new HashMap());
    }

    public void a(long j, boolean z) {
        a(j, z, false);
    }

    public void a(long j, boolean z, boolean z2) {
        HashMap map = new HashMap();
        map.put("duration", Long.valueOf(j));
        if (z) {
            map.put(IronSourceConstants.EVENTS_PUBLISHER_LOAD, Boolean.TRUE);
        }
        if (z2) {
            map.put(IronSourceConstants.EVENTS_EXT1, "preload");
        }
        this.a.a(B0.LOAD_AD_SUCCESS, map);
    }

    public void a(long j) {
        HashMap map = new HashMap();
        map.put("duration", Long.valueOf(j));
        this.a.a(B0.RELOAD_AD_SUCCESS, map);
    }

    public void a(long j, int i, boolean z) {
        a(j, i, z, false);
    }

    public void a(long j, int i, boolean z, boolean z2) {
        HashMap map = new HashMap();
        map.put("duration", Long.valueOf(j));
        map.put("errorCode", Integer.valueOf(i));
        if (z) {
            map.put(IronSourceConstants.EVENTS_PUBLISHER_LOAD, Boolean.TRUE);
        }
        if (z2) {
            map.put(IronSourceConstants.EVENTS_EXT1, "preload");
        }
        this.a.a(B0.LOAD_AD_FAILED, map);
    }

    public void a(long j, int i, String str, boolean z) {
        a(j, i, str, z, false);
    }

    public void a(long j, int i, String str, boolean z, boolean z2) {
        HashMap map = new HashMap();
        map.put("duration", Long.valueOf(j));
        map.put("errorCode", Integer.valueOf(i));
        if (!TextUtils.isEmpty(str)) {
            map.put("reason", str);
        }
        if (z) {
            map.put(IronSourceConstants.EVENTS_PUBLISHER_LOAD, Boolean.TRUE);
        }
        if (z2) {
            map.put(IronSourceConstants.EVENTS_EXT1, "preload");
        }
        this.a.a(B0.LOAD_AD_FAILED_WITH_REASON, map);
    }

    public void a(long j, int i, String str) {
        HashMap map = new HashMap();
        map.put("duration", Long.valueOf(j));
        map.put("errorCode", Integer.valueOf(i));
        if (!TextUtils.isEmpty(str)) {
            map.put("reason", str);
        }
        this.a.a(B0.RELOAD_AD_FAILED_WITH_REASON, map);
    }

    public void a(boolean z, long j, boolean z2) {
        B0 b0;
        HashMap map = new HashMap();
        map.put("duration", Long.valueOf(j));
        if (z2) {
            map.put("errorCode", Integer.valueOf(IronSourceError.ERROR_RV_EXPIRED_ADS));
            map.put("reason", "loaded ads are expired");
        }
        E0 e0 = this.a;
        if (z) {
            b0 = B0.AD_AVAILABILITY_CHANGED_TRUE;
        } else {
            b0 = B0.AD_AVAILABILITY_CHANGED_FALSE;
        }
        e0.a(b0, map);
    }

    public void a(long j, int i) {
        HashMap map = new HashMap();
        map.put("duration", Long.valueOf(j));
        map.put("errorCode", Integer.valueOf(i));
        this.a.a(B0.RELOAD_AD_NO_FILL, map);
    }

    public void a(Boolean bool, String str) {
        HashMap map = new HashMap();
        if (!TextUtils.isEmpty(str)) {
            map.put("reason", str);
        }
        this.a.a(bool.booleanValue() ? B0.AD_READY_TRUE : B0.AD_READY_FALSE, map);
    }

    public void a() {
        this.a.a(B0.PRELOAD_ADUNIT_FAILED, new HashMap());
    }
}
