package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public interface a04 extends nr1 {
    r31 a();

    default Object a(Function2 function2, ContinuationImpl continuationImpl) {
        Object objInvoke = function2.invoke(a(), continuationImpl);
        return objInvoke == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objInvoke : Unit.INSTANCE;
    }
}
