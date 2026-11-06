package ads_mobile_sdk;

import java.util.WeakHashMap;
import java.util.concurrent.CancellationException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.TimeoutCancellationException;

/* JADX INFO: loaded from: classes.dex */
public abstract class pl3 extends nc1 implements rh3 {
    public v01 c;

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object a(ads_mobile_sdk.pl3 r4, kotlin.coroutines.Continuation r5) {
        /*
            boolean r0 = r5 instanceof ads_mobile_sdk.ol3
            if (r0 == 0) goto L13
            r0 = r5
            ads_mobile_sdk.ol3 r0 = (ads_mobile_sdk.ol3) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.ol3 r0 = new ads_mobile_sdk.ol3
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2b
            ads_mobile_sdk.pl3 r4 = r0.a
            kotlin.ResultKt.throwOnFailure(r5)
            goto L41
        L2b:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L33:
            kotlin.ResultKt.throwOnFailure(r5)
            r0.a = r4
            r0.d = r3
            java.lang.Object r5 = r4.s(r0)
            if (r5 != r1) goto L41
            return r1
        L41:
            ads_mobile_sdk.v01 r5 = (ads_mobile_sdk.v01) r5
            r4.c = r5
            ads_mobile_sdk.q01 r4 = new ads_mobile_sdk.q01
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            r4.<init>(r5)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.pl3.a(ads_mobile_sdk.pl3, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.nc1
    public final Object u(Continuation continuation) {
        return a(this, continuation);
    }

    public /* synthetic */ pl3() {
        this(null);
    }

    @Override // ads_mobile_sdk.rh3
    public final Object b(Continuation continuation) {
        s11 s11Var = s11.CUI_NAME_SIGNAL;
        WeakHashMap weakHashMap = hs3.a;
        rr3 rr3VarA = hs3.a(s11Var, CollectionsKt__CollectionsKt.emptyList(), true);
        try {
            hs3.a().e().t = new gh3(f(), q11.CACHED, 4);
            v01 v01Var = this.c;
            if (v01Var == null) {
                Intrinsics.throwUninitializedPropertyAccessException("result");
                v01Var = null;
            }
            if (v01Var instanceof i01) {
                xs3.a((i01) v01Var, false);
            }
            CloseableKt.closeFinally(rr3VarA, null);
            return v01Var;
        } catch (Throwable th) {
            try {
                rr3VarA.b(th);
                if (th instanceof v24) {
                    throw th;
                }
                if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                    rr3VarA.a(th);
                }
                if (th instanceof TimeoutCancellationException) {
                    throw new i21(th);
                }
                if (th instanceof CancellationException) {
                    throw new wz0(th);
                }
                if (th instanceof w01) {
                    throw th;
                }
                throw new b01(th);
            } finally {
            }
        }
    }

    public pl3(s11 s11Var) {
        super(s11Var, 2);
    }
}
