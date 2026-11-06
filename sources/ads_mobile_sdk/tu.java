package ads_mobile_sdk;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class tu {
    public static Object a(String str, Function1 block) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        if (StringsKt__StringsKt.isBlank(str)) {
            return null;
        }
        return block.invoke(str);
    }
}
