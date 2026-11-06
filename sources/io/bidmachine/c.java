package io.bidmachine;

import android.util.Pair;
import io.bidmachine.core.Logger;
import io.bidmachine.internal.InterfaceC4217a;
import io.bidmachine.protobuf.AdCachePlacementControl;
import io.bidmachine.utils.lazy.LazyValue;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
public class c implements InterfaceC4217a {
    public static volatile c c;
    public static final Map d = new ConcurrentHashMap();
    public final Object a = new Object();
    public final List b = new ArrayList();

    public class a implements Comparator {
        public a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(AdResponse adResponse, AdResponse adResponse2) {
            return -Double.compare(adResponse.getPrice(), adResponse2.getPrice());
        }
    }

    public static c a() {
        c cVar;
        c cVar2 = c;
        if (cVar2 != null) {
            return cVar2;
        }
        synchronized (c.class) {
            try {
                cVar = c;
                if (cVar == null) {
                    cVar = new c();
                    c = cVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return cVar;
    }

    public static /* synthetic */ String b(AdResponse adResponse) {
        return String.format("receive - %s", adResponse);
    }

    public static /* synthetic */ String c(AdResponse adResponse) {
        return String.format("remove - %s", adResponse);
    }

    public static /* synthetic */ String d(AdResponse adResponse) {
        return String.format("store - %s", adResponse);
    }

    public List e(AdRequestParameters adRequestParameters) {
        synchronized (this.a) {
            try {
                ArrayList arrayList = new ArrayList();
                for (AdResponse adResponse : this.b) {
                    if (adResponse.getStatus() == d.Idle && adRequestParameters.isParametersMatched(adResponse.getAdRequestParameters())) {
                        arrayList.add(adResponse);
                    }
                }
                if (arrayList.isEmpty()) {
                    return arrayList;
                }
                Collections.sort(arrayList, new a());
                return arrayList.subList(0, Math.min(c(adRequestParameters), arrayList.size()));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0089  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void f(final io.bidmachine.AdResponse r13) {
        /*
            r12 = this;
            boolean r0 = r13.canCache()
            if (r0 != 0) goto L7
            return
        L7:
            io.bidmachine.c$$ExternalSyntheticLambda1 r0 = new io.bidmachine.c$$ExternalSyntheticLambda1
            r0.<init>()
            java.lang.String r1 = "AdResponseManager"
            io.bidmachine.core.Logger.d(r1, r0)
            java.lang.Object r0 = r12.a
            monitor-enter(r0)
            io.bidmachine.AdRequestParameters r1 = r13.getAdRequestParameters()     // Catch: java.lang.Throwable -> L53
            java.util.List r2 = r12.b     // Catch: java.lang.Throwable -> L53
            java.util.Iterator r2 = r2.iterator()     // Catch: java.lang.Throwable -> L53
            r3 = 0
            r4 = 0
            r5 = r4
            r6 = r5
            r4 = r3
        L23:
            boolean r7 = r2.hasNext()     // Catch: java.lang.Throwable -> L53
            if (r7 == 0) goto L65
            java.lang.Object r7 = r2.next()     // Catch: java.lang.Throwable -> L53
            io.bidmachine.AdResponse r7 = (io.bidmachine.AdResponse) r7     // Catch: java.lang.Throwable -> L53
            io.bidmachine.AdRequestParameters r8 = r7.getAdRequestParameters()     // Catch: java.lang.Throwable -> L53
            boolean r8 = r1.isParametersMatched(r8)     // Catch: java.lang.Throwable -> L53
            if (r8 != 0) goto L3a
            goto L23
        L3a:
            int r6 = r6 + 1
            io.bidmachine.d r8 = r7.getStatus()     // Catch: java.lang.Throwable -> L53
            io.bidmachine.d r9 = io.bidmachine.d.Idle     // Catch: java.lang.Throwable -> L53
            if (r8 != r9) goto L57
            if (r4 == 0) goto L55
            double r8 = r4.getPrice()     // Catch: java.lang.Throwable -> L53
            double r10 = r7.getPrice()     // Catch: java.lang.Throwable -> L53
            int r8 = (r8 > r10 ? 1 : (r8 == r10 ? 0 : -1))
            if (r8 <= 0) goto L23
            goto L55
        L53:
            r13 = move-exception
            goto Lb1
        L55:
            r4 = r7
            goto L23
        L57:
            io.bidmachine.d r8 = r7.getStatus()     // Catch: java.lang.Throwable -> L53
            io.bidmachine.d r9 = io.bidmachine.d.Busy     // Catch: java.lang.Throwable -> L53
            if (r8 != r9) goto L23
            int r5 = r5 + 1
            if (r3 != 0) goto L23
            r3 = r7
            goto L23
        L65:
            io.bidmachine.d r2 = r13.getStatus()     // Catch: java.lang.Throwable -> L53
            io.bidmachine.d r7 = io.bidmachine.d.Busy     // Catch: java.lang.Throwable -> L53
            if (r2 != r7) goto L89
            if (r3 == 0) goto L89
            int r2 = r12.c(r1)     // Catch: java.lang.Throwable -> L53
            if (r5 < r2) goto L89
            io.bidmachine.d r2 = io.bidmachine.d.Idle     // Catch: java.lang.Throwable -> L53
            r3.setStatus(r2)     // Catch: java.lang.Throwable -> L53
            if (r4 == 0) goto L8a
            double r7 = r4.getPrice()     // Catch: java.lang.Throwable -> L53
            double r9 = r3.getPrice()     // Catch: java.lang.Throwable -> L53
            int r2 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r2 <= 0) goto L89
            goto L8a
        L89:
            r3 = r4
        L8a:
            int r1 = r12.d(r1)     // Catch: java.lang.Throwable -> L53
            if (r6 < r1) goto Laa
            if (r3 == 0) goto Laa
            double r1 = r13.getPrice()     // Catch: java.lang.Throwable -> L53
            double r4 = r3.getPrice()     // Catch: java.lang.Throwable -> L53
            int r1 = (r1 > r4 ? 1 : (r1 == r4 ? 0 : -1))
            if (r1 < 0) goto La8
            r1 = 1
            r3.notifyExpired(r1)     // Catch: java.lang.Throwable -> L53
            java.util.List r1 = r12.b     // Catch: java.lang.Throwable -> L53
            r1.remove(r3)     // Catch: java.lang.Throwable -> L53
            goto Laa
        La8:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L53
            return
        Laa:
            java.util.List r1 = r12.b     // Catch: java.lang.Throwable -> L53
            r1.add(r13)     // Catch: java.lang.Throwable -> L53
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L53
            return
        Lb1:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L53
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.c.f(io.bidmachine.AdResponse):void");
    }

    public final AdCachePlacementControl b(AdRequestParameters adRequestParameters) {
        return (AdCachePlacementControl) d.get(adRequestParameters.getAdsType().getName());
    }

    public int c(AdRequestParameters adRequestParameters) {
        AdCachePlacementControl adCachePlacementControlB = b(adRequestParameters);
        int maxRetainCount = adCachePlacementControlB != null ? adCachePlacementControlB.getMaxRetainCount() : 0;
        if (maxRetainCount > 0) {
            return maxRetainCount;
        }
        return 2;
    }

    public int d(AdRequestParameters adRequestParameters) {
        AdCachePlacementControl adCachePlacementControlB = b(adRequestParameters);
        int maxCacheSize = adCachePlacementControlB != null ? adCachePlacementControlB.getMaxCacheSize() : 0;
        if (maxCacheSize > 0) {
            return maxCacheSize;
        }
        return 8;
    }

    public boolean a(AdResponse adResponse) {
        boolean zContains;
        synchronized (this.a) {
            zContains = this.b.contains(adResponse);
        }
        return zContains;
    }

    @Override // io.bidmachine.internal.InterfaceC4217a
    public final List a(AdRequestParameters adRequestParameters) {
        ArrayList arrayList;
        synchronized (this.a) {
            try {
                arrayList = new ArrayList();
                for (AdResponse adResponse : this.b) {
                    if (adRequestParameters.isParametersMatched(adResponse.getAdRequestParameters())) {
                        arrayList.add(new Pair(Double.valueOf(adResponse.getPrice()), adResponse.responseId));
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return arrayList;
    }

    public static void a(Map map) {
        Map map2 = d;
        map2.clear();
        if (map != null) {
            map2.putAll(map);
        }
    }

    public void e(final AdResponse adResponse) {
        Logger.d("AdResponseManager", (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.c$$ExternalSyntheticLambda0
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return c.c(adResponse);
            }
        });
        adResponse.setCached(false);
        synchronized (this.a) {
            this.b.remove(adResponse);
        }
    }

    public AdResponse f(AdRequestParameters adRequestParameters) {
        synchronized (this.a) {
            try {
                int iC = c(adRequestParameters);
                int i = 0;
                final AdResponse adResponse = null;
                AdResponse adResponse2 = null;
                for (AdResponse adResponse3 : this.b) {
                    if (!adResponse3.wasShown() && adRequestParameters.isParametersMatched(adResponse3.getAdRequestParameters())) {
                        d status = adResponse3.getStatus();
                        d dVar = d.Idle;
                        if (status == dVar) {
                            if (adResponse == null || adResponse3.getPrice() > adResponse.getPrice()) {
                                adResponse = adResponse3;
                            }
                        } else if (adResponse3.getStatus() == d.Busy) {
                            i++;
                            if (adResponse2 == null) {
                                adResponse2 = adResponse3;
                            }
                            if (i >= iC) {
                                adResponse2.expireAdRequests(null);
                                adResponse2.clearAdRequestList();
                                adResponse2.setStatus(dVar);
                                if (adResponse == null || adResponse2.getPrice() >= adResponse.getPrice()) {
                                    adResponse = adResponse2;
                                }
                            }
                        }
                    }
                }
                if (adResponse == null || !adRequestParameters.isPricePassedByPriceFloor(adResponse.getPrice())) {
                    return null;
                }
                adResponse.setCached(true);
                adResponse.setStatus(d.Busy);
                Logger.d("AdResponseManager", (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.c$$ExternalSyntheticLambda2
                    @Override // io.bidmachine.utils.lazy.LazyValue
                    public final Object get() {
                        return c.b(adResponse);
                    }
                });
                this.b.remove(adResponse);
                this.b.add(adResponse);
                return adResponse;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
