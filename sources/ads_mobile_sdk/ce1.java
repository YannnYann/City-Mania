package ads_mobile_sdk;

import android.net.Uri;
import com.google.gson.JsonObject;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class ce1 extends ContinuationImpl {
    public if1 a;
    public String b;
    public JsonObject c;
    public Uri.Builder d;
    public Uri.Builder e;
    public String f;
    public Uri.Builder g;
    public /* synthetic */ Object h;
    public final /* synthetic */ if1 i;
    public int j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ce1(if1 if1Var, Continuation continuation) {
        super(continuation);
        this.i = if1Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.h = obj;
        this.j |= Integer.MIN_VALUE;
        return if1.a(this.i, null, null, null, this);
    }
}
