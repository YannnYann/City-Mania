package ads_mobile_sdk;

import android.app.Activity;
import android.net.Uri;
import java.util.Map;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class sg2 extends ContinuationImpl {
    public ah2 a;
    public Map b;
    public r31 c;
    public String d;
    public Activity e;
    public Uri f;
    public String g;
    public boolean h;
    public boolean i;
    public boolean j;
    public /* synthetic */ Object k;
    public final /* synthetic */ ah2 l;
    public int m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sg2(ah2 ah2Var, Continuation continuation) {
        super(continuation);
        this.l = ah2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.k = obj;
        this.m |= Integer.MIN_VALUE;
        return this.l.a(null, false, false, false, null, this);
    }
}
