package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import java.util.Iterator;
import java.util.List;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class ak3 extends ContinuationImpl {
    public Object a;
    public Object b;
    public Signals c;
    public List d;
    public Iterator e;
    public pu f;
    public /* synthetic */ Object g;
    public final /* synthetic */ com.google.android.libraries.ads.mobile.sdk.internal.signals.a h;
    public int i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ak3(com.google.android.libraries.ads.mobile.sdk.internal.signals.a aVar, Continuation continuation) {
        super(continuation);
        this.h = aVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.i |= Integer.MIN_VALUE;
        return com.google.android.libraries.ads.mobile.sdk.internal.signals.a.a(this.h, this);
    }
}
