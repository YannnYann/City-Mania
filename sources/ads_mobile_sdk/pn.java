package ads_mobile_sdk;

import com.google.gson.JsonObject;
import com.ironsource.C3522b4;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public final class pn {
    public final CoroutineContext a;
    public final mm b;
    public final tx c;
    public final ex0 d;
    public boolean e;
    public final Mutex f;
    public jm g;
    public JsonObject h;

    public pn(CoroutineContext backgroundContext, mm appSettingsDataStore, tx clock, ex0 flags) {
        Intrinsics.checkNotNullParameter(backgroundContext, "backgroundContext");
        Intrinsics.checkNotNullParameter(appSettingsDataStore, "appSettingsDataStore");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.a = backgroundContext;
        this.b = appSettingsDataStore;
        this.c = clock;
        this.d = flags;
        this.f = MutexKt.Mutex(false);
        this.g = jm.E();
        this.h = new JsonObject();
    }

    public static List a(Collection adapterList, ex0 flags) {
        Intrinsics.checkNotNullParameter(adapterList, "adapterList");
        Intrinsics.checkNotNullParameter(flags, "flags");
        ArrayList arrayList = new ArrayList();
        Iterator it = adapterList.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            flags.getClass();
            Map defaultValue = MapsKt__MapsKt.mapOf(TuplesKt.to("com\\.google\\.ads\\.mediation\\.inmobi\\.InMobiAdapter", "com.google.ads.mediation.inmobi.InMobiMediationAdapter"), TuplesKt.to("com\\.google\\.ads\\.mediation\\.imobile\\.IMobileAdapter", "com.google.ads.mediation.imobile.IMobileMediationAdapter"), TuplesKt.to("com\\.google\\.ads\\.mediation\\.facebook\\.FacebookAdapter", "com.google.ads.mediation.facebook.FacebookMediationAdapter"), TuplesKt.to("com\\.applovin\\.mediation\\.Applovin.*", "com.google.ads.mediation.applovin.AppLovinMediationAdapter"), TuplesKt.to("com\\.vungle\\.mediation\\.Vungle.*", "com.google.ads.mediation.vungle.VungleMediationAdapter"), TuplesKt.to("com\\.google\\.android\\.gms\\.ads\\.mediation\\.ZucksAdapter", "com.google.ads.mediation.zucks.ZucksMediationAdapter"), TuplesKt.to("com\\.google\\.ads\\.mediation\\.unity\\.UnityAdapter", "com.google.ads.mediation.unity.UnityMediationAdapter"), TuplesKt.to("com.google.ads.mediation.chartboost.ChartboostAdapter", "com.google.ads.mediation.chartboost.ChartboostMediationAdapter"), TuplesKt.to("com\\.google\\.ads\\.mediation\\.mytarget\\.MyTarget.*", "com.google.ads.mediation.mytarget.MyTargetMediationAdapter"), TuplesKt.to("jp\\.maio\\.sdk\\.android\\.mediation\\.admob\\.adapter\\..*", "com.google.ads.mediation.maio.MaioMediationAdapter"), TuplesKt.to("com\\.google\\.ads\\.mediation\\.ironsource\\.IronSource.*", "com.google.ads.mediation.ironsource.IronSourceMediationAdapter"), TuplesKt.to("com\\.google\\.android\\.libraries\\.ads\\.mobile\\.maitier\\.scenarios\\.initialization\\.Mismatched.*", "com.google.android.libraries.ads.mobile.maitier.scenarios.initialization.MismatchedInitializingAdapter"));
            Intrinsics.checkNotNullParameter("gads:waterfall_to_init_regex_map", C3522b4.i.W);
            Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
            Map map = (Map) flags.a("gads:waterfall_to_init_regex_map", defaultValue, yr.p);
            ArrayList arrayList2 = new ArrayList();
            for (Map.Entry entry : map.entrySet()) {
                String str2 = new Regex((String) entry.getKey()).matches(str) ? (String) entry.getValue() : null;
                if (str2 != null) {
                    arrayList2.add(str2);
                }
            }
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, arrayList2);
        }
        return CollectionsKt___CollectionsKt.plus(adapterList, (Iterable) arrayList);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object b(ads_mobile_sdk.pn r9, kotlin.coroutines.Continuation r10) {
        /*
            boolean r0 = r10 instanceof ads_mobile_sdk.ym
            if (r0 == 0) goto L13
            r0 = r10
            ads_mobile_sdk.ym r0 = (ads_mobile_sdk.ym) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.ym r0 = new ads_mobile_sdk.ym
            r0.<init>(r9, r10)
        L18:
            java.lang.Object r10 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 3
            r4 = 2
            r5 = 1
            r6 = 0
            if (r2 == 0) goto L4d
            if (r2 == r5) goto L43
            if (r2 == r4) goto L3d
            if (r2 != r3) goto L35
            kotlinx.coroutines.sync.Mutex r9 = r0.b
            ads_mobile_sdk.pn r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r10)
            goto La1
        L35:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L3d:
            ads_mobile_sdk.pn r9 = r0.a
            kotlin.ResultKt.throwOnFailure(r10)
            goto L90
        L43:
            kotlinx.coroutines.sync.Mutex r9 = r0.b
            ads_mobile_sdk.pn r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r10)
            r10 = r9
            r9 = r2
            goto L5f
        L4d:
            kotlin.ResultKt.throwOnFailure(r10)
            kotlinx.coroutines.sync.Mutex r10 = r9.f
            r0.a = r9
            r0.b = r10
            r0.e = r5
            java.lang.Object r2 = r10.lock(r6, r0)
            if (r2 != r1) goto L5f
            goto L9e
        L5f:
            ads_mobile_sdk.jm r2 = r9.g     // Catch: java.lang.Throwable -> Lac
            r10.unlock(r6)
            ads_mobile_sdk.ex0 r10 = r9.d
            r10.getClass()
            java.lang.String r5 = "key"
            java.lang.String r7 = "gads:app_settings_expiry_check_in_getter:enabled"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r5)
            java.lang.Boolean r5 = java.lang.Boolean.FALSE
            ads_mobile_sdk.ir r8 = ads_mobile_sdk.yr.b
            java.lang.Object r10 = r10.a(r7, r5, r8)
            java.lang.Boolean r10 = (java.lang.Boolean) r10
            boolean r10 = r10.booleanValue()
            if (r10 == 0) goto L90
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2)
            r0.a = r9
            r0.b = r6
            r0.e = r4
            java.lang.Object r10 = r9.a(r2, r0)
            if (r10 != r1) goto L90
            goto L9e
        L90:
            kotlinx.coroutines.sync.Mutex r10 = r9.f
            r0.a = r9
            r0.b = r10
            r0.e = r3
            java.lang.Object r0 = r10.lock(r6, r0)
            if (r0 != r1) goto L9f
        L9e:
            return r1
        L9f:
            r0 = r9
            r9 = r10
        La1:
            com.google.gson.JsonObject r10 = r0.h     // Catch: java.lang.Throwable -> La7
            r9.unlock(r6)
            return r10
        La7:
            r10 = move-exception
            r9.unlock(r6)
            throw r10
        Lac:
            r9 = move-exception
            r10.unlock(r6)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.pn.b(ads_mobile_sdk.pn, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object c(java.lang.String r6, java.lang.String r7, kotlin.coroutines.Continuation r8) {
        /*
            Method dump skipped, instruction units count: 291
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.pn.c(java.lang.String, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.pn r9, kotlin.coroutines.Continuation r10) {
        /*
            boolean r0 = r10 instanceof ads_mobile_sdk.xm
            if (r0 == 0) goto L13
            r0 = r10
            ads_mobile_sdk.xm r0 = (ads_mobile_sdk.xm) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.xm r0 = new ads_mobile_sdk.xm
            r0.<init>(r9, r10)
        L18:
            java.lang.Object r10 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 3
            r4 = 2
            r5 = 1
            r6 = 0
            if (r2 == 0) goto L4d
            if (r2 == r5) goto L43
            if (r2 == r4) goto L3d
            if (r2 != r3) goto L35
            kotlinx.coroutines.sync.Mutex r9 = r0.b
            ads_mobile_sdk.pn r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r10)
            goto La1
        L35:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L3d:
            ads_mobile_sdk.pn r9 = r0.a
            kotlin.ResultKt.throwOnFailure(r10)
            goto L90
        L43:
            kotlinx.coroutines.sync.Mutex r9 = r0.b
            ads_mobile_sdk.pn r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r10)
            r10 = r9
            r9 = r2
            goto L5f
        L4d:
            kotlin.ResultKt.throwOnFailure(r10)
            kotlinx.coroutines.sync.Mutex r10 = r9.f
            r0.a = r9
            r0.b = r10
            r0.e = r5
            java.lang.Object r2 = r10.lock(r6, r0)
            if (r2 != r1) goto L5f
            goto L9e
        L5f:
            ads_mobile_sdk.jm r2 = r9.g     // Catch: java.lang.Throwable -> Laf
            r10.unlock(r6)
            ads_mobile_sdk.ex0 r10 = r9.d
            r10.getClass()
            java.lang.String r5 = "key"
            java.lang.String r7 = "gads:app_settings_expiry_check_in_getter:enabled"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r5)
            java.lang.Boolean r5 = java.lang.Boolean.FALSE
            ads_mobile_sdk.ir r8 = ads_mobile_sdk.yr.b
            java.lang.Object r10 = r10.a(r7, r5, r8)
            java.lang.Boolean r10 = (java.lang.Boolean) r10
            boolean r10 = r10.booleanValue()
            if (r10 == 0) goto L90
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2)
            r0.a = r9
            r0.b = r6
            r0.e = r4
            java.lang.Object r10 = r9.a(r2, r0)
            if (r10 != r1) goto L90
            goto L9e
        L90:
            kotlinx.coroutines.sync.Mutex r10 = r9.f
            r0.a = r9
            r0.b = r10
            r0.e = r3
            java.lang.Object r0 = r10.lock(r6, r0)
            if (r0 != r1) goto L9f
        L9e:
            return r1
        L9f:
            r0 = r9
            r9 = r10
        La1:
            ads_mobile_sdk.jm r10 = r0.g     // Catch: java.lang.Throwable -> Laa
            r9.unlock(r6)
            kotlin.jvm.internal.Intrinsics.checkNotNull(r10)
            return r10
        Laa:
            r10 = move-exception
            r9.unlock(r6)
            throw r10
        Laf:
            r9 = move-exception
            r10.unlock(r6)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.pn.a(ads_mobile_sdk.pn, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object c(ads_mobile_sdk.pn r5, kotlin.coroutines.Continuation r6) {
        /*
            boolean r0 = r6 instanceof ads_mobile_sdk.in
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.in r0 = (ads_mobile_sdk.in) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.in r0 = new ads_mobile_sdk.in
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
            ads_mobile_sdk.pn r0 = r0.a
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
            kotlinx.coroutines.sync.Mutex r6 = r5.f
            r0.a = r5
            r0.b = r6
            r0.e = r3
            java.lang.Object r0 = r6.lock(r4, r0)
            if (r0 != r1) goto L4a
            return r1
        L4a:
            ads_mobile_sdk.ex0 r0 = r5.d     // Catch: java.lang.Throwable -> L57
            boolean r0 = r0.O()     // Catch: java.lang.Throwable -> L57
            if (r0 == 0) goto L59
            boolean r5 = r5.e     // Catch: java.lang.Throwable -> L57
            if (r5 == 0) goto L59
            goto L5a
        L57:
            r5 = move-exception
            goto L62
        L59:
            r3 = 0
        L5a:
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r3)     // Catch: java.lang.Throwable -> L57
            r6.unlock(r4)
            return r5
        L62:
            r6.unlock(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.pn.c(ads_mobile_sdk.pn, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object b(java.lang.String r6, java.lang.String r7, kotlin.coroutines.Continuation r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof ads_mobile_sdk.dn
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.dn r0 = (ads_mobile_sdk.dn) r0
            int r1 = r0.g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.g = r1
            goto L18
        L13:
            ads_mobile_sdk.dn r0 = new ads_mobile_sdk.dn
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r8 = r0.e
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.g
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L3a
            if (r2 != r3) goto L32
            kotlinx.coroutines.sync.Mutex r6 = r0.d
            java.lang.String r7 = r0.c
            java.lang.String r1 = r0.b
            ads_mobile_sdk.pn r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r8)
            goto L69
        L32:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3a:
            kotlin.ResultKt.throwOnFailure(r8)
            if (r6 != 0) goto L40
            return r4
        L40:
            java.util.Locale r8 = java.util.Locale.ROOT
            java.lang.String r7 = r7.toLowerCase(r8)
            java.lang.String r2 = "toLowerCase(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r7, r2)
            java.lang.String r6 = r6.toLowerCase(r8)
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r6, r2)
            kotlinx.coroutines.sync.Mutex r8 = r5.f
            r0.a = r5
            r0.b = r7
            r0.c = r6
            r0.d = r8
            r0.g = r3
            java.lang.Object r0 = r8.lock(r4, r0)
            if (r0 != r1) goto L65
            return r1
        L65:
            r0 = r5
            r1 = r7
            r7 = r6
            r6 = r8
        L69:
            ads_mobile_sdk.jm r8 = r0.g     // Catch: java.lang.Throwable -> Lb1
            r6.unlock(r4)
            java.util.Map r6 = r8.x()
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r7)
            java.lang.String r2 = ","
            r0.append(r2)
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            java.lang.Object r6 = r6.get(r0)
            java.lang.String r6 = (java.lang.String) r6
            if (r6 == 0) goto L8f
            return r6
        L8f:
            kotlin.jvm.internal.Intrinsics.checkNotNull(r8)
            java.lang.String r6 = ads_mobile_sdk.vm.a(r8, r7, r1)
            java.util.Map r7 = r8.x()
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            r8.append(r6)
            r8.append(r2)
            r8.append(r1)
            java.lang.String r6 = r8.toString()
            java.lang.Object r6 = r7.get(r6)
            return r6
        Lb1:
            r7 = move-exception
            r6.unlock(r4)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.pn.b(java.lang.String, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(kotlin.coroutines.Continuation r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof ads_mobile_sdk.zm
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.zm r0 = (ads_mobile_sdk.zm) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.zm r0 = new ads_mobile_sdk.zm
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
            ads_mobile_sdk.pn r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r6)
            goto L4a
        L2e:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L36:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlinx.coroutines.sync.Mutex r6 = r5.f
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
            ads_mobile_sdk.jm r6 = r0.g     // Catch: java.lang.Throwable -> L5b
            java.lang.String r6 = r6.D()     // Catch: java.lang.Throwable -> L5b
            int r0 = r6.length()     // Catch: java.lang.Throwable -> L5b
            if (r0 != 0) goto L57
            r6 = r4
        L57:
            r1.unlock(r4)
            return r6
        L5b:
            r6 = move-exception
            r1.unlock(r4)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.pn.a(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x00f3, code lost:
    
        if (r14 == r1) goto L34;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(java.lang.String r12, java.lang.String r13, kotlin.coroutines.Continuation r14) {
        /*
            Method dump skipped, instruction units count: 413
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.pn.a(java.lang.String, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:132:0x03ba  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x03f2  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01e8  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(com.google.android.libraries.ads.mobile.sdk.initialization.AdapterInitializationConfig r23, kotlin.coroutines.Continuation r24) {
        /*
            Method dump skipped, instruction units count: 1070
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.pn.a(com.google.android.libraries.ads.mobile.sdk.initialization.AdapterInitializationConfig, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final boolean a(jm jmVar) {
        long jM2906unboximpl;
        String strB = jmVar.B();
        Intrinsics.checkNotNullExpressionValue(strB, "getAppSettingsJson(...)");
        if (strB.length() == 0) {
            return true;
        }
        ex0 ex0Var = this.d;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:use_server_defined_cld_ttl:enabled", C3522b4.i.W);
        if (((Boolean) ex0Var.a("gads:use_server_defined_cld_ttl:enabled", Boolean.FALSE, yr.b)).booleanValue()) {
            Duration.Companion companion = Duration.Companion;
            long jG = jmVar.G();
            DurationUnit durationUnit = DurationUnit.SECONDS;
            jM2906unboximpl = DurationKt.toDuration(jG, durationUnit);
            if (Duration.m2875equalsimpl0(jM2906unboximpl, companion.m2911getZEROUwyO8pc())) {
                ex0 ex0Var2 = this.d;
                ex0Var2.getClass();
                long duration = DurationKt.toDuration(-1, durationUnit);
                Intrinsics.checkNotNullParameter("gads:sdk_defined_cld_ttl_secs", C3522b4.i.W);
                jM2906unboximpl = ((Duration) ex0Var2.a("gads:sdk_defined_cld_ttl_secs", Duration.m2870boximpl(duration), yr.l)).m2906unboximpl();
            }
        } else {
            ex0 ex0Var3 = this.d;
            ex0Var3.getClass();
            Duration.Companion companion2 = Duration.Companion;
            jM2906unboximpl = ((Duration) ex0Var3.a("gads:sdk_defined_cld_ttl_secs", wm2.a(-1, DurationUnit.SECONDS, "gads:sdk_defined_cld_ttl_secs", C3522b4.i.W), yr.l)).m2906unboximpl();
        }
        if (Duration.m2871compareToLRDsOJo(jM2906unboximpl, Duration.Companion.m2911getZEROUwyO8pc()) > 0) {
            this.c.getClass();
            if (Duration.m2871compareToLRDsOJo(DurationKt.toDuration(System.currentTimeMillis() - jmVar.F(), DurationUnit.MILLISECONDS), jM2906unboximpl) > 0) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.jm r6, kotlin.coroutines.Continuation r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof ads_mobile_sdk.jn
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.jn r0 = (ads_mobile_sdk.jn) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.jn r0 = new ads_mobile_sdk.jn
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L36
            if (r2 != r3) goto L2e
            kotlinx.coroutines.sync.Mutex r6 = r0.b
            ads_mobile_sdk.pn r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r7)
            goto L4f
        L2e:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L36:
            kotlin.ResultKt.throwOnFailure(r7)
            boolean r6 = r5.a(r6)
            if (r6 != 0) goto L67
            kotlinx.coroutines.sync.Mutex r6 = r5.f
            r0.a = r5
            r0.b = r6
            r0.e = r3
            java.lang.Object r7 = r6.lock(r4, r0)
            if (r7 != r1) goto L4e
            return r1
        L4e:
            r0 = r5
        L4f:
            ads_mobile_sdk.jm r7 = ads_mobile_sdk.jm.E()     // Catch: java.lang.Throwable -> L62
            r0.g = r7     // Catch: java.lang.Throwable -> L62
            com.google.gson.JsonObject r7 = new com.google.gson.JsonObject     // Catch: java.lang.Throwable -> L62
            r7.<init>()     // Catch: java.lang.Throwable -> L62
            r0.h = r7     // Catch: java.lang.Throwable -> L62
            kotlin.Unit r7 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L62
            r6.unlock(r4)
            goto L67
        L62:
            r7 = move-exception
            r6.unlock(r4)
            throw r7
        L67:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.pn.a(ads_mobile_sdk.jm, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0075, code lost:
    
        if (kotlinx.coroutines.BuildersKt.withContext(r6, r8, r0) == r1) goto L25;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object a(ads_mobile_sdk.pn r5, com.google.gson.JsonObject r6, long r7, kotlin.coroutines.Continuation r9) {
        /*
            boolean r0 = r9 instanceof ads_mobile_sdk.kn
            if (r0 == 0) goto L13
            r0 = r9
            ads_mobile_sdk.kn r0 = (ads_mobile_sdk.kn) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.kn r0 = new ads_mobile_sdk.kn
            r0.<init>(r5, r9)
        L18:
            java.lang.Object r9 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3e
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.ResultKt.throwOnFailure(r9)
            goto L78
        L2c:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L34:
            ads_mobile_sdk.jm r5 = r0.b
            ads_mobile_sdk.pn r6 = r0.a
            kotlin.ResultKt.throwOnFailure(r9)
            r7 = r5
            r5 = r6
            goto L63
        L3e:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlin.Pair r6 = ads_mobile_sdk.ma1.a(r6, r7)
            if (r6 != 0) goto L4a
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        L4a:
            java.lang.Object r7 = r6.component1()
            ads_mobile_sdk.jm r7 = (ads_mobile_sdk.jm) r7
            java.lang.Object r6 = r6.component2()
            com.google.gson.JsonObject r6 = (com.google.gson.JsonObject) r6
            r0.a = r5
            r0.b = r7
            r0.e = r4
            java.lang.Object r6 = r5.a(r7, r6, r0)
            if (r6 != r1) goto L63
            goto L77
        L63:
            kotlin.coroutines.CoroutineContext r6 = r5.a
            ads_mobile_sdk.ln r8 = new ads_mobile_sdk.ln
            r9 = 0
            r8.<init>(r5, r7, r9)
            r0.a = r9
            r0.b = r9
            r0.e = r3
            java.lang.Object r5 = kotlinx.coroutines.BuildersKt.withContext(r6, r8, r0)
            if (r5 != r1) goto L78
        L77:
            return r1
        L78:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.pn.a(ads_mobile_sdk.pn, com.google.gson.JsonObject, long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.jm r6, com.google.gson.JsonObject r7, kotlin.coroutines.Continuation r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof ads_mobile_sdk.mn
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.mn r0 = (ads_mobile_sdk.mn) r0
            int r1 = r0.g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.g = r1
            goto L18
        L13:
            ads_mobile_sdk.mn r0 = new ads_mobile_sdk.mn
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r8 = r0.e
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.g
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L3c
            if (r2 != r3) goto L34
            kotlinx.coroutines.sync.Mutex r6 = r0.d
            com.google.gson.JsonObject r7 = r0.c
            ads_mobile_sdk.jm r1 = r0.b
            ads_mobile_sdk.pn r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r8)
            r8 = r6
            r6 = r1
            goto L53
        L34:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3c:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.sync.Mutex r8 = r5.f
            r0.a = r5
            r0.b = r6
            r0.c = r7
            r0.d = r8
            r0.g = r3
            java.lang.Object r0 = r8.lock(r4, r0)
            if (r0 != r1) goto L52
            return r1
        L52:
            r0 = r5
        L53:
            r0.g = r6     // Catch: java.lang.Throwable -> L5d
            r0.h = r7     // Catch: java.lang.Throwable -> L5d
            kotlin.Unit r6 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L5d
            r8.unlock(r4)
            return r6
        L5d:
            r6 = move-exception
            r8.unlock(r4)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.pn.a(ads_mobile_sdk.jm, com.google.gson.JsonObject, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object a(ads_mobile_sdk.pn r5, boolean r6, kotlin.coroutines.Continuation r7) {
        /*
            boolean r0 = r7 instanceof ads_mobile_sdk.on
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.on r0 = (ads_mobile_sdk.on) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            ads_mobile_sdk.on r0 = new ads_mobile_sdk.on
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L3a
            if (r2 != r3) goto L32
            boolean r6 = r0.c
            kotlinx.coroutines.sync.Mutex r5 = r0.b
            ads_mobile_sdk.pn r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r7)
            r7 = r5
            r5 = r0
            goto L4e
        L32:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L3a:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlinx.coroutines.sync.Mutex r7 = r5.f
            r0.a = r5
            r0.b = r7
            r0.c = r6
            r0.f = r3
            java.lang.Object r0 = r7.lock(r4, r0)
            if (r0 != r1) goto L4e
            return r1
        L4e:
            r5.e = r6     // Catch: java.lang.Throwable -> L56
            kotlin.Unit r5 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L56
            r7.unlock(r4)
            return r5
        L56:
            r5 = move-exception
            r7.unlock(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.pn.a(ads_mobile_sdk.pn, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
