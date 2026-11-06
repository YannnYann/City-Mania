package ads_mobile_sdk;

import android.net.Uri;
import android.os.SystemClock;
import com.google.android.libraries.ads.mobile.sdk.rewarded.RewardItem;
import com.google.android.libraries.ads.mobile.sdk.rewarded.ServerSideVerificationOptions;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: loaded from: classes.dex */
public final class lt3 implements ai1, h73 {
    public final g83 a;
    public final du1 b;
    public final rb c;
    public final d63 d;
    public final Optional e;
    public final ec3 f;
    public final i2 g;
    public final ks3 h;
    public final int i;
    public final tx j;
    public final bc3 k;
    public final qs0 l;
    public final eo2 m;
    public final cw2 n;
    public final vn o;
    public final Set p;
    public final ex0 q;
    public final t91 r;
    public final p02 s;

    public lt3(g83 rootTraceCreator, du1 macroExpander, rb adSpamClient, d63 retryingUrlPinger, Optional view, ec3 serverTransaction, i2 adConfiguration, ks3 traceMetaSet, int i, tx clock, bc3 serverSideVerificationOptionsHolder, qs0 firebaseAnalyticsEventHandler, eo2 placementIdWrapper, dw2 adEventEmitterProvider, vn appStatsTracker, Set requestTypes, ex0 flags, t91 impressionDataWrapper) {
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(macroExpander, "macroExpander");
        Intrinsics.checkNotNullParameter(adSpamClient, "adSpamClient");
        Intrinsics.checkNotNullParameter(retryingUrlPinger, "retryingUrlPinger");
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(serverTransaction, "serverTransaction");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(serverSideVerificationOptionsHolder, "serverSideVerificationOptionsHolder");
        Intrinsics.checkNotNullParameter(firebaseAnalyticsEventHandler, "firebaseAnalyticsEventHandler");
        Intrinsics.checkNotNullParameter(placementIdWrapper, "placementIdWrapper");
        Intrinsics.checkNotNullParameter(adEventEmitterProvider, "adEventEmitterProvider");
        Intrinsics.checkNotNullParameter(appStatsTracker, "appStatsTracker");
        Intrinsics.checkNotNullParameter(requestTypes, "requestTypes");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(impressionDataWrapper, "impressionDataWrapper");
        this.a = rootTraceCreator;
        this.b = macroExpander;
        this.c = adSpamClient;
        this.d = retryingUrlPinger;
        this.e = view;
        this.f = serverTransaction;
        this.g = adConfiguration;
        this.h = traceMetaSet;
        this.i = i;
        this.j = clock;
        this.k = serverSideVerificationOptionsHolder;
        this.l = firebaseAnalyticsEventHandler;
        this.m = placementIdWrapper;
        this.n = adEventEmitterProvider;
        this.o = appStatsTracker;
        this.p = requestTypes;
        this.q = flags;
        this.r = impressionDataWrapper;
        this.s = new p02(null);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    @Override // ads_mobile_sdk.ai1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(com.google.android.libraries.ads.mobile.sdk.common.FullScreenContentError r19, kotlin.coroutines.Continuation r20) {
        /*
            Method dump skipped, instruction units count: 210
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.lt3.a(com.google.android.libraries.ads.mobile.sdk.common.FullScreenContentError, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    @Override // ads_mobile_sdk.h73
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object g(kotlin.coroutines.Continuation r19) {
        /*
            r18 = this;
            r0 = r18
            r1 = r19
            boolean r2 = r1 instanceof ads_mobile_sdk.jt3
            if (r2 == 0) goto L17
            r2 = r1
            ads_mobile_sdk.jt3 r2 = (ads_mobile_sdk.jt3) r2
            int r3 = r2.d
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = r3 & r4
            if (r5 == 0) goto L17
            int r3 = r3 - r4
            r2.d = r3
            goto L1c
        L17:
            ads_mobile_sdk.jt3 r2 = new ads_mobile_sdk.jt3
            r2.<init>(r0, r1)
        L1c:
            java.lang.Object r1 = r2.b
            java.lang.Object r3 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r4 = r2.d
            r5 = 1
            if (r4 == 0) goto L37
            if (r4 != r5) goto L2f
            ads_mobile_sdk.lt3 r2 = r2.a
            kotlin.ResultKt.throwOnFailure(r1)
            goto L64
        L2f:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r1
        L37:
            kotlin.ResultKt.throwOnFailure(r1)
            r1 = r3
            ads_mobile_sdk.du1 r3 = r0.b
            ads_mobile_sdk.i2 r6 = r0.g
            java.util.List r4 = r6.j0
            ads_mobile_sdk.ec3 r7 = r0.f
            int r8 = r0.i
            java.lang.Integer r8 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r8)
            r2.a = r0
            r2.d = r5
            r15 = 0
            r17 = 4080(0xff0, float:5.717E-42)
            r5 = r7
            r7 = r8
            r8 = 0
            r9 = 0
            r10 = 0
            r11 = 0
            r12 = 0
            r13 = 0
            r14 = 0
            r16 = r2
            java.lang.Object r2 = ads_mobile_sdk.du1.a(r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17)
            if (r2 != r1) goto L62
            return r1
        L62:
            r1 = r2
            r2 = r0
        L64:
            java.util.List r1 = (java.util.List) r1
            a(r2, r1)
            kotlin.Unit r1 = kotlin.Unit.INSTANCE
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.lt3.g(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:111:0x01ae A[Catch: all -> 0x0188, TRY_LEAVE, TryCatch #5 {all -> 0x0188, blocks: (B:89:0x0175, B:91:0x017c, B:93:0x0180, B:95:0x0184, B:98:0x018b, B:100:0x018f, B:102:0x0193, B:104:0x0197, B:105:0x0198, B:106:0x019d, B:107:0x019e, B:108:0x01a5, B:109:0x01a6, B:110:0x01ad, B:111:0x01ae), top: B:125:0x0175 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00d7 A[Catch: all -> 0x00e3, TryCatch #1 {all -> 0x00e3, blocks: (B:43:0x00d0, B:45:0x00d7, B:47:0x00db, B:49:0x00df, B:52:0x00e6, B:54:0x00ea, B:56:0x00ee, B:58:0x00f2, B:59:0x00f3, B:60:0x00f8, B:61:0x00f9, B:62:0x0100, B:63:0x0101, B:64:0x0108, B:65:0x0109), top: B:118:0x00d0 }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0109 A[Catch: all -> 0x00e3, TRY_LEAVE, TryCatch #1 {all -> 0x00e3, blocks: (B:43:0x00d0, B:45:0x00d7, B:47:0x00db, B:49:0x00df, B:52:0x00e6, B:54:0x00ea, B:56:0x00ee, B:58:0x00f2, B:59:0x00f3, B:60:0x00f8, B:61:0x00f9, B:62:0x0100, B:63:0x0101, B:64:0x0108, B:65:0x0109), top: B:118:0x00d0 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x017c A[Catch: all -> 0x0188, TryCatch #5 {all -> 0x0188, blocks: (B:89:0x0175, B:91:0x017c, B:93:0x0180, B:95:0x0184, B:98:0x018b, B:100:0x018f, B:102:0x0193, B:104:0x0197, B:105:0x0198, B:106:0x019d, B:107:0x019e, B:108:0x01a5, B:109:0x01a6, B:110:0x01ad, B:111:0x01ae), top: B:125:0x0175 }] */
    @Override // ads_mobile_sdk.ai1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object k(kotlin.coroutines.Continuation r21) {
        /*
            Method dump skipped, instruction units count: 437
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.lt3.k(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    @Override // ads_mobile_sdk.h73
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object l(kotlin.coroutines.Continuation r19) {
        /*
            r18 = this;
            r0 = r18
            r1 = r19
            boolean r2 = r1 instanceof ads_mobile_sdk.kt3
            if (r2 == 0) goto L17
            r2 = r1
            ads_mobile_sdk.kt3 r2 = (ads_mobile_sdk.kt3) r2
            int r3 = r2.d
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = r3 & r4
            if (r5 == 0) goto L17
            int r3 = r3 - r4
            r2.d = r3
            goto L1c
        L17:
            ads_mobile_sdk.kt3 r2 = new ads_mobile_sdk.kt3
            r2.<init>(r0, r1)
        L1c:
            java.lang.Object r1 = r2.b
            java.lang.Object r3 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r4 = r2.d
            r5 = 1
            if (r4 == 0) goto L37
            if (r4 != r5) goto L2f
            ads_mobile_sdk.lt3 r2 = r2.a
            kotlin.ResultKt.throwOnFailure(r1)
            goto L64
        L2f:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r1
        L37:
            kotlin.ResultKt.throwOnFailure(r1)
            r1 = r3
            ads_mobile_sdk.du1 r3 = r0.b
            ads_mobile_sdk.i2 r6 = r0.g
            java.util.List r4 = r6.k0
            ads_mobile_sdk.ec3 r7 = r0.f
            int r8 = r0.i
            java.lang.Integer r8 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r8)
            r2.a = r0
            r2.d = r5
            r15 = 0
            r17 = 4080(0xff0, float:5.717E-42)
            r5 = r7
            r7 = r8
            r8 = 0
            r9 = 0
            r10 = 0
            r11 = 0
            r12 = 0
            r13 = 0
            r14 = 0
            r16 = r2
            java.lang.Object r2 = ads_mobile_sdk.du1.a(r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17)
            if (r2 != r1) goto L62
            return r1
        L62:
            r1 = r2
            r2 = r0
        L64:
            java.util.List r1 = (java.util.List) r1
            a(r2, r1)
            kotlin.Unit r1 = kotlin.Unit.INSTANCE
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.lt3.l(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:61:0x0155, code lost:
    
        if (r0 == r3) goto L62;
     */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:58:0x0119 -> B:59:0x011d). Please report as a decompilation issue!!! */
    @Override // ads_mobile_sdk.ai1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object o(kotlin.coroutines.Continuation r24) {
        /*
            Method dump skipped, instruction units count: 417
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.lt3.o(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01e4  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:61:0x014f -> B:62:0x0152). Please report as a decompilation issue!!! */
    @Override // ads_mobile_sdk.ai1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object r(kotlin.coroutines.Continuation r32) {
        /*
            Method dump skipped, instruction units count: 590
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.lt3.r(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.h73
    public final Object a(RewardItem rewardItem, Continuation continuation) {
        du1 du1Var = this.b;
        List uris = this.g.g0;
        this.j.getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        bc3 bc3Var = this.k;
        tn3 tn3Var = bc3Var.a;
        KProperty[] kPropertyArr = bc3.b;
        ServerSideVerificationOptions serverSideVerificationOptions = (ServerSideVerificationOptions) tn3Var.getValue(bc3Var, kPropertyArr[0]);
        String userId = serverSideVerificationOptions != null ? serverSideVerificationOptions.getUserId() : null;
        bc3 bc3Var2 = this.k;
        ServerSideVerificationOptions serverSideVerificationOptions2 = (ServerSideVerificationOptions) bc3Var2.a.getValue(bc3Var2, kPropertyArr[0]);
        String customData = serverSideVerificationOptions2 != null ? serverSideVerificationOptions2.getCustomData() : null;
        du1Var.getClass();
        Intrinsics.checkNotNullParameter(uris, "uris");
        Intrinsics.checkNotNullParameter(rewardItem, "rewardItem");
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(uris, 10));
        Iterator it = uris.iterator();
        while (it.hasNext()) {
            String string = ((Uri) it.next()).toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            String str = "";
            String strEncode = Uri.encode(userId == null ? "" : userId);
            Intrinsics.checkNotNullExpressionValue(strEncode, "encode(...)");
            Iterator it2 = it;
            String strReplace$default = StringsKt__StringsJVMKt.replace$default(string, "@gw_rwd_userid@", strEncode, false, 4, (Object) null);
            if (customData != null) {
                str = customData;
            }
            String strEncode2 = Uri.encode(str);
            Intrinsics.checkNotNullExpressionValue(strEncode2, "encode(...)");
            String strReplace$default2 = StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(strReplace$default, "@gw_rwd_custom_data@", strEncode2, false, 4, (Object) null), "@gw_tmstmp@", String.valueOf(jElapsedRealtime), false, 4, (Object) null);
            String strEncode3 = Uri.encode(rewardItem.getType());
            Intrinsics.checkNotNullExpressionValue(strEncode3, "encode(...)");
            arrayList.add(Uri.parse(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(strReplace$default2, "@gw_rwd_itm@", strEncode3, false, 4, (Object) null), "@gw_rwd_amt@", String.valueOf(rewardItem.getAmount()), false, 4, (Object) null), "@gw_sdkver@", du1Var.b, false, 4, (Object) null)));
            it = it2;
        }
        a(this, arrayList);
        return Unit.INSTANCE;
    }

    public static void a(lt3 lt3Var, List uris) {
        Boolean bool = Boolean.FALSE;
        d63 d63Var = lt3Var.d;
        d63Var.getClass();
        Intrinsics.checkNotNullParameter(uris, "uris");
        c63.a(d63Var.c, uris, d63Var.a, d63Var.b, null, bool, 32);
    }
}
