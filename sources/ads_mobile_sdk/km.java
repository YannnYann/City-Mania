package ads_mobile_sdk;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class km {
    public final Context a;
    public final ur3 b;
    public float c;
    public boolean d;

    public km(Context applicationContext, ur3 traceLogger) {
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        this.a = applicationContext;
        this.b = traceLogger;
        this.c = 1.0f;
    }

    public final void a(boolean z) {
        this.d = z;
    }

    public final void a(float f) {
        this.c = f;
    }
}
