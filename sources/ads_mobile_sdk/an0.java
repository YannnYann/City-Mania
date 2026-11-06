package ads_mobile_sdk;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class an0 extends nc1 {
    public final Context c;
    public final ur3 d;
    public final PackageManager e;
    public final Lazy f;
    public final Lazy g;
    public final Lazy h;
    public final Lazy i;
    public final Lazy j;
    public final Lazy k;
    public final Lazy l;
    public final Lazy m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public an0(Context context, ur3 traceLogger) {
        super(s11.CUI_NAME_DEVICE_PROPERTIES_INIT_TASK, 2);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        this.c = context;
        this.d = traceLogger;
        this.e = context.getPackageManager();
        this.f = LazyKt__LazyJVMKt.lazy(new tm0(this));
        this.g = LazyKt__LazyJVMKt.lazy(new xm0(this));
        this.h = LazyKt__LazyJVMKt.lazy(vm0.a);
        this.i = LazyKt__LazyJVMKt.lazy(new zm0(this));
        this.j = LazyKt__LazyJVMKt.lazy(new ym0(this));
        this.k = LazyKt__LazyJVMKt.lazy(new um0(this));
        this.l = LazyKt__LazyJVMKt.lazy(new sm0(this));
        this.m = LazyKt__LazyJVMKt.lazy(new wm0(this));
    }

    public final boolean i() {
        if (Intrinsics.areEqual(Environment.getExternalStorageState(), "mounted")) {
            return Build.VERSION.SDK_INT >= 30 || this.c.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0;
        }
        return false;
    }

    @Override // ads_mobile_sdk.nc1
    public final Object u(Continuation continuation) {
        this.f.getValue();
        this.h.getValue();
        this.g.getValue();
        this.i.getValue();
        this.j.getValue();
        this.k.getValue();
        this.l.getValue();
        this.m.getValue();
        return new q01(Unit.INSTANCE);
    }

    public static final ResolveInfo a(an0 an0Var, PackageManager packageManager) {
        an0Var.getClass();
        return packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.google.android.gms.ads")), 65536);
    }

    public final boolean g() {
        return ((Boolean) this.f.getValue()).booleanValue();
    }

    public final boolean a(Intent intent) {
        PackageManager packageManager = this.c.getPackageManager();
        if (packageManager != null) {
            if (Build.VERSION.SDK_INT >= 33) {
                List listQueryIntentActivities = packageManager.queryIntentActivities(intent, PackageManager.ResolveInfoFlags.of(0L));
                Intrinsics.checkNotNullExpressionValue(listQueryIntentActivities, "queryIntentActivities(...)");
                if (!listQueryIntentActivities.isEmpty()) {
                    return true;
                }
            } else {
                List<ResolveInfo> listQueryIntentActivities2 = packageManager.queryIntentActivities(intent, 0);
                Intrinsics.checkNotNullExpressionValue(listQueryIntentActivities2, "queryIntentActivities(...)");
                if (!listQueryIntentActivities2.isEmpty()) {
                    return true;
                }
            }
        }
        return false;
    }
}
