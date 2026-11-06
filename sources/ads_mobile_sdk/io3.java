package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import java.util.Optional;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class io3 extends n2 {
    public final rf l;
    public final rf m;
    public final Optional n;
    public final rv1 o;
    public final hm0 p;
    public final CoroutineScope q;
    public final hf r;
    public String s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public io3(rf adapterWrapper, rf rtbAdapterWrapper, Optional oldAdapterWrapper, rv1 mediationAdapterProxyFactory, hm0 delegatingThirdPartyEventEmitter, CoroutineScope uiScope, hf adapterInitializer, ks3 traceMetaSet, BaseRequest baseRequest, j53 requestType, long j, int i, i2 adConfiguration, zy commonConfiguration, ec3 serverTransaction, String renderId, eo2 placementIdWrapper) {
        super(traceMetaSet, baseRequest, requestType, j, i, adConfiguration, commonConfiguration, serverTransaction, renderId, placementIdWrapper);
        Intrinsics.checkNotNullParameter(adapterWrapper, "adapterWrapper");
        Intrinsics.checkNotNullParameter(rtbAdapterWrapper, "rtbAdapterWrapper");
        Intrinsics.checkNotNullParameter(oldAdapterWrapper, "oldAdapterWrapper");
        Intrinsics.checkNotNullParameter(mediationAdapterProxyFactory, "mediationAdapterProxyFactory");
        Intrinsics.checkNotNullParameter(delegatingThirdPartyEventEmitter, "delegatingThirdPartyEventEmitter");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(adapterInitializer, "adapterInitializer");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(commonConfiguration, "commonConfiguration");
        Intrinsics.checkNotNullParameter(serverTransaction, "serverTransaction");
        Intrinsics.checkNotNullParameter(renderId, "renderId");
        Intrinsics.checkNotNullParameter(placementIdWrapper, "placementIdWrapper");
        this.l = adapterWrapper;
        this.m = rtbAdapterWrapper;
        this.n = oldAdapterWrapper;
        this.o = mediationAdapterProxyFactory;
        this.p = delegatingThirdPartyEventEmitter;
        this.q = uiScope;
        this.r = adapterInitializer;
    }

    @Override // ads_mobile_sdk.j2
    public final boolean b() {
        return !this.f.b.isEmpty();
    }

    public final String a(int i) {
        String str = this.s;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("renderedAdapterClassName");
            str = null;
        }
        return "Error from: " + str + ", code: " + i;
    }

    /* JADX WARN: Path cross not found for [B:23:0x0077, B:26:0x0098], limit reached: 31 */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00af A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x006d -> B:21:0x006f). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(java.util.List r13, boolean r14, kotlin.coroutines.Continuation r15) {
        /*
            r12 = this;
            boolean r0 = r15 instanceof ads_mobile_sdk.eo3
            if (r0 == 0) goto L13
            r0 = r15
            ads_mobile_sdk.eo3 r0 = (ads_mobile_sdk.eo3) r0
            int r1 = r0.h
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.h = r1
            goto L18
        L13:
            ads_mobile_sdk.eo3 r0 = new ads_mobile_sdk.eo3
            r0.<init>(r12, r15)
        L18:
            java.lang.Object r15 = r0.f
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.h
            r3 = 1
            if (r2 == 0) goto L3d
            if (r2 != r3) goto L35
            boolean r13 = r0.e
            java.lang.String r14 = r0.d
            java.util.Iterator r2 = r0.c
            ads_mobile_sdk.v01 r4 = r0.b
            ads_mobile_sdk.io3 r5 = r0.a
            kotlin.ResultKt.throwOnFailure(r15)
            r8 = r13
            r7 = r14
            goto L6f
        L35:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r14 = "call to 'resume' before 'invoke' with coroutine"
            r13.<init>(r14)
            throw r13
        L3d:
            kotlin.ResultKt.throwOnFailure(r15)
            java.util.Iterator r13 = r13.iterator()
            r15 = 0
            r5 = r12
            r2 = r13
            r4 = r15
        L48:
            boolean r13 = r2.hasNext()
            if (r13 == 0) goto Laf
            java.lang.Object r13 = r2.next()
            java.lang.String r13 = (java.lang.String) r13
            ads_mobile_sdk.hf r15 = r5.r
            com.google.android.libraries.ads.mobile.sdk.common.BaseRequest r6 = r5.d()
            r0.a = r5
            r0.b = r4
            r0.c = r2
            r0.d = r13
            r0.e = r14
            r0.h = r3
            java.lang.Object r15 = r15.a(r6, r13, r0)
            if (r15 != r1) goto L6d
            return r1
        L6d:
            r7 = r13
            r8 = r14
        L6f:
            java.lang.Boolean r15 = (java.lang.Boolean) r15
            boolean r13 = r15.booleanValue()
            if (r13 != 0) goto L98
            if (r4 != 0) goto L98
            ads_mobile_sdk.m01 r4 = new ads_mobile_sdk.m01
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            r13.<init>()
            java.lang.String r14 = "The adapter requested for this mediation element ("
            r13.append(r14)
            r13.append(r7)
            java.lang.String r14 = ") is not eligible because it was excluded by AdRequest.skipUninitializedAdapters and has not yet successfully initialized."
            r13.append(r14)
            java.lang.String r13 = r13.toString()
            ads_mobile_sdk.kk1 r14 = ads_mobile_sdk.kk1.h
            r4.<init>(r13, r14)
        L96:
            r14 = r8
            goto L48
        L98:
            r5.s = r7
            ads_mobile_sdk.rv1 r6 = r5.o
            ads_mobile_sdk.j53 r10 = r5.e()
            r9 = 0
            r11 = 4
            ads_mobile_sdk.jf r13 = ads_mobile_sdk.rv1.a(r6, r7, r8, r9, r10, r11)
            if (r13 != 0) goto La9
            goto L96
        La9:
            ads_mobile_sdk.q01 r14 = new ads_mobile_sdk.q01
            r14.<init>(r13)
            return r14
        Laf:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.io3.a(java.util.List, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.jf r11, kotlin.coroutines.Continuation r12) {
        /*
            Method dump skipped, instruction units count: 278
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.io3.a(ads_mobile_sdk.jf, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x006d, code lost:
    
        if (r7 == r1) goto L30;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // ads_mobile_sdk.n2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(boolean r6, kotlin.coroutines.Continuation r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof ads_mobile_sdk.ho3
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.ho3 r0 = (ads_mobile_sdk.ho3) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.ho3 r0 = new ads_mobile_sdk.ho3
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3a
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.ResultKt.throwOnFailure(r7)
            goto L70
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L34:
            ads_mobile_sdk.io3 r6 = r0.a
            kotlin.ResultKt.throwOnFailure(r7)
            goto L4f
        L3a:
            kotlin.ResultKt.throwOnFailure(r7)
            ads_mobile_sdk.i2 r7 = r5.c()
            java.util.List r7 = r7.b
            r0.a = r5
            r0.d = r4
            java.lang.Object r7 = r5.a(r7, r6, r0)
            if (r7 != r1) goto L4e
            goto L6f
        L4e:
            r6 = r5
        L4f:
            ads_mobile_sdk.v01 r7 = (ads_mobile_sdk.v01) r7
            if (r7 == 0) goto L8b
            boolean r2 = r7 instanceof ads_mobile_sdk.i01
            if (r2 == 0) goto L5a
            ads_mobile_sdk.i01 r7 = (ads_mobile_sdk.i01) r7
            return r7
        L5a:
            ads_mobile_sdk.q01 r7 = (ads_mobile_sdk.q01) r7
            java.lang.Object r7 = r7.a()
            ads_mobile_sdk.jf r7 = (ads_mobile_sdk.jf) r7
            if (r7 == 0) goto L8b
            r2 = 0
            r0.a = r2
            r0.d = r3
            java.lang.Object r7 = r6.a(r7, r0)
            if (r7 != r1) goto L70
        L6f:
            return r1
        L70:
            ads_mobile_sdk.v01 r7 = (ads_mobile_sdk.v01) r7
            boolean r6 = r7 instanceof ads_mobile_sdk.i01
            if (r6 == 0) goto L77
            return r7
        L77:
            boolean r6 = r7 instanceof ads_mobile_sdk.q01
            if (r6 == 0) goto L85
            ads_mobile_sdk.q01 r6 = new ads_mobile_sdk.q01
            kotlinx.coroutines.flow.Flow r7 = kotlinx.coroutines.flow.FlowKt.flowOf(r7)
            r6.<init>(r7)
            return r6
        L85:
            kotlin.NoWhenBranchMatchedException r6 = new kotlin.NoWhenBranchMatchedException
            r6.<init>()
            throw r6
        L8b:
            ads_mobile_sdk.l01 r7 = new ads_mobile_sdk.l01
            com.google.android.libraries.ads.mobile.sdk.common.MediationAdError r0 = new com.google.android.libraries.ads.mobile.sdk.common.MediationAdError
            com.google.android.libraries.ads.mobile.sdk.common.LoadAdError$ErrorCode r1 = com.google.android.libraries.ads.mobile.sdk.common.LoadAdError.ErrorCode.NOT_FOUND
            int r1 = r1.getValue()
            ads_mobile_sdk.i2 r6 = r6.c()
            java.util.List r6 = r6.b
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Unable to instantiate any mediation adapter class: "
            r2.append(r3)
            r2.append(r6)
            java.lang.String r6 = "."
            r2.append(r6)
            java.lang.String r6 = r2.toString()
            java.lang.String r2 = "undefined"
            r0.<init>(r1, r6, r2)
            r7.<init>(r0)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.io3.a(boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final v01 a(jf jfVar) {
        if (jfVar instanceof qv1) {
            return new q01(this.l.a(f(), c(), jfVar));
        }
        if (jfVar instanceof u83) {
            return new q01(this.m.a(f(), c(), jfVar));
        }
        if (jfVar instanceof rc2) {
            if (this.n.isPresent()) {
                return new q01(((rf) this.n.get()).a(f(), c(), jfVar));
            }
            return new m01("OldAdapterWrapper is empty, unable to wrap " + jfVar + ".");
        }
        throw new NoWhenBranchMatchedException();
    }
}
