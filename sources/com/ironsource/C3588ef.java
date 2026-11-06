package com.ironsource;

import com.ironsource.R8;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.sdk.controller.FeaturesManager;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import kotlin.NoWhenBranchMatchedException;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.ef, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3588ef implements R8, R8.a {
    private Map<String, C3918x> a = new LinkedHashMap();
    private final C3877uc b = new C3877uc();
    private final ReadWriteLock c = new ReentrantReadWriteLock();

    /* JADX INFO: renamed from: com.ironsource.ef$a */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[EnumC3570df.values().length];
            try {
                iArr[EnumC3570df.e.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[EnumC3570df.d.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[EnumC3570df.c.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    private final void b() {
        C3551cf sessionHistoryConfig = FeaturesManager.getInstance().getSessionHistoryConfig();
        C3877uc c3877uc = this.b;
        Intrinsics.checkNotNull(sessionHistoryConfig);
        c3877uc.a(a(sessionHistoryConfig));
        this.b.a(a());
    }

    @Override // com.ironsource.R8.a
    public void a(AbstractC3606ff historyRecord) {
        Intrinsics.checkNotNullParameter(historyRecord, "historyRecord");
        this.c.writeLock().lock();
        try {
            O oA = historyRecord.a();
            String strValueOf = String.valueOf(oA != null ? oA.b() : null);
            Map<String, C3918x> map = this.a;
            C3918x c3918x = map.get(strValueOf);
            if (c3918x == null) {
                c3918x = new C3918x();
                map.put(strValueOf, c3918x);
            }
            c3918x.a(historyRecord.a(new C3713lf()));
            this.c.writeLock().unlock();
            b();
        } catch (Throwable th) {
            this.c.writeLock().unlock();
            throw th;
        }
    }

    @Override // com.ironsource.R8
    public JSONObject a(EnumC3767of mode) {
        Intrinsics.checkNotNullParameter(mode, "mode");
        this.c.readLock().lock();
        try {
            JSONObject jSONObject = new JSONObject();
            for (Map.Entry<String, C3918x> entry : this.a.entrySet()) {
                String key = entry.getKey();
                JSONObject jSONObjectA = entry.getValue().a(mode);
                if (jSONObjectA.length() > 0) {
                    jSONObject.put(key, jSONObjectA);
                }
            }
            return jSONObject;
        } finally {
            this.c.readLock().unlock();
        }
    }

    @Override // com.ironsource.R8
    public int a(IronSource.a adFormat) {
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        this.c.readLock().lock();
        try {
            C3918x c3918x = this.a.get(adFormat.toString());
            return c3918x != null ? c3918x.a() : 0;
        } finally {
            this.c.readLock().unlock();
        }
    }

    @Override // com.ironsource.R8
    public List<String> a() {
        this.c.readLock().lock();
        try {
            Map<String, C3918x> map = this.a;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry<String, C3918x> entry : map.entrySet()) {
                if (entry.getValue().b()) {
                    linkedHashMap.put(entry.getKey(), entry.getValue());
                }
            }
            List<String> list = CollectionsKt___CollectionsKt.toList(linkedHashMap.keySet());
            this.c.readLock().unlock();
            return list;
        } catch (Throwable th) {
            this.c.readLock().unlock();
            throw th;
        }
    }

    @Override // com.ironsource.R8
    public Map<String, JSONObject> a(C3551cf configuration) {
        Map<String, JSONObject> mapMutableMapOf;
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        this.c.readLock().lock();
        try {
            int i = a.a[configuration.a().ordinal()];
            if (i == 1) {
                mapMutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.to(R6.z1, a(EnumC3767of.a)), TuplesKt.to(R6.A1, a(EnumC3767of.b)));
            } else if (i == 2) {
                mapMutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.to(R6.A1, a(EnumC3767of.b)));
            } else if (i == 3) {
                mapMutableMapOf = MapsKt__MapsKt.emptyMap();
            } else {
                throw new NoWhenBranchMatchedException();
            }
            this.c.readLock().unlock();
            return mapMutableMapOf;
        } catch (Throwable th) {
            this.c.readLock().unlock();
            throw th;
        }
    }
}
