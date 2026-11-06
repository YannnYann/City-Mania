package ads_mobile_sdk;

import android.content.Context;
import androidx.webkit.Profile;
import androidx.webkit.WebViewFeature;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class ns {
    public final Context a;
    public final q04 b;
    public final ex0 c;

    public ns(Context context, q04 webViewProfileNameHelper, ex0 flags) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(webViewProfileNameHelper, "webViewProfileNameHelper");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.a = context;
        this.b = webViewProfileNameHelper;
        this.c = flags;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0046 A[Catch: all -> 0x004b, TRY_LEAVE, TryCatch #0 {all -> 0x004b, blocks: (B:3:0x0007, B:6:0x0023, B:8:0x003b, B:9:0x0046), top: B:15:0x0007 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a(ads_mobile_sdk.rz r6, boolean r7, ads_mobile_sdk.wz3 r8) {
        /*
            r5 = this;
            java.lang.String r0 = "key"
            java.lang.String r1 = "executor"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r1)
            ads_mobile_sdk.ex0 r1 = r5.c     // Catch: java.lang.Throwable -> L4b
            r1.getClass()     // Catch: java.lang.Throwable -> L4b
            java.lang.String r2 = "gads:webview_profile:enabled"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)     // Catch: java.lang.Throwable -> L4b
            java.lang.Boolean r3 = java.lang.Boolean.TRUE     // Catch: java.lang.Throwable -> L4b
            ads_mobile_sdk.ir r4 = ads_mobile_sdk.yr.b     // Catch: java.lang.Throwable -> L4b
            java.lang.Object r1 = r1.a(r2, r3, r4)     // Catch: java.lang.Throwable -> L4b
            java.lang.Boolean r1 = (java.lang.Boolean) r1     // Catch: java.lang.Throwable -> L4b
            boolean r1 = r1.booleanValue()     // Catch: java.lang.Throwable -> L4b
            java.lang.String r2 = "Default"
            if (r1 == 0) goto L46
            ads_mobile_sdk.ex0 r1 = r5.c     // Catch: java.lang.Throwable -> L4b
            r1.getClass()     // Catch: java.lang.Throwable -> L4b
            java.lang.String r3 = "gads:init_profile_during_webview_startup:enabled"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)     // Catch: java.lang.Throwable -> L4b
            java.lang.Boolean r0 = java.lang.Boolean.FALSE     // Catch: java.lang.Throwable -> L4b
            java.lang.Object r0 = r1.a(r3, r0, r4)     // Catch: java.lang.Throwable -> L4b
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L4b
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L4b
            if (r0 == 0) goto L46
            java.lang.String r0 = "GMA_WEBVIEW_PROFILE"
            java.lang.String[] r0 = new java.lang.String[]{r0, r2}     // Catch: java.lang.Throwable -> L4b
            java.util.Set r0 = kotlin.collections.SetsKt__SetsKt.setOf(r0)     // Catch: java.lang.Throwable -> L4b
            goto L4f
        L46:
            java.util.Set r0 = kotlin.collections.SetsKt__SetsJVMKt.setOf(r2)     // Catch: java.lang.Throwable -> L4b
            goto L4f
        L4b:
            java.util.Set r0 = kotlin.collections.SetsKt__SetsKt.emptySet()
        L4f:
            java.util.concurrent.atomic.AtomicBoolean r1 = ads_mobile_sdk.az3.a
            android.content.Context r1 = r5.a
            ads_mobile_sdk.az3.a(r1, r6, r7, r0, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ns.a(ads_mobile_sdk.rz, boolean, ads_mobile_sdk.wz3):void");
    }

    public final boolean a() {
        Profile profile;
        if (!WebViewFeature.isFeatureSupported(WebViewFeature.MULTI_PROFILE)) {
            return false;
        }
        r14 r14Var = (r14) this.b;
        r14Var.getClass();
        try {
            profile = r14Var.m;
        } catch (Throwable unused) {
        }
        String name = profile != null ? profile.getName() : null;
        if (name != null || !((r14) this.b).g()) {
            return name != null && Intrinsics.areEqual(name, "GMA_WEBVIEW_PROFILE");
        }
        r14 r14Var2 = (r14) this.b;
        r14Var2.getClass();
        Intrinsics.checkNotNullParameter("GMA_WEBVIEW_PROFILE", "profileName");
        BuildersKt__Builders_commonKt.launch$default(r14Var2.e, null, null, new p14(r14Var2, "GMA_WEBVIEW_PROFILE", null), 3, null);
        return true;
    }
}
