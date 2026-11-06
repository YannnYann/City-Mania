package ads_mobile_sdk;

import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public final class il0 implements r41 {
    public int b;
    public final Mutex a = MutexKt.Mutex$default(false, 1, null);
    public final u11 c = u11.GMSG_DELAY_PAGE_CLOSED;
    public final boolean d = true;

    /* JADX WARN: Code restructure failed: missing block: B:37:0x0098, code lost:
    
        if (r8.a(r4, r0) == r1) goto L38;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // ads_mobile_sdk.r41
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.r31 r8, java.util.Map r9, kotlin.coroutines.Continuation r10) throws java.lang.Throwable {
        /*
            r7 = this;
            boolean r0 = r10 instanceof ads_mobile_sdk.hl0
            if (r0 == 0) goto L13
            r0 = r10
            ads_mobile_sdk.hl0 r0 = (ads_mobile_sdk.hl0) r0
            int r1 = r0.g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.g = r1
            goto L18
        L13:
            ads_mobile_sdk.hl0 r0 = new ads_mobile_sdk.hl0
            r0.<init>(r7, r10)
        L18:
            java.lang.Object r10 = r0.e
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.g
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L4d
            if (r2 == r4) goto L3d
            if (r2 != r3) goto L35
            java.lang.Object r8 = r0.a
            kotlinx.coroutines.sync.Mutex r8 = (kotlinx.coroutines.sync.Mutex) r8
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L32
            goto L9e
        L32:
            r9 = move-exception
            goto La4
        L35:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L3d:
            kotlinx.coroutines.sync.Mutex r8 = r0.d
            java.util.Map r9 = r0.c
            ads_mobile_sdk.r31 r2 = r0.b
            java.lang.Object r6 = r0.a
            ads_mobile_sdk.il0 r6 = (ads_mobile_sdk.il0) r6
            kotlin.ResultKt.throwOnFailure(r10)
            r10 = r8
            r8 = r2
            goto L64
        L4d:
            kotlin.ResultKt.throwOnFailure(r10)
            kotlinx.coroutines.sync.Mutex r10 = r7.a
            r0.a = r7
            r0.b = r8
            r0.c = r9
            r0.d = r10
            r0.g = r4
            java.lang.Object r2 = r10.lock(r5, r0)
            if (r2 != r1) goto L63
            goto L9a
        L63:
            r6 = r7
        L64:
            java.lang.String r2 = "start"
            boolean r2 = r9.containsKey(r2)     // Catch: java.lang.Throwable -> L9b
            if (r2 == 0) goto L72
            int r9 = r6.b     // Catch: java.lang.Throwable -> L9b
            int r9 = r9 + r4
            r6.b = r9     // Catch: java.lang.Throwable -> L9b
            goto L80
        L72:
            java.lang.String r2 = "stop"
            boolean r9 = r9.containsKey(r2)     // Catch: java.lang.Throwable -> L9b
            if (r9 == 0) goto L80
            int r9 = r6.b     // Catch: java.lang.Throwable -> L9b
            int r9 = r9 + (-1)
            r6.b = r9     // Catch: java.lang.Throwable -> L9b
        L80:
            ads_mobile_sdk.ay0 r8 = r8.p     // Catch: java.lang.Throwable -> L9b
            if (r8 == 0) goto L9d
            int r9 = r6.b     // Catch: java.lang.Throwable -> L9b
            if (r9 <= 0) goto L89
            goto L8a
        L89:
            r4 = 0
        L8a:
            r0.a = r10     // Catch: java.lang.Throwable -> L9b
            r0.b = r5     // Catch: java.lang.Throwable -> L9b
            r0.c = r5     // Catch: java.lang.Throwable -> L9b
            r0.d = r5     // Catch: java.lang.Throwable -> L9b
            r0.g = r3     // Catch: java.lang.Throwable -> L9b
            java.lang.Object r8 = r8.a(r4, r0)     // Catch: java.lang.Throwable -> L9b
            if (r8 != r1) goto L9d
        L9a:
            return r1
        L9b:
            r8 = move-exception
            goto La6
        L9d:
            r8 = r10
        L9e:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L32
            r8.unlock(r5)
            return r9
        La4:
            r10 = r8
            goto La7
        La6:
            r9 = r8
        La7:
            r10.unlock(r5)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.il0.a(ads_mobile_sdk.r31, java.util.Map, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.r41
    public final u11 g() {
        return this.c;
    }

    @Override // ads_mobile_sdk.r41
    public final boolean i() {
        return this.d;
    }
}
