package io.bidmachine;

import android.content.Context;
import com.explorestack.protobuf.BoolValue;
import com.explorestack.protobuf.adcom.Context;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import io.bidmachine.analytics.BidMachineAnalytics;
import io.bidmachine.core.TimeManager;
import io.bidmachine.core.Utils;
import io.bidmachine.protobuf.RequestTokenPayload;
import io.bidmachine.protobuf.sdk.ContextualData;
import io.bidmachine.protobuf.sdk.Session;
import io.bidmachine.util.DateUtilsKt;
import io.bidmachine.utils.ProtoUtilsKt;
import java.util.Date;
import java.util.Map;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class SessionParams {
    private final ContextualData.Builder createContextualDataBuilder(AdsType adsType, String str, Map<String, ? extends Object> map) {
        try {
            ContextualData.Builder mediatorName = ContextualData.newBuilder().setMediatorName(str);
            Intrinsics.checkNotNullExpressionValue(mediatorName, "newBuilder()\n           …   .setMediatorName(name)");
            if (adsType != null) {
                mediatorName.setPlacement(adsType.getName());
            }
            ContextualData.ImpressionData.Builder builderCreateImpressionDataBuilder = createImpressionDataBuilder(map);
            if (builderCreateImpressionDataBuilder != null) {
                mediatorName.setData(builderCreateImpressionDataBuilder);
            }
            return mediatorName;
        } catch (Throwable unused) {
            return null;
        }
    }

    private final ContextualData.ImpressionData.Builder createImpressionDataBuilder(Map<String, ? extends Object> map) {
        try {
            ContextualData.ImpressionData.Builder builderNewBuilder = ContextualData.ImpressionData.newBuilder();
            Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder()");
            Integer it = Utils.convertToIntOrDefault(map.get("imimd"), null);
            if (it != null) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                builderNewBuilder.setImimd(it.intValue());
            }
            Integer it2 = Utils.convertToIntOrDefault(map.get("imd"), null);
            if (it2 != null) {
                Intrinsics.checkNotNullExpressionValue(it2, "it");
                builderNewBuilder.setImd(it2.intValue());
            }
            Float it3 = Utils.convertToFloatOrDefault(map.get("imwp"), null);
            if (it3 != null) {
                Intrinsics.checkNotNullExpressionValue(it3, "it");
                builderNewBuilder.setImwp(it3.floatValue());
            }
            Float it4 = Utils.convertToFloatOrDefault(map.get("wp"), null);
            if (it4 != null) {
                Intrinsics.checkNotNullExpressionValue(it4, "it");
                builderNewBuilder.setWp(it4.floatValue());
            }
            Object obj = map.get("imagency");
            if (obj != null) {
                builderNewBuilder.setImagency(obj.toString());
            }
            Object obj2 = map.get("agency");
            if (obj2 != null) {
                builderNewBuilder.setAgency(obj2.toString());
            }
            Object obj3 = map.get("imcurl");
            if (obj3 != null) {
                builderNewBuilder.setImcurl(obj3.toString());
            }
            Object obj4 = map.get("clcurl");
            if (obj4 != null) {
                builderNewBuilder.setClcurl(obj4.toString());
            }
            return builderNewBuilder;
        } catch (Throwable unused) {
            return null;
        }
    }

    private final Session.Builder createSessionBuilder(Context context, String str, AdsType adsType) {
        try {
            Session.Builder sessionId = Session.newBuilder().setSessionId(str);
            Intrinsics.checkNotNullExpressionValue(sessionId, "newBuilder()\n           … .setSessionId(sessionId)");
            Session.Context.Builder builderCreateSessionContextBuilder = createSessionContextBuilder(context, adsType);
            if (builderCreateSessionContextBuilder != null) {
                sessionId.setContext(builderCreateSessionContextBuilder);
            }
            return sessionId;
        } catch (Throwable unused) {
            return null;
        }
    }

    private final Session.Context.Builder createSessionContextBuilder(Context context, AdsType adsType) {
        ContextualData.Builder builderCreateContextualDataBuilder;
        try {
            Date date = new Date(n.D(context));
            SessionManager sessionManager = SessionManager.get();
            Intrinsics.checkNotNullExpressionValue(sessionManager, "get()");
            Session.Context.Builder retention = Session.Context.newBuilder().setSessionduration(sessionManager.getSessionDurationSec()).setLastSessionDuration(sessionManager.getLastSessionDurationSec()).setSc(sessionManager.getSessionCount()).setRetention(DateUtilsKt.daysBetween(date, TimeManager.INSTANCE.currentDate()));
            Intrinsics.checkNotNullExpressionValue(retention, "newBuilder()\n           …meManager.currentDate()))");
            for (Map.Entry<String, Map<String, Object>> entry : (adsType != null ? BidMachineAnalytics.INSTANCE.getImpData(SessionParamsKt.getAdsTypeId(adsType)) : MapsKt__MapsKt.emptyMap()).entrySet()) {
                Map<String, ? extends Object> map = (Map) entry.getValue();
                if (!map.isEmpty() && (builderCreateContextualDataBuilder = createContextualDataBuilder(adsType, entry.getKey(), map)) != null) {
                    retention.addData(builderCreateContextualDataBuilder);
                }
            }
            BidMachineAnalytics bidMachineAnalytics = BidMachineAnalytics.INSTANCE;
            Object property = bidMachineAnalytics.getProperty(InAppPurchaseMetaData.IAP_KEY);
            if (property != null && (property instanceof Boolean)) {
                retention.setIap(BoolValue.of(((Boolean) property).booleanValue()));
            }
            Object property2 = bidMachineAnalytics.getProperty("iaa");
            if (property2 != null && (property2 instanceof Boolean)) {
                retention.setIaa(BoolValue.of(((Boolean) property2).booleanValue()));
            }
            return retention;
        } catch (Throwable unused) {
            return null;
        }
    }

    public final void build(Context context, RequestTokenPayload.Builder requestTokenPayloadBuilder, String sessionId, AdsType adsType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(requestTokenPayloadBuilder, "requestTokenPayloadBuilder");
        Intrinsics.checkNotNullParameter(sessionId, "sessionId");
        Session.Builder builderCreateSessionBuilder = createSessionBuilder(context, sessionId, adsType);
        if (builderCreateSessionBuilder != null) {
            requestTokenPayloadBuilder.setSession(builderCreateSessionBuilder);
        }
    }

    public final void build(Context context, Context.User.Builder userContextBuilder, String sessionId, AdsType adsType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(userContextBuilder, "userContextBuilder");
        Intrinsics.checkNotNullParameter(sessionId, "sessionId");
        Session.Builder builderCreateSessionBuilder = createSessionBuilder(context, sessionId, adsType);
        if (builderCreateSessionBuilder != null) {
            userContextBuilder.addExtProto(ProtoUtilsKt.pack(builderCreateSessionBuilder));
        }
    }
}
