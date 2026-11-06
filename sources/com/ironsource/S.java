package com.ironsource;

import com.ironsource.P;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class S implements P, P.a {
    private final ReadWriteLock a;
    private final Map<String, O> b;

    /* JADX WARN: Multi-variable type inference failed */
    public S() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    @Override // com.ironsource.P
    public O a(String adId) {
        Intrinsics.checkNotNullParameter(adId, "adId");
        this.a.readLock().lock();
        try {
            return this.b.get(adId);
        } finally {
            this.a.readLock().unlock();
        }
    }

    public S(ReadWriteLock readWriteLock) {
        Intrinsics.checkNotNullParameter(readWriteLock, "readWriteLock");
        this.a = readWriteLock;
        this.b = new LinkedHashMap();
    }

    @Override // com.ironsource.P
    public List<O> a() {
        this.a.readLock().lock();
        List<O> list = CollectionsKt___CollectionsKt.toList(this.b.values());
        this.a.readLock().unlock();
        return list;
    }

    public /* synthetic */ S(ReadWriteLock readWriteLock, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new ReentrantReadWriteLock() : readWriteLock);
    }

    @Override // com.ironsource.P.a
    public void a(O adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.a.writeLock().lock();
        try {
            if (this.b.get(adInfo.c()) == null) {
                this.b.put(adInfo.c(), adInfo);
            }
        } finally {
            this.a.writeLock().unlock();
        }
    }

    @Override // com.ironsource.P.a
    public void a(JSONObject json, EnumC3752o0 adStatus, String adId) {
        Intrinsics.checkNotNullParameter(json, "json");
        Intrinsics.checkNotNullParameter(adStatus, "adStatus");
        Intrinsics.checkNotNullParameter(adId, "adId");
        this.a.writeLock().lock();
        try {
            O o = this.b.get(adId);
            if (o == null) {
                this.a.writeLock().unlock();
                return;
            }
            String strOptString = json.optString("bundleId");
            Intrinsics.checkNotNull(strOptString);
            if (strOptString.length() > 0) {
                o.a(strOptString);
            }
            String strOptString2 = json.optString("dynamicDemandSource");
            Intrinsics.checkNotNull(strOptString2);
            if (strOptString2.length() > 0) {
                o.a(W7.b.a(strOptString2));
            }
            o.a(adStatus);
            this.a.writeLock().unlock();
        } catch (Throwable th) {
            this.a.writeLock().unlock();
            throw th;
        }
    }

    @Override // com.ironsource.P.a
    public void a(EnumC3752o0 adStatus, String adId) {
        Intrinsics.checkNotNullParameter(adStatus, "adStatus");
        Intrinsics.checkNotNullParameter(adId, "adId");
        this.a.writeLock().lock();
        try {
            O o = this.b.get(adId);
            if (o == null) {
                return;
            }
            o.a(adStatus);
            o.a(System.currentTimeMillis() / 1000.0d);
        } finally {
            this.a.writeLock().unlock();
        }
    }
}
