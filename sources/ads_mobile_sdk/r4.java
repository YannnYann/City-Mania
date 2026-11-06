package ads_mobile_sdk;

import android.os.Bundle;
import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class r4 implements r41 {
    public final t4 a;
    public final o4 b;

    public r4(t4 adMetadataHolder, o4 adMetadataChangedEventEmitter) {
        Intrinsics.checkNotNullParameter(adMetadataHolder, "adMetadataHolder");
        Intrinsics.checkNotNullParameter(adMetadataChangedEventEmitter, "adMetadataChangedEventEmitter");
        this.a = adMetadataHolder;
        this.b = adMetadataChangedEventEmitter;
    }

    @Override // ads_mobile_sdk.r41
    public final u11 g() {
        return u11.GMSG_AD_METADATA_CHANGED;
    }

    @Override // ads_mobile_sdk.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        String str = (String) map.get("info");
        if (str == null) {
            str = "";
        }
        Bundle bundleA = ds1.a(str);
        if (bundleA == null) {
            xs3.a("Unable to parse ad metadata info: " + str, null, 6);
            return Unit.INSTANCE;
        }
        this.a.a(bundleA);
        Object objA = this.b.a(bundleA, continuation);
        return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
    }
}
