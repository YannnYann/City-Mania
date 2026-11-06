package io.bidmachine.displays;

import com.explorestack.protobuf.Any;
import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.adcom.Ad;
import io.bidmachine.AdContentType;
import io.bidmachine.AdsType;
import io.bidmachine.BidMachineTrackingObject;
import io.bidmachine.ContextProvider;
import io.bidmachine.HeaderBiddingAdRequestParams;
import io.bidmachine.HeaderBiddingAdapter;
import io.bidmachine.HeaderBiddingCollectParamsCallback;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.NetworkAdapter;
import io.bidmachine.NetworkConfig;
import io.bidmachine.NetworkRegistry;
import io.bidmachine.ProtoExtConstants;
import io.bidmachine.TrackEventType;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import io.bidmachine.models.AdObjectParams;
import io.bidmachine.protobuf.headerbidding.HeaderBiddingAd;
import io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement;
import io.bidmachine.tracking.EventData;
import io.bidmachine.tracking.TrackEventInfo;
import io.bidmachine.tracking.TrackingObject;
import io.bidmachine.unified.UnifiedAdRequestParams;
import io.bidmachine.utils.BMError;
import io.bidmachine.utils.lazy.LazyValue;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public class b {

    public static final class a implements Runnable, HeaderBiddingAdRequestParams, HeaderBiddingCollectParamsCallback {
        public static final Executor k = Executors.newFixedThreadPool(Runtime.getRuntime().availableProcessors() * 2);
        public final ContextProvider a;
        public final HeaderBiddingAdapter b;
        public final AdsType c;
        public final AdContentType d;
        public final UnifiedAdRequestParams e;
        public final NetworkAdUnit f;
        public CountDownLatch h;
        public HeaderBiddingPlacement.AdUnit i;
        public boolean j = false;
        public final TrackingObject g = new BidMachineTrackingObject();

        public a(ContextProvider contextProvider, HeaderBiddingAdapter headerBiddingAdapter, AdsType adsType, AdContentType adContentType, UnifiedAdRequestParams unifiedAdRequestParams, NetworkAdUnit networkAdUnit) {
            this.a = contextProvider;
            this.b = headerBiddingAdapter;
            this.c = adsType;
            this.d = adContentType;
            this.e = unifiedAdRequestParams;
            this.f = networkAdUnit;
        }

        public final /* synthetic */ String a(BMError bMError) {
            return String.format("%s (%s) - Header bidding collect fail - %s", this.c, this.d, bMError);
        }

        public final void b() {
            this.j = true;
            this.h.countDown();
        }

        public HeaderBiddingPlacement.AdUnit c() {
            return this.i;
        }

        public boolean d() {
            return this.j;
        }

        public final /* synthetic */ String e() {
            return String.format("%s (%s) - Header bidding collect fail: timeout", this.c, this.d);
        }

        public final /* synthetic */ String f() {
            return String.format("%s (%s) - Header bidding collect finished", this.c, this.d);
        }

        @Override // io.bidmachine.HeaderBiddingAdRequestParams
        public AdContentType getAdContentType() {
            return this.d;
        }

        @Override // io.bidmachine.HeaderBiddingAdRequestParams
        public AdsType getAdsType() {
            return this.c;
        }

        @Override // io.bidmachine.HeaderBiddingCollectParamsCallback
        public void onCollectFail(final BMError bMError) {
            if (this.j) {
                return;
            }
            Logger.d(this.b.getKey(), (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.displays.b$a$$ExternalSyntheticLambda1
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return this.f$0.a(bMError);
                }
            });
            b();
            this.g.eventFinish(TrackEventType.HeaderBiddingNetworkPrepare, this.c, new EventData().setNetworkName(this.b.getKey()), bMError);
        }

        @Override // io.bidmachine.HeaderBiddingCollectParamsCallback
        public void onCollectFinished(Map map) {
            if (this.j) {
                return;
            }
            this.i = HeaderBiddingPlacement.AdUnit.newBuilder().setBidder(this.b.getKey()).setBidderSdkver(this.b.obtainNetworkSdkVersion()).putClientParams(ProtoExtConstants.AD_UNIT_ID, this.f.getId()).putAllClientParams(this.f.getMediationConfig()).putAllClientParams(map).build();
            Logger.d(this.b.getKey(), (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.displays.b$a$$ExternalSyntheticLambda2
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return this.f$0.f();
                }
            });
            b();
            this.g.eventFinish(TrackEventType.HeaderBiddingNetworkPrepare, this.c, new EventData().setNetworkName(this.b.getKey()), null);
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
            } catch (Throwable th) {
                th = th;
            }
            try {
                this.b.collectHeaderBiddingParams(this.a, this.e, this.f, this, this);
            } catch (Throwable th2) {
                th = th2;
                Logger.w(th);
                onCollectFail(BMError.throwable("Exception collecting header bidding parameters", th));
            }
        }

        public void a(CountDownLatch countDownLatch) {
            this.g.eventStart(TrackEventType.HeaderBiddingNetworkPrepare, new TrackEventInfo().withParameter("HB_NETWORK", this.b.getKey()).withParameter("BM_AD_TYPE", this.c.getName()));
            this.h = countDownLatch;
            k.execute(this);
        }

        public void a() {
            if (this.j) {
                return;
            }
            Logger.d(this.b.getKey(), (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.displays.b$a$$ExternalSyntheticLambda0
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return this.f$0.e();
                }
            });
            b();
        }
    }

    public HeaderBiddingPlacement.Builder a(ContextProvider contextProvider, UnifiedAdRequestParams unifiedAdRequestParams, AdsType adsType, AdContentType adContentType, Collection collection, List list, int i) {
        ArrayList<a> arrayList = new ArrayList();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            NetworkConfig networkConfig = (NetworkConfig) it.next();
            NetworkAdapter adapter = NetworkRegistry.getAdapter(networkConfig.getNetworkKey());
            if ((adapter instanceof HeaderBiddingAdapter) && adapter.isInitialized(contextProvider)) {
                AdContentType adContentType2 = adContentType;
                for (NetworkAdUnit networkAdUnit : networkConfig.createNetworkAdUnitList(adsType, unifiedAdRequestParams, adContentType2, adapter)) {
                    list.add(networkAdUnit);
                    arrayList.add(new a(contextProvider, (HeaderBiddingAdapter) adapter, adsType, adContentType2, unifiedAdRequestParams, networkAdUnit));
                    adContentType2 = adContentType;
                }
            }
        }
        if (!arrayList.isEmpty()) {
            BidMachineTrackingObject bidMachineTrackingObject = new BidMachineTrackingObject();
            bidMachineTrackingObject.eventStart(TrackEventType.HeaderBiddingNetworksPrepare);
            try {
                CountDownLatch countDownLatch = new CountDownLatch(arrayList.size());
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    ((a) it2.next()).a(countDownLatch);
                }
                try {
                    countDownLatch.await(i > 0 ? i : 10L, TimeUnit.SECONDS);
                } catch (InterruptedException e) {
                    Logger.w(e);
                }
                ArrayList arrayList2 = null;
                for (a aVar : arrayList) {
                    HeaderBiddingPlacement.AdUnit adUnitC = aVar.c();
                    if (adUnitC != null) {
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                        }
                        arrayList2.add(adUnitC);
                    } else if (!aVar.d()) {
                        aVar.a();
                    }
                }
                if (!Utils.isEmpty(arrayList2)) {
                    HeaderBiddingPlacement.Builder builderNewBuilder = HeaderBiddingPlacement.newBuilder();
                    builderNewBuilder.addAllAdUnits(arrayList2);
                    return builderNewBuilder;
                }
            } finally {
                bidMachineTrackingObject.eventFinish(TrackEventType.HeaderBiddingNetworksPrepare, adsType, null, null);
            }
        }
        return null;
    }

    public HeaderBiddingAd b(Ad ad) {
        if (ad.hasDisplay()) {
            Ad.Display display = ad.getDisplay();
            headerBiddingAdA = display.hasBanner() ? a(display.getBanner().getExtProtoList()) : null;
            if (headerBiddingAdA == null && display.hasNative()) {
                headerBiddingAdA = a(display.getNative().getExtProtoList());
            }
        }
        return (headerBiddingAdA == null && ad.hasVideo()) ? a(ad.getVideo().getExtProtoList()) : headerBiddingAdA;
    }

    public AdObjectParams a(Ad ad) {
        HeaderBiddingAd headerBiddingAdB = b(ad);
        if (headerBiddingAdB != null) {
            return new io.bidmachine.displays.a(ad, headerBiddingAdB);
        }
        return null;
    }

    public final HeaderBiddingAd a(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Any any = (Any) it.next();
            if (any.is(HeaderBiddingAd.class)) {
                try {
                    return (HeaderBiddingAd) any.unpack(HeaderBiddingAd.class);
                } catch (InvalidProtocolBufferException e) {
                    Logger.w(e);
                }
            }
        }
        return null;
    }
}
