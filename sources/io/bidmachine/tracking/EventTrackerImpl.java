package io.bidmachine.tracking;

import com.explorestack.protobuf.Struct;
import io.bidmachine.AdsType;
import io.bidmachine.ApiRequest;
import io.bidmachine.TrackEventType;
import io.bidmachine.core.Logger;
import io.bidmachine.core.NetworkRequest;
import io.bidmachine.core.TimeManager;
import io.bidmachine.protobuf.AdExtension;
import io.bidmachine.protobuf.analytics.events.SDKEvent;
import io.bidmachine.protobuf.sdk.Error;
import io.bidmachine.utils.BMError;
import io.bidmachine.utils.ProtoUtils;
import io.bidmachine.utils.ProtoUtilsKt;
import io.bidmachine.utils.lazy.LazyValue;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public class EventTrackerImpl implements EventTracker {
    public AdExtension.EventConfiguration defaultEventConfiguration;

    public EventTrackerImpl() {
        this(null);
    }

    public static final String trySendEvent$lambda$0(int i) {
        return "Sending event to server - " + i;
    }

    public static final String trySendEvent$lambda$1(int i, BMError bMError) {
        return "Sending error event to server - " + i + ", error - " + bMError;
    }

    public final void setDefaultEventConfiguration(AdExtension.EventConfiguration eventConfiguration) {
        if (eventConfiguration == AdExtension.EventConfiguration.getDefaultInstance()) {
            eventConfiguration = null;
        }
        this.defaultEventConfiguration = eventConfiguration;
    }

    public final Error.Data toErrorData(BMError bMError) {
        Error.Data dataBuild = Error.Data.newBuilder().setCode(bMError.getCode()).setDescription(bMError.getMessage()).build();
        Intrinsics.checkNotNullExpressionValue(dataBuild, "newBuilder()\n           …age)\n            .build()");
        return dataBuild;
    }

    @Override // io.bidmachine.tracking.EventTracker
    public void trackEvent(TrackingObject trackingObject, TrackEventType trackEventType, TrackEventInfo trackEventInfo, AdsType adsType, BMError bMError, EventData eventData) {
        long jCurrentTimeMillis;
        long finishTimeMs;
        boolean zIsBillable;
        String networkName;
        Double price;
        Struct customParams;
        Intrinsics.checkNotNullParameter(trackingObject, "trackingObject");
        Intrinsics.checkNotNullParameter(trackEventType, "trackEventType");
        if (bMError == null || bMError.isTrackError()) {
            if (trackEventInfo != null) {
                jCurrentTimeMillis = trackEventInfo.getStartTimeMs();
                finishTimeMs = trackEventInfo.getFinishTimeMs();
            } else {
                jCurrentTimeMillis = TimeManager.currentTimeMillis();
                finishTimeMs = jCurrentTimeMillis;
            }
            if (eventData != null) {
                zIsBillable = eventData.isBillable();
                networkName = eventData.getNetworkName();
                price = eventData.getPrice();
                customParams = eventData.getCustomParams();
            } else {
                zIsBillable = false;
                networkName = null;
                price = null;
                customParams = null;
            }
            boolean z = zIsBillable;
            int actionValue = trackEventType.getActionValue();
            if (trySendEvent(trackingObject.getEventConfiguration(), actionValue, z, jCurrentTimeMillis, finishTimeMs, adsType, networkName, price, customParams, bMError)) {
                return;
            }
            trySendEvent(this.defaultEventConfiguration, actionValue, z, jCurrentTimeMillis, finishTimeMs, adsType, networkName, price, customParams, bMError);
        }
    }

    public final boolean trySendEvent(AdExtension.EventConfiguration eventConfiguration, final int i, boolean z, long j, long j2, AdsType adsType, String str, Double d, Struct struct, final BMError bMError) {
        String url;
        if (eventConfiguration != null) {
            try {
                if (eventConfiguration.getActionsList().contains(Integer.valueOf(i)) && (url = eventConfiguration.getUrl()) != null && url.length() != 0) {
                    if (bMError == null) {
                        Logger.d((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.tracking.EventTrackerImpl$$ExternalSyntheticLambda0
                            @Override // io.bidmachine.utils.lazy.LazyValue
                            public final Object get() {
                                return EventTrackerImpl.trySendEvent$lambda$0(i);
                            }
                        });
                    } else {
                        Logger.d((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.tracking.EventTrackerImpl$$ExternalSyntheticLambda1
                            @Override // io.bidmachine.utils.lazy.LazyValue
                            public final Object get() {
                                return EventTrackerImpl.trySendEvent$lambda$1(i, bMError);
                            }
                        });
                    }
                    SDKEvent.Builder finishTime = SDKEvent.newBuilder().setAction(i).setBillable(z).setContext(eventConfiguration.getContext()).setStartTime(ProtoUtils.msToTimestamp(j)).setFinishTime(ProtoUtils.msToTimestamp(j2));
                    if (adsType != null) {
                        finishTime.setAdType(ProtoUtilsKt.toProtoStringValue(adsType.name()));
                    }
                    if (str != null && str.length() != 0) {
                        finishTime.setNetwork(ProtoUtilsKt.toProtoStringValue(str));
                    }
                    if (d != null) {
                        finishTime.setPrice(d.doubleValue());
                    }
                    if (struct != null) {
                        finishTime.setCustomParams(struct);
                    }
                    if (bMError != null) {
                        Error.Builder error = Error.newBuilder().setError(toErrorData(bMError));
                        Intrinsics.checkNotNullExpressionValue(error, "newBuilder()\n           …or(bmError.toErrorData())");
                        BMError errorExtension = bMError.getErrorExtension();
                        if (errorExtension != null) {
                            error.setReason(toErrorData(errorExtension));
                        }
                        finishTime.setError(error);
                    }
                    new ApiRequest.Builder().url(url).setMethod(NetworkRequest.Method.Post).setDataBinder(new ApiRequest.ApiEventDataBinder()).setRequestData(finishTime.build()).request();
                    return true;
                }
                return false;
            } catch (Throwable th) {
                Logger.w(th);
            }
        }
        return false;
    }

    public EventTrackerImpl(AdExtension.EventConfiguration eventConfiguration) {
        setDefaultEventConfiguration(eventConfiguration);
    }
}
