package io.bidmachine;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.huawei.hms.ads.identifier.AdvertisingIdClient;
import io.bidmachine.core.Logger;
import io.bidmachine.util.SharedPreferenceUtilsKt;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AdvertisingDataManager {
    public static final String a = UUID.randomUUID().toString();
    public static final List b;
    public static b c;
    public static AdvertisingData d;
    public static String e;

    public static class AdvertisingData {
        private final String id;
        private final boolean limitAdTrackingEnabled;

        public AdvertisingData(String str, boolean z) {
            this.id = str;
            this.limitAdTrackingEnabled = z;
        }

        public String getId() {
            return this.id;
        }

        public boolean isLimitAdTrackingEnabled() {
            return this.limitAdTrackingEnabled;
        }
    }

    public static abstract class b {
        public final AtomicBoolean a = new AtomicBoolean(true);

        public abstract AdvertisingData a(Context context);

        public void a(boolean z) {
            this.a.set(z);
        }

        public AdvertisingData b(Context context) {
            if (!a()) {
                return null;
            }
            try {
                return a(context);
            } catch (NoClassDefFoundError e) {
                a(false);
                Logger.w(e);
                return null;
            } catch (Throwable th) {
                Logger.w(th);
                return null;
            }
        }

        public final boolean a() {
            return this.a.get();
        }
    }

    public static class c extends b {
        public c() {
        }

        @Override // io.bidmachine.AdvertisingDataManager.b
        public AdvertisingData a(Context context) {
            try {
                AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(context);
                if (advertisingIdInfo != null) {
                    return new AdvertisingData(advertisingIdInfo.getId(), advertisingIdInfo.isLimitAdTrackingEnabled());
                }
                return null;
            } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException unused) {
                a(false);
                return null;
            }
        }
    }

    public static class d extends b {
        public d() {
        }

        @Override // io.bidmachine.AdvertisingDataManager.b
        public AdvertisingData a(Context context) {
            AdvertisingIdClient.Info advertisingIdInfo = com.huawei.hms.ads.identifier.AdvertisingIdClient.getAdvertisingIdInfo(context);
            if (advertisingIdInfo != null) {
                return new AdvertisingData(advertisingIdInfo.getId(), advertisingIdInfo.isLimitAdTrackingEnabled());
            }
            return null;
        }
    }

    static {
        ArrayList arrayList = new ArrayList(2);
        b = arrayList;
        arrayList.add(new c());
        arrayList.add(new d());
    }

    public static boolean a() {
        AdvertisingData advertisingData = d;
        return advertisingData != null && advertisingData.isLimitAdTrackingEnabled();
    }

    public static String b(Context context) {
        if (!TextUtils.isEmpty(e)) {
            return e;
        }
        SharedPreferences sharedPreferences = context.getSharedPreferences("ad_core_preferences", 0);
        String strOptStringOrNull = SharedPreferenceUtilsKt.optStringOrNull(sharedPreferences, "uuid", null);
        e = strOptStringOrNull;
        if (!TextUtils.isEmpty(strOptStringOrNull)) {
            return e;
        }
        e = a;
        sharedPreferences.edit().putString("uuid", e).apply();
        return e;
    }

    public static void c(Context context) {
        b bVar = c;
        if (bVar != null) {
            AdvertisingData advertisingDataB = bVar.b(context);
            if (advertisingDataB != null) {
                d = advertisingDataB;
                return;
            }
            return;
        }
        for (b bVar2 : b) {
            AdvertisingData advertisingDataB2 = bVar2.b(context);
            if (advertisingDataB2 != null) {
                c = bVar2;
                d = advertisingDataB2;
                return;
            }
        }
    }

    public static String a(Context context) {
        AdvertisingData advertisingData = d;
        String id = advertisingData != null ? advertisingData.getId() : null;
        return (TextUtils.isEmpty(id) || "00000000-0000-0000-0000-000000000000".equals(id)) ? b(context) : id;
    }
}
