package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class vi {
    public final ks1 a;

    public vi(ks1 dataStore) {
        Intrinsics.checkNotNullParameter(dataStore, "dataStore");
        this.a = dataStore;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(kotlin.coroutines.Continuation r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof ads_mobile_sdk.ui
            if (r0 == 0) goto L13
            r0 = r5
            ads_mobile_sdk.ui r0 = (ads_mobile_sdk.ui) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            ads_mobile_sdk.ui r0 = new ads_mobile_sdk.ui
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r5)
            goto L49
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L31:
            kotlin.ResultKt.throwOnFailure(r5)
            ads_mobile_sdk.ks1 r5 = r4.a
            java.lang.Object r5 = r5.get()
            androidx.datastore.core.DataStore r5 = (androidx.datastore.core.DataStore) r5
            kotlinx.coroutines.flow.Flow r5 = r5.getData()
            r0.c = r3
            java.lang.Object r5 = kotlinx.coroutines.flow.FlowKt.firstOrNull(r5, r0)
            if (r5 != r1) goto L49
            return r1
        L49:
            ads_mobile_sdk.ri r5 = (ads_mobile_sdk.ri) r5
            if (r5 == 0) goto L52
            java.util.Map r5 = r5.w()
            return r5
        L52:
            r5 = 0
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.vi.a(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
