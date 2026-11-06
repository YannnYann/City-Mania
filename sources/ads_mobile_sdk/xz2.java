package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.pip.PictureInPictureAdPosition;
import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class xz2 extends Lambda implements Function1 {
    public final /* synthetic */ zz2 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xz2(zz2 zz2Var) {
        super(1);
        this.a = zz2Var;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        PictureInPictureAdPosition position = (PictureInPictureAdPosition) obj;
        Intrinsics.checkNotNullParameter(position, "targetPosition");
        ao2 ao2VarF = this.a.f();
        ao2VarF.getClass();
        Intrinsics.checkNotNullParameter(position, "position");
        do2 do2Var = ao2VarF.i;
        if (do2Var != null) {
            CoroutineScope coroutineScope = ao2VarF.c;
            un2 block = new un2(do2Var, ao2VarF, position, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        }
        return Unit.INSTANCE;
    }
}
