package ads_mobile_sdk;

import android.content.Intent;
import com.ironsource.C3522b4;
import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class gd3 implements r41 {
    public final o21 a;

    public gd3(o21 gmaUtil) {
        Intrinsics.checkNotNullParameter(gmaUtil, "gmaUtil");
        this.a = gmaUtil;
    }

    @Override // ads_mobile_sdk.r41
    public final u11 g() {
        return u11.GMSG_SHARE_SHEET;
    }

    @Override // ads_mobile_sdk.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        String str = (String) map.get(C3522b4.i.K0);
        String str2 = (String) map.get(C3522b4.i.D0);
        if (str != null && !StringsKt__StringsKt.isBlank(str)) {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.SEND");
            intent.setType("text/plain");
            intent.putExtra("android.intent.extra.TEXT", str);
            if (str2 != null && !StringsKt__StringsKt.isBlank(str2)) {
                intent.putExtra("android.intent.extra.TITLE", str2);
            }
            this.a.a(intent);
            return Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }
}
