package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class d32 implements rh3 {
    public final CoroutineScope a;
    public final NativeRequest b;
    public final t22 c;
    public final BaseRequest d;
    public final o21 e;
    public final int f;

    public d32(CoroutineScope backgroundScope, NativeRequest nativeRequest, ex0 flags, t22 nativeAdSettingsDataStore, BaseRequest baseRequest, o21 gmaUtil, int i) {
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(nativeRequest, "nativeRequest");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(nativeAdSettingsDataStore, "nativeAdSettingsDataStore");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(gmaUtil, "gmaUtil");
        this.a = backgroundScope;
        this.b = nativeRequest;
        this.c = nativeAdSettingsDataStore;
        this.d = baseRequest;
        this.e = gmaUtil;
        this.f = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(kotlin.coroutines.Continuation r19) {
        /*
            r18 = this;
            r0 = r18
            r1 = r19
            boolean r2 = r1 instanceof ads_mobile_sdk.b32
            if (r2 == 0) goto L17
            r2 = r1
            ads_mobile_sdk.b32 r2 = (ads_mobile_sdk.b32) r2
            int r3 = r2.g
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = r3 & r4
            if (r5 == 0) goto L17
            int r3 = r3 - r4
            r2.g = r3
            goto L1c
        L17:
            ads_mobile_sdk.b32 r2 = new ads_mobile_sdk.b32
            r2.<init>(r0, r1)
        L1c:
            java.lang.Object r1 = r2.e
            java.lang.Object r3 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r4 = r2.g
            r5 = 2
            r6 = 1
            r7 = 0
            if (r4 == 0) goto L45
            if (r4 == r6) goto L39
            if (r4 != r5) goto L31
            kotlin.ResultKt.throwOnFailure(r1)
            return r1
        L31:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r1
        L39:
            long r8 = r2.d
            long r10 = r2.c
            java.lang.String r4 = r2.b
            ads_mobile_sdk.d32 r6 = r2.a
            kotlin.ResultKt.throwOnFailure(r1)
            goto L6c
        L45:
            kotlin.ResultKt.throwOnFailure(r1)
            com.google.android.libraries.ads.mobile.sdk.common.BaseRequest r1 = r0.d
            java.lang.String r4 = r1.getAdUnitId()
            if (r4 != 0) goto L51
            return r7
        L51:
            ads_mobile_sdk.o21 r1 = r0.e
            long r8 = r1.a()
            ads_mobile_sdk.t22 r1 = r0.c
            r2.a = r0
            r2.b = r4
            r2.c = r8
            r2.d = r8
            r2.g = r6
            java.lang.Object r1 = r1.v(r2)
            if (r1 != r3) goto L6a
            goto Laa
        L6a:
            r6 = r0
            r10 = r8
        L6c:
            java.lang.Number r1 = (java.lang.Number) r1
            long r12 = r1.longValue()
            int r1 = (r8 > r12 ? 1 : (r8 == r12 ? 0 : -1))
            if (r1 == 0) goto L9c
            kotlinx.coroutines.CoroutineScope r12 = r6.a
            ads_mobile_sdk.c32 r1 = new ads_mobile_sdk.c32
            r1.<init>(r6, r10, r7)
            kotlin.coroutines.EmptyCoroutineContext r13 = kotlin.coroutines.EmptyCoroutineContext.INSTANCE
            java.lang.String r2 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r12, r2)
            java.lang.String r2 = "context"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r13, r2)
            java.lang.String r2 = "block"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r2)
            ads_mobile_sdk.ws3 r15 = new ads_mobile_sdk.ws3
            r15.<init>(r1, r7)
            r16 = 2
            r17 = 0
            r14 = 0
            kotlinx.coroutines.BuildersKt.launch$default(r12, r13, r14, r15, r16, r17)
            return r7
        L9c:
            ads_mobile_sdk.t22 r1 = r6.c
            r2.a = r7
            r2.b = r7
            r2.g = r5
            java.lang.Object r1 = r1.b(r4, r2)
            if (r1 != r3) goto Lab
        Laa:
            return r3
        Lab:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.d32.a(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.rh3
    public final y11 f() {
        return y11.NATIVE_AD;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    @Override // ads_mobile_sdk.rh3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object s(kotlin.coroutines.Continuation r22) {
        /*
            Method dump skipped, instruction units count: 356
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.d32.s(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
