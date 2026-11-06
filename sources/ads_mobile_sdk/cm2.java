package ads_mobile_sdk;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class cm2 extends Lambda implements Function1 {
    public final /* synthetic */ im2 a;
    public final /* synthetic */ om2 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cm2(im2 im2Var, om2 om2Var) {
        super(1);
        this.a = im2Var;
        this.b = om2Var;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        o1 manifest = (o1) obj;
        Intrinsics.checkNotNullParameter(manifest, "manifest");
        im2 im2Var = this.a;
        String strName = this.b.b.name();
        om2 om2Var = this.b;
        String str = om2Var.c;
        String str2 = om2Var.a;
        im2Var.getClass();
        return im2.a(manifest, strName, str, str2);
    }
}
