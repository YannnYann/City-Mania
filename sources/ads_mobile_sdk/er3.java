package ads_mobile_sdk;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class er3 extends Lambda implements Function0 {
    public final /* synthetic */ Integer a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public er3(Integer num) {
        super(0);
        this.a = num;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final String invoke() {
        return "Creating Thread with priority offset " + this.a;
    }
}
