package ads_mobile_sdk;

import android.net.Uri;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class d63 {
    public final i2 a;
    public final zy b;
    public final c63 c;

    public d63(i2 adConfiguration, zy commonConfiguration, c63 retryingUrlPinger) {
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(commonConfiguration, "commonConfiguration");
        Intrinsics.checkNotNullParameter(retryingUrlPinger, "retryingUrlPinger");
        this.a = adConfiguration;
        this.b = commonConfiguration;
        this.c = retryingUrlPinger;
    }

    public static void a(d63 d63Var, Uri uri) {
        Boolean bool = Boolean.FALSE;
        d63Var.getClass();
        Intrinsics.checkNotNullParameter(uri, "uri");
        d63Var.c.a(uri, d63Var.a, d63Var.b, (v3) null, bool, (ks3) null);
    }

    public static void a(d63 d63Var, List uris) {
        Boolean bool = Boolean.FALSE;
        d63Var.getClass();
        Intrinsics.checkNotNullParameter(uris, "uris");
        c63.a(d63Var.c, uris, d63Var.a, d63Var.b, null, bool, 32);
    }
}
