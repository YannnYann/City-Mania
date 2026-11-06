package ads_mobile_sdk;

import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class i8 implements h8 {
    public final Map a;

    public i8(Map rendererMap) {
        Intrinsics.checkNotNullParameter(rendererMap, "rendererMap");
        this.a = rendererMap;
    }

    @Override // ads_mobile_sdk.h8
    public final j2 a(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return (j2) this.a.get(name);
    }
}
