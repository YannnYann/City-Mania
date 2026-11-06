package com.unity3d.services.banners.bridge;

import android.view.View;
import androidx.core.view.ViewCompat;
import com.unity3d.ads.BannerShowListenerWithOnFailedToShow;
import com.unity3d.ads.UnityAdsError;
import com.unity3d.ads.UnityAdsLoadOptions;
import com.unity3d.ads.UnityAdsShowOptions;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.model.ShowConfigurationInternal;
import com.unity3d.ads.core.domain.InternalLoadListener;
import com.unity3d.services.UnityAdsSDK;
import com.unity3d.services.banners.BannerErrorCode;
import com.unity3d.services.banners.BannerErrorInfo;
import com.unity3d.services.banners.BannerView;
import com.unity3d.services.banners.BannerViewCache;
import com.unity3d.services.banners.UnityBannerSize;
import com.unity3d.services.core.di.IServiceProvider;
import gatewayprotocol.v1.ErrorOuterClass;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: compiled from: BannerBridge.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class BannerBridge {
    public static final BannerBridge INSTANCE = new BannerBridge();

    public static final void destroy(String str) {
    }

    public static final void didAttach(String str) {
    }

    public static final void didDestroy(String str) {
    }

    public static final void didDetach(String str) {
    }

    public static final void didLoad(String str) {
    }

    public static final void resize(String str, int i, int i2, int i3, int i4, float f) {
    }

    public static final void visibilityChanged(String str, int i) {
    }

    private BannerBridge() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void load(final String str, final String str2, UnityBannerSize unityBannerSize, final UnityAdsLoadOptions loadOptions) {
        Intrinsics.checkNotNullParameter(loadOptions, "loadOptions");
        final BannerView bannerView = BannerViewCache.getInstance().getBannerView(str2);
        if (bannerView == null) {
            return;
        }
        if (loadOptions.getObjectId() == null) {
            loadOptions.setObjectId(str2);
        }
        new UnityAdsSDK(null, 1, 0 == true ? 1 : 0).load(str, loadOptions, new InternalLoadListener() { // from class: com.unity3d.services.banners.bridge.BannerBridge$load$listener$1
            @Override // com.unity3d.ads.core.domain.InternalLoadListener
            public void onAdLoadFail(UnityAdsError error) {
                Intrinsics.checkNotNullParameter(error, "error");
                BannerView bannerView2 = BannerViewCache.getInstance().getBannerView(str2);
                if (bannerView2 == null || bannerView2.getListener() == null) {
                    return;
                }
                bannerView2.getListener().onBannerFailedToLoad(bannerView2, BannerErrorInfo.fromLoadError(error));
            }

            @Override // com.unity3d.ads.core.domain.InternalLoadListener
            public void onAdLoaded(AdObject adObject) {
                Intrinsics.checkNotNullParameter(adObject, "adObject");
                BannerBridge.INSTANCE.onBannerLoaded(bannerView, str2, str, loadOptions);
            }
        }, unityBannerSize);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void onBannerLoaded(BannerView bannerView, final String str, final String str2, final UnityAdsLoadOptions unityAdsLoadOptions) {
        final BannerView bannerView2;
        final BannerView.IListener listener = bannerView.getListener();
        final BannerView bannerView3 = BannerViewCache.getInstance().getBannerView(str);
        if (bannerView3 == null) {
            if (listener != null) {
                listener.onBannerFailedToLoad(bannerView, new BannerErrorInfo("Banner view not found in cache during show", BannerErrorCode.NATIVE_ERROR, ErrorOuterClass.PublicErrorCode.PUBLIC_ERROR_CODE_SHOW_INTERNAL.getNumber()));
                return;
            }
            return;
        }
        if (ViewCompat.isAttachedToWindow(bannerView3)) {
            if (BannerViewCache.getInstance().getBannerView(str) == null) {
                if (listener instanceof BannerShowListenerWithOnFailedToShow) {
                    ((BannerShowListenerWithOnFailedToShow) listener).onBannerFailedToShow(bannerView, new BannerErrorInfo("Banner view not found in cache during show", BannerErrorCode.NATIVE_ERROR, ErrorOuterClass.PublicErrorCode.PUBLIC_ERROR_CODE_SHOW_INTERNAL.getNumber()));
                }
            } else {
                UnityAdsShowOptions unityAdsShowOptions = new UnityAdsShowOptions();
                unityAdsShowOptions.setObjectId(unityAdsLoadOptions.getObjectId());
                IServiceProvider iServiceProvider = null;
                Object[] objArr = 0;
                if (unityAdsLoadOptions.loadConfiguration != null) {
                    unityAdsShowOptions.showConfiguration = new ShowConfigurationInternal(null, null, 3, null);
                }
                new UnityAdsSDK(iServiceProvider, 1, objArr == true ? 1 : 0).show(str2, unityAdsShowOptions, new BannerBridge$onBannerLoaded$1$2(listener, bannerView));
            }
            bannerView2 = bannerView;
        } else {
            bannerView2 = bannerView;
            bannerView3.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.unity3d.services.banners.bridge.BannerBridge$onBannerLoaded$$inlined$doOnAttach$1
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View view) {
                    Intrinsics.checkNotNullParameter(view, "view");
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(View view) {
                    Intrinsics.checkNotNullParameter(view, "view");
                    bannerView3.removeOnAttachStateChangeListener(this);
                    if (BannerViewCache.getInstance().getBannerView(str) == null) {
                        BannerView.IListener iListener = listener;
                        if (iListener instanceof BannerShowListenerWithOnFailedToShow) {
                            Intrinsics.checkNotNull(iListener, "null cannot be cast to non-null type com.unity3d.ads.BannerShowListenerWithOnFailedToShow");
                            ((BannerShowListenerWithOnFailedToShow) listener).onBannerFailedToShow(bannerView2, new BannerErrorInfo("Banner view not found in cache during show", BannerErrorCode.NATIVE_ERROR, ErrorOuterClass.PublicErrorCode.PUBLIC_ERROR_CODE_SHOW_INTERNAL.getNumber()));
                            return;
                        }
                        return;
                    }
                    UnityAdsShowOptions unityAdsShowOptions2 = new UnityAdsShowOptions();
                    unityAdsShowOptions2.setObjectId(unityAdsLoadOptions.getObjectId());
                    if (unityAdsLoadOptions.loadConfiguration != null) {
                        unityAdsShowOptions2.showConfiguration = new ShowConfigurationInternal(null, null, 3, null);
                    }
                    new UnityAdsSDK(null, 1, null).show(str2, unityAdsShowOptions2, new BannerBridge$onBannerLoaded$1$2(listener, bannerView2));
                }
            });
        }
        if (listener != null) {
            listener.onBannerLoaded(bannerView2);
        }
    }

    private final boolean isHeaderBidding(JSONObject jSONObject) {
        if (jSONObject == null) {
            return false;
        }
        return jSONObject.has("adMarkup");
    }
}
