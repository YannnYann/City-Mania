package com.unity3d.ads.core.data.model;

import android.app.Activity;
import com.google.protobuf.ByteString;
import com.ironsource.mediationsdk.metadata.a;
import com.unity3d.ads.LoadConfiguration;
import com.unity3d.ads.ShowConfiguration;
import com.unity3d.ads.UnityAdsLoadOptions;
import com.unity3d.ads.adplayer.AdPlayer;
import com.vungle.ads.internal.protos.Sdk;
import gatewayprotocol.v1.AdResponseOuterClass;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import io.bidmachine.protobuf.EventTypeExtended;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: compiled from: AdObject.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AdObject {
    private WeakReference<Activity> activity;
    private final AdPlayer adPlayer;
    private final CoroutineScope adScope;
    private final DiagnosticEventRequestOuterClass.DiagnosticAdType adType;
    private final boolean isHeaderBidding;
    private boolean isOfferwallAd;
    private LoadConfiguration loadConfiguration;
    private final UnityAdsLoadOptions loadOptions;
    private String offerwallPlacementName;
    private final ByteString opportunityId;
    private final String placementId;
    private String playerServerId;
    private ShowConfiguration showConfiguration;
    private MutableStateFlow<AdObjectState> state;
    private ByteString trackingToken;
    private MutableStateFlow<Duration> ttl;
    private WebViewLessLoadingRequiredData webViewLessLoadingRequiredData;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AdObject copy$default(AdObject adObject, CoroutineScope coroutineScope, ByteString byteString, String str, ByteString byteString2, boolean z, String str2, AdPlayer adPlayer, String str3, UnityAdsLoadOptions unityAdsLoadOptions, boolean z2, DiagnosticEventRequestOuterClass.DiagnosticAdType diagnosticAdType, MutableStateFlow mutableStateFlow, MutableStateFlow mutableStateFlow2, LoadConfiguration loadConfiguration, ShowConfiguration showConfiguration, WeakReference weakReference, WebViewLessLoadingRequiredData webViewLessLoadingRequiredData, int i, Object obj) {
        WebViewLessLoadingRequiredData webViewLessLoadingRequiredData2;
        WeakReference weakReference2;
        CoroutineScope coroutineScope2;
        AdObject adObject2;
        ShowConfiguration showConfiguration2;
        ByteString byteString3;
        String str4;
        ByteString byteString4;
        boolean z3;
        String str5;
        AdPlayer adPlayer2;
        String str6;
        UnityAdsLoadOptions unityAdsLoadOptions2;
        boolean z4;
        DiagnosticEventRequestOuterClass.DiagnosticAdType diagnosticAdType2;
        MutableStateFlow mutableStateFlow3;
        MutableStateFlow mutableStateFlow4;
        LoadConfiguration loadConfiguration2;
        CoroutineScope coroutineScope3 = (i & 1) != 0 ? adObject.adScope : coroutineScope;
        ByteString byteString5 = (i & 2) != 0 ? adObject.opportunityId : byteString;
        String str7 = (i & 4) != 0 ? adObject.placementId : str;
        ByteString byteString6 = (i & 8) != 0 ? adObject.trackingToken : byteString2;
        boolean z5 = (i & 16) != 0 ? adObject.isOfferwallAd : z;
        String str8 = (i & 32) != 0 ? adObject.offerwallPlacementName : str2;
        AdPlayer adPlayer3 = (i & 64) != 0 ? adObject.adPlayer : adPlayer;
        String str9 = (i & Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) != 0 ? adObject.playerServerId : str3;
        UnityAdsLoadOptions unityAdsLoadOptions3 = (i & 256) != 0 ? adObject.loadOptions : unityAdsLoadOptions;
        boolean z6 = (i & EventTypeExtended.EVENT_TYPE_EXTENDED_CONTAINER_ADDED_VALUE) != 0 ? adObject.isHeaderBidding : z2;
        DiagnosticEventRequestOuterClass.DiagnosticAdType diagnosticAdType3 = (i & 1024) != 0 ? adObject.adType : diagnosticAdType;
        MutableStateFlow mutableStateFlow5 = (i & a.o) != 0 ? adObject.ttl : mutableStateFlow;
        MutableStateFlow mutableStateFlow6 = (i & 4096) != 0 ? adObject.state : mutableStateFlow2;
        LoadConfiguration loadConfiguration3 = (i & 8192) != 0 ? adObject.loadConfiguration : loadConfiguration;
        CoroutineScope coroutineScope4 = coroutineScope3;
        ShowConfiguration showConfiguration3 = (i & 16384) != 0 ? adObject.showConfiguration : showConfiguration;
        WeakReference weakReference3 = (i & 32768) != 0 ? adObject.activity : weakReference;
        if ((i & 65536) != 0) {
            weakReference2 = weakReference3;
            webViewLessLoadingRequiredData2 = adObject.webViewLessLoadingRequiredData;
            showConfiguration2 = showConfiguration3;
            byteString3 = byteString5;
            str4 = str7;
            byteString4 = byteString6;
            z3 = z5;
            str5 = str8;
            adPlayer2 = adPlayer3;
            str6 = str9;
            unityAdsLoadOptions2 = unityAdsLoadOptions3;
            z4 = z6;
            diagnosticAdType2 = diagnosticAdType3;
            mutableStateFlow3 = mutableStateFlow5;
            mutableStateFlow4 = mutableStateFlow6;
            loadConfiguration2 = loadConfiguration3;
            coroutineScope2 = coroutineScope4;
            adObject2 = adObject;
        } else {
            webViewLessLoadingRequiredData2 = webViewLessLoadingRequiredData;
            weakReference2 = weakReference3;
            coroutineScope2 = coroutineScope4;
            adObject2 = adObject;
            showConfiguration2 = showConfiguration3;
            byteString3 = byteString5;
            str4 = str7;
            byteString4 = byteString6;
            z3 = z5;
            str5 = str8;
            adPlayer2 = adPlayer3;
            str6 = str9;
            unityAdsLoadOptions2 = unityAdsLoadOptions3;
            z4 = z6;
            diagnosticAdType2 = diagnosticAdType3;
            mutableStateFlow3 = mutableStateFlow5;
            mutableStateFlow4 = mutableStateFlow6;
            loadConfiguration2 = loadConfiguration3;
        }
        return adObject2.copy(coroutineScope2, byteString3, str4, byteString4, z3, str5, adPlayer2, str6, unityAdsLoadOptions2, z4, diagnosticAdType2, mutableStateFlow3, mutableStateFlow4, loadConfiguration2, showConfiguration2, weakReference2, webViewLessLoadingRequiredData2);
    }

    public final CoroutineScope component1() {
        return this.adScope;
    }

    public final boolean component10() {
        return this.isHeaderBidding;
    }

    public final DiagnosticEventRequestOuterClass.DiagnosticAdType component11() {
        return this.adType;
    }

    public final MutableStateFlow<Duration> component12() {
        return this.ttl;
    }

    public final MutableStateFlow<AdObjectState> component13() {
        return this.state;
    }

    public final LoadConfiguration component14() {
        return this.loadConfiguration;
    }

    public final ShowConfiguration component15() {
        return this.showConfiguration;
    }

    public final WeakReference<Activity> component16() {
        return this.activity;
    }

    public final WebViewLessLoadingRequiredData component17() {
        return this.webViewLessLoadingRequiredData;
    }

    public final ByteString component2() {
        return this.opportunityId;
    }

    public final String component3() {
        return this.placementId;
    }

    public final ByteString component4() {
        return this.trackingToken;
    }

    public final boolean component5() {
        return this.isOfferwallAd;
    }

    public final String component6() {
        return this.offerwallPlacementName;
    }

    public final AdPlayer component7() {
        return this.adPlayer;
    }

    public final String component8() {
        return this.playerServerId;
    }

    public final UnityAdsLoadOptions component9() {
        return this.loadOptions;
    }

    public final AdObject copy(CoroutineScope adScope, ByteString opportunityId, String placementId, ByteString trackingToken, boolean z, String str, AdPlayer adPlayer, String str2, UnityAdsLoadOptions loadOptions, boolean z2, DiagnosticEventRequestOuterClass.DiagnosticAdType adType, MutableStateFlow<Duration> ttl, MutableStateFlow<AdObjectState> state, LoadConfiguration loadConfiguration, ShowConfiguration showConfiguration, WeakReference<Activity> weakReference, WebViewLessLoadingRequiredData webViewLessLoadingRequiredData) {
        Intrinsics.checkNotNullParameter(adScope, "adScope");
        Intrinsics.checkNotNullParameter(opportunityId, "opportunityId");
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        Intrinsics.checkNotNullParameter(trackingToken, "trackingToken");
        Intrinsics.checkNotNullParameter(loadOptions, "loadOptions");
        Intrinsics.checkNotNullParameter(adType, "adType");
        Intrinsics.checkNotNullParameter(ttl, "ttl");
        Intrinsics.checkNotNullParameter(state, "state");
        return new AdObject(adScope, opportunityId, placementId, trackingToken, z, str, adPlayer, str2, loadOptions, z2, adType, ttl, state, loadConfiguration, showConfiguration, weakReference, webViewLessLoadingRequiredData);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdObject)) {
            return false;
        }
        AdObject adObject = (AdObject) obj;
        return Intrinsics.areEqual(this.adScope, adObject.adScope) && Intrinsics.areEqual(this.opportunityId, adObject.opportunityId) && Intrinsics.areEqual(this.placementId, adObject.placementId) && Intrinsics.areEqual(this.trackingToken, adObject.trackingToken) && this.isOfferwallAd == adObject.isOfferwallAd && Intrinsics.areEqual(this.offerwallPlacementName, adObject.offerwallPlacementName) && Intrinsics.areEqual(this.adPlayer, adObject.adPlayer) && Intrinsics.areEqual(this.playerServerId, adObject.playerServerId) && Intrinsics.areEqual(this.loadOptions, adObject.loadOptions) && this.isHeaderBidding == adObject.isHeaderBidding && this.adType == adObject.adType && Intrinsics.areEqual(this.ttl, adObject.ttl) && Intrinsics.areEqual(this.state, adObject.state) && Intrinsics.areEqual(this.loadConfiguration, adObject.loadConfiguration) && Intrinsics.areEqual(this.showConfiguration, adObject.showConfiguration) && Intrinsics.areEqual(this.activity, adObject.activity) && Intrinsics.areEqual(this.webViewLessLoadingRequiredData, adObject.webViewLessLoadingRequiredData);
    }

    public int hashCode() {
        int iHashCode = ((((((((this.adScope.hashCode() * 31) + this.opportunityId.hashCode()) * 31) + this.placementId.hashCode()) * 31) + this.trackingToken.hashCode()) * 31) + Boolean.hashCode(this.isOfferwallAd)) * 31;
        String str = this.offerwallPlacementName;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        AdPlayer adPlayer = this.adPlayer;
        int iHashCode3 = (iHashCode2 + (adPlayer == null ? 0 : adPlayer.hashCode())) * 31;
        String str2 = this.playerServerId;
        int iHashCode4 = (((((((((((iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31) + this.loadOptions.hashCode()) * 31) + Boolean.hashCode(this.isHeaderBidding)) * 31) + this.adType.hashCode()) * 31) + this.ttl.hashCode()) * 31) + this.state.hashCode()) * 31;
        LoadConfiguration loadConfiguration = this.loadConfiguration;
        int iHashCode5 = (iHashCode4 + (loadConfiguration == null ? 0 : loadConfiguration.hashCode())) * 31;
        ShowConfiguration showConfiguration = this.showConfiguration;
        int iHashCode6 = (iHashCode5 + (showConfiguration == null ? 0 : showConfiguration.hashCode())) * 31;
        WeakReference<Activity> weakReference = this.activity;
        int iHashCode7 = (iHashCode6 + (weakReference == null ? 0 : weakReference.hashCode())) * 31;
        WebViewLessLoadingRequiredData webViewLessLoadingRequiredData = this.webViewLessLoadingRequiredData;
        return iHashCode7 + (webViewLessLoadingRequiredData != null ? webViewLessLoadingRequiredData.hashCode() : 0);
    }

    public String toString() {
        return "AdObject(adScope=" + this.adScope + ", opportunityId=" + this.opportunityId + ", placementId=" + this.placementId + ", trackingToken=" + this.trackingToken + ", isOfferwallAd=" + this.isOfferwallAd + ", offerwallPlacementName=" + this.offerwallPlacementName + ", adPlayer=" + this.adPlayer + ", playerServerId=" + this.playerServerId + ", loadOptions=" + this.loadOptions + ", isHeaderBidding=" + this.isHeaderBidding + ", adType=" + this.adType + ", ttl=" + this.ttl + ", state=" + this.state + ", loadConfiguration=" + this.loadConfiguration + ", showConfiguration=" + this.showConfiguration + ", activity=" + this.activity + ", webViewLessLoadingRequiredData=" + this.webViewLessLoadingRequiredData + ')';
    }

    public AdObject(CoroutineScope adScope, ByteString opportunityId, String placementId, ByteString trackingToken, boolean z, String str, AdPlayer adPlayer, String str2, UnityAdsLoadOptions loadOptions, boolean z2, DiagnosticEventRequestOuterClass.DiagnosticAdType adType, MutableStateFlow<Duration> ttl, MutableStateFlow<AdObjectState> state, LoadConfiguration loadConfiguration, ShowConfiguration showConfiguration, WeakReference<Activity> weakReference, WebViewLessLoadingRequiredData webViewLessLoadingRequiredData) {
        Intrinsics.checkNotNullParameter(adScope, "adScope");
        Intrinsics.checkNotNullParameter(opportunityId, "opportunityId");
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        Intrinsics.checkNotNullParameter(trackingToken, "trackingToken");
        Intrinsics.checkNotNullParameter(loadOptions, "loadOptions");
        Intrinsics.checkNotNullParameter(adType, "adType");
        Intrinsics.checkNotNullParameter(ttl, "ttl");
        Intrinsics.checkNotNullParameter(state, "state");
        this.adScope = adScope;
        this.opportunityId = opportunityId;
        this.placementId = placementId;
        this.trackingToken = trackingToken;
        this.isOfferwallAd = z;
        this.offerwallPlacementName = str;
        this.adPlayer = adPlayer;
        this.playerServerId = str2;
        this.loadOptions = loadOptions;
        this.isHeaderBidding = z2;
        this.adType = adType;
        this.ttl = ttl;
        this.state = state;
        this.loadConfiguration = loadConfiguration;
        this.showConfiguration = showConfiguration;
        this.activity = weakReference;
        this.webViewLessLoadingRequiredData = webViewLessLoadingRequiredData;
    }

    public final CoroutineScope getAdScope() {
        return this.adScope;
    }

    public final ByteString getOpportunityId() {
        return this.opportunityId;
    }

    public final String getPlacementId() {
        return this.placementId;
    }

    public final ByteString getTrackingToken() {
        return this.trackingToken;
    }

    public final void setTrackingToken(ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "<set-?>");
        this.trackingToken = byteString;
    }

    public final boolean isOfferwallAd() {
        return this.isOfferwallAd;
    }

    public final void setOfferwallAd(boolean z) {
        this.isOfferwallAd = z;
    }

    public final String getOfferwallPlacementName() {
        return this.offerwallPlacementName;
    }

    public final void setOfferwallPlacementName(String str) {
        this.offerwallPlacementName = str;
    }

    public final AdPlayer getAdPlayer() {
        return this.adPlayer;
    }

    public final String getPlayerServerId() {
        return this.playerServerId;
    }

    public final void setPlayerServerId(String str) {
        this.playerServerId = str;
    }

    public final UnityAdsLoadOptions getLoadOptions() {
        return this.loadOptions;
    }

    public final boolean isHeaderBidding() {
        return this.isHeaderBidding;
    }

    public final DiagnosticEventRequestOuterClass.DiagnosticAdType getAdType() {
        return this.adType;
    }

    /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
        java.lang.NullPointerException
        */
    public /* synthetic */ AdObject(kotlinx.coroutines.CoroutineScope r21, com.google.protobuf.ByteString r22, java.lang.String r23, com.google.protobuf.ByteString r24, boolean r25, java.lang.String r26, com.unity3d.ads.adplayer.AdPlayer r27, java.lang.String r28, com.unity3d.ads.UnityAdsLoadOptions r29, boolean r30, gatewayprotocol.v1.DiagnosticEventRequestOuterClass.DiagnosticAdType r31, kotlinx.coroutines.flow.MutableStateFlow r32, kotlinx.coroutines.flow.MutableStateFlow r33, com.unity3d.ads.LoadConfiguration r34, com.unity3d.ads.ShowConfiguration r35, java.lang.ref.WeakReference r36, com.unity3d.ads.core.data.model.AdObject.WebViewLessLoadingRequiredData r37, int r38, kotlin.jvm.internal.DefaultConstructorMarker r39) {
        /*
            r20 = this;
            r0 = r38
            r1 = r0 & 16
            if (r1 == 0) goto L9
            r1 = 0
            r7 = r1
            goto Lb
        L9:
            r7 = r25
        Lb:
            r1 = r0 & 32
            r2 = 0
            if (r1 == 0) goto L12
            r8 = r2
            goto L14
        L12:
            r8 = r26
        L14:
            r1 = r0 & 64
            if (r1 == 0) goto L1a
            r9 = r2
            goto L1c
        L1a:
            r9 = r27
        L1c:
            r1 = r0 & 128(0x80, float:1.8E-43)
            if (r1 == 0) goto L22
            r10 = r2
            goto L24
        L22:
            r10 = r28
        L24:
            r1 = r0 & 2048(0x800, float:2.87E-42)
            if (r1 == 0) goto L2e
            kotlinx.coroutines.flow.MutableStateFlow r1 = kotlinx.coroutines.flow.StateFlowKt.MutableStateFlow(r2)
            r14 = r1
            goto L30
        L2e:
            r14 = r32
        L30:
            r1 = r0 & 4096(0x1000, float:5.74E-42)
            if (r1 == 0) goto L3c
            com.unity3d.ads.core.data.model.AdObjectState r1 = com.unity3d.ads.core.data.model.AdObjectState.INIT
            kotlinx.coroutines.flow.MutableStateFlow r1 = kotlinx.coroutines.flow.StateFlowKt.MutableStateFlow(r1)
            r15 = r1
            goto L3e
        L3c:
            r15 = r33
        L3e:
            r1 = r0 & 8192(0x2000, float:1.148E-41)
            if (r1 == 0) goto L45
            r16 = r2
            goto L47
        L45:
            r16 = r34
        L47:
            r1 = r0 & 16384(0x4000, float:2.2959E-41)
            if (r1 == 0) goto L4e
            r17 = r2
            goto L50
        L4e:
            r17 = r35
        L50:
            r1 = 32768(0x8000, float:4.5918E-41)
            r1 = r1 & r0
            if (r1 == 0) goto L59
            r18 = r2
            goto L5b
        L59:
            r18 = r36
        L5b:
            r1 = 65536(0x10000, float:9.1835E-41)
            r0 = r0 & r1
            if (r0 == 0) goto L73
            r19 = r2
            r3 = r21
            r4 = r22
            r5 = r23
            r6 = r24
            r11 = r29
            r12 = r30
            r13 = r31
            r2 = r20
            goto L85
        L73:
            r19 = r37
            r2 = r20
            r3 = r21
            r4 = r22
            r5 = r23
            r6 = r24
            r11 = r29
            r12 = r30
            r13 = r31
        L85:
            r2.<init>(r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.data.model.AdObject.<init>(kotlinx.coroutines.CoroutineScope, com.google.protobuf.ByteString, java.lang.String, com.google.protobuf.ByteString, boolean, java.lang.String, com.unity3d.ads.adplayer.AdPlayer, java.lang.String, com.unity3d.ads.UnityAdsLoadOptions, boolean, gatewayprotocol.v1.DiagnosticEventRequestOuterClass$DiagnosticAdType, kotlinx.coroutines.flow.MutableStateFlow, kotlinx.coroutines.flow.MutableStateFlow, com.unity3d.ads.LoadConfiguration, com.unity3d.ads.ShowConfiguration, java.lang.ref.WeakReference, com.unity3d.ads.core.data.model.AdObject$WebViewLessLoadingRequiredData, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    public final MutableStateFlow<Duration> getTtl() {
        return this.ttl;
    }

    public final void setTtl(MutableStateFlow<Duration> mutableStateFlow) {
        Intrinsics.checkNotNullParameter(mutableStateFlow, "<set-?>");
        this.ttl = mutableStateFlow;
    }

    public final MutableStateFlow<AdObjectState> getState() {
        return this.state;
    }

    public final void setState(MutableStateFlow<AdObjectState> mutableStateFlow) {
        Intrinsics.checkNotNullParameter(mutableStateFlow, "<set-?>");
        this.state = mutableStateFlow;
    }

    public final LoadConfiguration getLoadConfiguration() {
        return this.loadConfiguration;
    }

    public final void setLoadConfiguration(LoadConfiguration loadConfiguration) {
        this.loadConfiguration = loadConfiguration;
    }

    public final ShowConfiguration getShowConfiguration() {
        return this.showConfiguration;
    }

    public final void setShowConfiguration(ShowConfiguration showConfiguration) {
        this.showConfiguration = showConfiguration;
    }

    public final WeakReference<Activity> getActivity() {
        return this.activity;
    }

    public final void setActivity(WeakReference<Activity> weakReference) {
        this.activity = weakReference;
    }

    public final WebViewLessLoadingRequiredData getWebViewLessLoadingRequiredData() {
        return this.webViewLessLoadingRequiredData;
    }

    public final void setWebViewLessLoadingRequiredData(WebViewLessLoadingRequiredData webViewLessLoadingRequiredData) {
        this.webViewLessLoadingRequiredData = webViewLessLoadingRequiredData;
    }

    /* JADX INFO: compiled from: AdObject.kt */
    public static final class WebViewLessLoadingRequiredData {
        private AdRefreshState adRefreshState;
        private AdResponseOuterClass.AdResponse adResponse;
        private final String webviewUrl;

        public static /* synthetic */ WebViewLessLoadingRequiredData copy$default(WebViewLessLoadingRequiredData webViewLessLoadingRequiredData, String str, AdResponseOuterClass.AdResponse adResponse, AdRefreshState adRefreshState, int i, Object obj) {
            if ((i & 1) != 0) {
                str = webViewLessLoadingRequiredData.webviewUrl;
            }
            if ((i & 2) != 0) {
                adResponse = webViewLessLoadingRequiredData.adResponse;
            }
            if ((i & 4) != 0) {
                adRefreshState = webViewLessLoadingRequiredData.adRefreshState;
            }
            return webViewLessLoadingRequiredData.copy(str, adResponse, adRefreshState);
        }

        public final String component1() {
            return this.webviewUrl;
        }

        public final AdResponseOuterClass.AdResponse component2() {
            return this.adResponse;
        }

        public final AdRefreshState component3() {
            return this.adRefreshState;
        }

        public final WebViewLessLoadingRequiredData copy(String webviewUrl, AdResponseOuterClass.AdResponse adResponse, AdRefreshState adRefreshState) {
            Intrinsics.checkNotNullParameter(webviewUrl, "webviewUrl");
            Intrinsics.checkNotNullParameter(adResponse, "adResponse");
            return new WebViewLessLoadingRequiredData(webviewUrl, adResponse, adRefreshState);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof WebViewLessLoadingRequiredData)) {
                return false;
            }
            WebViewLessLoadingRequiredData webViewLessLoadingRequiredData = (WebViewLessLoadingRequiredData) obj;
            return Intrinsics.areEqual(this.webviewUrl, webViewLessLoadingRequiredData.webviewUrl) && Intrinsics.areEqual(this.adResponse, webViewLessLoadingRequiredData.adResponse) && this.adRefreshState == webViewLessLoadingRequiredData.adRefreshState;
        }

        public int hashCode() {
            int iHashCode = ((this.webviewUrl.hashCode() * 31) + this.adResponse.hashCode()) * 31;
            AdRefreshState adRefreshState = this.adRefreshState;
            return iHashCode + (adRefreshState == null ? 0 : adRefreshState.hashCode());
        }

        public String toString() {
            return "WebViewLessLoadingRequiredData(webviewUrl=" + this.webviewUrl + ", adResponse=" + this.adResponse + ", adRefreshState=" + this.adRefreshState + ')';
        }

        public WebViewLessLoadingRequiredData(String webviewUrl, AdResponseOuterClass.AdResponse adResponse, AdRefreshState adRefreshState) {
            Intrinsics.checkNotNullParameter(webviewUrl, "webviewUrl");
            Intrinsics.checkNotNullParameter(adResponse, "adResponse");
            this.webviewUrl = webviewUrl;
            this.adResponse = adResponse;
            this.adRefreshState = adRefreshState;
        }

        public /* synthetic */ WebViewLessLoadingRequiredData(String str, AdResponseOuterClass.AdResponse adResponse, AdRefreshState adRefreshState, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, adResponse, (i & 4) != 0 ? null : adRefreshState);
        }

        public final String getWebviewUrl() {
            return this.webviewUrl;
        }

        public final AdResponseOuterClass.AdResponse getAdResponse() {
            return this.adResponse;
        }

        public final void setAdResponse(AdResponseOuterClass.AdResponse adResponse) {
            Intrinsics.checkNotNullParameter(adResponse, "<set-?>");
            this.adResponse = adResponse;
        }

        public final AdRefreshState getAdRefreshState() {
            return this.adRefreshState;
        }

        public final void setAdRefreshState(AdRefreshState adRefreshState) {
            this.adRefreshState = adRefreshState;
        }
    }
}
