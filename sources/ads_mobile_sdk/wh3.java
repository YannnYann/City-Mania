package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest;
import java.util.Set;
import kotlin.collections.SetsKt__SetsJVMKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class wh3 implements jr0 {
    public final dw2 a;

    public wh3(vh1 vh1Var) {
        this.a = vh1Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        Object baseRequest = (BaseRequest) this.a.get();
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        NativeRequest nativeRequest = baseRequest instanceof NativeRequest ? (NativeRequest) baseRequest : null;
        return (Set) kq2.b((nativeRequest != null ? nativeRequest.getAdSize() : null) != null ? SetsKt__SetsJVMKt.setOf(j53.f) : SetsKt__SetsKt.emptySet());
    }
}
