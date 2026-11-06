package ads_mobile_sdk;

import android.os.SystemClock;
import com.google.gson.JsonObject;
import com.ironsource.C3522b4;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class ou extends fp2 implements rh3 {
    public final tx c;
    public final CoroutineScope d;
    public final g83 e;
    public final ex0 f;
    public final f0 g;
    public final Mutex h;
    public hu i;
    public iu j;
    public Job k;

    public ou(tx clock, CoroutineScope backgroundScope, g83 rootTraceCreator, ex0 flags, f0 activityTracker) {
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        this.c = clock;
        this.d = backgroundScope;
        this.e = rootTraceCreator;
        this.f = flags;
        this.g = activityTracker;
        this.h = MutexKt.Mutex$default(false, 1, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object c(ads_mobile_sdk.ou r4, kotlin.coroutines.Continuation r5) {
        /*
            boolean r0 = r5 instanceof ads_mobile_sdk.nu
            if (r0 == 0) goto L13
            r0 = r5
            ads_mobile_sdk.nu r0 = (ads_mobile_sdk.nu) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            ads_mobile_sdk.nu r0 = new ads_mobile_sdk.nu
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r5)
            goto L45
        L29:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L31:
            kotlin.ResultKt.throwOnFailure(r5)
            ads_mobile_sdk.qu r5 = r4.i()
            boolean r5 = r5.e
            if (r5 == 0) goto L45
            r0.c = r3
            java.lang.Object r4 = r4.v(r0)
            if (r4 != r1) goto L45
            return r1
        L45:
            ads_mobile_sdk.q01 r4 = new ads_mobile_sdk.q01
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            r4.<init>(r5)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ou.c(ads_mobile_sdk.ou, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.rh3
    public final Object b(Continuation continuation) {
        return a(this, continuation);
    }

    public final gf3 k() {
        ff3 builder = gf3.v();
        Intrinsics.checkNotNullExpressionValue(builder, "newBuilder(...)");
        Intrinsics.checkNotNullParameter(builder, "builder");
        builder.a(i().b);
        builder.b(i().d);
        vz0 vz0VarB = builder.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
        return (gf3) vz0VarB;
    }

    @Override // ads_mobile_sdk.nc1
    public Object u(Continuation continuation) {
        return c(this, continuation);
    }

    public Object v(Continuation continuation) {
        return b(this, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object b(ads_mobile_sdk.ou r11, kotlin.coroutines.Continuation r12) {
        /*
            Method dump skipped, instruction units count: 411
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ou.b(ads_mobile_sdk.ou, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final q11 a(hu huVar, iu iuVar) {
        return (huVar == null || huVar.a()) ? (huVar != null && huVar.a() && i().d) ? q11.STALE : iuVar != null ? q11.UPDATING : q11.EXPIRED : q11.CACHED;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:115:0x01f9 A[Catch: all -> 0x01d3, TRY_LEAVE, TryCatch #9 {all -> 0x01d3, blocks: (B:93:0x01c0, B:95:0x01c7, B:97:0x01cb, B:99:0x01cf, B:102:0x01d6, B:104:0x01da, B:106:0x01de, B:108:0x01e2, B:109:0x01e3, B:110:0x01e8, B:111:0x01e9, B:112:0x01f0, B:113:0x01f1, B:114:0x01f8, B:115:0x01f9), top: B:217:0x01c0 }] */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0255 A[Catch: all -> 0x024d, TryCatch #6 {all -> 0x024d, blocks: (B:125:0x022d, B:127:0x023e, B:129:0x0244, B:134:0x0250, B:135:0x0255, B:137:0x0259, B:140:0x0260, B:141:0x0265), top: B:213:0x022d, outer: #14 }] */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0265 A[Catch: all -> 0x024d, TRY_LEAVE, TryCatch #6 {all -> 0x024d, blocks: (B:125:0x022d, B:127:0x023e, B:129:0x0244, B:134:0x0250, B:135:0x0255, B:137:0x0259, B:140:0x0260, B:141:0x0265), top: B:213:0x022d, outer: #14 }] */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0293 A[Catch: all -> 0x029d, Exception -> 0x029f, TryCatch #7 {Exception -> 0x029f, blocks: (B:143:0x028f, B:145:0x0293, B:150:0x02a1, B:152:0x02a5, B:163:0x02d0, B:164:0x02d5), top: B:214:0x028f }] */
    /* JADX WARN: Removed duplicated region for block: B:150:0x02a1 A[Catch: all -> 0x029d, Exception -> 0x029f, TryCatch #7 {Exception -> 0x029f, blocks: (B:143:0x028f, B:145:0x0293, B:150:0x02a1, B:152:0x02a5, B:163:0x02d0, B:164:0x02d5), top: B:214:0x028f }] */
    /* JADX WARN: Removed duplicated region for block: B:168:0x02f0 A[Catch: all -> 0x02c8, TRY_LEAVE, TryCatch #3 {all -> 0x02c8, blocks: (B:15:0x003d, B:156:0x02c1, B:166:0x02ec, B:168:0x02f0, B:165:0x02d6), top: B:205:0x002c }] */
    /* JADX WARN: Removed duplicated region for block: B:178:0x030a A[Catch: all -> 0x0316, TryCatch #11 {all -> 0x0316, blocks: (B:176:0x0303, B:178:0x030a, B:180:0x030e, B:182:0x0312, B:185:0x0319, B:187:0x031d, B:189:0x0321, B:191:0x0325, B:192:0x0326, B:193:0x032b, B:194:0x032c, B:195:0x0333, B:196:0x0334, B:197:0x033b, B:198:0x033c), top: B:219:0x0303 }] */
    /* JADX WARN: Removed duplicated region for block: B:198:0x033c A[Catch: all -> 0x0316, TRY_LEAVE, TryCatch #11 {all -> 0x0316, blocks: (B:176:0x0303, B:178:0x030a, B:180:0x030e, B:182:0x0312, B:185:0x0319, B:187:0x031d, B:189:0x0321, B:191:0x0325, B:192:0x0326, B:193:0x032b, B:194:0x032c, B:195:0x0333, B:196:0x0334, B:197:0x033b, B:198:0x033c), top: B:219:0x0303 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0111 A[Catch: all -> 0x0109, TryCatch #4 {all -> 0x0109, blocks: (B:43:0x00e9, B:45:0x00fa, B:47:0x0100, B:52:0x010c, B:53:0x0111, B:55:0x0115, B:58:0x011c, B:59:0x0121), top: B:210:0x00e9, outer: #12 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0121 A[Catch: all -> 0x0109, TRY_LEAVE, TryCatch #4 {all -> 0x0109, blocks: (B:43:0x00e9, B:45:0x00fa, B:47:0x0100, B:52:0x010c, B:53:0x0111, B:55:0x0115, B:58:0x011c, B:59:0x0121), top: B:210:0x00e9, outer: #12 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x014f A[Catch: all -> 0x0159, Exception -> 0x015b, TryCatch #10 {Exception -> 0x015b, blocks: (B:61:0x014b, B:63:0x014f, B:68:0x015d, B:70:0x0161, B:81:0x018c, B:82:0x0191), top: B:218:0x014b }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x015d A[Catch: all -> 0x0159, Exception -> 0x015b, TryCatch #10 {Exception -> 0x015b, blocks: (B:61:0x014b, B:63:0x014f, B:68:0x015d, B:70:0x0161, B:81:0x018c, B:82:0x0191), top: B:218:0x014b }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01ac A[Catch: all -> 0x0184, TRY_LEAVE, TryCatch #1 {all -> 0x0184, blocks: (B:27:0x0071, B:74:0x017d, B:84:0x01a8, B:86:0x01ac, B:83:0x0192), top: B:205:0x002c }] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01c7 A[Catch: all -> 0x01d3, TryCatch #9 {all -> 0x01d3, blocks: (B:93:0x01c0, B:95:0x01c7, B:97:0x01cb, B:99:0x01cf, B:102:0x01d6, B:104:0x01da, B:106:0x01de, B:108:0x01e2, B:109:0x01e3, B:110:0x01e8, B:111:0x01e9, B:112:0x01f0, B:113:0x01f1, B:114:0x01f8, B:115:0x01f9), top: B:217:0x01c0 }] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v10, types: [T, ads_mobile_sdk.gu, ads_mobile_sdk.hu] */
    /* JADX WARN: Type inference failed for: r10v11, types: [T, ads_mobile_sdk.gu, ads_mobile_sdk.iu] */
    /* JADX WARN: Type inference failed for: r10v12, types: [T, ads_mobile_sdk.iu] */
    /* JADX WARN: Type inference failed for: r10v16 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v24, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r10v26, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r10v3, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r10v4, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r10v9, types: [T, ads_mobile_sdk.q11] */
    /* JADX WARN: Type inference failed for: r1v24, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v25, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v26, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v39, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v54 */
    /* JADX WARN: Type inference failed for: r1v55 */
    /* JADX WARN: Type inference failed for: r1v56 */
    /* JADX WARN: Type inference failed for: r1v57 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v2, types: [ads_mobile_sdk.ku, kotlin.coroutines.Continuation] */
    /* JADX WARN: Type inference failed for: r2v20, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r2v22, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v27 */
    /* JADX WARN: Type inference failed for: r2v28 */
    /* JADX WARN: Type inference failed for: r2v29 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v30 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v17, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r3v18, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v21 */
    /* JADX WARN: Type inference failed for: r3v22 */
    /* JADX WARN: Type inference failed for: r3v23 */
    /* JADX WARN: Type inference failed for: r3v24 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v21 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r7v10, types: [T, ads_mobile_sdk.iu] */
    /* JADX WARN: Type inference failed for: r7v7, types: [T, ads_mobile_sdk.q11] */
    /* JADX WARN: Type inference failed for: r7v8, types: [T, ads_mobile_sdk.gu, ads_mobile_sdk.hu] */
    /* JADX WARN: Type inference failed for: r7v9, types: [T, ads_mobile_sdk.gu, ads_mobile_sdk.iu] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v13, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARN: Type inference failed for: r8v16 */
    /* JADX WARN: Type inference failed for: r8v17 */
    /* JADX WARN: Type inference failed for: r8v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r8v5, types: [ads_mobile_sdk.rr3, ads_mobile_sdk.tu2, java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r8v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Type inference failed for: r9v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r9v3, types: [ads_mobile_sdk.rr3, java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r9v4, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Type inference failed for: r9v8, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r9v9 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.ou r16, kotlin.coroutines.Continuation r17) {
        /*
            Method dump skipped, instruction units count: 835
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ou.a(ads_mobile_sdk.ou, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final qu i() {
        ex0 flags = this.f;
        y11 signalId = f();
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(signalId, "signalId");
        flags.getClass();
        JsonObject defaultValue = ex0.H;
        Intrinsics.checkNotNullParameter("gads:caching_signal_source_ttls_ms", C3522b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        pr prVar = yr.i;
        JsonObject jsonObject = (JsonObject) flags.a("gads:caching_signal_source_ttls_ms", defaultValue, prVar);
        Duration.Companion companion = Duration.Companion;
        long jA = fk3.a(jsonObject, defaultValue, signalId, ((Duration) flags.a("gads:default_signal_ttl", wm2.a(30, DurationUnit.SECONDS, "gads:default_signal_ttl", C3522b4.i.W), yr.j)).m2906unboximpl());
        JsonObject defaultValue2 = ex0.E;
        Intrinsics.checkNotNullParameter("gads:caching_signal_source_automatic_refreshes", C3522b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue2, "defaultValue");
        boolean zA = fk3.a((JsonObject) flags.a("gads:caching_signal_source_automatic_refreshes", defaultValue2, prVar), defaultValue2, signalId);
        JsonObject defaultValue3 = ex0.G;
        Intrinsics.checkNotNullParameter("gads:caching_signal_source_refresh_buffers_ms", C3522b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue3, "defaultValue");
        long jA2 = fk3.a((JsonObject) flags.a("gads:caching_signal_source_refresh_buffers_ms", defaultValue3, prVar), defaultValue3, signalId, DurationKt.toDuration(0, DurationUnit.MILLISECONDS));
        JsonObject defaultValue4 = ex0.F;
        Intrinsics.checkNotNullParameter("gads:caching_signal_source_stale_results_enabled", C3522b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue4, "defaultValue");
        boolean zA2 = fk3.a((JsonObject) flags.a("gads:caching_signal_source_stale_results_enabled", defaultValue4, prVar), defaultValue4, signalId);
        JsonObject defaultValue5 = ex0.I;
        Intrinsics.checkNotNullParameter("gads:caching_signal_source_initialization_enabled", C3522b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue5, "defaultValue");
        boolean zA3 = fk3.a((JsonObject) flags.a("gads:caching_signal_source_initialization_enabled", defaultValue5, prVar), defaultValue5, signalId);
        JsonObject defaultValue6 = ex0.J;
        Intrinsics.checkNotNullParameter("gads:caching_signal_source_background_refresh_enabled", C3522b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue6, "defaultValue");
        return new qu(jA, zA, jA2, zA2, zA3, fk3.a((JsonObject) flags.a("gads:caching_signal_source_background_refresh_enabled", defaultValue6, prVar), defaultValue6, signalId));
    }

    public final void l() {
        long jM2896minusLRDsOJo;
        if ((!this.g.i() || i().f) && i().b && this.k == null) {
            hu huVar = this.i;
            if (huVar != null) {
                long j = huVar.b;
                Duration.Companion companion = Duration.Companion;
                this.c.getClass();
                jM2896minusLRDsOJo = Duration.m2896minusLRDsOJo(j, DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS));
            } else {
                jM2896minusLRDsOJo = i().a;
            }
            this.k = BuildersKt__Builders_commonKt.launch$default(this.d, null, null, new mu(Duration.m2896minusLRDsOJo(jM2896minusLRDsOJo, i().c), this, null), 3, null);
        }
    }

    public final iu g() {
        CoroutineScope coroutineScope = this.d;
        ju block = new ju(this, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        return new iu(BuildersKt__Builders_commonKt.async$default(coroutineScope, context, null, new vs3(block, null), 2, null), this.c, Duration.Companion.m2908getINFINITEUwyO8pc());
    }
}
