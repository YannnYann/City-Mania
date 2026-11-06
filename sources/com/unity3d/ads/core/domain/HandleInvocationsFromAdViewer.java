package com.unity3d.ads.core.domain;

import com.unity3d.ads.adplayer.ExposedFunction;
import com.unity3d.ads.adplayer.ExposedFunctionLocation;
import com.unity3d.ads.core.data.model.AdData;
import com.unity3d.ads.core.data.model.AdDataRefreshToken;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.model.ImpressionConfig;
import com.unity3d.ads.core.data.repository.CampaignRepository;
import com.unity3d.ads.core.data.repository.DeviceInfoRepository;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.domain.attribution.AndroidAttribution;
import com.unity3d.ads.core.domain.events.GetOperativeEventApi;
import com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt;
import com.unity3d.ads.core.domain.offerwall.GetIsOfferwallAdReady;
import com.unity3d.ads.core.domain.offerwall.LoadOfferwallAd;
import com.unity3d.ads.core.domain.om.AndroidOmInteraction;
import com.unity3d.ads.core.domain.om.GetOmData;
import com.unity3d.ads.core.domain.om.IsOMActivated;
import com.unity3d.ads.core.domain.om.OmFinishSession;
import com.unity3d.ads.core.domain.om.OmImpressionOccurred;
import com.unity3d.services.core.di.IServiceComponent;
import com.unity3d.services.core.di.IServiceProvider;
import com.unity3d.services.core.network.model.RequestType;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: HandleInvocationsFromAdViewer.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class HandleInvocationsFromAdViewer implements IServiceComponent {
    public static final Companion Companion = new Companion(null);
    public static final String KEY_ACTION = "action";
    public static final String KEY_AD_DATA = "adData";
    public static final String KEY_AD_DATA_REFRESH_TOKEN = "adDataRefreshToken";
    public static final String KEY_AD_REFRESH_INVALIDATION_REASON = "invalidationReason";
    public static final String KEY_AD_STRING = "adString";
    public static final String KEY_AD_TYPE = "type";
    public static final String KEY_AD_UNIT_ID = "adUnitId";
    public static final String KEY_DOWNLOAD_PRIORITY = "priority";
    public static final String KEY_DOWNLOAD_URL = "url";
    public static final String KEY_EXTRAS = "extras";
    public static final String KEY_IMPRESSION_CONFIG = "impressionConfig";
    public static final String KEY_IMPRESSION_OPPORTUNITY_ID = "impressionOpportunityId";
    public static final String KEY_IS_HEADER_BIDDING = "isHeaderBidding";
    public static final String KEY_LOAD_OPTIONS = "loadOptions";
    public static final String KEY_NATIVE_CONTEXT = "nativeContext";
    public static final String KEY_OMID = "openMeasurement";
    public static final String KEY_OMJS_SERVICE = "serviceFilePath";
    public static final String KEY_OMJS_SESSION = "sessionFilePath";
    public static final String KEY_OM_PARTNER = "partnerName";
    public static final String KEY_OM_PARTNER_VERSION = "partnerVersion";
    public static final String KEY_OM_VERSION = "version";
    public static final String KEY_PACKAGE_NAME = "packageName";
    public static final String KEY_PAYLOAD = "payload";
    public static final String KEY_PAYLOAD_VERSION = "payloadVersion";
    public static final String KEY_PLACEMENT_ID = "placementId";
    public static final String KEY_PLACEMENT_NAME = "placementName";
    public static final String KEY_PRIVACY_UPDATE_CONTENT = "content";
    public static final String KEY_PRIVACY_UPDATE_VERSION = "version";
    public static final String KEY_QUERY_ID = "queryId";
    public static final String KEY_TRACKING_TOKEN = "trackingToken";
    public static final String KEY_USE_ACTIVITY_FOR_RESULT = "useActivityForResult";
    public static final String KEY_VIDEO_LENGTH = "videoLength";

    /* JADX INFO: Access modifiers changed from: private */
    public static final ExposedFunction invoke$lambda$0(HandleInvocationsFromAdViewer handleInvocationsFromAdViewer, String str, String str2, String str3, AdObject adObject) {
        return CommonAdViewerExposedFunctionsKt.m1944getAdContextyLuu4LI((AndroidGetAdPlayerContext) handleInvocationsFromAdViewer.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(AndroidGetAdPlayerContext.class)), str, str2, str3, (IsOMActivated) handleInvocationsFromAdViewer.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(IsOMActivated.class)), adObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ExposedFunction invoke$lambda$1(HandleInvocationsFromAdViewer handleInvocationsFromAdViewer) {
        return CommonAdViewerExposedFunctionsKt.getConnectionType((DeviceInfoRepository) handleInvocationsFromAdViewer.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(DeviceInfoRepository.class)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ExposedFunction invoke$lambda$10(HandleInvocationsFromAdViewer handleInvocationsFromAdViewer, AdObject adObject) {
        return CommonAdViewerExposedFunctionsKt.sendOperativeEvent((GetOperativeEventApi) handleInvocationsFromAdViewer.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(GetOperativeEventApi.class)), adObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ExposedFunction invoke$lambda$18(HandleInvocationsFromAdViewer handleInvocationsFromAdViewer) {
        return CommonAdViewerExposedFunctionsKt.getPrivacyFsm((SessionRepository) handleInvocationsFromAdViewer.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(SessionRepository.class)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ExposedFunction invoke$lambda$19(HandleInvocationsFromAdViewer handleInvocationsFromAdViewer) {
        return CommonAdViewerExposedFunctionsKt.setPrivacyFsm((SessionRepository) handleInvocationsFromAdViewer.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(SessionRepository.class)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ExposedFunction invoke$lambda$2(HandleInvocationsFromAdViewer handleInvocationsFromAdViewer) {
        return CommonAdViewerExposedFunctionsKt.getDeviceVolume((DeviceInfoRepository) handleInvocationsFromAdViewer.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(DeviceInfoRepository.class)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ExposedFunction invoke$lambda$20(HandleInvocationsFromAdViewer handleInvocationsFromAdViewer) {
        return CommonAdViewerExposedFunctionsKt.getPrivacy((SessionRepository) handleInvocationsFromAdViewer.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(SessionRepository.class)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ExposedFunction invoke$lambda$21(HandleInvocationsFromAdViewer handleInvocationsFromAdViewer) {
        return CommonAdViewerExposedFunctionsKt.setPrivacy((SessionRepository) handleInvocationsFromAdViewer.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(SessionRepository.class)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ExposedFunction invoke$lambda$22(HandleInvocationsFromAdViewer handleInvocationsFromAdViewer) {
        return CommonAdViewerExposedFunctionsKt.getAllowedPii((DeviceInfoRepository) handleInvocationsFromAdViewer.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(DeviceInfoRepository.class)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ExposedFunction invoke$lambda$23(HandleInvocationsFromAdViewer handleInvocationsFromAdViewer) {
        return CommonAdViewerExposedFunctionsKt.setAllowedPii((DeviceInfoRepository) handleInvocationsFromAdViewer.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(DeviceInfoRepository.class)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ExposedFunction invoke$lambda$24(HandleInvocationsFromAdViewer handleInvocationsFromAdViewer) {
        return CommonAdViewerExposedFunctionsKt.getSessionToken((SessionRepository) handleInvocationsFromAdViewer.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(SessionRepository.class)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ExposedFunction invoke$lambda$25(HandleInvocationsFromAdViewer handleInvocationsFromAdViewer, AdObject adObject) {
        return CommonAdViewerExposedFunctionsKt.markCampaignStateShown((CampaignRepository) handleInvocationsFromAdViewer.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(CampaignRepository.class)), adObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ExposedFunction invoke$lambda$26(HandleInvocationsFromAdViewer handleInvocationsFromAdViewer, AdObject adObject) {
        return CommonAdViewerExposedFunctionsKt.refreshAdData((Refresh) handleInvocationsFromAdViewer.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(Refresh.class)), adObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ExposedFunction invoke$lambda$27(HandleInvocationsFromAdViewer handleInvocationsFromAdViewer, AdObject adObject) {
        return CommonAdViewerExposedFunctionsKt.sendAdViewerRequest((SendAdViewerRequest) handleInvocationsFromAdViewer.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(SendAdViewerRequest.class)), adObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ExposedFunction invoke$lambda$28(HandleInvocationsFromAdViewer handleInvocationsFromAdViewer, AdObject adObject) {
        return CommonAdViewerExposedFunctionsKt.updateCampaignState((CampaignRepository) handleInvocationsFromAdViewer.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(CampaignRepository.class)), adObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ExposedFunction invoke$lambda$3(HandleInvocationsFromAdViewer handleInvocationsFromAdViewer) {
        return CommonAdViewerExposedFunctionsKt.getDeviceMaxVolume((DeviceInfoRepository) handleInvocationsFromAdViewer.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(DeviceInfoRepository.class)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ExposedFunction invoke$lambda$30(HandleInvocationsFromAdViewer handleInvocationsFromAdViewer) {
        return CommonAdViewerExposedFunctionsKt.sendPrivacyUpdateRequest((SendPrivacyUpdateRequest) handleInvocationsFromAdViewer.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(SendPrivacyUpdateRequest.class)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ExposedFunction invoke$lambda$31(HandleInvocationsFromAdViewer handleInvocationsFromAdViewer, AdObject adObject) {
        return CommonAdViewerExposedFunctionsKt.sendDiagnosticEvent((SendDiagnosticEvent) handleInvocationsFromAdViewer.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class)), adObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ExposedFunction invoke$lambda$32(HandleInvocationsFromAdViewer handleInvocationsFromAdViewer) {
        return CommonAdViewerExposedFunctionsKt.incrementBannerImpressionCount((SessionRepository) handleInvocationsFromAdViewer.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(SessionRepository.class)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ExposedFunction invoke$lambda$33(HandleInvocationsFromAdViewer handleInvocationsFromAdViewer, AdObject adObject) {
        return CommonAdViewerExposedFunctionsKt.download((CacheFile) handleInvocationsFromAdViewer.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(CacheFile.class)), adObject, (SessionRepository) handleInvocationsFromAdViewer.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(SessionRepository.class)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ExposedFunction invoke$lambda$34(HandleInvocationsFromAdViewer handleInvocationsFromAdViewer, AdObject adObject) {
        return CommonAdViewerExposedFunctionsKt.downloadWithProgress((CacheFile) handleInvocationsFromAdViewer.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(CacheFile.class)), adObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ExposedFunction invoke$lambda$35(HandleInvocationsFromAdViewer handleInvocationsFromAdViewer) {
        return CommonAdViewerExposedFunctionsKt.isFileCached((GetIsFileCache) handleInvocationsFromAdViewer.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(GetIsFileCache.class)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ExposedFunction invoke$lambda$36(HandleInvocationsFromAdViewer handleInvocationsFromAdViewer, AdObject adObject) {
        return CommonAdViewerExposedFunctionsKt.omStartSession((AndroidOmInteraction) handleInvocationsFromAdViewer.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(AndroidOmInteraction.class)), adObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ExposedFunction invoke$lambda$37(HandleInvocationsFromAdViewer handleInvocationsFromAdViewer, AdObject adObject) {
        return CommonAdViewerExposedFunctionsKt.omFinishSession((OmFinishSession) handleInvocationsFromAdViewer.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(OmFinishSession.class)), adObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ExposedFunction invoke$lambda$38(HandleInvocationsFromAdViewer handleInvocationsFromAdViewer, AdObject adObject) {
        return CommonAdViewerExposedFunctionsKt.omImpression((OmImpressionOccurred) handleInvocationsFromAdViewer.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(OmImpressionOccurred.class)), adObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ExposedFunction invoke$lambda$39(HandleInvocationsFromAdViewer handleInvocationsFromAdViewer) {
        return CommonAdViewerExposedFunctionsKt.omGetData((GetOmData) handleInvocationsFromAdViewer.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(GetOmData.class)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ExposedFunction invoke$lambda$4(HandleInvocationsFromAdViewer handleInvocationsFromAdViewer) {
        return CommonAdViewerExposedFunctionsKt.getScreenHeight((DeviceInfoRepository) handleInvocationsFromAdViewer.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(DeviceInfoRepository.class)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ExposedFunction invoke$lambda$40(HandleInvocationsFromAdViewer handleInvocationsFromAdViewer) {
        return CommonAdViewerExposedFunctionsKt.isAttributionAvailable((AndroidAttribution) handleInvocationsFromAdViewer.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(AndroidAttribution.class)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ExposedFunction invoke$lambda$41(HandleInvocationsFromAdViewer handleInvocationsFromAdViewer, AdObject adObject) {
        return CommonAdViewerExposedFunctionsKt.attributionRegisterView((AndroidAttribution) handleInvocationsFromAdViewer.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(AndroidAttribution.class)), adObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ExposedFunction invoke$lambda$42(HandleInvocationsFromAdViewer handleInvocationsFromAdViewer, AdObject adObject) {
        return CommonAdViewerExposedFunctionsKt.attributionRegisterClick((AndroidAttribution) handleInvocationsFromAdViewer.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(AndroidAttribution.class)), adObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ExposedFunction invoke$lambda$43(HandleInvocationsFromAdViewer handleInvocationsFromAdViewer, AdObject adObject) {
        return CommonAdViewerExposedFunctionsKt.hbTokenIncrementWins((SessionRepository) handleInvocationsFromAdViewer.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(SessionRepository.class)), adObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ExposedFunction invoke$lambda$44(HandleInvocationsFromAdViewer handleInvocationsFromAdViewer) {
        return CommonAdViewerExposedFunctionsKt.hbTokenIncrementStarts((SessionRepository) handleInvocationsFromAdViewer.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(SessionRepository.class)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ExposedFunction invoke$lambda$45(HandleInvocationsFromAdViewer handleInvocationsFromAdViewer) {
        return CommonAdViewerExposedFunctionsKt.hbTokenReset((SessionRepository) handleInvocationsFromAdViewer.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(SessionRepository.class)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ExposedFunction invoke$lambda$46(HandleInvocationsFromAdViewer handleInvocationsFromAdViewer, AdObject adObject) {
        return CommonAdViewerExposedFunctionsKt.loadOfferwallAd((LoadOfferwallAd) handleInvocationsFromAdViewer.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(LoadOfferwallAd.class)), adObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ExposedFunction invoke$lambda$48(HandleInvocationsFromAdViewer handleInvocationsFromAdViewer) {
        return CommonAdViewerExposedFunctionsKt.isOfferwallAdReady((GetIsOfferwallAdReady) handleInvocationsFromAdViewer.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(GetIsOfferwallAdReady.class)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ExposedFunction invoke$lambda$5(HandleInvocationsFromAdViewer handleInvocationsFromAdViewer) {
        return CommonAdViewerExposedFunctionsKt.getScreenWidth((DeviceInfoRepository) handleInvocationsFromAdViewer.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(DeviceInfoRepository.class)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ExposedFunction invoke$lambda$53(HandleInvocationsFromAdViewer handleInvocationsFromAdViewer, AdObject adObject) {
        return CommonAdViewerExposedFunctionsKt.getExtra((SessionRepository) handleInvocationsFromAdViewer.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(SessionRepository.class)), adObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ExposedFunction invoke$lambda$6(HandleInvocationsFromAdViewer handleInvocationsFromAdViewer, AdObject adObject) {
        return CommonAdViewerExposedFunctionsKt.getBlackPixelPercentage((WebViewScreenCapture) handleInvocationsFromAdViewer.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(WebViewScreenCapture.class)), adObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ExposedFunction invoke$lambda$7(HandleInvocationsFromAdViewer handleInvocationsFromAdViewer, AdObject adObject) {
        return CommonAdViewerExposedFunctionsKt.captureScreenshot((WebViewScreenCapture) handleInvocationsFromAdViewer.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(WebViewScreenCapture.class)), adObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ExposedFunction invoke$lambda$8(AdObject adObject, HandleInvocationsFromAdViewer handleInvocationsFromAdViewer) {
        return CommonAdViewerExposedFunctionsKt.openUrl(adObject, (HandleOpenUrl) handleInvocationsFromAdViewer.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(HandleOpenUrl.class)));
    }

    @Override // com.unity3d.services.core.di.IServiceComponent
    public IServiceProvider getServiceProvider() {
        return IServiceComponent.DefaultImpls.getServiceProvider(this);
    }

    public final Map<String, Function0<ExposedFunction>> invoke(String adData, String adDataRefreshToken, String impressionConfig, final AdObject adObject) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        Intrinsics.checkNotNullParameter(adDataRefreshToken, "adDataRefreshToken");
        Intrinsics.checkNotNullParameter(impressionConfig, "impressionConfig");
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        final String strM1890constructorimpl = AdData.m1890constructorimpl(adData);
        final String strM1911constructorimpl = ImpressionConfig.m1911constructorimpl(impressionConfig);
        final String strM1897constructorimpl = AdDataRefreshToken.m1897constructorimpl(adDataRefreshToken);
        return MapsKt__MapsKt.mapOf(TuplesKt.to(ExposedFunctionLocation.GET_AD_CONTEXT, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HandleInvocationsFromAdViewer.invoke$lambda$0(this.f$0, strM1890constructorimpl, strM1911constructorimpl, strM1897constructorimpl, adObject);
            }
        }), TuplesKt.to(ExposedFunctionLocation.GET_CONNECTION_TYPE, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda11
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HandleInvocationsFromAdViewer.invoke$lambda$1(this.f$0);
            }
        }), TuplesKt.to(ExposedFunctionLocation.GET_DEVICE_VOLUME, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda22
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HandleInvocationsFromAdViewer.invoke$lambda$2(this.f$0);
            }
        }), TuplesKt.to(ExposedFunctionLocation.GET_DEVICE_MAX_VOLUME, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda33
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HandleInvocationsFromAdViewer.invoke$lambda$3(this.f$0);
            }
        }), TuplesKt.to(ExposedFunctionLocation.GET_SCREEN_HEIGHT, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda44
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HandleInvocationsFromAdViewer.invoke$lambda$4(this.f$0);
            }
        }), TuplesKt.to(ExposedFunctionLocation.GET_SCREEN_WIDTH, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda49
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HandleInvocationsFromAdViewer.invoke$lambda$5(this.f$0);
            }
        }), TuplesKt.to(ExposedFunctionLocation.GET_BLACK_PIXEL_PERCENTAGE, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda50
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HandleInvocationsFromAdViewer.invoke$lambda$6(this.f$0, adObject);
            }
        }), TuplesKt.to(ExposedFunctionLocation.CAPTURE_SCREENSHOT, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda51
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HandleInvocationsFromAdViewer.invoke$lambda$7(this.f$0, adObject);
            }
        }), TuplesKt.to(ExposedFunctionLocation.OPEN_URL, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda52
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HandleInvocationsFromAdViewer.invoke$lambda$8(adObject, this);
            }
        }), TuplesKt.to(ExposedFunctionLocation.SET_ORIENTATION, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda53
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CommonAdViewerExposedFunctionsKt.setOrientation(adObject);
            }
        }), TuplesKt.to(ExposedFunctionLocation.SEND_OPERATIVE_EVENT, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HandleInvocationsFromAdViewer.invoke$lambda$10(this.f$0, adObject);
            }
        }), TuplesKt.to(ExposedFunctionLocation.STORAGE_WRITE, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CommonAdViewerExposedFunctionsKt.writeStorage();
            }
        }), TuplesKt.to(ExposedFunctionLocation.STORAGE_READ, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CommonAdViewerExposedFunctionsKt.readStorage();
            }
        }), TuplesKt.to(ExposedFunctionLocation.STORAGE_DELETE, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CommonAdViewerExposedFunctionsKt.deleteStorage();
            }
        }), TuplesKt.to(ExposedFunctionLocation.STORAGE_CLEAR, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CommonAdViewerExposedFunctionsKt.clearStorage();
            }
        }), TuplesKt.to(ExposedFunctionLocation.STORAGE_GET_KEYS, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CommonAdViewerExposedFunctionsKt.getKeysStorage();
            }
        }), TuplesKt.to(ExposedFunctionLocation.STORAGE_GET, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CommonAdViewerExposedFunctionsKt.getStorage();
            }
        }), TuplesKt.to(ExposedFunctionLocation.STORAGE_SET, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CommonAdViewerExposedFunctionsKt.setStorage();
            }
        }), TuplesKt.to(ExposedFunctionLocation.GET_PRIVACY_FSM, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda9
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HandleInvocationsFromAdViewer.invoke$lambda$18(this.f$0);
            }
        }), TuplesKt.to(ExposedFunctionLocation.SET_PRIVACY_FSM, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda10
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HandleInvocationsFromAdViewer.invoke$lambda$19(this.f$0);
            }
        }), TuplesKt.to(ExposedFunctionLocation.GET_PRIVACY, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HandleInvocationsFromAdViewer.invoke$lambda$20(this.f$0);
            }
        }), TuplesKt.to(ExposedFunctionLocation.SET_PRIVACY, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HandleInvocationsFromAdViewer.invoke$lambda$21(this.f$0);
            }
        }), TuplesKt.to(ExposedFunctionLocation.GET_ALLOWED_PII, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda14
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HandleInvocationsFromAdViewer.invoke$lambda$22(this.f$0);
            }
        }), TuplesKt.to(ExposedFunctionLocation.SET_ALLOWED_PII, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda15
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HandleInvocationsFromAdViewer.invoke$lambda$23(this.f$0);
            }
        }), TuplesKt.to(ExposedFunctionLocation.GET_SESSION_TOKEN, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda16
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HandleInvocationsFromAdViewer.invoke$lambda$24(this.f$0);
            }
        }), TuplesKt.to(ExposedFunctionLocation.MARK_CAMPAIGN_STATE_SHOWN, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda17
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HandleInvocationsFromAdViewer.invoke$lambda$25(this.f$0, adObject);
            }
        }), TuplesKt.to(ExposedFunctionLocation.REFRESH_AD_DATA, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda18
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HandleInvocationsFromAdViewer.invoke$lambda$26(this.f$0, adObject);
            }
        }), TuplesKt.to(ExposedFunctionLocation.SEND_AD_VIEWER_REQUEST, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda19
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HandleInvocationsFromAdViewer.invoke$lambda$27(this.f$0, adObject);
            }
        }), TuplesKt.to(ExposedFunctionLocation.UPDATE_CAMPAIGN_STATE, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda20
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HandleInvocationsFromAdViewer.invoke$lambda$28(this.f$0, adObject);
            }
        }), TuplesKt.to(ExposedFunctionLocation.UPDATE_TRACKING_TOKEN, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda21
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CommonAdViewerExposedFunctionsKt.updateTrackingToken(adObject);
            }
        }), TuplesKt.to(ExposedFunctionLocation.SEND_PRIVACY_UPDATE_REQUEST, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda23
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HandleInvocationsFromAdViewer.invoke$lambda$30(this.f$0);
            }
        }), TuplesKt.to(ExposedFunctionLocation.SEND_DIAGNOSTIC_EVENT, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda24
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HandleInvocationsFromAdViewer.invoke$lambda$31(this.f$0, adObject);
            }
        }), TuplesKt.to(ExposedFunctionLocation.INCREMENT_BANNER_IMPRESSION_COUNT, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda25
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HandleInvocationsFromAdViewer.invoke$lambda$32(this.f$0);
            }
        }), TuplesKt.to(ExposedFunctionLocation.DOWNLOAD, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda26
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HandleInvocationsFromAdViewer.invoke$lambda$33(this.f$0, adObject);
            }
        }), TuplesKt.to(ExposedFunctionLocation.DOWNLOAD_WITH_PROGRESS, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda27
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HandleInvocationsFromAdViewer.invoke$lambda$34(this.f$0, adObject);
            }
        }), TuplesKt.to(ExposedFunctionLocation.IS_FILE_CACHED, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda28
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HandleInvocationsFromAdViewer.invoke$lambda$35(this.f$0);
            }
        }), TuplesKt.to(ExposedFunctionLocation.OM_START_SESSION, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda29
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HandleInvocationsFromAdViewer.invoke$lambda$36(this.f$0, adObject);
            }
        }), TuplesKt.to(ExposedFunctionLocation.OM_FINISH_SESSION, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda30
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HandleInvocationsFromAdViewer.invoke$lambda$37(this.f$0, adObject);
            }
        }), TuplesKt.to(ExposedFunctionLocation.OM_IMPRESSION, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda31
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HandleInvocationsFromAdViewer.invoke$lambda$38(this.f$0, adObject);
            }
        }), TuplesKt.to(ExposedFunctionLocation.OM_GET_DATA, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda32
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HandleInvocationsFromAdViewer.invoke$lambda$39(this.f$0);
            }
        }), TuplesKt.to(ExposedFunctionLocation.IS_ATTRIBUTION_AVAILABLE, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda34
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HandleInvocationsFromAdViewer.invoke$lambda$40(this.f$0);
            }
        }), TuplesKt.to(ExposedFunctionLocation.ATTRIBUTION_REGISTER_VIEW, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda35
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HandleInvocationsFromAdViewer.invoke$lambda$41(this.f$0, adObject);
            }
        }), TuplesKt.to(ExposedFunctionLocation.ATTRIBUTION_REGISTER_CLICK, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda36
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HandleInvocationsFromAdViewer.invoke$lambda$42(this.f$0, adObject);
            }
        }), TuplesKt.to(ExposedFunctionLocation.HEADER_BIDDING_TOKEN_INCREMENT_WINS, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda37
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HandleInvocationsFromAdViewer.invoke$lambda$43(this.f$0, adObject);
            }
        }), TuplesKt.to(ExposedFunctionLocation.HEADER_BIDDING_TOKEN_INCREMENT_STARTS, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda38
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HandleInvocationsFromAdViewer.invoke$lambda$44(this.f$0);
            }
        }), TuplesKt.to(ExposedFunctionLocation.HEADER_BIDDING_TOKEN_RESET, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda39
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HandleInvocationsFromAdViewer.invoke$lambda$45(this.f$0);
            }
        }), TuplesKt.to(ExposedFunctionLocation.LOAD_OFFERWALL_AD, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda40
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HandleInvocationsFromAdViewer.invoke$lambda$46(this.f$0, adObject);
            }
        }), TuplesKt.to(ExposedFunctionLocation.SHOW_OFFERWALL_AD, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda41
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CommonAdViewerExposedFunctionsKt.showOfferwallAd();
            }
        }), TuplesKt.to(ExposedFunctionLocation.IS_OFFERWALL_AD_READY, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda42
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HandleInvocationsFromAdViewer.invoke$lambda$48(this.f$0);
            }
        }), TuplesKt.to(ExposedFunctionLocation.REQUEST_GET, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda43
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HandleInvocationsFromAdViewer.invoke$lambda$49(this.f$0);
            }
        }), TuplesKt.to(ExposedFunctionLocation.REQUEST_POST, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda45
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HandleInvocationsFromAdViewer.invoke$lambda$50(this.f$0);
            }
        }), TuplesKt.to(ExposedFunctionLocation.REQUEST_HEAD, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda46
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HandleInvocationsFromAdViewer.invoke$lambda$51(this.f$0);
            }
        }), TuplesKt.to(ExposedFunctionLocation.SET_OPPORTUNITY_TTL, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda47
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CommonAdViewerExposedFunctionsKt.setOpportunityTTL(adObject);
            }
        }), TuplesKt.to(ExposedFunctionLocation.GET_EXTRA, new Function0() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda48
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HandleInvocationsFromAdViewer.invoke$lambda$53(this.f$0, adObject);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ExposedFunction invoke$lambda$49(HandleInvocationsFromAdViewer handleInvocationsFromAdViewer) {
        return CommonAdViewerExposedFunctionsKt.request(RequestType.GET, (ExecuteAdViewerRequest) handleInvocationsFromAdViewer.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(ExecuteAdViewerRequest.class)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ExposedFunction invoke$lambda$50(HandleInvocationsFromAdViewer handleInvocationsFromAdViewer) {
        return CommonAdViewerExposedFunctionsKt.request(RequestType.POST, (ExecuteAdViewerRequest) handleInvocationsFromAdViewer.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(ExecuteAdViewerRequest.class)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ExposedFunction invoke$lambda$51(HandleInvocationsFromAdViewer handleInvocationsFromAdViewer) {
        return CommonAdViewerExposedFunctionsKt.request(RequestType.HEAD, (ExecuteAdViewerRequest) handleInvocationsFromAdViewer.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(ExecuteAdViewerRequest.class)));
    }

    /* JADX INFO: compiled from: HandleInvocationsFromAdViewer.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
