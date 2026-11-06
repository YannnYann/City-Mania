package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class g40 extends FunctionReferenceImpl implements Function2 {
    public static final g40 a = new g40();

    public g40() {
        super(2, i40.class, "lockWithoutOwner", "lockWithoutOwner(Lkotlinx/coroutines/sync/Mutex;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 1);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Object objLock = ((Mutex) obj).lock(null, (Continuation) obj2);
        return objLock == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objLock : Unit.INSTANCE;
    }
}
