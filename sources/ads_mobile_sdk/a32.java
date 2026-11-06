package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.VideoOptions;
import java.util.ArrayList;
import java.util.List;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class a32 extends ContinuationImpl {
    public d32 a;
    public Integer b;
    public ArrayList c;
    public Integer d;
    public Boolean e;
    public String f;
    public Boolean g;
    public List h;
    public Boolean i;
    public Integer j;
    public Boolean k;
    public VideoOptions l;
    public /* synthetic */ Object m;
    public final /* synthetic */ d32 n;
    public int o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a32(d32 d32Var, Continuation continuation) {
        super(continuation);
        this.n = d32Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.m = obj;
        this.o |= Integer.MIN_VALUE;
        return this.n.s(this);
    }
}
