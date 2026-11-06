package com.ironsource.adapters.bidmachine.banner;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.widget.FrameLayout;
import com.ironsource.adapters.bidmachine.BidMachineAdapter;
import com.ironsource.adapters.bidmachine.BidMachineConstants;
import com.ironsource.mediationsdk.AdapterUtils;
import com.ironsource.mediationsdk.ISBannerSize;
import com.ironsource.mediationsdk.adunit.adapter.listener.BannerAdListener;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdData;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdapterErrorType;
import com.ironsource.mediationsdk.bidding.BiddingDataCallback;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.unity3d.mediation.adapters.levelplay.LevelPlayBaseBanner;
import io.bidmachine.AdPlacementConfig;
import io.bidmachine.AdRequest;
import io.bidmachine.BannerAdSize;
import io.bidmachine.banner.BannerRequest;
import io.bidmachine.banner.BannerView;
import java.util.Arrays;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BidMachineBannerAdapter.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class BidMachineBannerAdapter extends LevelPlayBaseBanner<BidMachineAdapter> {
    private BannerView bannerAdView;
    private final Handler mainHandler;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BidMachineBannerAdapter(NetworkSettings networkSettings) {
        super(networkSettings);
        Intrinsics.checkNotNullParameter(networkSettings, "networkSettings");
        this.mainHandler = new Handler(Looper.getMainLooper());
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBannerInterface
    public void loadAd(AdData adData, Activity activity, ISBannerSize bannerSize, BannerAdListener listener) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(bannerSize, "bannerSize");
        Intrinsics.checkNotNullParameter(listener, "listener");
        String string = adData.getString("placementId");
        IronLog ironLog = IronLog.ADAPTER_API;
        String str = String.format("placementId = %s", Arrays.copyOf(new Object[]{string == null ? "" : string}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.verbose(str);
        Context applicationContext = activity.getApplicationContext();
        Intrinsics.checkNotNull(applicationContext);
        BannerAdSize bannerSize2 = getBannerSize(bannerSize, applicationContext);
        if (bannerSize2 == null) {
            IronLog.INTERNAL.error(BidMachineConstants.UNSUPPORTED_BANNER_SIZE);
            listener.onAdLoadFailed(AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL, 1000, BidMachineConstants.UNSUPPORTED_BANNER_SIZE);
            return;
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(AdapterUtils.dpToPixels(applicationContext, bannerSize2.getWidth()), AdapterUtils.dpToPixels(applicationContext, bannerSize2.getHeight()), 17);
        BannerView bannerView = new BannerView(applicationContext);
        bannerView.setListener(new BidMachineBannerListener(listener, layoutParams));
        this.bannerAdView = bannerView;
        AdRequest adRequestBuild = ((BannerRequest.Builder) new BannerRequest.Builder(createBannerPlacementConfig(string, bannerSize2)).setBidPayload(adData.getServerData())).build();
        Intrinsics.checkNotNullExpressionValue(adRequestBuild, "build(...)");
        final BannerRequest bannerRequest = (BannerRequest) adRequestBuild;
        this.mainHandler.post(new Runnable() { // from class: com.ironsource.adapters.bidmachine.banner.BidMachineBannerAdapter$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                BidMachineBannerAdapter.loadAd$lambda$1(this.f$0, bannerRequest);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadAd$lambda$1(BidMachineBannerAdapter bidMachineBannerAdapter, BannerRequest bannerRequest) {
        BannerView bannerView = bidMachineBannerAdapter.bannerAdView;
        if (bannerView != null) {
            bannerView.load(bannerRequest);
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBannerInterface
    public void destroyAd(AdData adData) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        IronLog.ADAPTER_API.verbose();
        this.mainHandler.post(new Runnable() { // from class: com.ironsource.adapters.bidmachine.banner.BidMachineBannerAdapter$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                BidMachineBannerAdapter.destroyAd$lambda$2(this.f$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void destroyAd$lambda$2(BidMachineBannerAdapter bidMachineBannerAdapter) {
        BannerView bannerView = bidMachineBannerAdapter.bannerAdView;
        if (bannerView != null) {
            bannerView.setListener(null);
        }
        BannerView bannerView2 = bidMachineBannerAdapter.bannerAdView;
        if (bannerView2 != null) {
            bannerView2.destroy();
        }
        bidMachineBannerAdapter.bannerAdView = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.unity3d.mediation.adapters.levelplay.LevelPlayBaseBanner, com.ironsource.InterfaceC3940y3
    public void collectBiddingData(AdData adData, Context context, BiddingDataCallback biddingDataCallback) {
        Map<String, Object> adUnitData;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(biddingDataCallback, "biddingDataCallback");
        Object obj = null;
        String string = adData != null ? adData.getString("placementId") : null;
        IronLog ironLog = IronLog.ADAPTER_API;
        String str = String.format("placementId = %s", Arrays.copyOf(new Object[]{string == null ? "" : string}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.verbose(str);
        BidMachineAdapter bidMachineAdapter = (BidMachineAdapter) getNetworkAdapter();
        if (bidMachineAdapter == null) {
            IronLog.INTERNAL.error("Network adapter is null");
            biddingDataCallback.onFailure("Network adapter is null");
            return;
        }
        if (adData != null && (adUnitData = adData.getAdUnitData()) != null) {
            obj = adUnitData.get("bannerSize");
        }
        if (!(obj instanceof ISBannerSize)) {
            IronLog.INTERNAL.error(BidMachineConstants.BANNER_SIZE_INVALID);
            String str2 = String.format(BidMachineConstants.Logs.TOKEN_FAILED, Arrays.copyOf(new Object[]{BidMachineConstants.BANNER_SIZE_INVALID}, 1));
            Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
            biddingDataCallback.onFailure(str2);
            return;
        }
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        BannerAdSize bannerSize = getBannerSize((ISBannerSize) obj, applicationContext);
        if (bannerSize == null) {
            IronLog.INTERNAL.error(BidMachineConstants.UNSUPPORTED_BANNER_SIZE);
            String str3 = String.format(BidMachineConstants.Logs.TOKEN_FAILED, Arrays.copyOf(new Object[]{BidMachineConstants.UNSUPPORTED_BANNER_SIZE}, 1));
            Intrinsics.checkNotNullExpressionValue(str3, "format(...)");
            biddingDataCallback.onFailure(str3);
            return;
        }
        bidMachineAdapter.collectBiddingData$bidmachineadapter_release(context, biddingDataCallback, createBannerPlacementConfig(string, bannerSize));
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private final BannerAdSize getBannerSize(ISBannerSize iSBannerSize, Context context) {
        String description = iSBannerSize.getDescription();
        if (description == null) {
            return null;
        }
        switch (description.hashCode()) {
            case -387072689:
                if (description.equals("RECTANGLE")) {
                    return BannerAdSize.MediumRectangle;
                }
                return null;
            case 79011241:
                if (description.equals("SMART")) {
                    return AdapterUtils.isLargeScreen(context) ? BannerAdSize.Leaderboard : BannerAdSize.Banner;
                }
                return null;
            case 446888797:
                if (description.equals("LEADERBOARD")) {
                    return BannerAdSize.Leaderboard;
                }
                return null;
            case 1951953708:
                if (description.equals("BANNER")) {
                    return BannerAdSize.Banner;
                }
                return null;
            default:
                return null;
        }
    }

    private final AdPlacementConfig createBannerPlacementConfig(String str, BannerAdSize bannerAdSize) {
        AdPlacementConfig.Builder builderBannerBuilder = AdPlacementConfig.Companion.bannerBuilder(bannerAdSize);
        if (str != null && str.length() != 0) {
            builderBannerBuilder.withPlacementId(str);
        }
        return builderBannerBuilder.build();
    }
}
