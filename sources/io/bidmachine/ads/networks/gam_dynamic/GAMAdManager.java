package io.bidmachine.ads.networks.gam_dynamic;

import com.explorestack.protobuf.StringValue;
import io.bidmachine.AdsFormat;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.core.Logger;
import io.bidmachine.protobuf.Waterfall;
import io.bidmachine.utils.Tag;
import io.bidmachine.utils.lazy.LazyValue;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes4.dex */
public class GAMAdManager {
    public final List<InternalAd> internalAdList = new ArrayList();
    public final Object internalAdListLock = new Object();
    public final Map<NetworkAdUnit, InternalAd> reservedInternalAdMap = new WeakHashMap();
    public final Object reservedInternalAdMapLock = new Object();
    public final Tag tag;

    public GAMAdManager(String networkName) {
        this.tag = new Tag(networkName + "AdManager");
    }

    public int getLoadedAdCount(AdsFormat adsFormat) {
        int i;
        synchronized (this.internalAdListLock) {
            try {
                Iterator<InternalAd> it = this.internalAdList.iterator();
                i = 0;
                while (it.hasNext()) {
                    if (it.next().getAdsFormat() == adsFormat) {
                        i++;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return i;
    }

    public InternalAdData reserveMostExpensiveAd(NetworkAdUnit networkAdUnit, AdsFormat adsFormat) {
        synchronized (this.internalAdListLock) {
            try {
                InternalAd internalAdFindMostExpensiveIdleAd = findMostExpensiveIdleAd(adsFormat);
                if (internalAdFindMostExpensiveIdleAd == null) {
                    return null;
                }
                reserveAd(networkAdUnit, internalAdFindMostExpensiveIdleAd);
                return internalAdFindMostExpensiveIdleAd;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public InternalAd findMostExpensiveIdleAd(AdsFormat adsFormat) {
        synchronized (this.internalAdListLock) {
            try {
                for (InternalAd internalAd : this.internalAdList) {
                    if (internalAd.getAdsFormat() == adsFormat && !isAdReserved(internalAd)) {
                        return internalAd;
                    }
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public InternalAd findCheapestIdleAd(AdsFormat adsFormat) {
        synchronized (this.internalAdListLock) {
            try {
                for (int size = this.internalAdList.size() - 1; size >= 0; size--) {
                    InternalAd internalAd = this.internalAdList.get(size);
                    if (internalAd.getAdsFormat() == adsFormat && !isAdReserved(internalAd)) {
                        return internalAd;
                    }
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean removeAdFromCaches(final InternalAd internalAd) {
        boolean zRemove;
        synchronized (this.internalAdListLock) {
            try {
                zRemove = this.internalAdList.remove(internalAd);
                if (zRemove) {
                    Logger.d(this.tag, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.gam_dynamic.GAMAdManager$$ExternalSyntheticLambda2
                        @Override // io.bidmachine.utils.lazy.LazyValue
                        public final Object get() {
                            return GAMAdManager.$r8$lambda$PcBHCKk8Pz4EAh8V0D8yWyp8FN8(this.f$0, internalAd);
                        }
                    });
                }
                unReserveAd(internalAd);
            } catch (Throwable th) {
                throw th;
            }
        }
        return zRemove;
    }

    public static /* synthetic */ String $r8$lambda$PcBHCKk8Pz4EAh8V0D8yWyp8FN8(GAMAdManager gAMAdManager, InternalAd internalAd) {
        gAMAdManager.getClass();
        return String.format("Remove ad from caches (%s, size - %s)", internalAd, Integer.valueOf(gAMAdManager.getLoadedAdCount(internalAd.getAdsFormat())));
    }

    public List<Waterfall.Result.CachedAdUnit> getCachedAdUnitList(AdsFormat adsFormat) {
        synchronized (this.internalAdListLock) {
            try {
                if (this.internalAdList.isEmpty()) {
                    return null;
                }
                ArrayList arrayList = new ArrayList();
                for (InternalAd internalAd : this.internalAdList) {
                    if (internalAd.getAdsFormat() == adsFormat) {
                        Waterfall.Configuration.AdUnit adUnit = internalAd.getAdUnit();
                        Waterfall.Result.CachedAdUnit.Builder frozen = Waterfall.Result.CachedAdUnit.newBuilder().setPrice(adUnit.getPrice()).setFrozen(isAdReserved(internalAd));
                        if (adUnit.getAdUnitId() != null) {
                            frozen.setAdUnitId(adUnit.getAdUnitId());
                        }
                        StringValue serverParams = adUnit.getServerParams();
                        if (serverParams != null) {
                            frozen.setServerParams(serverParams);
                        }
                        internalAd.getInternalAdLoadData();
                        arrayList.add(frozen.build());
                    }
                }
                return arrayList;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean isAdReserved(InternalAd internalAd) {
        boolean zContainsValue;
        synchronized (this.reservedInternalAdMapLock) {
            zContainsValue = this.reservedInternalAdMap.containsValue(internalAd);
        }
        return zContainsValue;
    }

    public void reserveAd(final NetworkAdUnit networkAdUnit, final InternalAd internalAd) {
        synchronized (this.reservedInternalAdMapLock) {
            Logger.d(this.tag, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.gam_dynamic.GAMAdManager$$ExternalSyntheticLambda0
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return GAMAdManager.$r8$lambda$_F8gmejFKB_atFxNUk3VfSfHOZ4(this.f$0, networkAdUnit, internalAd);
                }
            });
            this.reservedInternalAdMap.put(networkAdUnit, internalAd);
        }
    }

    public static /* synthetic */ String $r8$lambda$_F8gmejFKB_atFxNUk3VfSfHOZ4(GAMAdManager gAMAdManager, NetworkAdUnit networkAdUnit, InternalAd internalAd) {
        gAMAdManager.getClass();
        return String.format("Reserve ad (networkAdUnitId - %s, %s, %s / %s)", networkAdUnit.getId(), internalAd, Integer.valueOf(gAMAdManager.getReservedAdCount(internalAd.getAdsFormat())), Integer.valueOf(gAMAdManager.getLoadedAdCount(internalAd.getAdsFormat())));
    }

    public void unReserveAd(InternalAd internalAd) {
        synchronized (this.reservedInternalAdMapLock) {
            try {
                ArrayList arrayList = new ArrayList();
                for (Map.Entry<NetworkAdUnit, InternalAd> entry : this.reservedInternalAdMap.entrySet()) {
                    if (entry.getValue().equals(internalAd)) {
                        arrayList.add(entry.getKey());
                    }
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    unReserveAd((NetworkAdUnit) it.next());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void unReserveAd(final NetworkAdUnit networkAdUnit) {
        synchronized (this.reservedInternalAdMapLock) {
            try {
                final InternalAd internalAdRemove = this.reservedInternalAdMap.remove(networkAdUnit);
                if (internalAdRemove != null) {
                    Logger.d(this.tag, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.gam_dynamic.GAMAdManager$$ExternalSyntheticLambda1
                        @Override // io.bidmachine.utils.lazy.LazyValue
                        public final Object get() {
                            return GAMAdManager.$r8$lambda$srNdTJBeXR4MVZ4VPYWVDFf6LNY(this.f$0, networkAdUnit, internalAdRemove);
                        }
                    });
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static /* synthetic */ String $r8$lambda$srNdTJBeXR4MVZ4VPYWVDFf6LNY(GAMAdManager gAMAdManager, NetworkAdUnit networkAdUnit, InternalAd internalAd) {
        gAMAdManager.getClass();
        return String.format("UnReserve ad (networkAdUnitId - %s, %s, %s / %s)", networkAdUnit.getId(), internalAd, Integer.valueOf(gAMAdManager.getReservedAdCount(internalAd.getAdsFormat())), Integer.valueOf(gAMAdManager.getLoadedAdCount(internalAd.getAdsFormat())));
    }

    public InternalAd getReservedAd(NetworkAdUnit networkAdUnit) {
        InternalAd internalAd;
        synchronized (this.reservedInternalAdMapLock) {
            internalAd = this.reservedInternalAdMap.get(networkAdUnit);
        }
        return internalAd;
    }

    public int getReservedAdCount(AdsFormat adsFormat) {
        int i;
        synchronized (this.reservedInternalAdMapLock) {
            try {
                Iterator<InternalAd> it = this.reservedInternalAdMap.values().iterator();
                i = 0;
                while (it.hasNext()) {
                    if (it.next().getAdsFormat() == adsFormat) {
                        i++;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return i;
    }
}
