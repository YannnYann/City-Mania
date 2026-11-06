package ads_mobile_sdk;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class e02 implements h8 {
    public final h8 a;
    public final h8 b;
    public final Function1 c;

    public e02(h8 multiFormatAdRendererMap, h8 rendererMap, Function1 adWrapper) {
        Intrinsics.checkNotNullParameter(multiFormatAdRendererMap, "multiFormatAdRendererMap");
        Intrinsics.checkNotNullParameter(rendererMap, "rendererMap");
        Intrinsics.checkNotNullParameter(adWrapper, "adWrapper");
        this.a = multiFormatAdRendererMap;
        this.b = rendererMap;
        this.c = adWrapper;
    }

    @Override // ads_mobile_sdk.h8
    public final j2 a(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        j2 j2VarA = this.b.a(name);
        if (j2VarA != null) {
            return new d02(j2VarA, this);
        }
        if (this.a.a(name) != null) {
            return this.a.a(name);
        }
        return null;
    }
}
