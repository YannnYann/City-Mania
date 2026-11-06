package ads_mobile_sdk;

import androidx.datastore.core.DataStore;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class bx3 extends SuspendLambda implements Function2 {
    public Mutex a;
    public dx3 b;
    public String c;
    public int d;
    public final /* synthetic */ dx3 e;
    public final /* synthetic */ String f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bx3(dx3 dx3Var, String str, Continuation continuation) {
        super(2, continuation);
        this.e = dx3Var;
        this.f = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new bx3(this.e, this.f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new bx3(this.e, this.f, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        dx3 dx3Var;
        Mutex mutex;
        String str;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.d;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            jw0 jw0Var = this.e.c;
            String newUserAgent = this.f;
            Intrinsics.checkNotNullExpressionValue(newUserAgent, "$newUserAgent");
            this.d = 1;
            Object objUpdateData = ((DataStore) jw0Var.a.get()).updateData(new ew0(newUserAgent, null), this);
            if (objUpdateData != IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                objUpdateData = Unit.INSTANCE;
            }
            if (objUpdateData != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            str = this.c;
            dx3Var = this.b;
            mutex = this.a;
            ResultKt.throwOnFailure(obj);
            try {
                Intrinsics.checkNotNull(str);
                int i2 = dx3.$r8$clinit;
                dx3Var.a(str);
                return Unit.INSTANCE;
            } finally {
                mutex.unlock(null);
            }
        }
        ResultKt.throwOnFailure(obj);
        dx3Var = this.e;
        Mutex mutex2 = dx3Var.h;
        String str2 = this.f;
        this.a = mutex2;
        this.b = dx3Var;
        this.c = str2;
        this.d = 2;
        if (mutex2.lock(null, this) != coroutine_suspended) {
            mutex = mutex2;
            str = str2;
            Intrinsics.checkNotNull(str);
            int i22 = dx3.$r8$clinit;
            dx3Var.a(str);
            return Unit.INSTANCE;
        }
        return coroutine_suspended;
    }
}
