package ads_mobile_sdk;

import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public final class je2 extends es implements df2 {
    public final CoroutineScope c;
    public final i2 d;
    public final kd2 e;
    public final h41 f;
    public final ze2 g;
    public final Mutex h;
    public k9 i;
    public final List j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public je2(CoroutineContext uiContext, CoroutineScope uiScope, i2 adConfiguration, kd2 omid, h41 webViewContainer, ze2 omidJavaScriptSessionService, ex0 flags) {
        super(flags, uiContext);
        Intrinsics.checkNotNullParameter(uiContext, "uiContext");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(omid, "omid");
        Intrinsics.checkNotNullParameter(webViewContainer, "webViewContainer");
        Intrinsics.checkNotNullParameter(omidJavaScriptSessionService, "omidJavaScriptSessionService");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.c = uiScope;
        this.d = adConfiguration;
        this.e = omid;
        this.f = webViewContainer;
        this.g = omidJavaScriptSessionService;
        this.h = MutexKt.Mutex$default(false, 1, null);
        this.j = Collections.synchronizedList(new ArrayList());
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object b(ads_mobile_sdk.je2 r7, kotlin.coroutines.Continuation r8) throws java.lang.Throwable {
        /*
            boolean r0 = r8 instanceof ads_mobile_sdk.ce2
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.ce2 r0 = (ads_mobile_sdk.ce2) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.ce2 r0 = new ads_mobile_sdk.ce2
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L47
            if (r2 == r4) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r7 = r0.a
            kotlinx.coroutines.sync.Mutex r7 = (kotlinx.coroutines.sync.Mutex) r7
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L31
            goto L72
        L31:
            r8 = move-exception
            goto L89
        L33:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L3b:
            kotlinx.coroutines.sync.Mutex r7 = r0.b
            java.lang.Object r2 = r0.a
            ads_mobile_sdk.je2 r2 = (ads_mobile_sdk.je2) r2
            kotlin.ResultKt.throwOnFailure(r8)
            r8 = r7
            r7 = r2
            goto L59
        L47:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.sync.Mutex r8 = r7.h
            r0.a = r7
            r0.b = r8
            r0.e = r4
            java.lang.Object r2 = r8.lock(r5, r0)
            if (r2 != r1) goto L59
            goto L6e
        L59:
            ads_mobile_sdk.k9 r2 = r7.i     // Catch: java.lang.Throwable -> L7e
            if (r2 != 0) goto L80
            ads_mobile_sdk.ze2 r7 = r7.g     // Catch: java.lang.Throwable -> L7e
            r0.a = r8     // Catch: java.lang.Throwable -> L7e
            r0.b = r5     // Catch: java.lang.Throwable -> L7e
            r0.e = r3     // Catch: java.lang.Throwable -> L7e
            r7.getClass()     // Catch: java.lang.Throwable -> L7e
            java.lang.Object r7 = ads_mobile_sdk.ze2.a(r7, r0)     // Catch: java.lang.Throwable -> L7e
            if (r7 != r1) goto L6f
        L6e:
            return r1
        L6f:
            r6 = r8
            r8 = r7
            r7 = r6
        L72:
            java.lang.Boolean r8 = (java.lang.Boolean) r8     // Catch: java.lang.Throwable -> L31
            boolean r8 = r8.booleanValue()     // Catch: java.lang.Throwable -> L31
            if (r8 == 0) goto L7c
            r8 = r7
            goto L80
        L7c:
            r4 = 0
            goto L81
        L7e:
            r7 = move-exception
            goto L8c
        L80:
            r7 = r8
        L81:
            java.lang.Boolean r8 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r4)     // Catch: java.lang.Throwable -> L31
            r7.unlock(r5)
            return r8
        L89:
            r6 = r8
            r8 = r7
            r7 = r6
        L8c:
            r8.unlock(r5)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.je2.b(ads_mobile_sdk.je2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0085, code lost:
    
        if (r8.a(r5, r1) == r2) goto L30;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object c(ads_mobile_sdk.je2 r8, kotlin.coroutines.Continuation r9) throws java.lang.Throwable {
        /*
            java.lang.String r0 = "omidRegisteredViews"
            boolean r1 = r9 instanceof ads_mobile_sdk.de2
            if (r1 == 0) goto L15
            r1 = r9
            ads_mobile_sdk.de2 r1 = (ads_mobile_sdk.de2) r1
            int r2 = r1.e
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L15
            int r2 = r2 - r3
            r1.e = r2
            goto L1a
        L15:
            ads_mobile_sdk.de2 r1 = new ads_mobile_sdk.de2
            r1.<init>(r8, r9)
        L1a:
            java.lang.Object r9 = r1.c
            java.lang.Object r2 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r3 = r1.e
            r4 = 2
            r5 = 1
            r6 = 0
            if (r3 == 0) goto L49
            if (r3 == r5) goto L3d
            if (r3 != r4) goto L35
            java.lang.Object r8 = r1.a
            kotlinx.coroutines.sync.Mutex r8 = (kotlinx.coroutines.sync.Mutex) r8
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L33
            goto L8b
        L33:
            r9 = move-exception
            goto L91
        L35:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L3d:
            kotlinx.coroutines.sync.Mutex r8 = r1.b
            java.lang.Object r3 = r1.a
            ads_mobile_sdk.je2 r3 = (ads_mobile_sdk.je2) r3
            kotlin.ResultKt.throwOnFailure(r9)
            r9 = r8
            r8 = r3
            goto L5b
        L49:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlinx.coroutines.sync.Mutex r9 = r8.h
            r1.a = r8
            r1.b = r9
            r1.e = r5
            java.lang.Object r3 = r9.lock(r6, r1)
            if (r3 != r2) goto L5b
            goto L87
        L5b:
            ads_mobile_sdk.k9 r3 = r8.i     // Catch: java.lang.Throwable -> L88
            if (r3 == 0) goto L8a
            java.util.List r5 = r8.j     // Catch: java.lang.Throwable -> L88
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r0)     // Catch: java.lang.Throwable -> L88
            kotlin.collections.CollectionsKt__MutableCollectionsKt.removeLastOrNull(r5)     // Catch: java.lang.Throwable -> L88
            java.util.List r5 = r8.j     // Catch: java.lang.Throwable -> L88
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r0)     // Catch: java.lang.Throwable -> L88
            java.lang.Object r0 = kotlin.collections.CollectionsKt___CollectionsKt.lastOrNull(r5)     // Catch: java.lang.Throwable -> L88
            android.view.View r0 = (android.view.View) r0     // Catch: java.lang.Throwable -> L88
            if (r0 != 0) goto L76
            ads_mobile_sdk.h41 r0 = r8.f     // Catch: java.lang.Throwable -> L88
        L76:
            ads_mobile_sdk.ee2 r5 = new ads_mobile_sdk.ee2     // Catch: java.lang.Throwable -> L88
            r5.<init>(r8, r3, r0, r6)     // Catch: java.lang.Throwable -> L88
            r1.a = r9     // Catch: java.lang.Throwable -> L88
            r1.b = r6     // Catch: java.lang.Throwable -> L88
            r1.e = r4     // Catch: java.lang.Throwable -> L88
            java.lang.Object r8 = r8.a(r5, r1)     // Catch: java.lang.Throwable -> L88
            if (r8 != r2) goto L8a
        L87:
            return r2
        L88:
            r8 = move-exception
            goto L94
        L8a:
            r8 = r9
        L8b:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L33
            r8.unlock(r6)
            return r9
        L91:
            r7 = r9
            r9 = r8
            r8 = r7
        L94:
            r9.unlock(r6)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.je2.c(ads_mobile_sdk.je2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x00b2, code lost:
    
        if (r9.a(r4, "onSdkImpression", r0) == r1) goto L44;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:38:0x009a A[Catch: all -> 0x0035, TRY_LEAVE, TryCatch #1 {all -> 0x0035, blocks: (B:14:0x0030, B:45:0x00b5, B:36:0x0092, B:38:0x009a, B:42:0x00a1), top: B:51:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v11, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v2, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object d(ads_mobile_sdk.je2 r8, kotlin.coroutines.Continuation r9) throws java.lang.Throwable {
        /*
            boolean r0 = r9 instanceof ads_mobile_sdk.fe2
            if (r0 == 0) goto L13
            r0 = r9
            ads_mobile_sdk.fe2 r0 = (ads_mobile_sdk.fe2) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.fe2 r0 = new ads_mobile_sdk.fe2
            r0.<init>(r8, r9)
        L18:
            java.lang.Object r9 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 3
            r4 = 2
            r5 = 1
            r6 = 0
            if (r2 == 0) goto L62
            if (r2 == r5) goto L53
            if (r2 == r4) goto L40
            if (r2 != r3) goto L38
            java.lang.Object r8 = r0.a
            kotlinx.coroutines.sync.Mutex r8 = (kotlinx.coroutines.sync.Mutex) r8
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L35
            goto Lb5
        L35:
            r9 = move-exception
            goto Lbb
        L38:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L40:
            java.lang.Object r8 = r0.b
            ads_mobile_sdk.r31 r8 = (ads_mobile_sdk.r31) r8
            java.lang.Object r2 = r0.a
            kotlinx.coroutines.sync.Mutex r2 = (kotlinx.coroutines.sync.Mutex) r2
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L50
            r7 = r9
            r9 = r8
            r8 = r2
            r2 = r7
            goto L92
        L50:
            r8 = move-exception
            goto Lbd
        L53:
            java.lang.Object r8 = r0.b
            kotlinx.coroutines.sync.Mutex r8 = (kotlinx.coroutines.sync.Mutex) r8
            java.lang.Object r2 = r0.a
            ads_mobile_sdk.je2 r2 = (ads_mobile_sdk.je2) r2
            kotlin.ResultKt.throwOnFailure(r9)
            r7 = r2
            r2 = r8
            r8 = r7
            goto L75
        L62:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlinx.coroutines.sync.Mutex r9 = r8.h
            r0.a = r8
            r0.b = r9
            r0.e = r5
            java.lang.Object r2 = r9.lock(r6, r0)
            if (r2 != r1) goto L74
            goto Lb4
        L74:
            r2 = r9
        L75:
            ads_mobile_sdk.h41 r9 = r8.f     // Catch: java.lang.Throwable -> L50
            ads_mobile_sdk.r31 r9 = r9.a     // Catch: java.lang.Throwable -> L50
            ads_mobile_sdk.k9 r5 = r8.i     // Catch: java.lang.Throwable -> L50
            if (r5 != 0) goto La0
            ads_mobile_sdk.ze2 r8 = r8.g     // Catch: java.lang.Throwable -> L50
            r0.a = r2     // Catch: java.lang.Throwable -> L50
            r0.b = r9     // Catch: java.lang.Throwable -> L50
            r0.e = r4     // Catch: java.lang.Throwable -> L50
            r8.getClass()     // Catch: java.lang.Throwable -> L50
            java.lang.Object r8 = ads_mobile_sdk.ze2.a(r8, r0)     // Catch: java.lang.Throwable -> L50
            if (r8 != r1) goto L8f
            goto Lb4
        L8f:
            r7 = r2
            r2 = r8
            r8 = r7
        L92:
            java.lang.Boolean r2 = (java.lang.Boolean) r2     // Catch: java.lang.Throwable -> L35
            boolean r2 = r2.booleanValue()     // Catch: java.lang.Throwable -> L35
            if (r2 != 0) goto La1
            kotlin.Unit r9 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L35
            r8.unlock(r6)
            return r9
        La0:
            r8 = r2
        La1:
            java.lang.String r2 = "onSdkImpression"
            com.google.gson.JsonObject r4 = new com.google.gson.JsonObject     // Catch: java.lang.Throwable -> L35
            r4.<init>()     // Catch: java.lang.Throwable -> L35
            r0.a = r8     // Catch: java.lang.Throwable -> L35
            r0.b = r6     // Catch: java.lang.Throwable -> L35
            r0.e = r3     // Catch: java.lang.Throwable -> L35
            java.lang.Object r9 = r9.a(r4, r2, r0)     // Catch: java.lang.Throwable -> L35
            if (r9 != r1) goto Lb5
        Lb4:
            return r1
        Lb5:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L35
            r8.unlock(r6)
            return r9
        Lbb:
            r2 = r8
            r8 = r9
        Lbd:
            r2.unlock(r6)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.je2.d(ads_mobile_sdk.je2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0075, code lost:
    
        if (ads_mobile_sdk.ze2.a(r7, r6, r0) == r1) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0085, code lost:
    
        if (r6.a(r7, (kotlin.coroutines.Continuation) r0) == r1) goto L34;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object e(ads_mobile_sdk.je2 r6, kotlin.coroutines.Continuation r7) {
        /*
            boolean r0 = r7 instanceof ads_mobile_sdk.ge2
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.ge2 r0 = (ads_mobile_sdk.ge2) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.ge2 r0 = new ads_mobile_sdk.ge2
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 3
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L41
            if (r2 == r5) goto L3b
            if (r2 == r4) goto L37
            if (r2 != r3) goto L2f
            kotlin.ResultKt.throwOnFailure(r7)
            goto L88
        L2f:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L37:
            kotlin.ResultKt.throwOnFailure(r7)
            goto L78
        L3b:
            ads_mobile_sdk.je2 r6 = r0.a
            kotlin.ResultKt.throwOnFailure(r7)
            goto L5d
        L41:
            kotlin.ResultKt.throwOnFailure(r7)
            ads_mobile_sdk.i2 r7 = r6.d
            boolean r7 = r7.P
            if (r7 != 0) goto L4d
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L4d:
            ads_mobile_sdk.ze2 r7 = r6.g
            r0.a = r6
            r0.d = r5
            r7.getClass()
            java.lang.Object r7 = ads_mobile_sdk.ze2.a(r7, r0)
            if (r7 != r1) goto L5d
            goto L87
        L5d:
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            boolean r7 = r7.booleanValue()
            r2 = 0
            if (r7 == 0) goto L7b
            ads_mobile_sdk.ze2 r7 = r6.g
            ads_mobile_sdk.h41 r6 = r6.f
            r0.a = r2
            r0.d = r4
            r7.getClass()
            java.lang.Object r6 = ads_mobile_sdk.ze2.a(r7, r6, r0)
            if (r6 != r1) goto L78
            goto L87
        L78:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L7b:
            ads_mobile_sdk.h41 r7 = r6.f
            r0.a = r2
            r0.d = r3
            java.lang.Object r6 = r6.a(r7, r0)
            if (r6 != r1) goto L88
        L87:
            return r1
        L88:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.je2.e(ads_mobile_sdk.je2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.df2
    public final Object a(View view, tx0 tx0Var, String str, Continuation continuation) {
        return a(this, (ViewGroup) view, tx0Var, str, continuation);
    }

    @Override // ads_mobile_sdk.ai1
    public final Object j(Continuation continuation) {
        return e(this, continuation);
    }

    @Override // ads_mobile_sdk.df2
    public final Object m(Continuation continuation) {
        return b(this, continuation);
    }

    @Override // ads_mobile_sdk.df2
    public final Object n(Continuation continuation) {
        return c(this, continuation);
    }

    @Override // ads_mobile_sdk.ai1
    public final Object r(Continuation continuation) {
        return d(this, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.je2 r10, android.view.ViewGroup r11, ads_mobile_sdk.tx0 r12, java.lang.String r13, kotlin.coroutines.Continuation r14) {
        /*
            boolean r0 = r14 instanceof ads_mobile_sdk.vd2
            if (r0 == 0) goto L13
            r0 = r14
            ads_mobile_sdk.vd2 r0 = (ads_mobile_sdk.vd2) r0
            int r1 = r0.g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.g = r1
            goto L18
        L13:
            ads_mobile_sdk.vd2 r0 = new ads_mobile_sdk.vd2
            r0.<init>(r10, r14)
        L18:
            java.lang.Object r14 = r0.e
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.g
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L44
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.ResultKt.throwOnFailure(r14)
            return r14
        L2c:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r11)
            throw r10
        L34:
            java.lang.String r13 = r0.d
            ads_mobile_sdk.tx0 r12 = r0.c
            android.view.View r11 = r0.b
            ads_mobile_sdk.je2 r10 = r0.a
            kotlin.ResultKt.throwOnFailure(r14)
        L3f:
            r5 = r10
            r6 = r11
            r7 = r12
            r8 = r13
            goto L5d
        L44:
            kotlin.ResultKt.throwOnFailure(r14)
            ads_mobile_sdk.ze2 r14 = r10.g
            r0.a = r10
            r0.b = r11
            r0.c = r12
            r0.d = r13
            r0.g = r4
            r14.getClass()
            java.lang.Object r14 = ads_mobile_sdk.ze2.a(r14, r0)
            if (r14 != r1) goto L3f
            goto L7c
        L5d:
            java.lang.Boolean r14 = (java.lang.Boolean) r14
            boolean r10 = r14.booleanValue()
            if (r10 == 0) goto L7e
            ads_mobile_sdk.wd2 r4 = new ads_mobile_sdk.wd2
            r9 = 0
            r4.<init>(r5, r6, r7, r8, r9)
            r10 = 0
            r0.a = r10
            r0.b = r10
            r0.c = r10
            r0.d = r10
            r0.g = r3
            java.lang.Object r10 = r5.a(r4, r0)
            if (r10 != r1) goto L7d
        L7c:
            return r1
        L7d:
            return r10
        L7e:
            kotlin.Unit r10 = kotlin.Unit.INSTANCE
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.je2.a(ads_mobile_sdk.je2, android.view.ViewGroup, ads_mobile_sdk.tx0, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0071, code lost:
    
        if (kotlinx.coroutines.BuildersKt.withContext(r9, r6, r0) == r1) goto L26;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [ads_mobile_sdk.h41] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r8v0, types: [ads_mobile_sdk.h41] */
    /* JADX WARN: Type inference failed for: r8v1, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v4, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r8v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.h41 r8, kotlin.coroutines.Continuation r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof ads_mobile_sdk.xd2
            if (r0 == 0) goto L13
            r0 = r9
            ads_mobile_sdk.xd2 r0 = (ads_mobile_sdk.xd2) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            ads_mobile_sdk.xd2 r0 = new ads_mobile_sdk.xd2
            r0.<init>(r7, r9)
        L18:
            java.lang.Object r9 = r0.d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L47
            if (r2 == r4) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r8 = r0.a
            kotlinx.coroutines.sync.Mutex r8 = (kotlinx.coroutines.sync.Mutex) r8
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L31
            goto L74
        L31:
            r9 = move-exception
            goto L7a
        L33:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L3b:
            kotlinx.coroutines.sync.Mutex r8 = r0.c
            ads_mobile_sdk.h41 r2 = r0.b
            java.lang.Object r4 = r0.a
            ads_mobile_sdk.je2 r4 = (ads_mobile_sdk.je2) r4
            kotlin.ResultKt.throwOnFailure(r9)
            goto L5e
        L47:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlinx.coroutines.sync.Mutex r9 = r7.h
            r0.a = r7
            r0.b = r8
            r0.c = r9
            r0.f = r4
            java.lang.Object r2 = r9.lock(r5, r0)
            if (r2 != r1) goto L5b
            goto L73
        L5b:
            r4 = r7
            r2 = r8
            r8 = r9
        L5e:
            kotlin.coroutines.CoroutineContext r9 = r4.b     // Catch: java.lang.Throwable -> L31
            ads_mobile_sdk.yd2 r6 = new ads_mobile_sdk.yd2     // Catch: java.lang.Throwable -> L31
            r6.<init>(r4, r2, r5)     // Catch: java.lang.Throwable -> L31
            r0.a = r8     // Catch: java.lang.Throwable -> L31
            r0.b = r5     // Catch: java.lang.Throwable -> L31
            r0.c = r5     // Catch: java.lang.Throwable -> L31
            r0.f = r3     // Catch: java.lang.Throwable -> L31
            java.lang.Object r9 = kotlinx.coroutines.BuildersKt.withContext(r9, r6, r0)     // Catch: java.lang.Throwable -> L31
            if (r9 != r1) goto L74
        L73:
            return r1
        L74:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L31
            r8.unlock(r5)
            return r9
        L7a:
            r8.unlock(r5)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.je2.a(ads_mobile_sdk.h41, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.df2
    public final Object a(c04 c04Var) {
        return a(this, c04Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.je2 r7, kotlin.coroutines.Continuation r8) throws java.lang.Throwable {
        /*
            boolean r0 = r8 instanceof ads_mobile_sdk.zd2
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.zd2 r0 = (ads_mobile_sdk.zd2) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.zd2 r0 = new ads_mobile_sdk.zd2
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L47
            if (r2 == r4) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r7 = r0.a
            kotlinx.coroutines.sync.Mutex r7 = (kotlinx.coroutines.sync.Mutex) r7
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L31
            goto L6e
        L31:
            r8 = move-exception
            goto L78
        L33:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L3b:
            kotlinx.coroutines.sync.Mutex r7 = r0.b
            java.lang.Object r2 = r0.a
            ads_mobile_sdk.je2 r2 = (ads_mobile_sdk.je2) r2
            kotlin.ResultKt.throwOnFailure(r8)
            r8 = r7
            r7 = r2
            goto L59
        L47:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.sync.Mutex r8 = r7.h
            r0.a = r7
            r0.b = r8
            r0.e = r4
            java.lang.Object r2 = r8.lock(r5, r0)
            if (r2 != r1) goto L59
            goto L6c
        L59:
            kotlin.coroutines.CoroutineContext r2 = r7.b     // Catch: java.lang.Throwable -> L74
            ads_mobile_sdk.be2 r4 = new ads_mobile_sdk.be2     // Catch: java.lang.Throwable -> L74
            r4.<init>(r7, r5)     // Catch: java.lang.Throwable -> L74
            r0.a = r8     // Catch: java.lang.Throwable -> L74
            r0.b = r5     // Catch: java.lang.Throwable -> L74
            r0.e = r3     // Catch: java.lang.Throwable -> L74
            java.lang.Object r7 = kotlinx.coroutines.BuildersKt.withContext(r2, r4, r0)     // Catch: java.lang.Throwable -> L74
            if (r7 != r1) goto L6d
        L6c:
            return r1
        L6d:
            r7 = r8
        L6e:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L31
            r7.unlock(r5)
            return r8
        L74:
            r7 = move-exception
            r6 = r8
            r8 = r7
            r7 = r6
        L78:
            r7.unlock(r5)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.je2.a(ads_mobile_sdk.je2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.df2
    public final Object a(View view, Continuation continuation) {
        return a(this, view, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object a(ads_mobile_sdk.je2 r6, android.view.View r7, kotlin.coroutines.Continuation r8) throws java.lang.Throwable {
        /*
            boolean r0 = r8 instanceof ads_mobile_sdk.he2
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.he2 r0 = (ads_mobile_sdk.he2) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            ads_mobile_sdk.he2 r0 = new ads_mobile_sdk.he2
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L49
            if (r2 == r4) goto L3d
            if (r2 != r3) goto L35
            kotlinx.coroutines.sync.Mutex r6 = r0.c
            android.view.View r7 = r0.b
            ads_mobile_sdk.je2 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L33
            goto L77
        L33:
            r7 = move-exception
            goto L87
        L35:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3d:
            kotlinx.coroutines.sync.Mutex r6 = r0.c
            android.view.View r7 = r0.b
            ads_mobile_sdk.je2 r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r8)
            r8 = r6
            r6 = r2
            goto L5d
        L49:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.sync.Mutex r8 = r6.h
            r0.a = r6
            r0.b = r7
            r0.c = r8
            r0.f = r4
            java.lang.Object r2 = r8.lock(r5, r0)
            if (r2 != r1) goto L5d
            goto L74
        L5d:
            ads_mobile_sdk.k9 r2 = r6.i     // Catch: java.lang.Throwable -> L7d
            if (r2 == 0) goto L80
            ads_mobile_sdk.ie2 r4 = new ads_mobile_sdk.ie2     // Catch: java.lang.Throwable -> L7d
            r4.<init>(r6, r2, r7, r5)     // Catch: java.lang.Throwable -> L7d
            r0.a = r6     // Catch: java.lang.Throwable -> L7d
            r0.b = r7     // Catch: java.lang.Throwable -> L7d
            r0.c = r8     // Catch: java.lang.Throwable -> L7d
            r0.f = r3     // Catch: java.lang.Throwable -> L7d
            java.lang.Object r0 = r6.a(r4, r0)     // Catch: java.lang.Throwable -> L7d
            if (r0 != r1) goto L75
        L74:
            return r1
        L75:
            r0 = r6
            r6 = r8
        L77:
            java.util.List r8 = r0.j     // Catch: java.lang.Throwable -> L33
            r8.add(r7)     // Catch: java.lang.Throwable -> L33
            goto L81
        L7d:
            r7 = move-exception
            r6 = r8
            goto L87
        L80:
            r6 = r8
        L81:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L33
            r6.unlock(r5)
            return r7
        L87:
            r6.unlock(r5)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.je2.a(ads_mobile_sdk.je2, android.view.View, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
