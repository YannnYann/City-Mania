package io.bidmachine.ads.networks.gam;

import android.content.Context;
import io.bidmachine.AdsFormat;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.ads.networks.gam.GAMLoader;
import io.bidmachine.ads.networks.gam.versions.VersionWrapper;
import io.bidmachine.core.Logger;
import io.bidmachine.utils.BMError;
import io.bidmachine.utils.Tag;
import io.bidmachine.utils.lazy.LazyValue;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.WeakHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes4.dex */
public class GAMLoader {
    public final Context applicationContext;
    public final long expirationTimeMs;
    public final String networkName;
    public final String requestAgent;
    public final Tag tag;
    public final VersionWrapper versionWrapper;
    public final Map<AdsFormat, GAMTypeConfig> gamTypeConfigMap = new HashMap();
    public final GAMTaskLoader gamTaskLoader = new GAMTaskLoader();
    public final List<InternalGAMAd> gamAdList = new ArrayList();
    public final Map<NetworkAdUnit, InternalGAMAd> reservedGamAdMap = new WeakHashMap();
    public final Object gamAdListLock = new Object();
    public final Object reservedGamAdMapLock = new Object();

    public GAMLoader(Context applicationContext, VersionWrapper versionWrapper, String networkName, Map<AdsFormat, GAMTypeConfig> gamTypeConfigMap, String requestAgent, long expirationTimeMs) {
        this.tag = new Tag(networkName + "Loader");
        this.applicationContext = applicationContext;
        this.versionWrapper = versionWrapper;
        this.networkName = networkName;
        this.requestAgent = requestAgent;
        this.expirationTimeMs = expirationTimeMs;
        for (AdsFormat adsFormat : AdsFormat.values()) {
            GAMTypeConfig gAMTypeConfig = gamTypeConfigMap.get(adsFormat);
            if (gAMTypeConfig != null && !gAMTypeConfig.getGAMUnitDataList().isEmpty()) {
                sortDescByScore(gAMTypeConfig.getGAMUnitDataList());
                this.gamTypeConfigMap.put(gAMTypeConfig.getAdsFormat(), gAMTypeConfig);
            }
        }
    }

    public String getNetworkName() {
        return this.networkName;
    }

    public String getRequestAgent() {
        return this.requestAgent;
    }

    public long getExpirationTimeMs() {
        return this.expirationTimeMs;
    }

    public void load() {
        for (AdsFormat adsFormat : AdsFormat.values()) {
            load(adsFormat);
        }
    }

    public boolean load(AdsFormat adsFormat) {
        GAMTypeConfig gAMTypeConfig = this.gamTypeConfigMap.get(adsFormat);
        if (gAMTypeConfig == null || loadedGAMAdCount(gAMTypeConfig) >= gAMTypeConfig.getCacheSize()) {
            return false;
        }
        this.gamTaskLoader.loadTask(adsFormat, new LoadAdUnitListTask(gAMTypeConfig, 500));
        return true;
    }

