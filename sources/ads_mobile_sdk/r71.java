package ads_mobile_sdk;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class r71 extends Lambda implements Function0 {
    public final /* synthetic */ s71 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r71(s71 s71Var) {
        super(0);
        this.a = s71Var;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        e01 e01Var;
        a81 a81Var = this.a.a;
        if (((Boolean) a81Var.e.getValue()).booleanValue()) {
            Object obj = a81Var.c.get();
            Intrinsics.checkNotNull(obj);
            e01Var = (e01) obj;
        } else {
            Object obj2 = a81Var.b.get();
            Intrinsics.checkNotNull(obj2);
            e01Var = (e01) obj2;
        }
        vk0 vk0Var = this.a.c;
        if (vk0Var != null) {
            e01Var.a(vk0Var);
        }
        uv uvVar = this.a.b;
        if (uvVar != null) {
            e01Var.a(uvVar);
        }
        return e01Var;
    }
}
