package com.ironsource;

import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.HashMap;

/* JADX INFO: renamed from: com.ironsource.e9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public class C3582e9 {
    private final E0 a;

    public C3582e9(E0 e0) {
        this.a = e0;
    }

    public void a(String str, String str2) {
        HashMap map = new HashMap();
        map.put(IronSourceConstants.EVENTS_EXT1, str + "|" + str2);
        this.a.a(B0.INIT_STARTED, map);
    }

    public void a(long j) {
        HashMap map = new HashMap();
        map.put("duration", Long.valueOf(j));
        this.a.a(B0.INIT_ENDED, map);
    }

    public void a() {
        this.a.a(B0.INIT_SUCCESS, null);
    }

    public void a(int i, String str) {
        HashMap map = new HashMap();
        map.put("errorCode", Integer.valueOf(i));
        map.put("reason", str);
        this.a.a(B0.INIT_FAILED, map);
    }
}
