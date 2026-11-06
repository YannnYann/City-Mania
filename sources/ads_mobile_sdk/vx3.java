package ads_mobile_sdk;

import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class vx3 implements r41 {
    public final ur3 a;
    public final CoroutineScope b;

    public vx3(ur3 traceLogger, CoroutineScope uiScope) {
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        this.a = traceLogger;
        this.b = uiScope;
    }

    @Override // ads_mobile_sdk.r41
    public final u11 g() {
        return u11.GMSG_VIDEO_METADATA;
    }

    @Override // ads_mobile_sdk.r41
    public final boolean i() {
        return true;
    }

    @Override // ads_mobile_sdk.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        k41 k41Var;
        try {
            q41 q41VarD = r31Var.d();
            String str = (String) map.get("duration");
            if (str != null) {
                float f = Float.parseFloat(str);
                if (q41VarD == null) {
                    boolean zAreEqual = Intrinsics.areEqual("1", map.get("customControlsAllowed"));
                    Intrinsics.areEqual("1", map.get("clickToExpandAllowed"));
                    q41 q41Var = new q41(this.b, r31Var, f, zAreEqual);
                    synchronized (r31Var) {
                        try {
                            if (r31Var.d() != null) {
                                f01.a("Attempt to create multiple GmaWebViewVideoController.", (Throwable) null);
                            } else {
                                r31Var.r = q41Var;
                            }
                            Unit unit = Unit.INSTANCE;
                        } finally {
                        }
                    }
                    q41VarD = q41Var;
                }
                boolean zAreEqual2 = Intrinsics.areEqual("1", map.get("muted"));
                String str2 = (String) map.get("playbackState");
                if (str2 != null) {
                    int i = Integer.parseInt(str2);
                    k41[] k41VarArrValues = k41.values();
                    int length = k41VarArrValues.length;
                    int i2 = 0;
                    while (true) {
                        if (i2 >= length) {
                            k41Var = null;
                            break;
                        }
                        k41Var = k41VarArrValues[i2];
                        if (k41Var.a != i) {
                            i2++;
                        }
                    }
                    if (k41Var == null) {
                        k41Var = k41.b;
                    }
                    String str3 = (String) map.get("aspectRatio");
                    if (str3 != null) {
                        q41VarD.a(f, k41Var, zAreEqual2, Float.parseFloat(str3));
                    } else {
                        xs3.a("Invalid videoMeta gmsg with no aspect ratio.", null, 6);
                        return Unit.INSTANCE;
                    }
                } else {
                    xs3.a("Invalid videoMeta gmsg with no playback state.", null, 6);
                    return Unit.INSTANCE;
                }
            } else {
                xs3.a("Invalid videoMeta gmsg with no duration.", null, 6);
                return Unit.INSTANCE;
            }
        } catch (NumberFormatException e) {
            xs3.a("Exception handling video metadata", e, 4);
            ((as3) this.a).a("VideoMetadataGmsgHandler.onGmsg", (Throwable) e);
        }
        return Unit.INSTANCE;
    }
}
