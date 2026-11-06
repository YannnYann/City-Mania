package com.ironsource.adapters.vungle.banner;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.ironsource.adapters.vungle.VungleAdapter;
import com.ironsource.adapters.vungle.VungleConstants;
import com.ironsource.mediationsdk.AdapterUtils;
import com.ironsource.mediationsdk.ISBannerSize;
import com.ironsource.mediationsdk.adunit.adapter.listener.BannerAdListener;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdData;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdapterErrorType;
import com.ironsource.mediationsdk.bidding.BiddingDataCallback;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.unity3d.mediation.adapters.levelplay.LevelPlayBaseBanner;
import com.vungle.ads.VungleAdSize;
import com.vungle.ads.VungleAds;
import com.vungle.ads.VungleBannerView;
import com.vungle.ads.VungleMediationLogger;
import java.util.Arrays;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: VungleBannerAdapter.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class VungleBannerAdapter extends LevelPlayBaseBanner<VungleAdapter> {
    private VungleBannerView bannerView;
    private final Handler mainHandler;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VungleBannerAdapter(NetworkSettings networkSettings) {
        super(networkSettings);
        Intrinsics.checkNotNullParameter(networkSettings, "networkSettings");
        this.mainHandler = new Handler(Looper.getMainLooper());
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBannerInterface
    public void loadAd(AdData adData, Activity activity, ISBannerSize bannerSize, BannerAdListener listener) {
        VungleBannerView vungleBannerView;
        Intrinsics.checkNotNullParameter(adData, "adData");
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(bannerSize, "bannerSize");
        Intrinsics.checkNotNullParameter(listener, "listener");
        String string = adData.getString(VungleConstants.PLACEMENT_ID_KEY);
        IronLog ironLog = IronLog.ADAPTER_API;
        String str = String.format("placementId = %s", Arrays.copyOf(new Object[]{string == null ? "" : string}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.verbose(str);
        if (string == null || string.length() == 0) {
            String str2 = String.format("Missing params - %s", Arrays.copyOf(new Object[]{VungleConstants.PLACEMENT_ID_KEY}, 1));
            Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
            IronLog.INTERNAL.error(str2);
            VungleMediationLogger.logError(null, VungleConstants.Logs.NO_PLACEMENT_ID_BANNER);
            listener.onAdLoadFailed(AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL, 1002, str2);
            return;
        }
        Context applicationContext = activity.getApplicationContext();
        Intrinsics.checkNotNull(applicationContext);
        VungleAdSize bannerSize2 = getBannerSize(applicationContext, bannerSize);
        if (bannerSize2 == null) {
            IronLog.INTERNAL.error(VungleConstants.Logs.UNSUPPORTED_BANNER_SIZE);
            String str3 = String.format(VungleConstants.Logs.NO_VUNGLE_BANNER_SIZE, Arrays.copyOf(new Object[]{string}, 1));
            Intrinsics.checkNotNullExpressionValue(str3, "format(...)");
            VungleMediationLogger.logError(null, str3);
            listener.onAdLoadFailed(AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL, 1000, VungleConstants.Logs.UNSUPPORTED_BANNER_SIZE);
            return;
        }
        VungleBannerView vungleBannerView2 = new VungleBannerView(applicationContext, string, bannerSize2);
        vungleBannerView2.setAdListener(new VungleBannerListener(listener, vungleBannerView2));
        vungleBannerView2.setAdapterAdFormat(VungleConstants.ADAPTER_FORMAT_BANNER);
        this.bannerView = vungleBannerView2;
        if (!VungleAds.Companion.isInline(string) && Intrinsics.areEqual(bannerSize.getDescription(), "CUSTOM") && (vungleBannerView = this.bannerView) != null) {
            String description = bannerSize.getDescription();
            Intrinsics.checkNotNullExpressionValue(description, "getDescription(...)");
            String lowerCase = description.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            vungleBannerView.setAdapterAdFormat("ISVungleBanner-" + lowerCase);
            String str4 = String.format(VungleConstants.Logs.CUSTOM_SIZE_MISMATCH, Arrays.copyOf(new Object[]{Integer.valueOf(bannerSize.getWidth()), Integer.valueOf(bannerSize.getHeight())}, 2));
            Intrinsics.checkNotNullExpressionValue(str4, "format(...)");
            VungleMediationLogger.logError(vungleBannerView, str4);
        }
        VungleBannerView vungleBannerView3 = this.bannerView;
        if (vungleBannerView3 != null) {
            vungleBannerView3.load(adData.getServerData());
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBannerInterface
    public void destroyAd(AdData adData) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        IronLog.ADAPTER_API.verbose();
        this.mainHandler.post(new Runnable() { // from class: com.ironsource.adapters.vungle.banner.VungleBannerAdapter$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                VungleBannerAdapter.destroyAd$lambda$2(this.f$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void destroyAd$lambda$2(VungleBannerAdapter vungleBannerAdapter) {
        VungleBannerView vungleBannerView = vungleBannerAdapter.bannerView;
        if (vungleBannerView != null) {
            vungleBannerView.finishAd();
        }
        vungleBannerAdapter.bannerView = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.unity3d.mediation.adapters.levelplay.LevelPlayBaseBanner, com.ironsource.InterfaceC3940y3
    public void collectBiddingData(AdData adData, Context context, BiddingDataCallback biddingDataCallback) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(biddingDataCallback, "biddingDataCallback");
        IronLog.ADAPTER_API.verbose();
        VungleAdapter vungleAdapter = (VungleAdapter) getNetworkAdapter();
        if (vungleAdapter == null) {
            IronLog.INTERNAL.error("Network adapter is null");
            biddingDataCallback.onFailure("Network adapter is null");
        } else {
            vungleAdapter.collectBiddingData$vungleadapter_release(context, biddingDataCallback);
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private final VungleAdSize getBannerSize(Context context, ISBannerSize iSBannerSize) {
        String description = iSBannerSize.getDescription();
        if (description == null) {
            return null;
        }
        switch (description.hashCode()) {
            case -387072689:
                if (description.equals("RECTANGLE")) {
                    return VungleAdSize.MREC;
                }
                return null;
            case 72205083:
                if (!description.equals("LARGE")) {
                    return null;
                }
                break;
            case 79011241:
                if (description.equals("SMART")) {
                    return AdapterUtils.isLargeScreen(context) ? VungleAdSize.BANNER_LEADERBOARD : VungleAdSize.BANNER;
                }
                return null;
            case 1951953708:
                if (!description.equals("BANNER")) {
                    return null;
                }
                break;
            case 1999208305:
                if (description.equals("CUSTOM")) {
                    return VungleAdSize.Companion.getAdSizeWithWidthAndHeight(iSBannerSize.getWidth(), iSBannerSize.getHeight());
                }
                return null;
            default:
                return null;
        }
        return VungleAdSize.BANNER;
    }
}
