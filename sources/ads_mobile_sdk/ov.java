package ads_mobile_sdk;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class ov extends Lambda implements Function0 {
    public final /* synthetic */ mv a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ov(mv mvVar) {
        super(0);
        this.a = mvVar;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final String invoke() {
        return "variations header: " + this.a.b() + ", " + this.a.c();
    }
}
