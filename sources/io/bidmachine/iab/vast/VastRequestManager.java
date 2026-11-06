package io.bidmachine.iab.vast;

import android.text.TextUtils;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes5.dex */
public class VastRequestManager {
    public static final Map a = new WeakHashMap();

    public static synchronized VastRequest get(String vastRequestId) {
        if (TextUtils.isEmpty(vastRequestId)) {
            return null;
        }
        Iterator it = a.entrySet().iterator();
        while (it.hasNext()) {
            VastRequest vastRequest = (VastRequest) ((Map.Entry) it.next()).getKey();
            if (vastRequest.getId().equals(vastRequestId)) {
                return vastRequest;
            }
        }
        return null;
    }

    public static synchronized void store(VastRequest vastRequest) {
        if (vastRequest == null) {
            return;
        }
        a.put(vastRequest, Boolean.TRUE);
    }
}
