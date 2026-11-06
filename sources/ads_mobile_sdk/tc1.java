package ads_mobile_sdk;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.ads.VersionInfo;
import com.google.android.gms.ads.mediation.Adapter;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public abstract class tc1 {
    public final Adapter a;

    public tc1(Adapter adapter) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        this.a = adapter;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:35:0x008b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.util.ArrayList a(ads_mobile_sdk.tc1 r5, ads_mobile_sdk.be r6) {
        /*
            Method dump skipped, instruction units count: 232
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.tc1.a(ads_mobile_sdk.tc1, ads_mobile_sdk.be):java.util.ArrayList");
    }

    public final VersionInfo b() {
        return this.a.getVersionInfo();
    }

    public final Object b(Context context, be beVar, Continuation continuation) {
        if (Intrinsics.areEqual(Looper.getMainLooper(), Looper.myLooper())) {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
            cancellableContinuationImpl.initCancellability();
            AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            try {
                this.a.initialize(context, new sc1(atomicBoolean, cancellableContinuationImpl), a(this, beVar));
            } catch (Throwable th) {
                if (!atomicBoolean.getAndSet(true)) {
                    Result.Companion companion = Result.Companion;
                    cancellableContinuationImpl.resumeWith(Result.m2760constructorimpl(new j01(th, kk1.m, "Exception caught initializing adapter: " + th.getClass().getName())));
                }
            }
            Object result = cancellableContinuationImpl.getResult();
            if (result == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            return result;
        }
        throw new IllegalStateException("Check failed.");
    }

    public final VersionInfo a() {
        return this.a.getSDKVersionInfo();
    }

    public Object a(Context context, be beVar, Continuation continuation) {
        return b(context, beVar, continuation);
    }
}
