package ads_mobile_sdk;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Process;
import com.google.android.libraries.ads.mobile.sdk.initialization.InitializationConfig;
import com.ironsource.C3522b4;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ob3 extends pl3 {
    public final String d;
    public final ex0 e;
    public final Context f;
    public final o21 g;
    public final String h;
    public final ja1 i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ob3(String afmaVersion, ex0 flags, Context context, o21 gmaUtil, String gmaVersion, ja1 initializationConfigWrapper) {
        super(s11.CUI_NAME_SDKINIT_INIT_ENVIRONMENT_SIGNAL);
        Intrinsics.checkNotNullParameter(afmaVersion, "afmaVersion");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(gmaUtil, "gmaUtil");
        Intrinsics.checkNotNullParameter(gmaVersion, "gmaVersion");
        Intrinsics.checkNotNullParameter(initializationConfigWrapper, "initializationConfigWrapper");
        this.d = afmaVersion;
        this.e = flags;
        this.f = context;
        this.g = gmaUtil;
        this.h = gmaVersion;
        this.i = initializationConfigWrapper;
    }

    @Override // ads_mobile_sdk.rh3
    public final y11 f() {
        return y11.SDK_ENV;
    }

    @Override // ads_mobile_sdk.rh3
    public final Object s(Continuation continuation) {
        ApplicationInfo applicationInfo = this.f.getApplicationInfo();
        int i = applicationInfo != null ? applicationInfo.targetSdkVersion : 0;
        String str = this.d;
        ex0 ex0Var = this.e;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:sdk_core_constants:caps", C3522b4.i.W);
        Intrinsics.checkNotNullParameter("", "defaultValue");
        String str2 = (String) ex0Var.a("gads:sdk_core_constants:caps", "", yr.o);
        String str3 = this.h;
        boolean zC = this.g.c();
        this.g.getClass();
        int iMyUid = Process.myUid();
        boolean z = iMyUid == 0 || iMyUid == 1000 || iMyUid == 1001 || iMyUid == 1002 || iMyUid == 1027;
        InitializationConfig initializationConfigA = this.i.a();
        return new q01(new nb3(str, str2, i, str3, zC, z, (initializationConfigA != null ? initializationConfigA.getAdapterInitializationConfig() : null) != null));
    }
}
