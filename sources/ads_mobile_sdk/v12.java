package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest;
import java.util.Optional;
import java.util.Set;
import kotlin.collections.SetsKt__SetsJVMKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class v12 implements jr0 {
    public final dw2 a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        Optional nativeRequest = (Optional) this.a.get();
        Intrinsics.checkNotNullParameter(nativeRequest, "nativeRequest");
        return (Set) kq2.b((!nativeRequest.isPresent() || ((NativeRequest) nativeRequest.get()).getAdSize() == null) ? SetsKt__SetsKt.emptySet() : SetsKt__SetsJVMKt.setOf(j53.f));
    }

    public v12(dw2 dw2Var) {
        this.a = dw2Var;
    }
}
