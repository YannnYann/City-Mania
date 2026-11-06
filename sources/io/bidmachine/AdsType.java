package io.bidmachine;

import android.util.Size;
import com.explorestack.protobuf.Any;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.adcom.Ad;
import com.explorestack.protobuf.adcom.ApiFramework;
import com.explorestack.protobuf.adcom.Placement;
import com.explorestack.protobuf.adcom.PlacementPosition;
import com.explorestack.protobuf.adcom.SizeUnit;
import com.explorestack.protobuf.adcom.VideoCreativeType;
import com.explorestack.protobuf.adcom.VideoPlacementType;
import io.bidmachine.AdContentType;
import io.bidmachine.AdPlacementConfig;
import io.bidmachine.AdsType;
import io.bidmachine.ApiRequest;
import io.bidmachine.Constants;
import io.bidmachine.ContextProvider;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.NetworkConfig;
import io.bidmachine.core.Logger;
import io.bidmachine.displays.DisplayPlacementBuilder;
import io.bidmachine.displays.NativePlacementBuilder;
import io.bidmachine.displays.PlacementBuilder;
import io.bidmachine.models.AdObjectParams;
import io.bidmachine.protobuf.headerbidding.HeaderBiddingAd;
import io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement;
import io.bidmachine.unified.UnifiedAdRequestParams;
import io.bidmachine.unified.UnifiedBannerAdRequestParams;
import io.bidmachine.util.DeviceUtils;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'Banner' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:372)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:337)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:322)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:293)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:266)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes4.dex */
public final class AdsType {
    public static final AdsType Banner;
    public static final AdsType Interstitial;
    public static final AdsType Rewarded;
    private final ApiRequest.ApiAuctionDataBinder binder;
    private final String name;
    private final PlacementBuilder[] placementBuilders;
    private final Executor placementCreateExecutor = Executors.newFixedThreadPool(Math.max(8, Runtime.getRuntime().availableProcessors() * 4));
    public static final AdsType Native = new AdsType("Native", 3, "native", new ApiRequest.ApiAuctionDataBinder(), new PlacementBuilder[]{new NativePlacementBuilder()});
    private static final /* synthetic */ AdsType[] $VALUES = $values();

    public class b implements Runnable {
        public final /* synthetic */ PlacementBuilder a;
        public final /* synthetic */ ContextProvider b;
        public final /* synthetic */ UnifiedAdRequestParams c;
        public final /* synthetic */ Collection d;
        public final /* synthetic */ List e;
        public final /* synthetic */ AdPlacementConfig f;
        public final /* synthetic */ int g;
        public final /* synthetic */ List h;
        public final /* synthetic */ CountDownLatch i;

