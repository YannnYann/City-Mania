package ads_mobile_sdk;

import android.net.Uri;
import com.ironsource.C3522b4;
import java.io.File;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class ry1 implements oy1 {
    public static final long d;
    public static final long e;
    public final ex0 a;
    public final zw3 b;
    public final e01 c;

    static {
        Duration.Companion companion = Duration.Companion;
        d = DurationKt.toDuration(60, DurationUnit.SECONDS);
        e = Duration.m2883getInWholeSecondsimpl(DurationKt.toDuration(1, DurationUnit.HOURS));
    }

    public ry1(ex0 flags, zw3 userAgentProvider, e01 httpClient) {
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(userAgentProvider, "userAgentProvider");
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        this.a = flags;
        this.b = userAgentProvider;
        this.c = httpClient;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00aa, code lost:
    
        if (r12 == r2) goto L32;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.r31 r10, android.webkit.WebResourceRequest r11, kotlin.coroutines.Continuation r12) {
        /*
            Method dump skipped, instruction units count: 216
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ry1.a(ads_mobile_sdk.r31, android.webkit.WebResourceRequest, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final String a(Uri uri, r31 r31Var) {
        String path = uri.getPath();
        if (path == null || !StringsKt__StringsJVMKt.equals(new File(path).getName(), "mraid.js", true)) {
            return null;
        }
        if (r31Var.o.get()) {
            ex0 ex0Var = this.a;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gad:mraid:url_expanded_banner", C3522b4.i.W);
            Intrinsics.checkNotNullParameter("https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/production/mraid/v3/mraid_app_expanded_banner.js", "defaultValue");
            return (String) ex0Var.a("gad:mraid:url_expanded_banner", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/production/mraid/v3/mraid_app_expanded_banner.js", yr.o);
        }
        if (r31Var.e().a == u14.d) {
            ex0 ex0Var2 = this.a;
            ex0Var2.getClass();
            Intrinsics.checkNotNullParameter("gad:mraid:url_interstitial", C3522b4.i.W);
            Intrinsics.checkNotNullParameter("https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/production/mraid/v3/mraid_app_interstitial.js", "defaultValue");
            return (String) ex0Var2.a("gad:mraid:url_interstitial", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/production/mraid/v3/mraid_app_interstitial.js", yr.o);
        }
        ex0 ex0Var3 = this.a;
        ex0Var3.getClass();
        Intrinsics.checkNotNullParameter("gad:mraid:url_banner", C3522b4.i.W);
        Intrinsics.checkNotNullParameter("https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/production/mraid/v3/mraid_app_banner.js", "defaultValue");
        return (String) ex0Var3.a("gad:mraid:url_banner", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/production/mraid/v3/mraid_app_banner.js", yr.o);
    }
}
