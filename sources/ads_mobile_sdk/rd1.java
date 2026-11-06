package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.initialization.AdapterStatus;
import com.google.android.libraries.ads.mobile.sdk.internal.signals.AdapterVersionData;
import com.google.gson.JsonObject;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public final class rd1 {
    public final hf a;
    public final ur3 b;

    public rd1(hf adapterInitializer, ur3 traceLogger) {
        Intrinsics.checkNotNullParameter(adapterInitializer, "adapterInitializer");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        this.a = adapterInitializer;
        this.b = traceLogger;
        MutexKt.Mutex(false);
    }

    public static JsonObject a(String str, AdapterStatus adapterStatus, AdapterVersionData adapterVersionData) {
        String str2;
        String str3;
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("adapterClassName", str);
        String str4 = "";
        if (adapterVersionData == null || (str2 = adapterVersionData.adapterVersion) == null) {
            str2 = "";
        }
        jsonObject.addProperty("version", str2);
        if (adapterVersionData != null && (str3 = adapterVersionData.sdkVersion) != null) {
            str4 = str3;
        }
        jsonObject.addProperty("sdkVersion", str4);
        jsonObject.addProperty("status", Integer.valueOf(adapterStatus.getInitializationState() == AdapterStatus.InitializationState.COMPLETE ? 1 : 0));
        jsonObject.addProperty("description", adapterStatus.getDescription());
        jsonObject.addProperty("initializationLatencyMillis", Integer.valueOf(adapterStatus.getLatency()));
        jsonObject.addProperty("supportsInitialization", Boolean.valueOf(adapterVersionData != null));
        return jsonObject;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.rd1 r5, kotlin.coroutines.Continuation r6) {
        /*
            boolean r0 = r6 instanceof ads_mobile_sdk.qd1
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.qd1 r0 = (ads_mobile_sdk.qd1) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.qd1 r0 = new ads_mobile_sdk.qd1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            if (r2 == 0) goto L39
            if (r2 != r3) goto L31
            com.google.gson.JsonArray r5 = r0.b
            ads_mobile_sdk.rd1 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r6)
            r4 = r6
            r6 = r5
            r5 = r0
            r0 = r4
            goto L53
        L31:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L39:
            kotlin.ResultKt.throwOnFailure(r6)
            com.google.gson.JsonArray r6 = new com.google.gson.JsonArray
            r6.<init>()
            ads_mobile_sdk.hf r2 = r5.a
            r0.a = r5
            r0.b = r6
            r0.e = r3
            r2.getClass()
            java.lang.Object r0 = ads_mobile_sdk.hf.a(r2, r0)
            if (r0 != r1) goto L53
            return r1
        L53:
            java.util.Map r0 = (java.util.Map) r0
            java.util.Set r0 = r0.entrySet()
            java.util.Iterator r0 = r0.iterator()
        L5d:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L8f
            java.lang.Object r1 = r0.next()
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1
            java.lang.Object r2 = r1.getKey()
            java.lang.String r2 = (java.lang.String) r2
            java.lang.Object r1 = r1.getValue()
            ads_mobile_sdk.yd r1 = (ads_mobile_sdk.yd) r1
            com.google.android.libraries.ads.mobile.sdk.initialization.AdapterStatus r3 = r1.a     // Catch: java.lang.Exception -> L84
            com.google.android.libraries.ads.mobile.sdk.internal.signals.AdapterVersionData r1 = r1.b     // Catch: java.lang.Exception -> L84
            r5.getClass()     // Catch: java.lang.Exception -> L84
            com.google.gson.JsonObject r1 = a(r2, r3, r1)     // Catch: java.lang.Exception -> L84
            r6.add(r1)     // Catch: java.lang.Exception -> L84
            goto L5d
        L84:
            r1 = move-exception
            ads_mobile_sdk.ur3 r2 = r5.b
            ads_mobile_sdk.as3 r2 = (ads_mobile_sdk.as3) r2
            java.lang.String r3 = "InspectorAdapterInfo.updateAdapters"
            r2.a(r3, r1)
            goto L5d
        L8f:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.rd1.a(ads_mobile_sdk.rd1, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
