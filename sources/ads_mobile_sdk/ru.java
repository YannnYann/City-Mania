package ads_mobile_sdk;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import com.google.gson.JsonObject;
import com.ironsource.C3522b4;
import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ru implements r41 {
    public final Context a;

    public ru(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.a = context;
    }

    @Override // ads_mobile_sdk.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        if (Build.VERSION.SDK_INT >= 30) {
            xs3.a("CanOpenAppGmsgHandler not enabled on R+ devices.", null, 6);
            return Unit.INSTANCE;
        }
        String str = (String) map.get(C3522b4.i.V);
        if (str == null || str.length() == 0) {
            xs3.a("Package name missing in canOpenApp GMSG.", null, 6);
            return Unit.INSTANCE;
        }
        PackageManager packageManager = this.a.getPackageManager();
        boolean z = (packageManager != null ? packageManager.getLaunchIntentForPackage(str) : null) != null;
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty(str, Boxing.boxBoolean(z));
        Object objA = r31Var.a(jsonObject, "openableApp", continuation);
        return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.r41
    public final u11 g() {
        return u11.GMSG_CAN_OPEN_APP;
    }
}
