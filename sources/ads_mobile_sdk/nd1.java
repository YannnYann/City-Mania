package ads_mobile_sdk;

import com.google.gson.Gson;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class nd1 {
    public final if1 a;
    public final tx b;
    public final Gson c;
    public final ex0 d;

    public nd1(if1 inspectorManager, tx clock, Gson gson, ex0 flags) {
        Intrinsics.checkNotNullParameter(inspectorManager, "inspectorManager");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(gson, "gson");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.a = inspectorManager;
        this.b = clock;
        this.c = gson;
        this.d = flags;
    }
}
