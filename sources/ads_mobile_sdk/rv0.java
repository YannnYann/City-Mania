package ads_mobile_sdk;

import android.R;
import android.app.Activity;
import android.graphics.Rect;
import android.net.Uri;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialRequest;
import com.google.common.base.Splitter;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes.dex */
public final class rv0 implements rm3, ld, ai1 {
    public final AtomicReference A;
    public final CoroutineScope a;
    public final CoroutineScope b;
    public final String c;
    public final rb d;
    public final SwipeableInterstitialRequest e;
    public final f0 f;
    public final g83 g;
    public final d63 h;
    public final tx i;
    public final ex0 j;
    public final c24 k;
    public View l;
    public r31 m;
    public final AtomicBoolean n;
    public final AtomicInteger o;
    public boolean p;
    public boolean q;
    public final qb3 r;
    public final boolean s;
    public final String t;
    public final String u;
    public final String v;
    public final int w;
    public final boolean x;
    public final nn3 y;
    public Job z;

    public rv0(CoroutineScope uiScope, CoroutineScope backgroundScope, String afmaVersion, h41 view, rb adSpamClient, i2 adConfiguration, SwipeableInterstitialRequest adRequest, f0 activityTracker, g83 rootTraceCreator, d63 retryingUrlPinger, tx clock, ex0 flags, c24 webViewViewabilityMonitor) {
        List list;
        List list2;
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(afmaVersion, "afmaVersion");
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(adSpamClient, "adSpamClient");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(retryingUrlPinger, "retryingUrlPinger");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(webViewViewabilityMonitor, "webViewViewabilityMonitor");
        this.a = uiScope;
        this.b = backgroundScope;
        this.c = afmaVersion;
        this.d = adSpamClient;
        this.e = adRequest;
        this.f = activityTracker;
        this.g = rootTraceCreator;
        this.h = retryingUrlPinger;
        this.i = clock;
        this.j = flags;
        this.k = webViewViewabilityMonitor;
        a(view, view.a());
        this.n = new AtomicBoolean(false);
        this.o = new AtomicInteger(0);
        qm3 qm3Var = adConfiguration.v0;
        qb3 qb3Var = qm3Var != null ? qm3Var.b : null;
        this.r = qb3Var;
        this.s = qb3Var != null;
        this.t = (qm3Var == null || (list2 = qm3Var.d) == null) ? null : (String) CollectionsKt___CollectionsKt.getOrNull(list2, 0);
        qm3 qm3Var2 = adConfiguration.v0;
        this.u = (qm3Var2 == null || (list = qm3Var2.d) == null) ? null : (String) CollectionsKt___CollectionsKt.getOrNull(list, 1);
        qm3 qm3Var3 = adConfiguration.v0;
        this.v = qm3Var3 != null ? qm3Var3.c : null;
        int i = qm3Var3 != null ? qm3Var3.a : 0;
        this.w = i;
        this.x = i > 0;
        this.y = a(qb3Var);
        this.A = new AtomicReference(null);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object b(kotlin.coroutines.Continuation r18) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            boolean r2 = r1 instanceof ads_mobile_sdk.jv0
            if (r2 == 0) goto L17
            r2 = r1
            ads_mobile_sdk.jv0 r2 = (ads_mobile_sdk.jv0) r2
            int r3 = r2.e
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = r3 & r4
            if (r5 == 0) goto L17
            int r3 = r3 - r4
            r2.e = r3
            goto L1c
        L17:
            ads_mobile_sdk.jv0 r2 = new ads_mobile_sdk.jv0
            r2.<init>(r0, r1)
        L1c:
            java.lang.Object r1 = r2.c
            java.lang.Object r3 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r4 = r2.e
            r5 = 2
            r6 = 1
            r7 = 0
            if (r4 == 0) goto L41
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
            java.lang.String r4 = r2.b
            ads_mobile_sdk.r31 r8 = r2.a
            kotlin.ResultKt.throwOnFailure(r1)
            goto L81
        L41:
            kotlin.ResultKt.throwOnFailure(r1)
            ads_mobile_sdk.r31 r8 = r0.m
            if (r8 != 0) goto L4b
            kotlin.Unit r1 = kotlin.Unit.INSTANCE
            return r1
        L4b:
            ads_mobile_sdk.ky r1 = ads_mobile_sdk.ky.a
            r1 = 4
            java.lang.String r4 = java.lang.String.valueOf(r1)
            com.google.gson.JsonObject r1 = new com.google.gson.JsonObject
            r1.<init>()
            java.lang.String r9 = "closetype"
            r1.addProperty(r9, r4)
            java.lang.String r9 = r0.c
            java.lang.String r10 = "version"
            r1.addProperty(r10, r9)
            kotlinx.coroutines.CoroutineScope r11 = r0.a
            ads_mobile_sdk.kv0 r14 = new ads_mobile_sdk.kv0
            r14.<init>(r8, r1, r7)
            r15 = 3
            r16 = 0
            r12 = 0
            r13 = 0
            kotlinx.coroutines.BuildersKt.launch$default(r11, r12, r13, r14, r15, r16)
            r2.a = r8
            r2.b = r4
            r2.e = r6
            java.lang.String r1 = "aeh2"
            java.lang.Object r1 = r8.d(r1, r2)
            if (r1 != r3) goto L81
            goto L9c
        L81:
            r2.a = r7
            r2.b = r7
            r2.e = r5
            ads_mobile_sdk.mb0 r1 = r8.d
            if (r1 == 0) goto L9a
            java.lang.String r5 = "close_type"
            java.lang.Object r7 = r1.a(r5, r4, r6, r2)
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r7 != r1) goto L98
            goto L9a
        L98:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
        L9a:
            if (r7 != r3) goto L9d
        L9c:
            return r3
        L9d:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.rv0.b(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x008c, code lost:
    
        if (r4 == r1) goto L34;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object s(kotlin.coroutines.Continuation r15) {
        /*
            r14 = this;
            boolean r0 = r15 instanceof ads_mobile_sdk.lv0
            if (r0 == 0) goto L13
            r0 = r15
            ads_mobile_sdk.lv0 r0 = (ads_mobile_sdk.lv0) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.lv0 r0 = new ads_mobile_sdk.lv0
            r0.<init>(r14, r15)
        L18:
            java.lang.Object r15 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 2
            r4 = 0
            r5 = 1
            if (r2 == 0) goto L3b
            if (r2 == r5) goto L35
            if (r2 != r3) goto L2d
            kotlin.ResultKt.throwOnFailure(r15)
            goto L8f
        L2d:
            java.lang.IllegalStateException r15 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r15.<init>(r0)
            throw r15
        L35:
            ads_mobile_sdk.r31 r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r15)
            goto L75
        L3b:
            kotlin.ResultKt.throwOnFailure(r15)
            boolean r15 = r14.q
            if (r15 == 0) goto L45
            kotlin.Unit r15 = kotlin.Unit.INSTANCE
            return r15
        L45:
            r14.q = r5
            ads_mobile_sdk.r31 r2 = r14.m
            if (r2 != 0) goto L4e
            kotlin.Unit r15 = kotlin.Unit.INSTANCE
            return r15
        L4e:
            com.google.gson.JsonObject r15 = new com.google.gson.JsonObject
            r15.<init>()
            java.lang.String r6 = r14.c
            java.lang.String r7 = "version"
            r15.addProperty(r7, r6)
            kotlinx.coroutines.CoroutineScope r8 = r14.a
            ads_mobile_sdk.mv0 r11 = new ads_mobile_sdk.mv0
            r11.<init>(r2, r15, r4)
            r12 = 3
            r13 = 0
            r9 = 0
            r10 = 0
            kotlinx.coroutines.BuildersKt.launch$default(r8, r9, r10, r11, r12, r13)
            r0.a = r2
            r0.d = r5
            java.lang.String r15 = "aes2"
            java.lang.Object r15 = r2.d(r15, r0)
            if (r15 != r1) goto L75
            goto L8e
        L75:
            r0.a = r4
            r0.d = r3
            ads_mobile_sdk.mb0 r15 = r2.d
            if (r15 == 0) goto L8c
            java.lang.String r2 = "native:view_show"
            java.lang.Object r4 = ads_mobile_sdk.mb0.a(r15, r2, r0)
            java.lang.Object r15 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r4 != r15) goto L8a
            goto L8c
        L8a:
            ads_mobile_sdk.ir3 r4 = (ads_mobile_sdk.ir3) r4
        L8c:
            if (r4 != r1) goto L8f
        L8e:
            return r1
        L8f:
            kotlin.Unit r15 = kotlin.Unit.INSTANCE
            return r15
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.rv0.s(kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static nn3 a(qb3 qb3Var) {
        int i = qb3Var == null ? -1 : hv0.a[qb3Var.ordinal()];
        return i != 1 ? i != 2 ? nn3.VIDEO_AUTO_PLAY_START_TIME_UNKNOWN : nn3.VIDEO_AUTO_PLAY_START_TIME_AD_SETTLED : nn3.VIDEO_AUTO_PLAY_START_TIME_ONE_PIXEL;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(boolean r6, kotlin.coroutines.Continuation r7) throws java.lang.InterruptedException {
        /*
            r5 = this;
            boolean r0 = r7 instanceof ads_mobile_sdk.nv0
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.nv0 r0 = (ads_mobile_sdk.nv0) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.nv0 r0 = new ads_mobile_sdk.nv0
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L34
            if (r2 != r4) goto L2c
            ads_mobile_sdk.rv0 r6 = r0.a
            kotlin.ResultKt.throwOnFailure(r7)
            goto L55
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L34:
            kotlin.ResultKt.throwOnFailure(r7)
            boolean r7 = r5.p
            if (r7 != 0) goto L3e
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L3e:
            r5.p = r3
            if (r6 == 0) goto L49
            ads_mobile_sdk.c24 r6 = r5.k
            ads_mobile_sdk.gy3 r7 = ads_mobile_sdk.gy3.b
            r6.b(r7)
        L49:
            r0.a = r5
            r0.d = r4
            java.lang.Object r6 = r5.b(r0)
            if (r6 != r1) goto L54
            return r1
        L54:
            r6 = r5
        L55:
            r6.q = r3
            kotlinx.coroutines.Job r7 = r6.z
            r0 = 0
            if (r7 == 0) goto L5f
            kotlinx.coroutines.Job.DefaultImpls.cancel$default(r7, r0, r4, r0)
        L5f:
            r6.z = r0
            java.util.concurrent.atomic.AtomicBoolean r7 = r6.n
            boolean r7 = r7.getAndSet(r3)
            if (r7 == 0) goto L7d
            ads_mobile_sdk.f0 r7 = r6.f
            boolean r7 = r7.i()
            ads_mobile_sdk.s11 r0 = ads_mobile_sdk.s11.CUI_NAME_SI_SETTLE_END
            r6.a(r0, r7)
            if (r7 != 0) goto L7d
            java.lang.String r7 = r6.u
            if (r7 == 0) goto L7d
            r6.a(r7)
        L7d:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.rv0.a(boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static boolean a(View view, View view2, HashSet hashSet) {
        if (view.getVisibility() == 0 && view.getWindowVisibility() != 8 && view.isAttachedToWindow() && !Intrinsics.areEqual(view, view2)) {
            boolean globalVisibleRect = view.getGlobalVisibleRect(new Rect());
            boolean zContains = hashSet.contains(view);
            if (globalVisibleRect && !zContains) {
                int[] iArr = new int[2];
                view.getLocationOnScreen(iArr);
                int i = iArr[0];
                Rect rect = new Rect(i, iArr[1], view.getWidth() + i, view.getHeight() + iArr[1]);
                int[] iArr2 = new int[2];
                view2.getLocationOnScreen(iArr2);
                int i2 = iArr2[0];
                Rect rect2 = new Rect(i2, iArr2[1], view2.getWidth() + i2, view2.getHeight() + iArr2[1]);
                int iWidth = rect2.width();
                int iHeight = rect2.height();
                if (rect2.intersect(rect) && rect2.width() >= iWidth && rect2.height() >= iHeight) {
                    Splitter splitter = f01.a;
                    f01.b("Swipeable Interstitial ad view is fully obscured by " + view, null);
                    return true;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i3 = 0; i3 < childCount; i3++) {
                    View childAt = viewGroup.getChildAt(i3);
                    Intrinsics.checkNotNullExpressionValue(childAt, "getChildAt(...)");
                    if (a(childAt, view2, hashSet)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // ads_mobile_sdk.ai1
    public final Object a(Continuation continuation) {
        this.l = null;
        this.m = null;
        if (this.n.getAndSet(false)) {
            a(s11.CUI_NAME_SI_SETTLE_END, false);
            String str = this.u;
            if (str != null) {
                a(str);
            }
        }
        this.o.set(0);
        this.q = false;
        Job job = this.z;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, null, 1, null);
        }
        this.z = null;
        return Unit.INSTANCE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0053, code lost:
    
        if (s(r0) == r1) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x007e, code lost:
    
        if (a(false, (kotlin.coroutines.Continuation) r0) == r1) goto L36;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // ads_mobile_sdk.ld
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.ey3 r7, kotlin.coroutines.Continuation r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof ads_mobile_sdk.ov0
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.ov0 r0 = (ads_mobile_sdk.ov0) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.ov0 r0 = new ads_mobile_sdk.ov0
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3a
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.ResultKt.throwOnFailure(r8)
            goto L81
        L2c:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L34:
            ads_mobile_sdk.rv0 r7 = r0.a
            kotlin.ResultKt.throwOnFailure(r8)
            goto L57
        L3a:
            kotlin.ResultKt.throwOnFailure(r8)
            boolean r7 = r7.b
            boolean r8 = r6.p
            if (r7 == 0) goto L73
            if (r8 != 0) goto L73
            r6.p = r4
            boolean r7 = r6.s
            if (r7 != 0) goto L56
            r0.a = r6
            r0.d = r4
            java.lang.Object r7 = r6.s(r0)
            if (r7 != r1) goto L56
            goto L80
        L56:
            r7 = r6
        L57:
            kotlinx.coroutines.Job r8 = r7.z
            if (r8 == 0) goto L5c
            goto L84
        L5c:
            android.view.View r8 = r7.l
            if (r8 != 0) goto L61
            goto L84
        L61:
            kotlinx.coroutines.CoroutineScope r0 = r7.a
            ads_mobile_sdk.pv0 r3 = new ads_mobile_sdk.pv0
            r1 = 0
            r3.<init>(r7, r8, r1)
            r4 = 3
            r5 = 0
            r2 = 0
            kotlinx.coroutines.Job r8 = kotlinx.coroutines.BuildersKt.launch$default(r0, r1, r2, r3, r4, r5)
            r7.z = r8
            goto L84
        L73:
            if (r7 != 0) goto L84
            if (r8 == 0) goto L84
            r0.d = r3
            r7 = 0
            java.lang.Object r7 = r6.a(r7, r0)
            if (r7 != r1) goto L81
        L80:
            return r1
        L81:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        L84:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.rv0.a(ads_mobile_sdk.ey3, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final boolean f() {
        View viewFindViewById;
        f01.b("Swipeable Interstitial ad checking for obscuration", null);
        View view = this.l;
        if (view == null) {
            f01.b("Swipeable Interstitial ad view is null", null);
            return false;
        }
        Activity activityG = this.f.g();
        if (activityG == null || (viewFindViewById = activityG.findViewById(R.id.content)) == null) {
            return true;
        }
        HashSet hashSet = new HashSet();
        for (ViewParent parent = view.getParent(); parent != null; parent = parent.getParent()) {
            if (parent instanceof View) {
                hashSet.add(parent);
            }
        }
        boolean zA = a(viewFindViewById, view, hashSet);
        Splitter splitter = f01.a;
        f01.b("Swipeable Interstitial ad view is fully obscured: " + zA, null);
        return zA;
    }

    public final void a(String str) {
        String str2 = this.v;
        if (str2 == null) {
            return;
        }
        this.i.getClass();
        d63.a(this.h, CollectionsKt__CollectionsJVMKt.listOf(Uri.parse(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(str2, "@label@", str, false, 4, (Object) null), "@shts@", String.valueOf(System.currentTimeMillis() / ((long) 100)), false, 4, (Object) null))));
    }

    public final void a(View view, r31 gmaWebView) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(gmaWebView, "gmaWebView");
        this.l = view;
        this.m = gmaWebView;
    }

    public final void a(s11 s11Var, boolean z) {
        BuildersKt__Builders_commonKt.launch$default(this.b, null, null, new qv0(this, s11Var, (on3) on3.v().b(this.o.get()).a(this.w).a(this.y).a(z).b(), null), 3, null);
    }
}