        public b(PlacementBuilder placementBuilder, ContextProvider contextProvider, UnifiedAdRequestParams unifiedAdRequestParams, Collection collection, List list, AdPlacementConfig adPlacementConfig, int i, List list2, CountDownLatch countDownLatch) {
            this.a = placementBuilder;
            this.b = contextProvider;
            this.c = unifiedAdRequestParams;
            this.d = collection;
            this.e = list;
            this.f = adPlacementConfig;
            this.g = i;
            this.h = list2;
            this.i = countDownLatch;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Message.Builder builderCreatePlacement = this.a.createPlacement(this.b, this.c, AdsType.this, this.d, this.e, this.f, this.g);
                synchronized (this.h) {
                    this.h.add(builderCreatePlacement);
                }
                this.i.countDown();
            } catch (Exception e) {
                Logger.w(e);
                this.i.countDown();
            }
        }
    }

    private static /* synthetic */ AdsType[] $values() {
        return new AdsType[]{Banner, Interstitial, Rewarded, Native};
    }

    static {
        final boolean z = false;
        final boolean z2 = true;
        Banner = new AdsType("Banner", 0, "banner", new ApiRequest.ApiAuctionDataBinder(), new PlacementBuilder[]{new DisplayPlacementBuilder(z) { // from class: io.bidmachine.AdsType.a
            @Override // io.bidmachine.displays.DisplayPlacementBuilder
            public Size getSize(ContextProvider contextProvider, UnifiedBannerAdRequestParams unifiedBannerAdRequestParams) {
                return unifiedBannerAdRequestParams.getAdRequestParameters().getBannerAdSize().toSize();
            }
        }});
        Interstitial = new AdsType("Interstitial", 1, "interstitial", new ApiRequest.ApiAuctionDataBinder(), new PlacementBuilder[]{new DisplayPlacementBuilder(true), new PlacementBuilder<UnifiedAdRequestParamsType>(z2) { // from class: io.bidmachine.displays.VideoPlacementBuilder
            public final boolean canSkip;

            {
                super(AdContentType.Video);
                this.canSkip = z2;
            }

            @Override // io.bidmachine.displays.PlacementBuilder
            public AdObjectParams createAdObjectParams(Ad ad) {
                if (!ad.hasVideo()) {
                    return null;
                }
                AdObjectParams adObjectParamsCreateHeaderBiddingAdObjectParams = createHeaderBiddingAdObjectParams(ad);
                if (adObjectParamsCreateHeaderBiddingAdObjectParams != null) {
                    return adObjectParamsCreateHeaderBiddingAdObjectParams;
                }
                Ad.Video video = ad.getVideo();
                c cVar = new c(ad);
                cVar.setCreativeAdm(video.getAdm());
                return cVar;
            }

            @Override // io.bidmachine.displays.PlacementBuilder
            public Message.Builder createPlacement(ContextProvider contextProvider, UnifiedAdRequestParamsType unifiedadrequestparamstype, AdsType adsType, Collection<NetworkConfig> collection, List<NetworkAdUnit> list, AdPlacementConfig adPlacementConfig, int i) throws Exception {
                Size size = getSize(contextProvider, unifiedadrequestparamstype);
                Placement.VideoPlacement.Builder linearValue = Placement.VideoPlacement.newBuilder().addApi(ApiFramework.API_FRAMEWORK_OMID_1_0).setSkip(this.canSkip).setUnit(SizeUnit.SIZE_UNIT_DIPS).setPos(PlacementPosition.PLACEMENT_POSITION_FULLSCREEN).setW(size.getWidth()).setH(size.getHeight()).addCtype(VideoCreativeType.VIDEO_CREATIVE_TYPE_VAST_2_0).addCtype(VideoCreativeType.VIDEO_CREATIVE_TYPE_VAST_3_0).addCtype(VideoCreativeType.VIDEO_CREATIVE_TYPE_VAST_WRAPPER_2_0).addCtype(VideoCreativeType.VIDEO_CREATIVE_TYPE_VAST_WRAPPER_3_0).addAllMime(Constants.VIDEO_MIME_TYPES).setMinbitr(56).setMaxbitr(4096).setMindur(5).setMaxdur(30).setPtype(VideoPlacementType.VIDEO_PLACEMENT_TYPE_INTERSTITIAL).setLinearValue(1);
                HeaderBiddingPlacement.Builder builderCreateHeaderBiddingPlacement = createHeaderBiddingPlacement(contextProvider, unifiedadrequestparamstype, adsType, collection, list, i);
                if (adPlacementConfig == null && builderCreateHeaderBiddingPlacement != null) {
                    linearValue.addExtProto(Any.pack(builderCreateHeaderBiddingPlacement.build()));
                    return linearValue;
                }
                if (adPlacementConfig != null) {
                    linearValue.addExtProto(Any.pack(createSdkPlacement(adPlacementConfig, builderCreateHeaderBiddingPlacement)));
                }
                return linearValue;
            }

            public Size getSize(ContextProvider contextProvider, UnifiedAdRequestParamsType unifiedadrequestparamstype) {
                return DeviceUtils.getScreenSize(contextProvider.getContext());
            }
        }});
        Rewarded = new AdsType("Rewarded", 2, "rewarded", new ApiRequest.ApiAuctionDataBinder(), new PlacementBuilder[]{new DisplayPlacementBuilder(true), new PlacementBuilder<UnifiedAdRequestParamsType>(z) { // from class: io.bidmachine.displays.VideoPlacementBuilder
            public final boolean canSkip;

            {
                super(AdContentType.Video);
                this.canSkip = z;
            }

            @Override // io.bidmachine.displays.PlacementBuilder
            public AdObjectParams createAdObjectParams(Ad ad) {
                if (!ad.hasVideo()) {
                    return null;
                }
                AdObjectParams adObjectParamsCreateHeaderBiddingAdObjectParams = createHeaderBiddingAdObjectParams(ad);
                if (adObjectParamsCreateHeaderBiddingAdObjectParams != null) {
                    return adObjectParamsCreateHeaderBiddingAdObjectParams;
                }
                Ad.Video video = ad.getVideo();
                c cVar = new c(ad);
                cVar.setCreativeAdm(video.getAdm());
                return cVar;
            }

            @Override // io.bidmachine.displays.PlacementBuilder
            public Message.Builder createPlacement(ContextProvider contextProvider, UnifiedAdRequestParamsType unifiedadrequestparamstype, AdsType adsType, Collection<NetworkConfig> collection, List<NetworkAdUnit> list, AdPlacementConfig adPlacementConfig, int i) throws Exception {
                Size size = getSize(contextProvider, unifiedadrequestparamstype);
                Placement.VideoPlacement.Builder linearValue = Placement.VideoPlacement.newBuilder().addApi(ApiFramework.API_FRAMEWORK_OMID_1_0).setSkip(this.canSkip).setUnit(SizeUnit.SIZE_UNIT_DIPS).setPos(PlacementPosition.PLACEMENT_POSITION_FULLSCREEN).setW(size.getWidth()).setH(size.getHeight()).addCtype(VideoCreativeType.VIDEO_CREATIVE_TYPE_VAST_2_0).addCtype(VideoCreativeType.VIDEO_CREATIVE_TYPE_VAST_3_0).addCtype(VideoCreativeType.VIDEO_CREATIVE_TYPE_VAST_WRAPPER_2_0).addCtype(VideoCreativeType.VIDEO_CREATIVE_TYPE_VAST_WRAPPER_3_0).addAllMime(Constants.VIDEO_MIME_TYPES).setMinbitr(56).setMaxbitr(4096).setMindur(5).setMaxdur(30).setPtype(VideoPlacementType.VIDEO_PLACEMENT_TYPE_INTERSTITIAL).setLinearValue(1);
                HeaderBiddingPlacement.Builder builderCreateHeaderBiddingPlacement = createHeaderBiddingPlacement(contextProvider, unifiedadrequestparamstype, adsType, collection, list, i);
                if (adPlacementConfig == null && builderCreateHeaderBiddingPlacement != null) {
                    linearValue.addExtProto(Any.pack(builderCreateHeaderBiddingPlacement.build()));
                    return linearValue;
                }
                if (adPlacementConfig != null) {
                    linearValue.addExtProto(Any.pack(createSdkPlacement(adPlacementConfig, builderCreateHeaderBiddingPlacement)));
                }
                return linearValue;
            }

            public Size getSize(ContextProvider contextProvider, UnifiedAdRequestParamsType unifiedadrequestparamstype) {
                return DeviceUtils.getScreenSize(contextProvider.getContext());
            }
        }});
    }

    private AdsType(String str, int i, String str2, ApiRequest.ApiAuctionDataBinder apiAuctionDataBinder, PlacementBuilder[] placementBuilderArr) {
        this.name = str2;
        this.binder = apiAuctionDataBinder;
        this.placementBuilders = placementBuilderArr;
    }

    public static AdsType valueOf(String str) {
        return (AdsType) Enum.valueOf(AdsType.class, str);
    }

    public static AdsType[] values() {
        return (AdsType[]) $VALUES.clone();
    }

    public void collectPlacements(ContextProvider contextProvider, AdRequest adRequest, UnifiedAdRequestParams unifiedAdRequestParams, Collection<NetworkConfig> collection, List<Message.Builder> list, List<NetworkAdUnit> list2, AdPlacementConfig adPlacementConfig, int i) {
        AdsType adsType = this;
        CountDownLatch countDownLatch = new CountDownLatch(adsType.placementBuilders.length);
        PlacementBuilder[] placementBuilderArr = adsType.placementBuilders;
        int length = placementBuilderArr.length;
        int i2 = 0;
        while (i2 < length) {
            PlacementBuilder placementBuilder = placementBuilderArr[i2];
            if (adRequest.isPlacementBuilderMatch(placementBuilder)) {
                adsType.placementCreateExecutor.execute(adsType.new b(placementBuilder, contextProvider, unifiedAdRequestParams, collection, list2, adPlacementConfig, i, list, countDownLatch));
            } else {
                countDownLatch.countDown();
            }
            i2++;
            adsType = this;
        }
        try {
            countDownLatch.await();
        } catch (InterruptedException e) {
            Logger.w(e);
        }
    }

    public AdObjectParams createAdObjectParams(String str, Ad ad) {
        for (PlacementBuilder placementBuilder : this.placementBuilders) {
            AdObjectParams adObjectParamsCreateAdObjectParams = placementBuilder.createAdObjectParams(ad);
            if (adObjectParamsCreateAdObjectParams != null) {
                adObjectParamsCreateAdObjectParams.getData().put("bidId", str);
                return adObjectParamsCreateAdObjectParams;
            }
        }
        return null;
    }

    public NetworkAdapter findNetworkAdapter(Ad ad) {
        HeaderBiddingAd headerBiddingAdObtainHeaderBiddingAd = obtainHeaderBiddingAd(ad);
        NetworkAdapter adapter = headerBiddingAdObtainHeaderBiddingAd != null ? NetworkRegistry.getAdapter(headerBiddingAdObtainHeaderBiddingAd.getBidder()) : null;
        if (adapter == null) {
            if (this == Native) {
                return NetworkRegistry.getAdapter("nast");
            }
            if (ad.hasDisplay()) {
                return NetworkRegistry.getAdapter("mraid");
            }
            if (ad.hasVideo()) {
                return NetworkRegistry.getAdapter("vast");
            }
        }
        return adapter;
    }

    public ApiRequest.ApiAuctionDataBinder getBinder() {
        return this.binder;
    }

    public String getName() {
        return this.name;
    }

    public boolean isFullscreen() {
        return this == Interstitial || this == Rewarded;
    }

    public HeaderBiddingAd obtainHeaderBiddingAd(Ad ad) {
        for (PlacementBuilder placementBuilder : this.placementBuilders) {
            HeaderBiddingAd headerBiddingAdObtainHeaderBiddingAd = placementBuilder.obtainHeaderBiddingAd(ad);
            if (headerBiddingAdObtainHeaderBiddingAd != null) {
                return headerBiddingAdObtainHeaderBiddingAd;
            }
        }
        return null;
    }
}
