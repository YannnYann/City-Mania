package com.unity3d.ads;

import android.content.Context;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.model.LoadConfigurationInternal;
import com.unity3d.ads.core.data.repository.AdRepository;
import com.unity3d.ads.core.domain.SafeCallbackInvoke;
import com.unity3d.ads.core.extensions.ProtobufExtensionsKt;
import com.unity3d.ads.metadata.MetaData;
import com.unity3d.services.banners.BannerErrorInfo;
import com.unity3d.services.banners.BannerView;
import com.unity3d.services.banners.UnityBannerSize;
import com.unity3d.services.core.di.ServiceKey;
import com.unity3d.services.core.di.ServiceProvider;
import com.unity3d.services.core.properties.ClientProperties;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: BannerAd.kt */
/* JADX INFO: loaded from: classes4.dex */
@DebugMetadata(c = "com.unity3d.ads.BannerAd$Companion$load$1", f = "BannerAd.kt", l = {}, m = "invokeSuspend")
public final class BannerAd$Companion$load$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ BannerConfiguration $configuration;
    final /* synthetic */ LoadListener<BannerAd> $listener;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BannerAd$Companion$load$1(LoadListener<BannerAd> loadListener, BannerConfiguration bannerConfiguration, Continuation<? super BannerAd$Companion$load$1> continuation) {
        super(2, continuation);
        this.$listener = loadListener;
        this.$configuration = bannerConfiguration;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new BannerAd$Companion$load$1(this.$listener, this.$configuration, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((BannerAd$Companion$load$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        Context applicationContext = ClientProperties.getApplicationContext();
        if (applicationContext == null) {
            this.$listener.onAdLoaded(null, new UnityAdsError(0, "Failed to load banner ad for placement: " + this.$configuration.getPlacementId() + ". Verify that Unity Ads has been initialized."));
            return Unit.INSTANCE;
        }
        UUID uuidRandomUUID = UUID.randomUUID();
        UnityAdsLoadOptions unityAdsLoadOptions = new UnityAdsLoadOptions();
        BannerConfiguration bannerConfiguration = this.$configuration;
        unityAdsLoadOptions.setObjectId(uuidRandomUUID.toString());
        unityAdsLoadOptions.setAdMarkup(bannerConfiguration.getAdMarkup());
        unityAdsLoadOptions.loadConfiguration = new LoadConfigurationInternal(bannerConfiguration.getPlacementId(), bannerConfiguration.getAdMarkup(), bannerConfiguration.getMediationAdUnitId(), bannerConfiguration.getMediationInfo(), bannerConfiguration.getExtras());
        if (!this.$configuration.getExtras().isEmpty()) {
            MetaData metaData = new MetaData(applicationContext);
            for (Map.Entry<String, String> entry : this.$configuration.getExtras().entrySet()) {
                metaData.set(entry.getKey(), entry.getValue());
            }
            metaData.commit();
        }
        AtomicReference atomicReference = new AtomicReference(null);
        BannerView bannerView = new BannerView(applicationContext, this.$configuration.getPlacementId(), new UnityBannerSize(this.$configuration.getBannerSize().getWidth(), this.$configuration.getBannerSize().getHeight()));
        bannerView.setListener(new AnonymousClass2(uuidRandomUUID, this.$listener, this.$configuration, bannerView, atomicReference));
        bannerView.load(unityAdsLoadOptions);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.unity3d.ads.BannerAd$Companion$load$1$2, reason: invalid class name */
    /* JADX INFO: compiled from: BannerAd.kt */
    public static final class AnonymousClass2 implements BannerView.IListener, BannerShowListenerWithOnFailedToShow {
        final /* synthetic */ AtomicReference<BannerAd> $bannerAdRef;
        final /* synthetic */ BannerView $bannerView;
        final /* synthetic */ BannerConfiguration $configuration;
        final /* synthetic */ LoadListener<BannerAd> $listener;
        final /* synthetic */ UUID $opportunityId;

        @Override // com.unity3d.services.banners.BannerView.IListener
        public void onBannerLeftApplication(BannerView bannerAdView) {
            Intrinsics.checkNotNullParameter(bannerAdView, "bannerAdView");
        }

        public AnonymousClass2(UUID uuid, LoadListener<BannerAd> loadListener, BannerConfiguration bannerConfiguration, BannerView bannerView, AtomicReference<BannerAd> atomicReference) {
            this.$opportunityId = uuid;
            this.$listener = loadListener;
            this.$configuration = bannerConfiguration;
            this.$bannerView = bannerView;
            this.$bannerAdRef = atomicReference;
        }

        @Override // com.unity3d.services.banners.BannerView.IListener
        public void onBannerLoaded(BannerView bannerAdView) {
            Intrinsics.checkNotNullParameter(bannerAdView, "bannerAdView");
            ServiceProvider serviceProvider = ServiceProvider.INSTANCE;
            AdRepository adRepository = (AdRepository) serviceProvider.getRegistry().resolveService(new ServiceKey(null, Reflection.getOrCreateKotlinClass(AdRepository.class), 1, null));
            SafeCallbackInvoke safeCallbackInvoke = (SafeCallbackInvoke) serviceProvider.getRegistry().resolveService(new ServiceKey(null, Reflection.getOrCreateKotlinClass(SafeCallbackInvoke.class), 1, null));
            UUID uuid = this.$opportunityId;
            Intrinsics.checkNotNull(uuid);
            AdObject ad = adRepository.getAd(ProtobufExtensionsKt.toByteString(uuid));
            if (ad == null) {
                this.$listener.onAdLoaded(null, new UnityAdsError(0, "Failed to load banner ad for placement: " + this.$configuration.getPlacementId()));
                return;
            }
            BannerAd bannerAd = new BannerAd(ad, this.$bannerView, safeCallbackInvoke);
            this.$bannerAdRef.set(bannerAd);
            this.$listener.onAdLoaded(bannerAd, null);
        }

        @Override // com.unity3d.services.banners.BannerView.IListener
        public void onBannerFailedToLoad(BannerView bannerAdView, BannerErrorInfo errorInfo) {
            Intrinsics.checkNotNullParameter(bannerAdView, "bannerAdView");
            Intrinsics.checkNotNullParameter(errorInfo, "errorInfo");
            LoadListener<BannerAd> loadListener = this.$listener;
            int i = errorInfo.publicErrorCode;
            String str = errorInfo.errorMessage;
            if (str == null) {
                str = "Failed to load banner ad for placement: " + bannerAdView.getPlacementId() + '.';
            }
            loadListener.onAdLoaded(null, new UnityAdsError(i, str));
        }

        @Override // com.unity3d.services.banners.BannerView.IListener
        public void onBannerClick(BannerView bannerAdView) {
            Intrinsics.checkNotNullParameter(bannerAdView, "bannerAdView");
            BannerAd bannerAd = this.$bannerAdRef.get();
            if (bannerAd != null) {
                this.$configuration.getListener().onClicked(bannerAd);
            }
        }

        @Override // com.unity3d.ads.BannerShowListenerWithOnFailedToShow
        public void onBannerFailedToShow(BannerView bannerAdView, BannerErrorInfo errorInfo) {
            Intrinsics.checkNotNullParameter(bannerAdView, "bannerAdView");
            Intrinsics.checkNotNullParameter(errorInfo, "errorInfo");
            BannerAd bannerAd = this.$bannerAdRef.get();
            if (bannerAd != null) {
                BannerShowListener listener = this.$configuration.getListener();
                int i = errorInfo.publicErrorCode;
                String errorMessage = errorInfo.errorMessage;
                Intrinsics.checkNotNullExpressionValue(errorMessage, "errorMessage");
                listener.onFailedToShow(bannerAd, new UnityAdsError(i, errorMessage));
            }
        }

        @Override // com.unity3d.services.banners.BannerView.IListener
        public void onBannerShown(BannerView bannerAdView) {
            Intrinsics.checkNotNullParameter(bannerAdView, "bannerAdView");
            BannerAd bannerAd = this.$bannerAdRef.get();
            if (bannerAd != null) {
                this.$configuration.getListener().onImpression(bannerAd);
            }
        }
    }
}
