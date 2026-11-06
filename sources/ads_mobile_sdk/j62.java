package ads_mobile_sdk;

import android.content.Context;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class j62 {
    public final Context a;
    public final CoroutineScope b;
    public final iz3 c;
    public final n62 d;
    public final ex0 e;
    public final NativeRequest f;

    public j62(Context applicationContext, CoroutineScope uiScope, iz3 webViewFactory, n62 nativeMediaWebViewConfigurator, ex0 flags, NativeRequest nativeRequest) {
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(webViewFactory, "webViewFactory");
        Intrinsics.checkNotNullParameter(nativeMediaWebViewConfigurator, "nativeMediaWebViewConfigurator");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(nativeRequest, "nativeRequest");
        this.a = applicationContext;
        this.b = uiScope;
        this.c = webViewFactory;
        this.d = nativeMediaWebViewConfigurator;
        this.e = flags;
        this.f = nativeRequest;
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x00ae, code lost:
    
        if (r12.a(r13, r7) == r0) goto L35;
     */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00c3 A[Catch: all -> 0x00cf, TryCatch #3 {all -> 0x00cf, blocks: (B:40:0x00bc, B:42:0x00c3, B:44:0x00c7, B:46:0x00cb, B:49:0x00d2, B:51:0x00d6, B:53:0x00da, B:55:0x00de, B:56:0x00df, B:57:0x00e4, B:58:0x00e5, B:59:0x00ec, B:60:0x00ed, B:61:0x00f4, B:62:0x00f5), top: B:73:0x00bc }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00f5 A[Catch: all -> 0x00cf, TRY_LEAVE, TryCatch #3 {all -> 0x00cf, blocks: (B:40:0x00bc, B:42:0x00c3, B:44:0x00c7, B:46:0x00cb, B:49:0x00d2, B:51:0x00d6, B:53:0x00da, B:55:0x00de, B:56:0x00df, B:57:0x00e4, B:58:0x00e5, B:59:0x00ec, B:60:0x00ed, B:61:0x00f4, B:62:0x00f5), top: B:73:0x00bc }] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object a(ads_mobile_sdk.j62 r10, ads_mobile_sdk.v14 r11, ads_mobile_sdk.eo2 r12, kotlin.coroutines.Continuation r13) {
        /*
            Method dump skipped, instruction units count: 253
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.j62.a(ads_mobile_sdk.j62, ads_mobile_sdk.v14, ads_mobile_sdk.eo2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object a(ads_mobile_sdk.j62 r4, ads_mobile_sdk.r31 r5, kotlin.coroutines.Continuation r6) {
        /*
            r4.getClass()
            boolean r0 = r6 instanceof ads_mobile_sdk.i62
            if (r0 == 0) goto L16
            r0 = r6
            ads_mobile_sdk.i62 r0 = (ads_mobile_sdk.i62) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L16
            int r1 = r1 - r2
            r0.d = r1
            goto L1b
        L16:
            ads_mobile_sdk.i62 r0 = new ads_mobile_sdk.i62
            r0.<init>(r4, r6)
        L1b:
            java.lang.Object r6 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 1
            if (r2 == 0) goto L36
            if (r2 != r3) goto L2e
            ads_mobile_sdk.r31 r4 = r0.a
            kotlin.ResultKt.throwOnFailure(r6)
            return r4
        L2e:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L36:
            kotlin.ResultKt.throwOnFailure(r6)
            ads_mobile_sdk.q41 r6 = r5.d()
            if (r6 == 0) goto L52
            com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest r4 = r4.f
            com.google.android.libraries.ads.mobile.sdk.common.VideoOptions r4 = r4.getVideoOptions()
            if (r4 == 0) goto L52
            r0.a = r5
            r0.d = r3
            java.lang.Object r4 = r6.a(r4, r0)
            if (r4 != r1) goto L52
            return r1
        L52:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.j62.a(ads_mobile_sdk.j62, ads_mobile_sdk.r31, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