    public GAMUnitData reserveMostExpensiveGAMAd(NetworkAdUnit networkAdUnit, String adUnitId) {
        synchronized (this.gamAdListLock) {
            try {
                InternalGAMAd internalGAMAdFindMostExpensiveIdleGAMAd = findMostExpensiveIdleGAMAd(adUnitId);
                if (internalGAMAdFindMostExpensiveIdleGAMAd == null) {
                    return null;
                }
                reserveGAMAd(networkAdUnit, internalGAMAdFindMostExpensiveIdleGAMAd);
                return internalGAMAdFindMostExpensiveIdleGAMAd.getGamUnitData();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void reserveGAMAd(final NetworkAdUnit networkAdUnit, final InternalGAMAd internalGAMAd) {
        synchronized (this.reservedGamAdMapLock) {
            Logger.d(this.tag, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.gam.GAMLoader$$ExternalSyntheticLambda4
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return String.format("reserveGAMAd (networkAdUnitId - %s, %s)", networkAdUnit.getId(), internalGAMAd);
                }
            });
            this.reservedGamAdMap.put(networkAdUnit, internalGAMAd);
        }
    }

    public void unReserveGAMAd(final NetworkAdUnit networkAdUnit) {
        synchronized (this.reservedGamAdMapLock) {
            Logger.d(this.tag, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.gam.GAMLoader$$ExternalSyntheticLambda1
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return String.format("unReserveGAMAd (networkAdUnitId - %s)", networkAdUnit.getId());
                }
            });
            this.reservedGamAdMap.remove(networkAdUnit);
        }
    }

    public InternalGAMAd getReservedGAMAd(NetworkAdUnit networkAdUnit) {
        InternalGAMAd internalGAMAd;
        synchronized (this.reservedGamAdMapLock) {
            internalGAMAd = this.reservedGamAdMap.get(networkAdUnit);
        }
        return internalGAMAd;
    }

    public void onGAMAdShown(InternalGAMAd gamAd) {
        removeFromCaches(gamAd);
    }

    public void onGAMAdDestroy(InternalGAMAd gamAd, boolean canRemoveAd) {
        if (canRemoveAd) {
            gamAd.release();
            removeFromCaches(gamAd);
        } else {
            unReserveGAMAd(gamAd);
        }
    }

    public final void sortDescByScore(List<GAMUnitData> gamUnitDataList) {
        Collections.sort(gamUnitDataList, new Comparator() { // from class: io.bidmachine.ads.networks.gam.GAMLoader$$ExternalSyntheticLambda2
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return GAMLoader.$r8$lambda$RKHbFs3KlWvA1ID97u04rSTQM6E((GAMUnitData) obj, (GAMUnitData) obj2);
            }
        });
    }

    public static /* synthetic */ int $r8$lambda$RKHbFs3KlWvA1ID97u04rSTQM6E(GAMUnitData gAMUnitData, GAMUnitData gAMUnitData2) {
        return -Float.compare(gAMUnitData.getScore(), gAMUnitData2.getScore());
    }

    public InternalGAMAd findMostExpensiveIdleGAMAd(String adUnitId) {
        synchronized (this.gamAdListLock) {
            try {
                for (InternalGAMAd internalGAMAd : this.gamAdList) {
                    if (internalGAMAd.getAdUnitId().equals(adUnitId) && !isReserved(internalGAMAd)) {
                        return internalGAMAd;
                    }
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean isReserved(InternalGAMAd internalGAMAd) {
        boolean zContainsValue;
        synchronized (this.reservedGamAdMapLock) {
            zContainsValue = this.reservedGamAdMap.containsValue(internalGAMAd);
        }
        return zContainsValue;
    }

    public void storeGAMAd(InternalGAMAd gamAd) {
        synchronized (this.gamAdListLock) {
            try {
                if (this.gamAdList.contains(gamAd)) {
                    return;
                }
                this.gamAdList.add(gamAd);
                Collections.sort(this.gamAdList, new Comparator() { // from class: io.bidmachine.ads.networks.gam.GAMLoader$$ExternalSyntheticLambda0
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        return GAMLoader.$r8$lambda$lhYbQso1gVU7WFB3na1KFzxT6XE((InternalGAMAd) obj, (InternalGAMAd) obj2);
                    }
                });
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static /* synthetic */ int $r8$lambda$lhYbQso1gVU7WFB3na1KFzxT6XE(InternalGAMAd internalGAMAd, InternalGAMAd internalGAMAd2) {
        return -Float.compare(internalGAMAd.getScope(), internalGAMAd2.getScope());
    }

    public final void removeFromCaches(final InternalGAMAd gamAd) {
        synchronized (this.gamAdListLock) {
            try {
                if (this.gamAdList.remove(gamAd)) {
                    Logger.d(this.tag, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.gam.GAMLoader$$ExternalSyntheticLambda3
                        @Override // io.bidmachine.utils.lazy.LazyValue
                        public final Object get() {
                            return String.format("removeFromCaches (%s)", gamAd);
                        }
                    });
                }
                unReserveGAMAd(gamAd);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void unReserveGAMAd(InternalGAMAd gamAd) {
        synchronized (this.reservedGamAdMapLock) {
            try {
                ArrayList arrayList = new ArrayList();
                for (Map.Entry<NetworkAdUnit, InternalGAMAd> entry : this.reservedGamAdMap.entrySet()) {
                    if (entry.getValue().equals(gamAd)) {
                        arrayList.add(entry.getKey());
                    }
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    unReserveGAMAd((NetworkAdUnit) it.next());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void destroyGAMAd(InternalGAMAd gamAd) {
        try {
            gamAd.destroy();
        } catch (Throwable unused) {
        }
        removeFromCaches(gamAd);
    }

    public final int loadedGAMAdCount(GAMTypeConfig gamTypeConfig) {
        int i;
        synchronized (this.gamAdListLock) {
            try {
                Iterator<InternalGAMAd> it = this.gamAdList.iterator();
                i = 0;
                while (it.hasNext()) {
                    if (it.next().getAdsFormat() == gamTypeConfig.getAdsFormat()) {
                        i++;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return i;
    }

    public static class LoadAdUnitListTask implements Runnable {
        public final GAMLoader gamLoader;
        public final GAMTypeConfig gamTypeConfig;
        public final String id;
        public final int restAdLoadMs;

        public LoadAdUnitListTask(GAMLoader gamLoader, GAMTypeConfig gamTypeConfig, int restAdLoadMs) {
            this.id = UUID.randomUUID().toString();
            this.gamLoader = gamLoader;
            this.gamTypeConfig = gamTypeConfig;
            this.restAdLoadMs = restAdLoadMs;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Iterator it = new ArrayList(this.gamTypeConfig.getGAMUnitDataList()).iterator();
                while (it.hasNext()) {
                    InternalGAMAd internalGAMAdCreateAd = this.gamLoader.versionWrapper.createAd(this.gamLoader, this.gamTypeConfig.getAdsFormat(), (GAMUnitData) it.next());
                    if (internalGAMAdCreateAd != null) {
                        if (loadGAMAdSync(internalGAMAdCreateAd)) {
                            return;
                        } else {
                            Thread.sleep(this.restAdLoadMs);
                        }
                    }
                }
            } catch (Throwable unused) {
            }
        }

        public final boolean loadGAMAdSync(InternalGAMAd internalGAMAd) {
            CountDownLatch countDownLatch = new CountDownLatch(1);
            try {
                internalGAMAd.load(this.gamLoader.applicationContext, new AwaitLoadListener(countDownLatch));
                countDownLatch.await();
            } catch (Throwable unused) {
                countDownLatch.countDown();
            }
            if (!internalGAMAd.isLoaded()) {
                this.gamLoader.destroyGAMAd(internalGAMAd);
                return false;
            }
            this.gamLoader.storeGAMAd(internalGAMAd);
            return true;
        }

        public static class AwaitLoadListener implements InternalLoadListener {
            public final CountDownLatch countDownLatch;

            public AwaitLoadListener(CountDownLatch countDownLatch) {
                this.countDownLatch = countDownLatch;
            }

            @Override // io.bidmachine.ads.networks.gam.InternalLoadListener
            public void onAdLoadFailed(InternalGAMAd internalGAMAd, BMError bmError) {
                this.countDownLatch.countDown();
            }
        }
    }

    public static class GAMTaskLoader {
        public static final int CORE_POOL_SIZE;
        public static final int CPU_COUNT;
        public final ScheduledExecutorService executorService = Executors.newScheduledThreadPool(CORE_POOL_SIZE);
        public final Map<AdsFormat, Map<String, Future<?>>> submittedFutureMap = new EnumMap(AdsFormat.class);
        public final Object submittedFutureMapLocker = new Object();

        static {
            int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
            CPU_COUNT = iAvailableProcessors;
            CORE_POOL_SIZE = Math.max(2, Math.min(iAvailableProcessors - 1, 4));
        }

        public final void loadTask(final AdsFormat adsFormat, final LoadAdUnitListTask loadTask) {
            try {
                synchronized (this.submittedFutureMapLocker) {
                    try {
                        Map<String, Future<?>> map = this.submittedFutureMap.get(adsFormat);
                        if (map == null || map.isEmpty()) {
                            Future<?> futureSubmit = this.executorService.submit(new Runnable() { // from class: io.bidmachine.ads.networks.gam.GAMLoader$GAMTaskLoader$$ExternalSyntheticLambda0
                                @Override // java.lang.Runnable
                                public final void run() {
                                    GAMLoader.GAMTaskLoader.$r8$lambda$4HjjHjwtRLranMID7kVCsBCcGX0(this.f$0, loadTask, adsFormat);
                                }
                            });
                            if (map == null) {
                                map = new HashMap<>();
                                this.submittedFutureMap.put(adsFormat, map);
                            }
                            map.put(loadTask.id, futureSubmit);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } catch (Throwable unused) {
            }
        }

        public static /* synthetic */ void $r8$lambda$4HjjHjwtRLranMID7kVCsBCcGX0(GAMTaskLoader gAMTaskLoader, LoadAdUnitListTask loadAdUnitListTask, AdsFormat adsFormat) {
            gAMTaskLoader.getClass();
            loadAdUnitListTask.run();
            gAMTaskLoader.removeTask(adsFormat, loadAdUnitListTask.id);
        }

        public final void removeTask(AdsFormat adsFormat, String taskId) {
            synchronized (this.submittedFutureMapLocker) {
                try {
                    Map<String, Future<?>> map = this.submittedFutureMap.get(adsFormat);
                    if (map != null) {
                        map.remove(taskId);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
