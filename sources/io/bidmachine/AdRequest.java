package io.bidmachine;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.explorestack.protobuf.Any;
import com.explorestack.protobuf.ListValue;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.Value;
import com.explorestack.protobuf.adcom.Placement;
import com.explorestack.protobuf.openrtb.Openrtb;
import com.explorestack.protobuf.openrtb.Request;
import com.explorestack.protobuf.openrtb.Response;
import com.unity3d.services.UnityAdsConstants;
import io.bidmachine.AdRequest;
import io.bidmachine.AdRequestParameters;
import io.bidmachine.ApiRequest;
import io.bidmachine.B;
import io.bidmachine.C4213b;
import io.bidmachine.core.Logger;
import io.bidmachine.core.NetworkRequest;
import io.bidmachine.core.Utils;
import io.bidmachine.displays.PlacementBuilder;
import io.bidmachine.internal.AbstractC4234s;
import io.bidmachine.internal.C4236u;
import io.bidmachine.models.AuctionResult;
import io.bidmachine.models.DataRestrictions;
import io.bidmachine.models.RequestBuilder;
import io.bidmachine.models.RequestParams;
import io.bidmachine.models.TargetingInfo;
import io.bidmachine.protobuf.RequestExtension;
import io.bidmachine.protobuf.ResponsePayload;
import io.bidmachine.protobuf.sdk.MaskedSignals;
import io.bidmachine.tracking.EventData;
import io.bidmachine.unified.UnifiedAdRequestParams;
import io.bidmachine.utils.BMError;
import io.bidmachine.utils.ProtoSerializerKt;
import io.bidmachine.utils.ProtoUtilsKt;
import io.bidmachine.utils.Tag;
import io.bidmachine.utils.lazy.LazyValue;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.UUID;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AdRequest<SelfType extends AdRequest, AdRequestParametersType extends AdRequestParameters, UnifiedAdRequestParamsType extends UnifiedAdRequestParams> {
    List<AdRequestListener<SelfType>> adRequestListeners;
    private final AdRequestParametersType adRequestParameters;
    AdResponse adResponse;
    private final C4213b adResponseLoader;
    final Queue<String> auctionUrlQueue;
    private final String id;
    List<e> internalAdRequestListeners;
    private final AtomicBoolean isApiRequestCanceled;
    private final AtomicBoolean isApiRequestCompleted;
    private final AtomicBoolean isDestroyed;
    private final AtomicBoolean isLoading;
    private final AtomicBoolean isRequestExpired;
    private NetworkAdUnitManager networkAdUnitManager;
    private final Tag tag = new Tag("AdRequest");
    private final Runnable timeOutRunnable;
    private final BidMachineTrackingObject trackingObject;
    private UnifiedAdRequestParamsType unifiedAdRequestParams;

    public static abstract class AdRequestBuilderImpl<SelfType extends RequestBuilder, ReturnType extends AdRequest<ReturnType, AdRequestParametersType, ?>, AdRequestParametersType extends AdRequestParameters> implements RequestBuilder<SelfType, ReturnType> {
        protected AdPlacementConfig adPlacementConfig;
        ResponsePayload bidPayload;
        AdRequestListener<ReturnType> listener;
        List<NetworkConfig> networkConfigList;
        PriceFloorParams priceFloorParams;
        TargetingParams targetingParams;
        Integer timeOutMs;

        public AdRequestBuilderImpl(AdPlacementConfig adPlacementConfig) {
            this.adPlacementConfig = adPlacementConfig;
        }

        private void fillAdRequestParameters(AdRequestParametersType adrequestparameterstype) {
            adrequestparameterstype.setAdPlacementConfig(this.adPlacementConfig);
            adrequestparameterstype.setPriceFloorParams(this.priceFloorParams);
            adrequestparameterstype.setTargetingParams(this.targetingParams);
            adrequestparameterstype.setNetworkConfigList(this.networkConfigList);
            adrequestparameterstype.setTimeOutMs(this.timeOutMs);
            adrequestparameterstype.setBidPayload(this.bidPayload);
        }

        public ReturnType build() {
            ReturnType returntype = (ReturnType) o.a(this.bidPayload);
            if (returntype == null) {
                returntype = (ReturnType) build(createAdRequestParameters());
            }
            fillAdRequestParameters(returntype.getAdRequestParameters());
            returntype.addListener(this.listener);
            return returntype;
        }

        public abstract ReturnType build(AdRequestParametersType adrequestparameterstype);

        public abstract AdRequestParametersType createAdRequestParameters();

        public void fillNetworkConfigs(List<NetworkConfig> list) {
            if (list == null) {
                this.networkConfigList = new ArrayList();
            } else {
                this.networkConfigList = list;
            }
        }

        public SelfType setBidPayload(String str) {
            if (str == null) {
                this.bidPayload = null;
                return this;
            }
            try {
                this.bidPayload = ResponsePayload.parseFrom(Base64.decode(str, 0));
            } catch (Throwable th) {
                Logger.w(th);
            }
            if (this.bidPayload == null) {
                this.bidPayload = ResponsePayload.getDefaultInstance();
            }
            return this;
        }

        @Deprecated(since = "3.5.0")
        public SelfType setCustomParams(CustomParams customParams) {
            this.adPlacementConfig = this.adPlacementConfig.newBuilder().withCustomParams(customParams).build();
            return this;
        }

        public SelfType setListener(AdRequestListener<ReturnType> adRequestListener) {
            this.listener = adRequestListener;
            return this;
        }

        public SelfType setLoadingTimeOut(Integer num) {
            this.timeOutMs = num;
            return this;
        }

        public SelfType setNetworks(List<NetworkConfig> list) {
            fillNetworkConfigs(list);
            return this;
        }

        @Deprecated(since = "3.5.0")
        public SelfType setPlacementId(String str) {
            this.adPlacementConfig = this.adPlacementConfig.newBuilder().withPlacementId(str).build();
            return this;
        }

        public SelfType setPriceFloorParams(PriceFloorParams priceFloorParams) {
            this.priceFloorParams = priceFloorParams;
            return this;
        }

        @Deprecated
        public SelfType setSessionAdParams(SessionAdParams sessionAdParams) {
            return this;
        }

        public SelfType setTargetingParams(TargetingParams targetingParams) {
            this.targetingParams = targetingParams;
            return this;
        }

        public SelfType setNetworks(String str) {
            ArrayList arrayList = null;
            if (!TextUtils.isEmpty(str)) {
                try {
                    ArrayList arrayList2 = new ArrayList();
                    try {
                        JSONArray jSONArray = new JSONArray(str);
                        for (int i = 0; i < jSONArray.length(); i++) {
                            NetworkConfig networkConfigA = y.a(k.b().d(), jSONArray.getJSONObject(i));
                            if (networkConfigA != null) {
                                arrayList2.add(networkConfigA);
                            }
                        }
                        arrayList = arrayList2;
                    } catch (Exception e) {
                        e = e;
                        arrayList = arrayList2;
                        Logger.w(e);
                    }
                } catch (Exception e2) {
                    e = e2;
                }
            }
            fillNetworkConfigs(arrayList);
            return this;
        }
    }

    public interface AdRequestListener<AdRequestType extends AdRequest> {
        void onRequestExpired(AdRequestType adrequesttype);

        void onRequestFailed(AdRequestType adrequesttype, BMError bMError);

        void onRequestSuccess(AdRequestType adrequesttype, AuctionResult auctionResult);
    }

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AdResponse adResponseF = io.bidmachine.c.a().f(AdRequest.this.adRequestParameters);
            if (adResponseF != null) {
                AdRequest.this.processApiRequestSuccess(adResponseF);
            } else {
                AdRequest.this.processApiRequestFail(BMError.TimeoutError, false);
                AdRequest.this.cancel();
            }
        }
    }

    public class b implements Runnable {
        public final /* synthetic */ Context a;

        public b(Context context) {
            this.a = context;
        }

        public static /* synthetic */ String a() {
            return "Request start";
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                AdRequest.this.cancel();
                AdRequest.this.unsubscribeTimeOut();
                AdRequest<?, ?, ?> adRequest = AdRequest.this;
                AdResponse adResponse = adRequest.adResponse;
                if (adResponse != null) {
                    adResponse.detachAdRequest(adRequest);
                    AdRequest.this.adResponse = null;
                }
                AdRequest.this.isApiRequestCanceled.set(false);
                AdRequest.this.isApiRequestCompleted.set(false);
                AdRequest.this.subscribeTimeOut();
                AdRequest.this.log(new LazyValue() { // from class: io.bidmachine.AdRequest$b$$ExternalSyntheticLambda0
                    @Override // io.bidmachine.utils.lazy.LazyValue
                    public final Object get() {
                        return AdRequest.b.a();
                    }
                });
                AdRequest.this.trackingObject.eventStart(TrackEventType.AuctionRequest);
                ResponsePayload bidPayload = AdRequest.this.adRequestParameters.getBidPayload();
                if (bidPayload != null) {
                    AdRequest.this.processBidPayload(bidPayload);
                } else {
                    AdRequest.this.processRequestObject(this.a);
                }
            } catch (Throwable th) {
                Logger.w(th);
                AdRequest.this.processRequestFail(BMError.throwable("Exception loading ad request", th));
            }
        }
    }

    public class c implements B.a {
        public c() {
        }

        @Override // io.bidmachine.B.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onSuccess(AdResponse adResponse) {
            AdRequest.this.processApiRequestSuccess(adResponse);
        }

        @Override // io.bidmachine.B.a
        public void a(BMError bMError) {
            AdRequest.this.processApiRequestFail(bMError);
        }
    }

    public interface e {
        void a(AdRequest adRequest);
    }

    /* JADX INFO: renamed from: $r8$lambda$9Vdx_gOzhYh8jMDd7-CVeKt1kH4, reason: not valid java name */
    public static /* synthetic */ void m2412$r8$lambda$9Vdx_gOzhYh8jMDd7CVeKt1kH4(k kVar, RequestExtension.Builder builder) {
        String strG = kVar.g();
        if (TextUtils.isEmpty(strG)) {
            return;
        }
        builder.setIfv(strG);
    }

    /* JADX INFO: renamed from: $r8$lambda$B-r4w0hpjGcwRLRF5htYUHKXvWM, reason: not valid java name */
    public static /* synthetic */ String m2413$r8$lambda$Br4w0hpjGcwRLRF5htYUHKXvWM() {
        return "notifyMediationWin";
    }

    /* JADX INFO: renamed from: $r8$lambda$JRAV_75YbljuR_-yco9-1-b4mWI, reason: not valid java name */
    public static /* synthetic */ void m2414$r8$lambda$JRAV_75YbljuR_yco91b4mWI() {
    }

    public static /* synthetic */ String $r8$lambda$KuXquZ17gWiGHyKejEDIZ8nIJDw() {
        return "Request expired";
    }

    public static /* synthetic */ String $r8$lambda$Ok0xnVPjtmg9OpYSB233EIfeGIs() {
        return "destroy";
    }

    public static /* synthetic */ void $r8$lambda$YeN8aCR4EhKMHYoCmySF_iT6fU4() {
    }

    public static /* synthetic */ void $r8$lambda$wwmDjlY0fXJwasolvT2zdPKrNbU(k kVar, MaskedSignals.Builder builder, io.bidmachine.internal.v vVar) {
        String strG = kVar.g();
        if (TextUtils.isEmpty(strG)) {
            return;
        }
        builder.setIfv(ProtoUtilsKt.toProtoStringValue(vVar.a(ProtoSerializerKt.protoSerialize(strG))));
    }

    public AdRequest(AdRequestParametersType adrequestparameterstype) {
        String string = UUID.randomUUID().toString();
        this.id = string;
        this.isLoading = new AtomicBoolean(false);
        this.isApiRequestCanceled = new AtomicBoolean(false);
        this.isApiRequestCompleted = new AtomicBoolean(false);
        this.isRequestExpired = new AtomicBoolean(false);
        this.isDestroyed = new AtomicBoolean(false);
        this.timeOutRunnable = new a();
        this.trackingObject = new BidMachineTrackingObject(string);
        this.adRequestParameters = adrequestparameterstype;
        this.adResponseLoader = new C4213b(string);
        this.auctionUrlQueue = new LinkedList();
    }

    private boolean canProcessApiRequestResult() {
        return (isCompleted() || isCanceled() || isDestroyed()) ? false : true;
    }

    private boolean canSendApiRequest() {
        return !isDestroyed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void log(final LazyValue<String> lazyValue) {
        Logger.d(this.tag, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.AdRequest$$ExternalSyntheticLambda7
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return String.format("%s - %s", this.f$0.adRequestParameters.getAdsType(), lazyValue.get());
            }
        });
    }

    private void logError(final LazyValue<String> lazyValue) {
        Logger.e(this.tag, new LazyValue() { // from class: io.bidmachine.AdRequest$$ExternalSyntheticLambda11
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return String.format("%s - %s", this.f$0.adRequestParameters.getAdsType(), lazyValue.get());
            }
        });
    }

    private NetworkAdUnitManager obtainNetworkAdUnitManager() {
        if (this.networkAdUnitManager == null) {
            this.networkAdUnitManager = new NetworkAdUnitManager();
        }
        return this.networkAdUnitManager;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processApiRequestCancel() {
        if (canProcessApiRequestResult()) {
            setLoading(false);
            this.isApiRequestCanceled.set(true);
            unsubscribeTimeOut();
            this.trackingObject.eventFinish(TrackEventType.AuctionRequestCancel, getAdsType(), null, null);
            this.trackingObject.clearEvent(TrackEventType.AuctionRequest);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processRequestObject(Context context) {
        prepareUrls();
        Object objBuild = build(context);
        if (objBuild instanceof Request) {
            processRequestBuilder(new ApiRequest.Builder().setRequestData((Request) objBuild).setDataBinder(getAdsType().getBinder()), pollUrl());
        } else {
            processRequestFail(objBuild instanceof BMError ? (BMError) objBuild : BMError.internal("Failed to create ad request"));
        }
    }

    private void setLoading(boolean z) {
        this.isLoading.set(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void subscribeTimeOut() {
        int iObtainTimeOutMs = obtainTimeOutMs();
        if (iObtainTimeOutMs > 0) {
            Utils.onBackgroundThread(this.timeOutRunnable, iObtainTimeOutMs);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unsubscribeTimeOut() {
        Utils.cancelBackgroundThreadTask(this.timeOutRunnable);
    }

    public void addInternalListener(e eVar) {
        if (eVar != null) {
            if (this.internalAdRequestListeners == null) {
                this.internalAdRequestListeners = new CopyOnWriteArrayList();
            }
            this.internalAdRequestListeners.add(eVar);
        }
    }

    public void addListener(AdRequestListener<SelfType> adRequestListener) {
        if (adRequestListener != null) {
            if (this.adRequestListeners == null) {
                this.adRequestListeners = new CopyOnWriteArrayList();
            }
            this.adRequestListeners.add(adRequestListener);
        }
    }

    public Object build(final Context context) {
        try {
            String strN = k.b().n();
            if (TextUtils.isEmpty(strN)) {
                return BMError.notFound("SellerId");
            }
            k kVarB = k.b();
            C4236u c4236uB = kVarB.b(context);
            io.bidmachine.internal.w wVarD = c4236uB.d();
            final io.bidmachine.internal.v vVarC = c4236uB.c();
            Runnable runnable = new Runnable() { // from class: io.bidmachine.AdRequest$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    AdvertisingDataManager.c(context);
                }
            };
            wVarD.a(runnable, runnable, new Runnable() { // from class: io.bidmachine.AdRequest$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    AdRequest.$r8$lambda$YeN8aCR4EhKMHYoCmySF_iT6fU4();
                }
            });
            TargetingParams targetingParams = (TargetingParams) RequestParams.resolveParams(this.adRequestParameters.getTargetingParams(), kVarB.q());
            PriceFloorParams priceFloorParams = this.adRequestParameters.getPriceFloorParams();
            Map<String, Double> priceFloors = (priceFloorParams == null || priceFloorParams.getPriceFloors().isEmpty()) ? kVarB.j().getPriceFloors() : priceFloorParams.getPriceFloors();
            if (priceFloors.isEmpty()) {
                return BMError.notFound("PriceFloors");
            }
            Request.Builder builderNewBuilder = Request.newBuilder();
            Map<String, Double> map = priceFloors;
            final MaskedSignals.Builder builderNewBuilder2 = MaskedSignals.newBuilder();
            Request.Item.Builder builderNewBuilder3 = Request.Item.newBuilder();
            builderNewBuilder3.setId(UUID.randomUUID().toString());
            boolean z = true;
            builderNewBuilder3.setQty(1);
            for (Map.Entry<String, Double> entry : map.entrySet()) {
                Request.Item.Deal.Builder builderNewBuilder4 = Request.Item.Deal.newBuilder();
                builderNewBuilder4.setId(entry.getKey());
                builderNewBuilder4.setFlr(entry.getValue().doubleValue());
                builderNewBuilder4.setFlrcur("USD");
                builderNewBuilder3.addDeal(builderNewBuilder4);
                kVarB = kVarB;
                z = z;
            }
            final k kVar = kVarB;
            builderNewBuilder.setContext(Any.pack(RequestDataRetriever.createContext(context, kVar, c4236uB, targetingParams, builderNewBuilder2, null, getAdsType())));
            builderNewBuilder.setTest(kVar.u());
            builderNewBuilder.addCur("USD");
            builderNewBuilder.setAt(2);
            builderNewBuilder.setTmax(UnityAdsConstants.AdOperations.SHOW_TIMEOUT_MS);
            Placement.Builder builderNewBuilder5 = Placement.newBuilder();
            builderNewBuilder5.setSsai(0);
            builderNewBuilder5.setSdk(BidMachine.NAME);
            builderNewBuilder5.setSdkver("3.8.0");
            builderNewBuilder5.setSecure(!Utils.canUseCleartextTraffic());
            for (Message.Builder builder : collectPlacementFormats(context, null, this.adRequestParameters.getAdPlacementConfig())) {
                if (builder instanceof Placement.DisplayPlacement.Builder) {
                    Placement.DisplayPlacement.Builder builder2 = (Placement.DisplayPlacement.Builder) builder;
                    onBeforeSetDisplayPlacementBuilder(builder2);
                    builderNewBuilder5.setDisplay(builder2);
                } else {
                    if (!(builder instanceof Placement.VideoPlacement.Builder)) {
                        throw new IllegalArgumentException("Unsupported display type: " + builder);
                    }
                    Placement.VideoPlacement.Builder builder3 = (Placement.VideoPlacement.Builder) builder;
                    onBeforeSetVideoPlacementBuilder(builder3);
                    builderNewBuilder5.setVideo(builder3);
                }
            }
            Struct.Builder builderNewBuilder6 = Struct.newBuilder();
            AbstractC4234s.a(builderNewBuilder6);
            ListValue.Builder builderNewBuilder7 = ListValue.newBuilder();
            Iterator it = io.bidmachine.c.a().e(this.adRequestParameters).iterator();
            while (it.hasNext()) {
                builderNewBuilder7.addValues(((AdResponse) it.next()).createBidCacheExtensionValue());
            }
            if (builderNewBuilder7.getValuesCount() > 0) {
                builderNewBuilder6.putFields("bid_cache", Value.newBuilder().setListValue(builderNewBuilder7).build());
            }
            if (builderNewBuilder6.getFieldsCount() > 0) {
                builderNewBuilder5.setExt(builderNewBuilder6);
            }
            onBuildPlacement(builderNewBuilder5);
            builderNewBuilder3.setSpec(Any.pack(builderNewBuilder5.build()));
            builderNewBuilder.addItem(builderNewBuilder3.build());
            Struct.Builder builderNewBuilder8 = Struct.newBuilder();
            Struct privateStruct = ExtraParamsManager.get().getPrivateStruct(context);
            if (privateStruct != null) {
                builderNewBuilder8.putAllFields(privateStruct.getFieldsMap());
            }
            if (builderNewBuilder8.getFieldsCount() > 0) {
                builderNewBuilder.setExt(builderNewBuilder8.build());
            }
            final RequestExtension.Builder builderNewBuilder9 = RequestExtension.newBuilder();
            builderNewBuilder9.setSellerId(strN);
            builderNewBuilder9.setBmIfv(kVar.g(context));
            wVarD.a(new Runnable() { // from class: io.bidmachine.AdRequest$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    AdRequest.m2412$r8$lambda$9Vdx_gOzhYh8jMDd7CVeKt1kH4(kVar, builderNewBuilder9);
                }
            }, new Runnable() { // from class: io.bidmachine.AdRequest$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    AdRequest.$r8$lambda$wwmDjlY0fXJwasolvT2zdPKrNbU(kVar, builderNewBuilder2, vVarC);
                }
            }, new Runnable() { // from class: io.bidmachine.AdRequest$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    AdRequest.m2414$r8$lambda$JRAV_75YbljuR_yco91b4mWI();
                }
            });
            builderNewBuilder9.setSessionId(c4236uB.h());
            builderNewBuilder.addExtProto(Any.pack(builderNewBuilder9.build()));
            return builderNewBuilder.build();
        } catch (Throwable th) {
            Logger.w(th);
            return BMError.throwable("Exception creating ad request", th);
        }
    }

    public void cancel() {
        this.adResponseLoader.a();
    }

    public BMError checkBidPayload(ResponsePayload responsePayload) {
        if (responsePayload == ResponsePayload.getDefaultInstance()) {
            return BMError.incorrectContent("BidPayload is default instance");
        }
        try {
            Placement requestItemSpec = responsePayload.getRequestItemSpec();
            if (requestItemSpec != Placement.getDefaultInstance()) {
                return this.adRequestParameters.checkPlacement(requestItemSpec);
            }
            return null;
        } catch (Throwable th) {
            Logger.w(th);
            return BMError.throwable("Exception validating BidPayload", th);
        }
    }

    public void clearNetworkAdUnits() {
        obtainNetworkAdUnitManager().notifyNetworkClearAuction();
    }

    public List<NetworkConfig> collectNetworkConfig(Context context, AdsType adsType, List<String> list) {
        HashMap map = new HashMap();
        List<NetworkConfig> networkConfigList = this.adRequestParameters.getNetworkConfigList();
        if (networkConfigList == null) {
            Utils.putAll(map, NetworkRegistry.copyOrNullInitializedNetworkConfigs(adsType));
        } else {
            map.putAll(NetworkRegistry.createInitNetworkConfigMap());
            for (final NetworkConfig networkConfig : networkConfigList) {
                final String strCheckAndPutNetwork = NetworkRegistry.checkAndPutNetwork(context, adsType, networkConfig, map);
                if (strCheckAndPutNetwork != null) {
                    logError(new LazyValue() { // from class: io.bidmachine.AdRequest$$ExternalSyntheticLambda13
                        @Override // io.bidmachine.utils.lazy.LazyValue
                        public final Object get() {
                            return String.format("%s was removed from AdRequest: %s", networkConfig.getNetworkKey(), strCheckAndPutNetwork);
                        }
                    });
                }
            }
        }
        if (list != null) {
            Iterator it = map.entrySet().iterator();
            while (it.hasNext()) {
                if (!list.contains((String) ((Map.Entry) it.next()).getKey())) {
                    it.remove();
                }
            }
        }
        Utils.putAll(map, NetworkRegistry.copyOrNullInitializedCoreNetworkConfigs(adsType));
        return new ArrayList(map.values());
    }

    public List<Message.Builder> collectPlacementFormats(Context context, List<String> list, AdPlacementConfig adPlacementConfig) throws IllegalStateException {
        ArrayList arrayList = new ArrayList();
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        AdsType adsType = getAdsType();
        adsType.collectPlacements(new SimpleContextProvider(context), this, obtainUnifiedRequestParams(context), collectNetworkConfig(context, adsType, list), arrayList, copyOnWriteArrayList, adPlacementConfig, k.b().i());
        this.networkAdUnitManager = new NetworkAdUnitManager(copyOnWriteArrayList);
        return arrayList;
    }

    public abstract UnifiedAdRequestParamsType createUnifiedAdRequestParams(AdRequestParametersType adrequestparameterstype, TargetingInfo targetingInfo, DataRestrictions dataRestrictions);

    public void destroy() {
        if (this.isDestroyed.compareAndSet(false, true)) {
            log(new LazyValue() { // from class: io.bidmachine.AdRequest$$ExternalSyntheticLambda10
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return AdRequest.$r8$lambda$Ok0xnVPjtmg9OpYSB233EIfeGIs();
                }
            });
            this.trackingObject.eventFinish(TrackEventType.AuctionRequestDestroy, false, getAdsType(), this.adResponse, null);
            cancel();
            unsubscribeTimeOut();
            this.trackingObject.clear();
            BidMachineFetcher.release(this);
            notifyRequestDestroyed();
            this.unifiedAdRequestParams = null;
            AdResponse adResponse = this.adResponse;
            if (adResponse != null) {
                adResponse.detachAdRequest(this);
                this.adResponse = null;
            }
        }
    }

    public AdRequestParametersType getAdRequestParameters() {
        return this.adRequestParameters;
    }

    public AdResponse getAdResponse() {
        return this.adResponse;
    }

    public final AdsType getAdsType() {
        return this.adRequestParameters.getAdsType();
    }

    public AuctionResult getAuctionResult() {
        AdResponse adResponse = this.adResponse;
        if (adResponse != null) {
            return adResponse.getAuctionResult();
        }
        return null;
    }

    public boolean isAdResponseExpired() {
        AdResponse adResponse = this.adResponse;
        return adResponse != null && adResponse.isExpired();
    }

    public boolean isCanceled() {
        return this.isApiRequestCanceled.get();
    }

    public boolean isCompleted() {
        return this.isApiRequestCompleted.get();
    }

    public boolean isDestroyed() {
        return this.isDestroyed.get();
    }

    public boolean isExpired() {
        return isAdResponseExpired() || this.isRequestExpired.get();
    }

    public boolean isLoading() {
        return this.isLoading.get();
    }

    public boolean isPlacementBuilderMatch(PlacementBuilder placementBuilder) {
        return true;
    }

    public void notifyMediationLoss() {
        notifyMediationLoss(null, null);
    }

    public void notifyMediationWin() {
        if (isCompleted()) {
            log(new LazyValue() { // from class: io.bidmachine.AdRequest$$ExternalSyntheticLambda0
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return AdRequest.m2413$r8$lambda$Br4w0hpjGcwRLRF5htYUHKXvWM();
                }
            });
            this.trackingObject.eventFinish(TrackEventType.MediationWin, false, getAdsType(), this.adResponse, isDestroyed() ? BMError.RequestDestroyed : isExpired() ? BMError.RequestExpired : null);
        }
    }

    public void notifyRequestDestroyed() {
        List<e> list = this.internalAdRequestListeners;
        if (list != null) {
            Iterator<e> it = list.iterator();
            while (it.hasNext()) {
                it.next().a(this);
            }
        }
    }

    public int obtainTimeOutMs() {
        Integer timeOutMs;
        int iM = k.b().m();
        return (iM > 0 || (timeOutMs = this.adRequestParameters.getTimeOutMs()) == null || timeOutMs.intValue() <= 0) ? iM : timeOutMs.intValue();
    }

    public final UnifiedAdRequestParamsType obtainUnifiedRequestParams(Context context) {
        if (this.unifiedAdRequestParams == null) {
            k kVarB = k.b();
            TargetingParams targetingParams = (TargetingParams) RequestParams.resolveParams(this.adRequestParameters.getTargetingParams(), kVarB.q());
            C4236u c4236uB = kVarB.b(context);
            this.unifiedAdRequestParams = (UnifiedAdRequestParamsType) createUnifiedAdRequestParams(this.adRequestParameters, new TargetingInfoImpl(targetingParams), c4236uB.a());
        }
        return this.unifiedAdRequestParams;
    }

    public void onBeforeSetDisplayPlacementBuilder(Placement.DisplayPlacement.Builder builder) {
    }

    public void onBeforeSetVideoPlacementBuilder(Placement.VideoPlacement.Builder builder) {
    }

    public void onBuildPlacement(Placement.Builder builder) {
    }

    public String pollUrl() {
        if (this.auctionUrlQueue.isEmpty()) {
            this.auctionUrlQueue.addAll(UrlProvider.getAuctionUrlQueue());
        }
        return this.auctionUrlQueue.poll();
    }

    public void prepareUrls() {
        this.auctionUrlQueue.clear();
        this.auctionUrlQueue.addAll(UrlProvider.getAuctionUrlQueue());
    }

    public void processApiRequestFail(BMError bMError) {
        processApiRequestFail(bMError, true);
    }

    public void processApiRequestLoadedFail(ApiRequest.Builder<Request, Response> builder, BMError bMError) {
        String strPoll;
        if (canProcessApiRequestResult()) {
            if (bMError == BMError.BMServerNoFill || (strPoll = this.auctionUrlQueue.poll()) == null) {
                processApiRequestFail(bMError);
            } else {
                processRequestBuilder(builder, strPoll);
            }
        }
    }

    public void processApiRequestSuccess(final AdResponse adResponse) {
        if (!canProcessApiRequestResult()) {
            adResponse.detachAdRequest(this);
            return;
        }
        setLoading(false);
        this.isApiRequestCompleted.set(true);
        unsubscribeTimeOut();
        log(new LazyValue() { // from class: io.bidmachine.AdRequest$$ExternalSyntheticLambda12
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return String.format("Request success - %s", adResponse);
            }
        });
        setAdResponse(adResponse);
        adResponse.attachAdRequest(this);
        List<AdRequestListener<SelfType>> list = this.adRequestListeners;
        if (list != null) {
            Iterator<AdRequestListener<SelfType>> it = list.iterator();
            while (it.hasNext()) {
                it.next().onRequestSuccess(this, adResponse.getAuctionResult());
            }
        }
        Iterator it2 = k.b().c().iterator();
        while (it2.hasNext()) {
            ((AdRequestListener) it2.next()).onRequestSuccess(this, adResponse.getAuctionResult());
        }
        this.trackingObject.eventFinish(TrackEventType.AuctionRequest, false, getAdsType(), adResponse, null);
    }

    public void processBidPayload(ResponsePayload responsePayload) {
        BMError bMErrorCheckBidPayload = checkBidPayload(responsePayload);
        if (bMErrorCheckBidPayload != null) {
            processRequestFail(new BMError(BMError.incorrectContent("BidPayload does not match with AdRequest"), bMErrorCheckBidPayload));
            return;
        }
        Openrtb responseCache = responsePayload.getResponseCache();
        if (responseCache != null && responseCache != Openrtb.getDefaultInstance()) {
            B.a(this.adRequestParameters, obtainNetworkAdUnitManager(), responseCache.getResponse(), new c());
            return;
        }
        String responseCacheUrl = responsePayload.getResponseCacheUrl();
        if (TextUtils.isEmpty(responseCacheUrl) || !Utils.isHttpUrl(responseCacheUrl)) {
            processRequestFail(BMError.incorrectContent("BidPayload does not contain Response or URL"));
        } else {
            retrieveBody(responseCacheUrl);
        }
    }

    public void processExpired() {
        log(new LazyValue() { // from class: io.bidmachine.AdRequest$$ExternalSyntheticLambda8
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return AdRequest.$r8$lambda$KuXquZ17gWiGHyKejEDIZ8nIJDw();
            }
        });
        this.isRequestExpired.set(true);
        List<AdRequestListener<SelfType>> list = this.adRequestListeners;
        if (list != null) {
            Iterator<AdRequestListener<SelfType>> it = list.iterator();
            while (it.hasNext()) {
                it.next().onRequestExpired(this);
            }
        }
        Iterator it2 = k.b().c().iterator();
        while (it2.hasNext()) {
            ((AdRequestListener) it2.next()).onRequestExpired(this);
        }
        this.trackingObject.eventFinish(TrackEventType.AuctionRequestExpired, false, getAdsType(), this.adResponse, null);
    }

    public void processRequestBuilder(ApiRequest.Builder<Request, Response> builder, String str) {
        if (canSendApiRequest()) {
            builder.url(str);
            this.adResponseLoader.a(this.adRequestParameters, obtainNetworkAdUnitManager(), builder, new d(str, builder));
        }
    }

    public void processRequestFail(BMError bMError) {
        processRequestFail(bMError, true);
    }

    public void removeInternalListener(e eVar) {
        List<e> list = this.internalAdRequestListeners;
        if (list == null || eVar == null) {
            return;
        }
        list.remove(eVar);
    }

    public void removeListener(AdRequestListener<SelfType> adRequestListener) {
        List<AdRequestListener<SelfType>> list = this.adRequestListeners;
        if (list == null || adRequestListener == null) {
            return;
        }
        list.remove(adRequestListener);
    }

    public void request(Context context) {
        if (!k.b().s()) {
            processRequestFail(BMError.internal("BidMachine not initialized"));
            return;
        }
        if (isDestroyed()) {
            processRequestFail(BMError.RequestDestroyed);
            return;
        }
        BMError bMErrorVerifyRequest = verifyRequest();
        if (bMErrorVerifyRequest != null) {
            processRequestFail(bMErrorVerifyRequest);
        } else {
            if (isLoading()) {
                return;
            }
            setLoading(true);
            C4102a.a().execute(new b(context.getApplicationContext()));
        }
    }

    public void retrieveBody(String str) {
        processRequestBuilder(new ApiRequest.Builder().setMethod(NetworkRequest.Method.Get).setDataBinder(new ApiRequest.ApiResponseAuctionDataBinder()), str);
    }

    public void setAdResponse(AdResponse adResponse) {
        this.adResponse = adResponse;
        this.trackingObject.setAdResponse(adResponse);
    }

    public void setAuctionUrl(String str) {
        this.auctionUrlQueue.clear();
        this.auctionUrlQueue.add(str);
    }

    public String toString() {
        return this.tag.toString();
    }

    public BMError verifyRequest() {
        return null;
    }

    public class d implements C4213b.a {
        public final /* synthetic */ String a;
        public final /* synthetic */ ApiRequest.Builder b;

        public d(String str, ApiRequest.Builder builder) {
            this.a = str;
            this.b = builder;
        }

        @Override // io.bidmachine.C4213b.a
        public void a(AdResponse adResponse) {
            AdRequest.this.setAuctionUrl(this.a);
            AdRequest.this.processApiRequestSuccess(adResponse);
        }

        @Override // io.bidmachine.C4213b.a
        public void a(BMError bMError) {
            AdRequest.this.processApiRequestLoadedFail(this.b, bMError);
        }

        @Override // io.bidmachine.C4213b.a
        public void a() {
            AdRequest.this.processApiRequestCancel();
        }
    }

    public void notifyMediationLoss(final String str, final Double d2) {
        if (isCompleted()) {
            log(new LazyValue() { // from class: io.bidmachine.AdRequest$$ExternalSyntheticLambda6
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return String.format("notifyMediationLoss (winnerNetworkName - %s, winnerNetworkPrice - %s)", str, d2);
                }
            });
            AdResponse adResponse = this.adResponse;
            if (adResponse != null) {
                adResponse.processMediationLoss();
            }
            this.trackingObject.eventFinish(TrackEventType.MediationLoss, getAdsType(), new EventData().setNetworkName(str).setPrice(d2), isDestroyed() ? BMError.RequestDestroyed : isExpired() ? BMError.RequestExpired : null);
        }
    }

    public void processApiRequestFail(BMError bMError, boolean z) {
        if (canProcessApiRequestResult()) {
            setLoading(false);
            this.isApiRequestCompleted.set(true);
            if (bMError == null) {
                bMError = BMError.BMServerNoFill;
            }
            processRequestFail(bMError, z);
        }
    }

    public void processRequestFail(final BMError bMError, boolean z) {
        log(new LazyValue() { // from class: io.bidmachine.AdRequest$$ExternalSyntheticLambda9
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return String.format("Request fail - %s", bMError);
            }
        });
        unsubscribeTimeOut();
        if (z) {
            clearNetworkAdUnits();
        }
        List<AdRequestListener<SelfType>> list = this.adRequestListeners;
        if (list != null) {
            Iterator<AdRequestListener<SelfType>> it = list.iterator();
            while (it.hasNext()) {
                it.next().onRequestFailed(this, bMError);
            }
        }
        Iterator it2 = k.b().c().iterator();
        while (it2.hasNext()) {
            ((AdRequestListener) it2.next()).onRequestFailed(this, bMError);
        }
        this.trackingObject.eventFinish(TrackEventType.AuctionRequest, getAdsType(), null, bMError);
    }
}
