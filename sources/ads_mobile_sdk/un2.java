package ads_mobile_sdk;

import android.view.View;
import com.google.android.libraries.ads.mobile.sdk.pip.PictureInPictureAdPosition;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.TimeoutCancellationException;

/* JADX INFO: loaded from: classes.dex */
public final class un2 extends SuspendLambda implements Function2 {
    public int a;
    public int b;
    public final /* synthetic */ do2 c;
    public final /* synthetic */ ao2 d;
    public final /* synthetic */ PictureInPictureAdPosition e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public un2(do2 do2Var, ao2 ao2Var, PictureInPictureAdPosition pictureInPictureAdPosition, Continuation continuation) {
        super(2, continuation);
        this.c = do2Var;
        this.d = ao2Var;
        this.e = pictureInPictureAdPosition;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new un2(this.c, this.d, this.e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((un2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = this.b;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            i = 0;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            i = this.a;
            ResultKt.throwOnFailure(obj);
        }
        while (this.c.b()) {
            if (i >= this.d.h.c()) {
                ((as3) this.d.d).a("PipPresenter.applySnapTrajectory", (Throwable) new IllegalStateException("PiP Container failed to obtain valid size for snapping after multiple retries."));
                return Unit.INSTANCE;
            }
            i++;
            this.a = i;
            this.b = 1;
            if (DelayKt.delay(16L, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        Object parent = this.c.getParent();
        View view = parent instanceof View ? (View) parent : null;
        if (view == null) {
            ((as3) this.d.d).a("PipPresenter.applySnapTrajectory", (Throwable) new IllegalStateException("PiP Container parent is null or not a View."));
            return Unit.INSTANCE;
        }
        float width = view.getWidth();
        float height = view.getHeight();
        float width2 = this.c.getWidth();
        float height2 = this.c.getHeight();
        Intrinsics.checkNotNullExpressionValue(this.c.getContext(), "getContext(...)");
        Pair pairA = ao2.a(this.d, view, this.e, width, height, width2, height2, zn0.a(r13, this.d.h.d()));
        float fFloatValue = ((Number) pairA.component1()).floatValue();
        float fFloatValue2 = ((Number) pairA.component2()).floatValue();
        g83 g83Var = this.d.e;
        s11 s11Var = s11.CUI_NAME_MOVE_PIP_AD;
        List listListOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"current_position:" + this.c.a(), "target_position:" + this.e});
        ks3 ks3Var = this.d.f;
        do2 do2Var = this.c;
        ao2 ao2Var = this.d;
        PictureInPictureAdPosition pictureInPictureAdPosition = this.e;
        if (hs3.c() == null) {
            tu2 tu2VarA = g83.a(g83Var, s11Var, listListOf, ks3Var);
            try {
                do2Var.animate().x(fFloatValue).y(fFloatValue2).setDuration(Duration.m2881getInWholeMillisecondsimpl(ao2Var.h.a())).start();
                do2Var.a(pictureInPictureAdPosition);
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(tu2VarA, null);
            } catch (Throwable th) {
                try {
                    tu2VarA.b(th);
                    if (th instanceof v24) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                        tu2VarA.a(th);
                    }
                    if (th instanceof TimeoutCancellationException) {
                        throw new i21(th);
                    }
                    if (th instanceof CancellationException) {
                        throw new wz0(th);
                    }
                    if (th instanceof w01) {
                        throw th;
                    }
                    throw new b01(th);
                } finally {
                }
            }
        } else {
            rr3 rr3VarA = hs3.a(s11Var, CollectionsKt__CollectionsKt.emptyList(), true);
            try {
                do2Var.animate().x(fFloatValue).y(fFloatValue2).setDuration(Duration.m2881getInWholeMillisecondsimpl(ao2Var.h.a())).start();
                do2Var.a(pictureInPictureAdPosition);
                Unit unit2 = Unit.INSTANCE;
                CloseableKt.closeFinally(rr3VarA, null);
            } catch (Throwable th2) {
                try {
                    rr3VarA.b(th2);
                    if (th2 instanceof v24) {
                        throw th2;
                    }
                    if (!(th2 instanceof TimeoutCancellationException) && !(th2 instanceof CancellationException)) {
                        rr3VarA.a(th2);
                    }
                    if (th2 instanceof TimeoutCancellationException) {
                        throw new i21(th2);
                    }
                    if (th2 instanceof CancellationException) {
                        throw new wz0(th2);
                    }
                    if (th2 instanceof w01) {
                        throw th2;
                    }
                    throw new b01(th2);
                } finally {
                }
            }
        }
        return Unit.INSTANCE;
    }
}
