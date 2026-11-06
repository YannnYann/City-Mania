package com.ironsource.mediationsdk;

import com.ironsource.C3545c9;
import com.ironsource.C3655ia;
import com.ironsource.C3939y2;
import com.ironsource.Db;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdInfo;
import com.ironsource.mediationsdk.impressionData.ImpressionDataListener;
import com.ironsource.mediationsdk.logger.IronLog;
import java.util.HashSet;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public abstract class k {
    private HashSet<ImpressionDataListener> a;
    protected com.ironsource.r b;
    protected C3655ia c;
    protected AdInfo d;

    public k(HashSet<ImpressionDataListener> hashSet, C3655ia c3655ia) {
        new HashSet();
        this.a = hashSet;
        this.b = new com.ironsource.r();
        this.c = c3655ia;
    }

    public void a(ImpressionDataListener impressionDataListener) {
        synchronized (this) {
            this.a.add(impressionDataListener);
        }
    }

    public void b(ImpressionDataListener impressionDataListener) {
        synchronized (this) {
            this.a.remove(impressionDataListener);
        }
    }

    public void c() {
        this.d = null;
    }

    public void a(C3655ia c3655ia) {
        this.c = c3655ia;
    }

    public void b() {
        synchronized (this) {
            this.a.clear();
        }
    }

    public void a(C3545c9 c3545c9, Db db) {
        if (c3545c9 != null) {
            this.d = new AdInfo(c3545c9, db);
        }
    }

    public void a(C3939y2 c3939y2, String str) {
        HashSet<ImpressionDataListener> hashSet;
        if (c3939y2 != null) {
            C3545c9 c3545c9A = c3939y2.a(str);
            if (c3545c9A != null) {
                synchronized (this) {
                    hashSet = (HashSet) this.a.clone();
                }
                for (ImpressionDataListener impressionDataListener : hashSet) {
                    IronLog.CALLBACK.info("onImpressionSuccess " + impressionDataListener.getClass().getSimpleName() + ": " + c3545c9A);
                    impressionDataListener.onImpressionSuccess(c3545c9A);
                }
                return;
            }
            return;
        }
        IronLog.INTERNAL.verbose("no auctionResponseItem or listener");
    }

    public String a() {
        return "fallback_" + System.currentTimeMillis();
    }

    public void a(JSONObject jSONObject, IronSource.a aVar) {
        this.b.a(aVar, jSONObject != null ? jSONObject.optBoolean(d.f, false) : false);
    }

    public void a(IronSource.a aVar) {
        this.b.a(aVar, false);
    }
}
