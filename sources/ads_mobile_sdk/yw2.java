package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: loaded from: classes.dex */
public final class yw2 extends ContinuationImpl {
    public /* synthetic */ Object a;
    public int b;
    public FlowCollector c;
    public final /* synthetic */ zw2 d;
    public Object e;
    public v01 f;
    public ResponseInfo g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yw2(zw2 zw2Var, Continuation continuation) {
        super(continuation);
        this.d = zw2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.a = obj;
        this.b |= Integer.MIN_VALUE;
        return this.d.emit(null, this);
    }
}
