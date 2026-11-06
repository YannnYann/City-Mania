package ads_mobile_sdk;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CopyableThreadContextElement;

/* JADX INFO: loaded from: classes.dex */
public final class rs3 implements CopyableThreadContextElement {
    public static final qs3 b = new qs3();
    public final fs3 a = new fs3();

    @Override // kotlinx.coroutines.CopyableThreadContextElement
    public final CopyableThreadContextElement copyForChild() {
        return new rs3();
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    public final CoroutineContext.Key getKey() {
        return b;
    }

    @Override // kotlinx.coroutines.CopyableThreadContextElement
    public final CoroutineContext mergeForChild(CoroutineContext.Element overwritingElement) {
        Intrinsics.checkNotNullParameter(overwritingElement, "overwritingElement");
        return new rs3();
    }

    @Override // kotlinx.coroutines.ThreadContextElement
    public final Object updateThreadContext(CoroutineContext context) {
        Intrinsics.checkNotNullParameter(context, "context");
        fs3 fs3Var = this.a;
        fs3Var.getClass();
        gs3 gs3VarB = hs3.b();
        es3 es3Var = new es3(hs3.a(gs3VarB, fs3Var.a), gs3VarB.c);
        gs3VarB.c = fs3Var;
        return es3Var;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final Object fold(Object obj, Function2 function2) {
        return CopyableThreadContextElement.DefaultImpls.fold(this, obj, function2);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public final CoroutineContext.Element get(CoroutineContext.Key key) {
        return CopyableThreadContextElement.DefaultImpls.get(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext minusKey(CoroutineContext.Key key) {
        return CopyableThreadContextElement.DefaultImpls.minusKey(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext plus(CoroutineContext coroutineContext) {
        return CopyableThreadContextElement.DefaultImpls.plus(this, coroutineContext);
    }

    @Override // kotlinx.coroutines.ThreadContextElement
    public final void restoreThreadContext(CoroutineContext context, Object obj) {
        es3 oldState = (es3) obj;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(oldState, "oldState");
        this.a.getClass();
        Intrinsics.checkNotNullParameter(oldState, "oldState");
        gs3 gs3VarB = hs3.b();
        gs3VarB.c = null;
        hs3.a(gs3VarB, oldState.a);
        gs3VarB.c = oldState.b;
    }
}
