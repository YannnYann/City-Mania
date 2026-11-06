package ads_mobile_sdk;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class l21 extends Lambda implements Function1 {
    public static final l21 a = new l21();

    public l21() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String str = (String) obj;
        return Boolean.valueOf(!(str == null || str.length() == 0));
    }
}
