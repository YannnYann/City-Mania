package ads_mobile_sdk;

import android.os.Bundle;
import com.google.android.gms.ads.AdError;
import com.google.android.libraries.ads.mobile.sdk.common.AdSourceResponseInfo;
import com.google.android.libraries.ads.mobile.sdk.common.MediationAdError;
import com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonNull;
import com.google.gson.JsonObject;
import com.ironsource.Cc;
import java.util.List;
import java.util.Optional;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public final class md1 implements gj1, li1 {
    public final if1 a;
    public final j53 b;
    public final Optional c;
    public final String d;
    public final boolean e;
    public final tx f;
    public final Gson g;
    public final ex0 h;
    public final Optional i;
    public String j;
    public final Mutex k;
    public ed1 l;
    public boolean m;
    public boolean n;
    public JsonObject o;
    public String p;
    public String q;
    public String r;
    public JsonObject s;
    public JsonObject t;
    public i01 u;
    public ResponseInfo v;
    public long w;
    public volatile boolean x;

    public md1(if1 inspectorManager, j53 requestType, Optional baseRequest, String requestId, boolean z, tx clock, Gson gson, ex0 flags, Optional signalRequest) {
        Intrinsics.checkNotNullParameter(inspectorManager, "inspectorManager");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(gson, "gson");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(signalRequest, "signalRequest");
        this.a = inspectorManager;
        this.b = requestType;
        this.c = baseRequest;
        this.d = requestId;
        this.e = z;
        this.f = clock;
        this.g = gson;
        this.h = flags;
        this.i = signalRequest;
        this.k = MutexKt.Mutex$default(false, 1, null);
        this.l = ed1.a;
        this.o = new JsonObject();
        this.p = "";
        this.q = "";
        this.r = "";
        this.s = new JsonObject();
        this.t = new JsonObject();
        this.w = Duration.Companion.m2911getZEROUwyO8pc();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object a(ads_mobile_sdk.md1 r5, kotlin.coroutines.Continuation r6) {
        /*
            boolean r0 = r6 instanceof ads_mobile_sdk.fd1
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.fd1 r0 = (ads_mobile_sdk.fd1) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.fd1 r0 = new ads_mobile_sdk.fd1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L38
            if (r2 != r3) goto L30
            kotlinx.coroutines.sync.Mutex r5 = r0.b
            ads_mobile_sdk.md1 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r6)
            r6 = r5
            r5 = r0
            goto L4a
        L30:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L38:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlinx.coroutines.sync.Mutex r6 = r5.k
            r0.a = r5
            r0.b = r6
            r0.e = r3
            java.lang.Object r0 = r6.lock(r4, r0)
            if (r0 != r1) goto L4a
            return r1
        L4a:
            r5.n = r3     // Catch: java.lang.Throwable -> L52
            kotlin.Unit r5 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L52
            r6.unlock(r4)
            return r5
        L52:
            r5 = move-exception
            r6.unlock(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.md1.a(ads_mobile_sdk.md1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object b(ads_mobile_sdk.md1 r9, kotlin.coroutines.Continuation r10) {
        /*
            boolean r0 = r10 instanceof ads_mobile_sdk.jd1
            if (r0 == 0) goto L13
            r0 = r10
            ads_mobile_sdk.jd1 r0 = (ads_mobile_sdk.jd1) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.jd1 r0 = new ads_mobile_sdk.jd1
            r0.<init>(r9, r10)
        L18:
            java.lang.Object r10 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            if (r2 == 0) goto L36
            if (r2 != r3) goto L2e
            java.lang.String r9 = r0.b
            ads_mobile_sdk.md1 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r10)
            goto L9a
        L2e:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L36:
            kotlin.ResultKt.throwOnFailure(r10)
            java.util.Optional r10 = r9.c
            java.lang.Object r10 = kotlin.jvm.optionals.OptionalsKt.getOrNull(r10)
            com.google.android.libraries.ads.mobile.sdk.common.BaseRequest r10 = (com.google.android.libraries.ads.mobile.sdk.common.BaseRequest) r10
            r2 = 0
            if (r10 == 0) goto L49
            java.lang.String r10 = r10.getAdUnitId()
            goto L4a
        L49:
            r10 = r2
        L4a:
            r4 = 0
            if (r10 != 0) goto L4f
            r5 = r3
            goto L50
        L4f:
            r5 = r4
        L50:
            java.util.Optional r6 = r9.i
            java.lang.Object r6 = kotlin.jvm.optionals.OptionalsKt.getOrNull(r6)
            com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest r6 = (com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest) r6
            if (r6 != 0) goto L68
            java.util.Optional r6 = r9.c
            java.lang.Object r6 = kotlin.jvm.optionals.OptionalsKt.getOrNull(r6)
            boolean r7 = r6 instanceof com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest
            if (r7 == 0) goto L67
            com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest r6 = (com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest) r6
            goto L68
        L67:
            r6 = r2
        L68:
            if (r6 == 0) goto L6e
            ads_mobile_sdk.x11 r2 = r6.a()
        L6e:
            ads_mobile_sdk.x11 r6 = ads_mobile_sdk.x11.SCAR_REQUEST_TYPE_GAM_S2S
            if (r2 != r6) goto L74
            r2 = r3
            goto L75
        L74:
            r2 = r4
        L75:
            ads_mobile_sdk.ex0 r6 = r9.h
            boolean r6 = r6.b()
            if (r6 == 0) goto L80
            if (r2 == 0) goto L80
            r4 = r3
        L80:
            if (r5 == 0) goto L87
            if (r4 != 0) goto L87
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        L87:
            ads_mobile_sdk.if1 r2 = r9.a
            r0.a = r9
            r0.b = r10
            r0.e = r3
            java.lang.Object r0 = r2.v(r0)
            if (r0 != r1) goto L96
            return r1
        L96:
            r8 = r0
            r0 = r9
            r9 = r10
            r10 = r8
        L9a:
            java.lang.Boolean r10 = (java.lang.Boolean) r10
            boolean r10 = r10.booleanValue()
            if (r10 == 0) goto Lbf
            if (r9 != 0) goto Lbb
            ads_mobile_sdk.j53 r9 = r0.b
            java.lang.String r9 = r9.name()
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            java.lang.String r1 = "SERVER_TO_SERVER_AD_UNIT_"
            r10.append(r1)
            r10.append(r9)
            java.lang.String r9 = r10.toString()
        Lbb:
            r0.j = r9
            r0.x = r3
        Lbf:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.md1.b(ads_mobile_sdk.md1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.gj1
    public final Object c(Continuation continuation) {
        return b(this, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object s(kotlin.coroutines.Continuation r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof ads_mobile_sdk.ld1
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.ld1 r0 = (ads_mobile_sdk.ld1) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.ld1 r0 = new ads_mobile_sdk.ld1
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L36
            if (r2 != r3) goto L2e
            kotlinx.coroutines.sync.Mutex r1 = r0.b
            ads_mobile_sdk.md1 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r7)
            goto L4a
        L2e:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L36:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlinx.coroutines.sync.Mutex r7 = r6.k
            r0.a = r6
            r0.b = r7
            r0.e = r3
            java.lang.Object r0 = r7.lock(r4, r0)
            if (r0 != r1) goto L48
            return r1
        L48:
            r0 = r6
            r1 = r7
        L4a:
            com.google.gson.JsonObject r7 = new com.google.gson.JsonObject     // Catch: java.lang.Throwable -> L89
            r7.<init>()     // Catch: java.lang.Throwable -> L89
            java.lang.String r2 = "state"
            ads_mobile_sdk.ed1 r3 = r0.l     // Catch: java.lang.Throwable -> L89
            java.lang.String r3 = r3.name()     // Catch: java.lang.Throwable -> L89
            r7.addProperty(r2, r3)     // Catch: java.lang.Throwable -> L89
            java.lang.String r2 = "format"
            ads_mobile_sdk.j53 r3 = r0.b     // Catch: java.lang.Throwable -> L89
            java.lang.String r3 = r3.a     // Catch: java.lang.Throwable -> L89
            java.util.Locale r5 = java.util.Locale.ROOT     // Catch: java.lang.Throwable -> L89
            java.lang.String r3 = r3.toUpperCase(r5)     // Catch: java.lang.Throwable -> L89
            java.lang.String r5 = "toUpperCase(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r5)     // Catch: java.lang.Throwable -> L89
            r7.addProperty(r2, r3)     // Catch: java.lang.Throwable -> L89
            java.lang.String r2 = "isOutOfContext"
            boolean r3 = r0.e     // Catch: java.lang.Throwable -> L89
            java.lang.Boolean r3 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r3)     // Catch: java.lang.Throwable -> L89
            r7.addProperty(r2, r3)     // Catch: java.lang.Throwable -> L89
            boolean r2 = r0.e     // Catch: java.lang.Throwable -> L89
            if (r2 == 0) goto L8b
            java.lang.String r2 = "shown"
            boolean r3 = r0.n     // Catch: java.lang.Throwable -> L89
            java.lang.Boolean r3 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r3)     // Catch: java.lang.Throwable -> L89
            r7.addProperty(r2, r3)     // Catch: java.lang.Throwable -> L89
            goto L8b
        L89:
            r7 = move-exception
            goto L9c
        L8b:
            com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo r2 = r0.v     // Catch: java.lang.Throwable -> L89
            if (r2 == 0) goto L98
            java.lang.String r3 = "responseInfo"
            com.google.gson.JsonObject r0 = r0.a(r2)     // Catch: java.lang.Throwable -> L89
            r7.add(r3, r0)     // Catch: java.lang.Throwable -> L89
        L98:
            r1.unlock(r4)
            return r7
        L9c:
            r1.unlock(r4)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.md1.s(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object b(kotlin.coroutines.Continuation r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof ads_mobile_sdk.kd1
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.kd1 r0 = (ads_mobile_sdk.kd1) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.kd1 r0 = new ads_mobile_sdk.kd1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L36
            if (r2 != r3) goto L2e
            kotlinx.coroutines.sync.Mutex r1 = r0.b
            ads_mobile_sdk.md1 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r6)
            goto L4a
        L2e:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L36:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlinx.coroutines.sync.Mutex r6 = r5.k
            r0.a = r5
            r0.b = r6
            r0.e = r3
            java.lang.Object r0 = r6.lock(r4, r0)
            if (r0 != r1) goto L48
            return r1
        L48:
            r0 = r5
            r1 = r6
        L4a:
            ads_mobile_sdk.ed1 r6 = r0.l     // Catch: java.lang.Throwable -> L5a
            ads_mobile_sdk.ed1 r0 = ads_mobile_sdk.ed1.a     // Catch: java.lang.Throwable -> L5a
            if (r6 == r0) goto L51
            goto L52
        L51:
            r3 = 0
        L52:
            java.lang.Boolean r6 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r3)     // Catch: java.lang.Throwable -> L5a
            r1.unlock(r4)
            return r6
        L5a:
            r6 = move-exception
            r1.unlock(r4)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.md1.b(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.li1
    public final Object a(i01 i01Var, ResponseInfo responseInfo, Continuation continuation) {
        return a(this, i01Var, responseInfo, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x00b4, code lost:
    
        if (ads_mobile_sdk.if1.d(r7, r0) != r1) goto L35;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.md1 r7, ads_mobile_sdk.i01 r8, com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo r9, kotlin.coroutines.Continuation r10) {
        /*
            boolean r0 = r10 instanceof ads_mobile_sdk.gd1
            if (r0 == 0) goto L13
            r0 = r10
            ads_mobile_sdk.gd1 r0 = (ads_mobile_sdk.gd1) r0
            int r1 = r0.g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.g = r1
            goto L18
        L13:
            ads_mobile_sdk.gd1 r0 = new ads_mobile_sdk.gd1
            r0.<init>(r7, r10)
        L18:
            java.lang.Object r10 = r0.e
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.g
            r3 = 3
            r4 = 2
            r5 = 1
            r6 = 0
            if (r2 == 0) goto L4d
            if (r2 == r5) goto L3f
            if (r2 == r4) goto L39
            if (r2 != r3) goto L31
            kotlin.ResultKt.throwOnFailure(r10)
            goto Lb7
        L31:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L39:
            ads_mobile_sdk.md1 r7 = r0.a
            kotlin.ResultKt.throwOnFailure(r10)
            goto La7
        L3f:
            kotlinx.coroutines.sync.Mutex r7 = r0.d
            com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo r9 = r0.c
            ads_mobile_sdk.i01 r8 = r0.b
            ads_mobile_sdk.md1 r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r10)
            r10 = r7
            r7 = r2
            goto L6a
        L4d:
            kotlin.ResultKt.throwOnFailure(r10)
            boolean r10 = r7.x
            if (r10 != 0) goto L57
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        L57:
            kotlinx.coroutines.sync.Mutex r10 = r7.k
            r0.a = r7
            r0.b = r8
            r0.c = r9
            r0.d = r10
            r0.g = r5
            java.lang.Object r2 = r10.lock(r6, r0)
            if (r2 != r1) goto L6a
            goto Lb6
        L6a:
            ads_mobile_sdk.ed1 r2 = ads_mobile_sdk.ed1.c     // Catch: java.lang.Throwable -> Lba
            r7.l = r2     // Catch: java.lang.Throwable -> Lba
            r7.u = r8     // Catch: java.lang.Throwable -> Lba
            r7.v = r9     // Catch: java.lang.Throwable -> Lba
            kotlin.time.Duration$Companion r8 = kotlin.time.Duration.Companion     // Catch: java.lang.Throwable -> Lba
            ads_mobile_sdk.tx r8 = r7.f     // Catch: java.lang.Throwable -> Lba
            r8.getClass()     // Catch: java.lang.Throwable -> Lba
            long r8 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> Lba
            kotlin.time.DurationUnit r2 = kotlin.time.DurationUnit.MILLISECONDS     // Catch: java.lang.Throwable -> Lba
            long r8 = kotlin.time.DurationKt.toDuration(r8, r2)     // Catch: java.lang.Throwable -> Lba
            r7.w = r8     // Catch: java.lang.Throwable -> Lba
            kotlin.Unit r8 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> Lba
            r10.unlock(r6)
            ads_mobile_sdk.if1 r8 = r7.a
            java.lang.String r9 = r7.j
            if (r9 != 0) goto L96
            java.lang.String r9 = "adUnitId"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r9)
            r9 = r6
        L96:
            r0.a = r7
            r0.b = r6
            r0.c = r6
            r0.d = r6
            r0.g = r4
            java.lang.Object r8 = r8.a(r9, r7, r0)
            if (r8 != r1) goto La7
            goto Lb6
        La7:
            ads_mobile_sdk.if1 r7 = r7.a
            r0.a = r6
            r0.g = r3
            r7.getClass()
            java.lang.Object r7 = ads_mobile_sdk.if1.d(r7, r0)
            if (r7 != r1) goto Lb7
        Lb6:
            return r1
        Lb7:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        Lba:
            r7 = move-exception
            r10.unlock(r6)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.md1.a(ads_mobile_sdk.md1, ads_mobile_sdk.i01, com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.li1
    public final Object a(ec3 ec3Var, i2 i2Var, ResponseInfo responseInfo, Continuation continuation) {
        return a(this, responseInfo, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x00ac, code lost:
    
        if (ads_mobile_sdk.if1.d(r9, r0) != r1) goto L35;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.md1 r9, com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo r10, kotlin.coroutines.Continuation r11) {
        /*
            boolean r0 = r11 instanceof ads_mobile_sdk.hd1
            if (r0 == 0) goto L13
            r0 = r11
            ads_mobile_sdk.hd1 r0 = (ads_mobile_sdk.hd1) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            ads_mobile_sdk.hd1 r0 = new ads_mobile_sdk.hd1
            r0.<init>(r9, r11)
        L18:
            java.lang.Object r11 = r0.d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 3
            r4 = 2
            r5 = 1
            r6 = 0
            if (r2 == 0) goto L4b
            if (r2 == r5) goto L3f
            if (r2 == r4) goto L39
            if (r2 != r3) goto L31
            kotlin.ResultKt.throwOnFailure(r11)
            goto Laf
        L31:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L39:
            ads_mobile_sdk.md1 r9 = r0.a
            kotlin.ResultKt.throwOnFailure(r11)
            goto L9f
        L3f:
            kotlinx.coroutines.sync.Mutex r9 = r0.c
            com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo r10 = r0.b
            ads_mobile_sdk.md1 r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r11)
            r11 = r9
            r9 = r2
            goto L66
        L4b:
            kotlin.ResultKt.throwOnFailure(r11)
            boolean r11 = r9.x
            if (r11 != 0) goto L55
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        L55:
            kotlinx.coroutines.sync.Mutex r11 = r9.k
            r0.a = r9
            r0.b = r10
            r0.c = r11
            r0.f = r5
            java.lang.Object r2 = r11.lock(r6, r0)
            if (r2 != r1) goto L66
            goto Lae
        L66:
            ads_mobile_sdk.ed1 r2 = ads_mobile_sdk.ed1.b     // Catch: java.lang.Throwable -> Lb2
            r9.l = r2     // Catch: java.lang.Throwable -> Lb2
            r9.v = r10     // Catch: java.lang.Throwable -> Lb2
            kotlin.time.Duration$Companion r10 = kotlin.time.Duration.Companion     // Catch: java.lang.Throwable -> Lb2
            ads_mobile_sdk.tx r10 = r9.f     // Catch: java.lang.Throwable -> Lb2
            r10.getClass()     // Catch: java.lang.Throwable -> Lb2
            long r7 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> Lb2
            kotlin.time.DurationUnit r10 = kotlin.time.DurationUnit.MILLISECONDS     // Catch: java.lang.Throwable -> Lb2
            long r7 = kotlin.time.DurationKt.toDuration(r7, r10)     // Catch: java.lang.Throwable -> Lb2
            r9.w = r7     // Catch: java.lang.Throwable -> Lb2
            kotlin.Unit r10 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> Lb2
            r11.unlock(r6)
            ads_mobile_sdk.if1 r10 = r9.a
            java.lang.String r11 = r9.j
            if (r11 != 0) goto L90
            java.lang.String r11 = "adUnitId"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r11)
            r11 = r6
        L90:
            r0.a = r9
            r0.b = r6
            r0.c = r6
            r0.f = r4
            java.lang.Object r10 = r10.a(r11, r9, r0)
            if (r10 != r1) goto L9f
            goto Lae
        L9f:
            ads_mobile_sdk.if1 r9 = r9.a
            r0.a = r6
            r0.f = r3
            r9.getClass()
            java.lang.Object r9 = ads_mobile_sdk.if1.d(r9, r0)
            if (r9 != r1) goto Laf
        Lae:
            return r1
        Laf:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        Lb2:
            r9 = move-exception
            r11.unlock(r6)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.md1.a(ads_mobile_sdk.md1, com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.gj1
    public final Object a(ec3 ec3Var, Continuation continuation) {
        return a(this, ec3Var, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00ac A[Catch: all -> 0x0034, TryCatch #1 {all -> 0x0034, blocks: (B:13:0x002f, B:31:0x00a4, B:33:0x00ac, B:35:0x00bb, B:34:0x00b9), top: B:44:0x002f }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00b9 A[Catch: all -> 0x0034, TryCatch #1 {all -> 0x0034, blocks: (B:13:0x002f, B:31:0x00a4, B:33:0x00ac, B:35:0x00bb, B:34:0x00b9), top: B:44:0x002f }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object a(ads_mobile_sdk.md1 r9, ads_mobile_sdk.ec3 r10, kotlin.coroutines.Continuation r11) throws java.lang.Throwable {
        /*
            boolean r0 = r11 instanceof ads_mobile_sdk.id1
            if (r0 == 0) goto L13
            r0 = r11
            ads_mobile_sdk.id1 r0 = (ads_mobile_sdk.id1) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            ads_mobile_sdk.id1 r0 = new ads_mobile_sdk.id1
            r0.<init>(r9, r11)
        L18:
            java.lang.Object r11 = r0.d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L4b
            if (r2 == r4) goto L3f
            if (r2 != r3) goto L37
            kotlinx.coroutines.sync.Mutex r9 = r0.c
            ads_mobile_sdk.ec3 r10 = r0.b
            ads_mobile_sdk.md1 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r11)     // Catch: java.lang.Throwable -> L34
            goto La4
        L34:
            r10 = move-exception
            goto Lc3
        L37:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L3f:
            kotlinx.coroutines.sync.Mutex r9 = r0.c
            ads_mobile_sdk.ec3 r10 = r0.b
            ads_mobile_sdk.md1 r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r11)
            r11 = r9
            r9 = r2
            goto L66
        L4b:
            kotlin.ResultKt.throwOnFailure(r11)
            boolean r11 = r9.x
            if (r11 != 0) goto L55
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        L55:
            kotlinx.coroutines.sync.Mutex r11 = r9.k
            r0.a = r9
            r0.b = r10
            r0.c = r11
            r0.f = r4
            java.lang.Object r2 = r11.lock(r5, r0)
            if (r2 != r1) goto L66
            goto L9f
        L66:
            ads_mobile_sdk.ac3 r2 = r10.b     // Catch: java.lang.Throwable -> Lc1
            ads_mobile_sdk.zy r2 = r2.b     // Catch: java.lang.Throwable -> Lc1
            com.google.gson.JsonObject r6 = r2.f     // Catch: java.lang.Throwable -> Lc1
            r9.o = r6     // Catch: java.lang.Throwable -> Lc1
            java.lang.String r6 = r2.c     // Catch: java.lang.Throwable -> Lc1
            r9.p = r6     // Catch: java.lang.Throwable -> Lc1
            java.lang.String r6 = r2.b     // Catch: java.lang.Throwable -> Lc1
            r9.r = r6     // Catch: java.lang.Throwable -> Lc1
            com.google.gson.JsonObject r6 = r2.i     // Catch: java.lang.Throwable -> Lc1
            r9.s = r6     // Catch: java.lang.Throwable -> Lc1
            ads_mobile_sdk.if1 r6 = r9.a     // Catch: java.lang.Throwable -> Lc1
            com.google.gson.JsonObject r2 = r2.e     // Catch: java.lang.Throwable -> Lc1
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> Lc1
            int r2 = r2.length()     // Catch: java.lang.Throwable -> Lc1
            ads_mobile_sdk.ac3 r7 = r10.b     // Catch: java.lang.Throwable -> Lc1
            ads_mobile_sdk.zy r7 = r7.b     // Catch: java.lang.Throwable -> Lc1
            java.lang.String r7 = r7.d     // Catch: java.lang.Throwable -> Lc1
            int r7 = r7.length()     // Catch: java.lang.Throwable -> Lc1
            int r2 = r2 + r7
            r0.a = r9     // Catch: java.lang.Throwable -> Lc1
            r0.b = r10     // Catch: java.lang.Throwable -> Lc1
            r0.c = r11     // Catch: java.lang.Throwable -> Lc1
            r0.f = r3     // Catch: java.lang.Throwable -> Lc1
            java.lang.Object r0 = r6.a(r2, r0)     // Catch: java.lang.Throwable -> Lc1
            if (r0 != r1) goto La0
        L9f:
            return r1
        La0:
            r8 = r0
            r0 = r9
            r9 = r11
            r11 = r8
        La4:
            java.lang.Boolean r11 = (java.lang.Boolean) r11     // Catch: java.lang.Throwable -> L34
            boolean r11 = r11.booleanValue()     // Catch: java.lang.Throwable -> L34
            if (r11 == 0) goto Lb9
            ads_mobile_sdk.ac3 r10 = r10.b     // Catch: java.lang.Throwable -> L34
            ads_mobile_sdk.zy r10 = r10.b     // Catch: java.lang.Throwable -> L34
            com.google.gson.JsonObject r11 = r10.e     // Catch: java.lang.Throwable -> L34
            r0.t = r11     // Catch: java.lang.Throwable -> L34
            java.lang.String r10 = r10.d     // Catch: java.lang.Throwable -> L34
            r0.q = r10     // Catch: java.lang.Throwable -> L34
            goto Lbb
        Lb9:
            r0.m = r4     // Catch: java.lang.Throwable -> L34
        Lbb:
            kotlin.Unit r10 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L34
            r9.unlock(r5)
            return r10
        Lc1:
            r10 = move-exception
            r9 = r11
        Lc3:
            r9.unlock(r5)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.md1.a(ads_mobile_sdk.md1, ads_mobile_sdk.ec3, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final JsonObject a(ResponseInfo responseInfo) {
        JsonObject jsonObject;
        JsonElement jsonElement;
        JsonObject jsonObject2 = new JsonObject();
        jsonObject2.addProperty("winningAdapterClassName", responseInfo.getAdapterClassName());
        jsonObject2.addProperty("responseSecsSinceEpoch", Long.valueOf(Duration.m2883getInWholeSecondsimpl(this.w)));
        jsonObject2.addProperty("responseId", responseInfo.getResponseId());
        jsonObject2.addProperty("adRequestUrl", this.p);
        jsonObject2.addProperty("postBody", this.r);
        jsonObject2.addProperty("adResponseBody", this.q);
        jsonObject2.addProperty("hasExceededMemoryLimit", Boolean.valueOf(this.m));
        jsonObject2.add("adResponseHeaders", this.t);
        jsonObject2.add("transactionExtras", this.s);
        jsonObject2.add("biddingData", this.o);
        JsonArray jsonArray = new JsonArray();
        for (AdSourceResponseInfo adSourceResponseInfo : responseInfo.getAdSourceResponses()) {
            JsonObject jsonObject3 = new JsonObject();
            jsonObject3.addProperty("adapterClassName", adSourceResponseInfo.getAdapterClassName());
            jsonObject3.addProperty("latencyMillis", Long.valueOf(adSourceResponseInfo.getLatencyMillis()));
            Bundle credentials = adSourceResponseInfo.getCredentials();
            ds1 ds1Var = ds1.a;
            try {
                Gson gson = this.g;
                jsonObject = (JsonObject) gson.fromJson(gson.toJson(credentials), JsonObject.class);
            } catch (Exception e) {
                List list = a2.a(e, "t", e).s;
                String message = e.getMessage();
                if (message == null) {
                    message = e.getClass().getName();
                }
                Intrinsics.checkNotNull(message);
                list.add(message);
                jsonObject = null;
            }
            if (jsonObject == null) {
                jsonObject = new JsonObject();
            }
            jsonObject3.add("credentials", jsonObject);
            MediationAdError adError = adSourceResponseInfo.getAdError();
            if (adError == null) {
                jsonElement = JsonNull.INSTANCE;
            } else {
                JsonObject jsonObject4 = new JsonObject();
                jsonObject4.addProperty("errorDomain", adError.getDomain());
                jsonObject4.addProperty("errorCode", adError.getCode());
                jsonObject4.addProperty("errorDescription", adError.getMessage());
                jsonObject4.add("underlyingError", JsonNull.INSTANCE);
                jsonElement = jsonObject4;
            }
            jsonObject3.add(Cc.a.g, jsonElement);
            jsonArray.add(jsonObject3);
        }
        jsonObject2.add("adNetworks", jsonArray);
        i01 i01Var = this.u;
        if (responseInfo.getAdSourceResponses().isEmpty() && i01Var != null) {
            JsonArray jsonArray2 = new JsonArray();
            JsonObject jsonObject5 = new JsonObject();
            jsonObject5.addProperty("errorDomain", AdError.GOOGLE_MOBILE_ADS_DOMAIN);
            jsonObject5.addProperty("errorCode", i01Var.a().d().name());
            jsonObject5.addProperty("errorDescription", h01.a(i01Var));
            jsonObject5.add("underlyingError", JsonNull.INSTANCE);
            jsonArray2.add(jsonObject5);
            jsonObject2.add("errors", jsonArray2);
        }
        return jsonObject2;
    }
}
