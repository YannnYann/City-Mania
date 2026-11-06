package io.bidmachine;

import android.text.TextUtils;
import io.bidmachine.ApiRequest;
import io.bidmachine.core.Logger;
import io.bidmachine.core.NetworkRequest;
import io.bidmachine.tracking.EventData;
import io.bidmachine.tracking.EventTracker;
import io.bidmachine.tracking.TrackEventInfo;
import io.bidmachine.tracking.TrackingObject;
import io.bidmachine.utils.BMError;
import io.bidmachine.utils.lazy.LazyValue;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class j implements EventTracker {

    public class a implements NetworkRequest.Callback {
        public final /* synthetic */ List a;
        public final /* synthetic */ TrackEventInfo b;
        public final /* synthetic */ TrackEventType c;

        public a(List list, TrackEventInfo trackEventInfo, TrackEventType trackEventType) {
            this.a = list;
            this.b = trackEventInfo;
            this.c = trackEventType;
        }

        @Override // io.bidmachine.core.NetworkRequest.Callback
        public void onSuccess(String str) {
        }

        @Override // io.bidmachine.core.NetworkRequest.Callback
        public void onFail(BMError bMError) {
            if (bMError == null) {
                bMError = BMError.internal("Failed to track URL");
            }
            j.b(this.a, this.b, this.c.getActionValue(), bMError);
        }
    }

    public class b implements NetworkRequest.Callback {
        public final /* synthetic */ List a;
        public final /* synthetic */ TrackEventInfo b;

        public b(List list, TrackEventInfo trackEventInfo) {
            this.a = list;
            this.b = trackEventInfo;
        }

        @Override // io.bidmachine.core.NetworkRequest.Callback
        public void onSuccess(String str) {
        }

        @Override // io.bidmachine.core.NetworkRequest.Callback
        public void onFail(BMError bMError) {
            if (bMError == null) {
                bMError = BMError.internal("Failed to track URL");
            }
            j.b(this.a, this.b, TrackEventType.Error.getActionValue(), bMError);
        }
    }

    public static void b(List list, TrackEventInfo trackEventInfo, int i, final BMError bMError) {
        if (list != null && bMError.isTrackError()) {
            Logger.d((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.j$$ExternalSyntheticLambda2
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return j.a(bMError);
                }
            });
            Iterator it = list.iterator();
            while (it.hasNext()) {
                a(a((String) it.next(), trackEventInfo, i, bMError.getCode(), (EventData) null), (NetworkRequest.Callback) null);
            }
        }
    }

    @Override // io.bidmachine.tracking.EventTracker
    public void trackEvent(TrackingObject trackingObject, TrackEventType trackEventType, TrackEventInfo trackEventInfo, AdsType adsType, BMError bMError, EventData eventData) {
        if (bMError != null) {
            a(a(trackingObject, TrackEventType.Error), a(trackingObject, TrackEventType.TrackingError), trackEventInfo, trackEventType.getActionValue(), bMError);
        } else {
            a(a(trackingObject, trackEventType), a(trackingObject, TrackEventType.TrackingError), trackEventInfo, trackEventType, eventData);
        }
    }

    public static List a(TrackingObject trackingObject, TrackEventType trackEventType) {
        List listA = k.b().a(trackEventType);
        ArrayList arrayList = listA != null ? new ArrayList(listA) : null;
        List<String> trackingUrls = trackingObject.getTrackingUrls(trackEventType);
        if (trackingUrls != null) {
            if (arrayList == null) {
                return new ArrayList(trackingUrls);
            }
            arrayList.addAll(trackingUrls);
        }
        return arrayList;
    }

    public static /* synthetic */ String a(TrackEventType trackEventType) {
        return String.format("Dispatching event to server - %s", trackEventType);
    }

    public static void a(List list, List list2, TrackEventInfo trackEventInfo, final TrackEventType trackEventType, EventData eventData) {
        if (list == null) {
            return;
        }
        Logger.d((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.j$$ExternalSyntheticLambda1
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return j.a(trackEventType);
            }
        });
        Iterator it = list.iterator();
        while (it.hasNext()) {
            a(a((String) it.next(), trackEventInfo, trackEventType.getActionValue(), -1, eventData), new a(list2, trackEventInfo, trackEventType));
        }
    }

    public static void a(List list, List list2, TrackEventInfo trackEventInfo, final int i, final BMError bMError) {
        if (list != null && bMError.isTrackError()) {
            Logger.d((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.j$$ExternalSyntheticLambda0
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return j.a(i, bMError);
                }
            });
            Iterator it = list.iterator();
            while (it.hasNext()) {
                a(a((String) it.next(), trackEventInfo, i, bMError.getCode(), (EventData) null), new b(list2, trackEventInfo));
            }
        }
    }

    public static /* synthetic */ String a(int i, BMError bMError) {
        return String.format("Dispatching error event to server - (%s-%s) - %s", Integer.valueOf(i), Integer.valueOf(bMError.getCode()), bMError.getMessage());
    }

    public static /* synthetic */ String a(BMError bMError) {
        return String.format("Dispatching tracking fail to server - %s", bMError);
    }

    public static String a(String str, TrackEventInfo trackEventInfo, int i, int i2, EventData eventData) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String strA = a(a(a(str, "BM_EVENT_CODE", Integer.valueOf(i)), "BM_ACTION_CODE", Integer.valueOf(i)), "BM_ERROR_REASON", Integer.valueOf(i2));
        if (eventData != null) {
            String networkName = eventData.getNetworkName();
            if (networkName != null) {
                strA = a(strA, "AUCTION_SEAT_ID", networkName);
            }
            Double price = eventData.getPrice();
            if (price != null) {
                strA = a(strA, "AUCTION_PRICE", price);
            }
        }
        return trackEventInfo != null ? a(a(a(strA, "BM_ACTION_START", Long.valueOf(trackEventInfo.getStartTimeMs())), "BM_ACTION_FINISH", Long.valueOf(trackEventInfo.getFinishTimeMs())), trackEventInfo.getEventParameters()) : strA;
    }

    public static String a(String str, Map map) {
        if (map != null) {
            for (Map.Entry entry : map.entrySet()) {
                String str2 = (String) entry.getKey();
                Object value = entry.getValue();
                if (!TextUtils.isEmpty(str2) && value != null) {
                    str = a(str, str2, value);
                }
            }
        }
        return str;
    }

    public static String a(String str, String str2, Object obj) {
        return str.replace("${" + str2 + "}", String.valueOf(obj)).replace("%24%7B" + str2 + "%7D", String.valueOf(obj));
    }

    public static void a(String str, NetworkRequest.Callback callback) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        new ApiRequest.Builder().url(str).setMethod(NetworkRequest.Method.Get).setDataBinder(new ApiRequest.ApiTrackerDataBinder()).setCallback(callback).request();
    }
}
