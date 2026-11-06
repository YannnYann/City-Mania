package ads_mobile_sdk;

import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringNumberConversionsKt;

/* JADX INFO: loaded from: classes.dex */
public final class to1 implements r41 {
    public final ay0 a;

    public to1(ay0 fullscreenContentGmsgHandler) {
        Intrinsics.checkNotNullParameter(fullscreenContentGmsgHandler, "fullscreenContentGmsgHandler");
        this.a = fullscreenContentGmsgHandler;
    }

    @Override // ads_mobile_sdk.r41
    public final u11 g() {
        return u11.GMSG_INTERSTITIAL_PROPERTIES;
    }

    @Override // ads_mobile_sdk.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        Integer intOrNull;
        boolean zAreEqual = Intrinsics.areEqual("1", map.get("transparentBackground"));
        String str = (String) map.get("blurRadius");
        ((yy0) this.a).a((str == null || (intOrNull = StringsKt__StringNumberConversionsKt.toIntOrNull(str)) == null) ? 0 : intOrNull.intValue(), zAreEqual);
        return Unit.INSTANCE;
    }
}
