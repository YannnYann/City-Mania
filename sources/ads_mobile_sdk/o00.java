package ads_mobile_sdk;

import android.content.Context;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt__CharJVMKt;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsKt;
import kotlin.time.Duration;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public final class o00 extends nc1 implements gj1 {
    public final CoroutineContext c;
    public final CoroutineScope d;
    public final Context e;
    public final ja1 f;
    public final String g;
    public final jb3 h;
    public final pn i;
    public final hf j;
    public final ur3 k;
    public final tx l;
    public final ex0 m;
    public final g83 n;
    public final g30 o;
    public final e01 p;
    public final o21 q;
    public final ks1 r;
    public final Mutex s;
    public boolean t;
    public long u;
    public long v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o00(CoroutineContext backgroundContext, CoroutineScope backgroundScope, Context context, ja1 initializationConfigWrapper, String afmaVersion, jb3 javascriptEngine, pn appState, hf adapterInitializer, ur3 traceLogger, tx clock, ex0 flags, g83 rootTraceCreator, g30 consentManager, e01 httpClient, o21 gmaUtil, ks1 inspectorManager) {
        super((s11) null, 1);
        Intrinsics.checkNotNullParameter(backgroundContext, "backgroundContext");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(initializationConfigWrapper, "initializationConfigWrapper");
        Intrinsics.checkNotNullParameter(afmaVersion, "afmaVersion");
        Intrinsics.checkNotNullParameter(javascriptEngine, "javascriptEngine");
        Intrinsics.checkNotNullParameter(appState, "appState");
        Intrinsics.checkNotNullParameter(adapterInitializer, "adapterInitializer");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(consentManager, "consentManager");
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        Intrinsics.checkNotNullParameter(gmaUtil, "gmaUtil");
        Intrinsics.checkNotNullParameter(inspectorManager, "inspectorManager");
        this.c = backgroundContext;
        this.d = backgroundScope;
        this.e = context;
        this.f = initializationConfigWrapper;
        this.g = afmaVersion;
        this.h = javascriptEngine;
        this.i = appState;
        this.j = adapterInitializer;
        this.k = traceLogger;
        this.l = clock;
        this.m = flags;
        this.n = rootTraceCreator;
        this.o = consentManager;
        this.p = httpClient;
        this.q = gmaUtil;
        this.r = inspectorManager;
        this.s = MutexKt.Mutex$default(false, 1, null);
        Duration.Companion companion = Duration.Companion;
        this.u = companion.m2911getZEROUwyO8pc();
        this.v = companion.m2911getZEROUwyO8pc();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object b(ads_mobile_sdk.o00 r5, kotlin.coroutines.Continuation r6) {
        /*
            boolean r0 = r6 instanceof ads_mobile_sdk.e00
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.e00 r0 = (ads_mobile_sdk.e00) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.e00 r0 = new ads_mobile_sdk.e00
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
            ads_mobile_sdk.o00 r0 = r0.a
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
            kotlinx.coroutines.sync.Mutex r6 = r5.s
            r0.a = r5
            r0.b = r6
            r0.e = r3
            java.lang.Object r0 = r6.lock(r4, r0)
            if (r0 != r1) goto L4a
            return r1
        L4a:
            long r0 = r5.v     // Catch: java.lang.Throwable -> L73
            kotlin.time.Duration$Companion r2 = kotlin.time.Duration.Companion     // Catch: java.lang.Throwable -> L73
            long r2 = r2.m2911getZEROUwyO8pc()     // Catch: java.lang.Throwable -> L73
            boolean r0 = kotlin.time.Duration.m2875equalsimpl0(r0, r2)     // Catch: java.lang.Throwable -> L73
            if (r0 == 0) goto L5b
            r0 = 0
            goto L6b
        L5b:
            ads_mobile_sdk.tx r0 = r5.l     // Catch: java.lang.Throwable -> L73
            r0.getClass()     // Catch: java.lang.Throwable -> L73
            long r0 = android.os.SystemClock.elapsedRealtime()     // Catch: java.lang.Throwable -> L73
            long r2 = r5.v     // Catch: java.lang.Throwable -> L73
            long r2 = kotlin.time.Duration.m2881getInWholeMillisecondsimpl(r2)     // Catch: java.lang.Throwable -> L73
            long r0 = r0 - r2
        L6b:
            java.lang.Long r5 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r0)     // Catch: java.lang.Throwable -> L73
            r6.unlock(r4)
            return r5
        L73:
            r5 = move-exception
            r6.unlock(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.o00.b(ads_mobile_sdk.o00, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.nc1
    public final Object u(Continuation continuation) {
        CoroutineScope coroutineScope = this.d;
        l00 block = new l00(this, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        return new q01(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object a(ads_mobile_sdk.o00 r22, boolean r23, java.lang.String r24, kotlin.coroutines.Continuation r25) {
        /*
            Method dump skipped, instruction units count: 367
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.o00.a(ads_mobile_sdk.o00, boolean, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x007f, code lost:
    
        if (r12 == r1) goto L27;
     */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object b(com.google.android.libraries.ads.mobile.sdk.internal.initialization.ConfigLoaderRequest r11, kotlin.coroutines.Continuation r12) {
        /*
            r10 = this;
            java.lang.String r0 = "Failed to parse CLD response."
            boolean r1 = r12 instanceof ads_mobile_sdk.f00
            if (r1 == 0) goto L16
            r1 = r12
            ads_mobile_sdk.f00 r1 = (ads_mobile_sdk.f00) r1
            int r2 = r1.e
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L16
            int r2 = r2 - r3
            r1.e = r2
        L14:
            r6 = r1
            goto L1c
        L16:
            ads_mobile_sdk.f00 r1 = new ads_mobile_sdk.f00
            r1.<init>(r10, r12)
            goto L14
        L1c:
            java.lang.Object r12 = r6.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r6.e
            java.lang.String r8 = "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L48
            if (r2 == r4) goto L3c
            if (r2 != r3) goto L34
            ads_mobile_sdk.o00 r11 = r6.a
            kotlin.ResultKt.throwOnFailure(r12)
            goto L82
        L34:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L3c:
            com.google.android.libraries.ads.mobile.sdk.internal.initialization.ConfigLoaderRequest r11 = r6.b
            ads_mobile_sdk.o00 r2 = r6.a
            kotlin.ResultKt.throwOnFailure(r12)
            r9 = r12
            r12 = r11
            r11 = r2
            r2 = r9
            goto L5b
        L48:
            kotlin.ResultKt.throwOnFailure(r12)
            r6.a = r10
            r6.b = r11
            r6.e = r4
            java.lang.Object r12 = r10.a(r11, r6)
            if (r12 != r1) goto L58
            goto L81
        L58:
            r2 = r12
            r12 = r11
            r11 = r10
        L5b:
            ads_mobile_sdk.v01 r2 = (ads_mobile_sdk.v01) r2
            boolean r4 = r2 instanceof ads_mobile_sdk.i01
            if (r4 == 0) goto L64
            ads_mobile_sdk.i01 r2 = (ads_mobile_sdk.i01) r2
            return r2
        L64:
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2, r8)
            ads_mobile_sdk.q01 r2 = (ads_mobile_sdk.q01) r2
            java.lang.Object r2 = r2.b
            ads_mobile_sdk.f81 r2 = (ads_mobile_sdk.f81) r2
            r4 = r3
            r3 = r2
            ads_mobile_sdk.e01 r2 = r11.p
            r6.a = r11
            r6.b = r12
            r6.e = r4
            r5 = 0
            r7 = 30
            r4 = 0
            java.lang.Object r12 = ads_mobile_sdk.e01.a(r2, r3, r4, r5, r6, r7)
            if (r12 != r1) goto L82
        L81:
            return r1
        L82:
            ads_mobile_sdk.v01 r12 = (ads_mobile_sdk.v01) r12
            boolean r1 = r12 instanceof ads_mobile_sdk.i01
            if (r1 == 0) goto L8b
            ads_mobile_sdk.i01 r12 = (ads_mobile_sdk.i01) r12
            return r12
        L8b:
            kotlin.jvm.internal.Intrinsics.checkNotNull(r12, r8)
            ads_mobile_sdk.q01 r12 = (ads_mobile_sdk.q01) r12
            java.lang.Object r12 = r12.b
            ads_mobile_sdk.h81 r12 = (ads_mobile_sdk.h81) r12
            ads_mobile_sdk.p53 r12 = r12.d
            if (r12 == 0) goto L9d
            java.lang.String r12 = ads_mobile_sdk.p53.a(r12)
            goto L9f
        L9d:
            java.lang.String r12 = ""
        L9f:
            com.google.gson.Gson r1 = new com.google.gson.Gson     // Catch: com.google.gson.JsonSyntaxException -> Lbb
            r1.<init>()     // Catch: com.google.gson.JsonSyntaxException -> Lbb
            java.lang.Class<com.google.gson.JsonObject> r2 = com.google.gson.JsonObject.class
            java.lang.Object r12 = r1.fromJson(r12, r2)     // Catch: com.google.gson.JsonSyntaxException -> Lbb
            com.google.gson.JsonObject r12 = (com.google.gson.JsonObject) r12     // Catch: com.google.gson.JsonSyntaxException -> Lbb
            if (r12 != 0) goto Lb6
            ads_mobile_sdk.m01 r11 = new ads_mobile_sdk.m01     // Catch: com.google.gson.JsonSyntaxException -> Lbb
            ads_mobile_sdk.kk1 r12 = ads_mobile_sdk.kk1.a     // Catch: com.google.gson.JsonSyntaxException -> Lbb
            r11.<init>(r0, r12)     // Catch: com.google.gson.JsonSyntaxException -> Lbb
            return r11
        Lb6:
            ads_mobile_sdk.v01 r11 = r11.a(r12)     // Catch: com.google.gson.JsonSyntaxException -> Lbb
            return r11
        Lbb:
            ads_mobile_sdk.m01 r11 = new ads_mobile_sdk.m01
            ads_mobile_sdk.kk1 r12 = ads_mobile_sdk.kk1.a
            r11.<init>(r0, r12)
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.o00.b(com.google.android.libraries.ads.mobile.sdk.internal.initialization.ConfigLoaderRequest, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0088, code lost:
    
        if (r14 >= 0) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00c7, code lost:
    
        if (kotlinx.coroutines.DelayKt.m2937delayVtjQ1oo(r5, r1) != r2) goto L13;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00c7 -> B:13:0x0038). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object a(ads_mobile_sdk.o00 r12, com.google.android.libraries.ads.mobile.sdk.internal.initialization.ConfigLoaderRequest r13, kotlin.coroutines.Continuation r14) {
        /*
            Method dump skipped, instruction units count: 225
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.o00.a(ads_mobile_sdk.o00, com.google.android.libraries.ads.mobile.sdk.internal.initialization.ConfigLoaderRequest, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object b(java.lang.String r9, kotlin.coroutines.Continuation r10) {
        /*
            r8 = this;
            boolean r0 = r10 instanceof ads_mobile_sdk.n00
            if (r0 == 0) goto L13
            r0 = r10
            ads_mobile_sdk.n00 r0 = (ads_mobile_sdk.n00) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.n00 r0 = new ads_mobile_sdk.n00
            r0.<init>(r8, r10)
        L18:
            java.lang.Object r10 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3c
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.ResultKt.throwOnFailure(r10)
            return r10
        L2c:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L34:
            java.lang.String r9 = r0.b
            ads_mobile_sdk.o00 r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r10)
            goto L6c
        L3c:
            kotlin.ResultKt.throwOnFailure(r10)
            ads_mobile_sdk.ex0 r10 = r8.m
            r10.getClass()
            kotlin.time.Duration$Companion r2 = kotlin.time.Duration.Companion
            kotlin.time.DurationUnit r2 = kotlin.time.DurationUnit.SECONDS
            java.lang.String r5 = "key"
            r6 = 60
            java.lang.String r7 = "gads:cld_fetch_delay_on_cache_hit"
            kotlin.time.Duration r2 = ads_mobile_sdk.wm2.a(r6, r2, r7, r5)
            ads_mobile_sdk.ur r5 = ads_mobile_sdk.yr.l
            java.lang.Object r10 = r10.a(r7, r2, r5)
            kotlin.time.Duration r10 = (kotlin.time.Duration) r10
            long r5 = r10.m2906unboximpl()
            r0.a = r8
            r0.b = r9
            r0.e = r4
            java.lang.Object r10 = kotlinx.coroutines.DelayKt.m2937delayVtjQ1oo(r5, r0)
            if (r10 != r1) goto L6b
            goto L81
        L6b:
            r2 = r8
        L6c:
            r10 = 0
            r0.a = r10
            r0.b = r10
            r0.e = r3
            kotlin.coroutines.CoroutineContext r3 = r2.c
            ads_mobile_sdk.g00 r4 = new ads_mobile_sdk.g00
            r5 = 0
            r4.<init>(r2, r5, r9, r10)
            java.lang.Object r9 = kotlinx.coroutines.BuildersKt.withContext(r3, r4, r0)
            if (r9 != r1) goto L82
        L81:
            return r1
        L82:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.o00.b(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object a(ads_mobile_sdk.o00 r9, kotlin.coroutines.Continuation r10) {
        /*
            Method dump skipped, instruction units count: 245
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.o00.a(ads_mobile_sdk.o00, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(com.google.android.libraries.ads.mobile.sdk.internal.initialization.ConfigLoaderRequest r9, kotlin.coroutines.Continuation r10) {
        /*
            Method dump skipped, instruction units count: 420
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.o00.a(com.google.android.libraries.ads.mobile.sdk.internal.initialization.ConfigLoaderRequest, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final String a(String str) {
        String strO = this.m.o();
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (StringsKt__StringsKt.contains$default((CharSequence) strO, cCharAt, false, 2, (Object) null)) {
                String string = Integer.toString(cCharAt, CharsKt__CharJVMKt.checkRadix(16));
                Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                sb.append("\\x{" + string + "}");
            } else {
                sb.append(cCharAt);
            }
        }
        String string2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string2, "toString(...)");
        return string2;
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(kotlin.jvm.functions.Function1 r20, kotlin.coroutines.Continuation r21) {
        /*
            Method dump skipped, instruction units count: 307
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.o00.a(kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.gj1
    public final Object a(BaseRequest baseRequest, Continuation continuation) {
        return a(this, baseRequest, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object a(ads_mobile_sdk.o00 r4, com.google.android.libraries.ads.mobile.sdk.common.BaseRequest r5, kotlin.coroutines.Continuation r6) {
        /*
            boolean r0 = r6 instanceof ads_mobile_sdk.h00
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.h00 r0 = (ads_mobile_sdk.h00) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            ads_mobile_sdk.h00 r0 = new ads_mobile_sdk.h00
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r6)
            goto L41
        L29:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L31:
            kotlin.ResultKt.throwOnFailure(r6)
            java.lang.String r5 = r5.getAdUnitId()
            r0.c = r3
            java.lang.Object r6 = r4.b(r5, r0)
            if (r6 != r1) goto L41
            return r1
        L41:
            java.lang.Boolean r6 = (java.lang.Boolean) r6
            r6.getClass()
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.o00.a(ads_mobile_sdk.o00, com.google.android.libraries.ads.mobile.sdk.common.BaseRequest, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:116:0x0315  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final ads_mobile_sdk.v01 a(com.google.gson.JsonObject r18) {
        /*
            Method dump skipped, instruction units count: 1248
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.o00.a(com.google.gson.JsonObject):ads_mobile_sdk.v01");
    }

    public final String a(String adUnitId, boolean z) {
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        String strA = a(adUnitId);
        String string = "^" + strA + "/?$";
        String string2 = "^" + strA + "/(//)*[^/]";
        if (z) {
            Regex regex = new Regex("\\d+");
            MatchResult matchResultFind$default = Regex.find$default(regex, string, 0, 2, null);
            if (matchResultFind$default != null) {
                string = StringsKt__StringsKt.replaceRange(string, matchResultFind$default.getRange(), matchResultFind$default.getValue() + "(,\\d+)?").toString();
            }
            MatchResult matchResultFind$default2 = Regex.find$default(regex, string2, 0, 2, null);
            if (matchResultFind$default2 != null) {
                string2 = StringsKt__StringsKt.replaceRange(string2, matchResultFind$default2.getRange(), matchResultFind$default2.getValue() + "(,\\d+)?").toString();
            }
        }
        return ((Object) string) + "|" + ((Object) string2);
    }
}
