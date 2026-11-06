package ads_mobile_sdk;

import java.util.Map;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class jq0 extends Lambda implements Function1 {
    public static final jq0 a = new jq0();

    public jq0() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Map.Entry it = (Map.Entry) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        return Boolean.valueOf(((mq0) it.getValue()).h());
    }
}
