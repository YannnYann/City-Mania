package ads_mobile_sdk;

import android.net.Uri;
import java.io.InterruptedIOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class xx2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ yx2 a;
    public final /* synthetic */ v01 b;
    public final /* synthetic */ List c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xx2(yx2 yx2Var, v01 v01Var, List list, Continuation continuation) {
        super(2, continuation);
        this.a = yx2Var;
        this.b = v01Var;
        this.c = list;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new xx2(this.a, this.b, this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((xx2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        yx2 yx2Var = this.a;
        i01 i01Var = (i01) this.b;
        List list = this.c;
        m01 m01Var = yx2.u;
        yx2Var.getClass();
        Pair pair = ((i01Var instanceof j01) && (((j01) i01Var).c instanceof InterruptedIOException)) ? new Pair("0.2.0.0", "timeout") : i01Var instanceof k01 ? new Pair("0.6.0.0", String.valueOf(((k01) i01Var).c)) : new Pair("0.6.0.0", "fetch failed");
        String str = (String) pair.component1();
        String str2 = (String) pair.component2();
        vw3 vw3Var = yx2Var.s;
        ArrayList uris = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String string = ((Uri) it.next()).toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            String str3 = str2;
            uris.add(Uri.parse(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(string, "@gw_adnetstatus@", str, false, 4, (Object) null), "@error_code@", str3, false, 4, (Object) null)));
            str2 = str3;
        }
        vw3Var.getClass();
        Intrinsics.checkNotNullParameter(uris, "uris");
        Iterator it2 = uris.iterator();
        while (it2.hasNext()) {
            vw3Var.e.mo2951trySendJP2dKIU(new Pair((Uri) it2.next(), null));
        }
        return Unit.INSTANCE;
    }
}
