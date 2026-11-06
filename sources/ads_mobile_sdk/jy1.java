package ads_mobile_sdk;

import android.content.Context;
import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class jy1 implements r41 {
    public final Context a;
    public final f0 b;
    public final ix1 c;
    public final String d;
    public final CoroutineScope e;
    public final an0 f;

    public jy1(Context context, f0 activityTracker, ix1 dispatcher, String afmaVersion, CoroutineScope uiScope, an0 deviceProperties) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        Intrinsics.checkNotNullParameter(afmaVersion, "afmaVersion");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(deviceProperties, "deviceProperties");
        this.a = context;
        this.b = activityTracker;
        this.c = dispatcher;
        this.d = afmaVersion;
        this.e = uiScope;
        this.f = deviceProperties;
    }

    @Override // ads_mobile_sdk.r41
    public final u11 g() {
        return u11.GMSG_MRAID_LOADED;
    }

    @Override // ads_mobile_sdk.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        BuildersKt__Builders_commonKt.launch$default(this.e, null, null, new fy1(this, r31Var, null), 3, null);
        BuildersKt__Builders_commonKt.launch$default(this.e, null, null, new gy1(this, r31Var, null), 3, null);
        BuildersKt__Builders_commonKt.launch$default(this.e, null, null, new hy1(this, r31Var, null), 3, null);
        BuildersKt__Builders_commonKt.launch$default(this.e, null, null, new iy1(this, r31Var, null), 3, null);
        return Unit.INSTANCE;
    }
}
