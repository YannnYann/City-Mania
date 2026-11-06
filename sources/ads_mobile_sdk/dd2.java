package ads_mobile_sdk;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executors;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class dd2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ kd2 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dd2(kd2 kd2Var, Continuation continuation) {
        super(2, continuation);
        this.a = kd2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new dd2(this.a, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new dd2(this.a, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        Context context = this.a.c;
        me2 me2Var = jd2.a;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            throw new IllegalArgumentException("Application Context cannot be null");
        }
        if (!me2Var.a) {
            me2Var.a = true;
            cf2 cf2VarA = cf2.a();
            cf2VarA.c.getClass();
            kn0 kn0Var = new kn0();
            qn0 qn0Var = cf2VarA.b;
            Handler handler = new Handler();
            qn0Var.getClass();
            cf2VarA.d = new pn0(handler, applicationContext, kn0Var, cf2VarA);
            l9.d.a(applicationContext);
            Context applicationContext2 = applicationContext.getApplicationContext();
            sd2.a = applicationContext2;
            if (applicationContext2 == null) {
                sd2.a = applicationContext;
            }
            sd2.b = 0;
            pe2.a(applicationContext);
            applicationContext.registerReceiver(new yf2(), new IntentFilter("android.media.action.HDMI_AUDIO_PLUG"));
            wh1.b.a = applicationContext.getApplicationContext();
            o oVar = o.f;
            if (!oVar.c) {
                oVar.d.a(applicationContext);
                sn snVar = oVar.d;
                snVar.c = oVar;
                snVar.a = true;
                boolean zA = snVar.a();
                snVar.b = zA;
                snVar.a(zA);
                oVar.e = oVar.d.b;
                oVar.c = true;
            }
            ra3.d.a = new WeakReference(applicationContext);
            IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            applicationContext.registerReceiver(new qa3(), intentFilter);
            Executors.newSingleThreadExecutor().execute(new le2(applicationContext));
        }
        return Unit.INSTANCE;
    }
}
