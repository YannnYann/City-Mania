package ads_mobile_sdk;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import com.ironsource.C3522b4;
import com.ironsource.R6;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public final class mb0 {
    public final CoroutineScope a;
    public final ex0 b;
    public final tx c;
    public final d63 d;
    public final Mutex e;
    public final Map f;
    public final ArrayList g;
    public final LinkedHashMap h;

    public mb0(CoroutineScope backgroundScope, Context context, ex0 flags, tx clock, d63 urlPinger, j53 requestType, an0 deviceProperties, zy commonConfiguration) {
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(urlPinger, "urlPinger");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(deviceProperties, "deviceProperties");
        Intrinsics.checkNotNullParameter(commonConfiguration, "commonConfiguration");
        this.a = backgroundScope;
        this.b = flags;
        this.c = clock;
        this.d = urlPinger;
        this.e = MutexKt.Mutex$default(false, 1, null);
        this.f = MapsKt__MapsKt.mutableMapOf(TuplesKt.to("ad_format", requestType.d()), TuplesKt.to("api_v", String.valueOf(Build.VERSION.SDK_INT)), TuplesKt.to("app", context.getPackageName()), TuplesKt.to("s", "gmob_sdk"), TuplesKt.to("v", "3"), TuplesKt.to(C3522b4.i.G, fb0.b()), TuplesKt.to("is_bstar", deviceProperties.g() ? "1" : "0"), TuplesKt.to("is_lite_sdk", "0"), TuplesKt.to("gqi", commonConfiguration.h), TuplesKt.to(R6.F, Build.VERSION.RELEASE));
        this.g = new ArrayList();
        this.h = new LinkedHashMap();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.mb0 r7, java.lang.String r8, kotlin.coroutines.Continuation r9) {
        /*
            boolean r0 = r9 instanceof ads_mobile_sdk.gb0
            if (r0 == 0) goto L13
            r0 = r9
            ads_mobile_sdk.gb0 r0 = (ads_mobile_sdk.gb0) r0
            int r1 = r0.h
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.h = r1
            goto L18
        L13:
            ads_mobile_sdk.gb0 r0 = new ads_mobile_sdk.gb0
            r0.<init>(r7, r9)
        L18:
            java.lang.Object r9 = r0.f
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.h
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L3e
            if (r2 != r3) goto L36
            kotlinx.coroutines.sync.Mutex r7 = r0.e
            ads_mobile_sdk.ir3 r8 = r0.d
            ads_mobile_sdk.ir3 r1 = r0.c
            java.lang.String r2 = r0.b
            ads_mobile_sdk.mb0 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r9)
            r9 = r8
            r8 = r2
            goto L6f
        L36:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L3e:
            kotlin.ResultKt.throwOnFailure(r9)
            ads_mobile_sdk.ir3 r9 = new ads_mobile_sdk.ir3
            kotlin.time.Duration$Companion r2 = kotlin.time.Duration.Companion
            ads_mobile_sdk.tx r2 = r7.c
            r2.getClass()
            long r5 = android.os.SystemClock.elapsedRealtime()
            kotlin.time.DurationUnit r2 = kotlin.time.DurationUnit.MILLISECONDS
            long r5 = kotlin.time.DurationKt.toDuration(r5, r2)
            r9.<init>(r5, r8)
            kotlinx.coroutines.sync.Mutex r2 = r7.e
            r0.a = r7
            r0.b = r8
            r0.c = r9
            r0.d = r9
            r0.e = r2
            r0.h = r3
            java.lang.Object r0 = r2.lock(r4, r0)
            if (r0 != r1) goto L6c
            return r1
        L6c:
            r0 = r7
            r1 = r9
            r7 = r2
        L6f:
            java.util.LinkedHashMap r0 = r0.h     // Catch: java.lang.Throwable -> L7a
            r0.put(r8, r9)     // Catch: java.lang.Throwable -> L7a
            kotlin.Unit r8 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L7a
            r7.unlock(r4)
            return r1
        L7a:
            r8 = move-exception
            r7.unlock(r4)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.mb0.a(ads_mobile_sdk.mb0, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final Uri a(String str, String str2, Map map) {
        Uri.Builder builderBuildUpon = Uri.parse(this.b.z()).buildUpon();
        for (Map.Entry entry : map.entrySet()) {
            builderBuildUpon.appendQueryParameter((String) entry.getKey(), (String) entry.getValue());
        }
        return Uri.parse(builderBuildUpon.build().toString() + "&it=" + str + "&blat=" + str2);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(kotlin.coroutines.Continuation r20) {
        /*
            Method dump skipped, instruction units count: 313
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.mb0.a(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(java.lang.String r6, java.lang.String r7, boolean r8, kotlin.coroutines.Continuation r9) {
        /*
            r5 = this;
            boolean r0 = r9 instanceof ads_mobile_sdk.kb0
            if (r0 == 0) goto L13
            r0 = r9
            ads_mobile_sdk.kb0 r0 = (ads_mobile_sdk.kb0) r0
            int r1 = r0.h
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.h = r1
            goto L18
        L13:
            ads_mobile_sdk.kb0 r0 = new ads_mobile_sdk.kb0
            r0.<init>(r5, r9)
        L18:
            java.lang.Object r9 = r0.f
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.h
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L3e
            if (r2 != r3) goto L36
            boolean r8 = r0.e
            kotlinx.coroutines.sync.Mutex r6 = r0.d
            java.lang.String r7 = r0.c
            java.lang.String r1 = r0.b
            ads_mobile_sdk.mb0 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r9)
            r9 = r6
            r6 = r1
            goto L57
        L36:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3e:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlinx.coroutines.sync.Mutex r9 = r5.e
            r0.a = r5
            r0.b = r6
            r0.c = r7
            r0.d = r9
            r0.e = r8
            r0.h = r3
            java.lang.Object r0 = r9.lock(r4, r0)
            if (r0 != r1) goto L56
            return r1
        L56:
            r0 = r5
        L57:
            if (r8 == 0) goto L63
            java.util.Map r8 = r0.f     // Catch: java.lang.Throwable -> L61
            r8.put(r6, r7)     // Catch: java.lang.Throwable -> L61
            kotlin.Unit r6 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L61
            goto L68
        L61:
            r6 = move-exception
            goto L6e
        L63:
            java.util.Map r8 = r0.f     // Catch: java.lang.Throwable -> L61
            r8.putIfAbsent(r6, r7)     // Catch: java.lang.Throwable -> L61
        L68:
            r9.unlock(r4)
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L6e:
            r9.unlock(r4)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.mb0.a(java.lang.String, java.lang.String, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(java.lang.String r6, java.lang.String r7, long r8, kotlin.coroutines.Continuation r10) {
        /*
            r5 = this;
            boolean r0 = r10 instanceof ads_mobile_sdk.lb0
            if (r0 == 0) goto L13
            r0 = r10
            ads_mobile_sdk.lb0 r0 = (ads_mobile_sdk.lb0) r0
            int r1 = r0.h
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.h = r1
            goto L18
        L13:
            ads_mobile_sdk.lb0 r0 = new ads_mobile_sdk.lb0
            r0.<init>(r5, r10)
        L18:
            java.lang.Object r10 = r0.f
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.h
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L3e
            if (r2 != r3) goto L36
            long r8 = r0.e
            kotlinx.coroutines.sync.Mutex r6 = r0.d
            java.lang.String r7 = r0.c
            java.lang.String r1 = r0.b
            ads_mobile_sdk.mb0 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r10)
            r10 = r6
            r6 = r1
            goto L57
        L36:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3e:
            kotlin.ResultKt.throwOnFailure(r10)
            kotlinx.coroutines.sync.Mutex r10 = r5.e
            r0.a = r5
            r0.b = r6
            r0.c = r7
            r0.d = r10
            r0.e = r8
            r0.h = r3
            java.lang.Object r0 = r10.lock(r4, r0)
            if (r0 != r1) goto L56
            return r1
        L56:
            r0 = r5
        L57:
            java.util.LinkedHashMap r1 = r0.h     // Catch: java.lang.Throwable -> L70
            java.lang.Object r7 = r1.get(r7)     // Catch: java.lang.Throwable -> L70
            ads_mobile_sdk.ir3 r7 = (ads_mobile_sdk.ir3) r7     // Catch: java.lang.Throwable -> L70
            if (r7 == 0) goto L72
            java.util.ArrayList r0 = r0.g     // Catch: java.lang.Throwable -> L70
            ads_mobile_sdk.eb0 r1 = new ads_mobile_sdk.eb0     // Catch: java.lang.Throwable -> L70
            r1.<init>(r6, r7, r8)     // Catch: java.lang.Throwable -> L70
            boolean r6 = r0.add(r1)     // Catch: java.lang.Throwable -> L70
            kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r6)     // Catch: java.lang.Throwable -> L70
            goto L72
        L70:
            r6 = move-exception
            goto L78
        L72:
            r10.unlock(r4)
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L78:
            r10.unlock(r4)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.mb0.a(java.lang.String, java.lang.String, long, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
