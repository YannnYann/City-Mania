package ads_mobile_sdk;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import com.ironsource.G4;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class wb2 extends SuspendLambda implements Function2 {
    public int a;
    public /* synthetic */ Object b;
    public final /* synthetic */ ac2 c;
    public final /* synthetic */ sb2 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wb2(ac2 ac2Var, sb2 sb2Var, Continuation continuation) {
        super(2, continuation);
        this.c = ac2Var;
        this.d = sb2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        wb2 wb2Var = new wb2(this.c, this.d, continuation);
        wb2Var.b = obj;
        return wb2Var;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((wb2) create((SQLiteDatabase) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) this.b;
            ContentValues contentValues = new ContentValues();
            sb2 sb2Var = this.d;
            contentValues.put(G4.a.d, Boxing.boxLong(sb2Var.a));
            contentValues.put("gws_query_id", sb2Var.b);
            contentValues.put("url", sb2Var.c);
            rb2 rb2Var = rb2.a;
            contentValues.put("event_state", Boxing.boxInt(1));
            sQLiteDatabase.insert("offline_buffered_pings", null, contentValues);
            lc2 lc2Var = this.c.c;
            this.a = 1;
            lc2Var.getClass();
            if (lc2.a(lc2Var, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
