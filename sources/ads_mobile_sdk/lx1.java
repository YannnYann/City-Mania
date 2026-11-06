package ads_mobile_sdk;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.provider.CalendarContract;
import com.ironsource.C3522b4;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class lx1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Activity a;
    public final /* synthetic */ String b;
    public final /* synthetic */ String c;
    public final /* synthetic */ String d;
    public final /* synthetic */ String e;
    public final /* synthetic */ String f;
    public final /* synthetic */ String g;
    public final /* synthetic */ String h;
    public final /* synthetic */ Long i;
    public final /* synthetic */ Long j;
    public final /* synthetic */ mx1 k;
    public final /* synthetic */ r31 l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lx1(Activity activity, String str, String str2, String str3, String str4, String str5, String str6, String str7, Long l, Long l2, mx1 mx1Var, r31 r31Var, Continuation continuation) {
        super(2, continuation);
        this.a = activity;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = str5;
        this.g = str6;
        this.h = str7;
        this.i = l;
        this.j = l2;
        this.k = mx1Var;
        this.l = r31Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new lx1(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((lx1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        AlertDialog.Builder builder = new AlertDialog.Builder(this.a, R.style.Theme.Material.Dialog.Alert);
        builder.setTitle(this.b);
        builder.setMessage(this.c);
        String str = this.d;
        final String str2 = this.f;
        final String str3 = this.g;
        final String str4 = this.h;
        final Long l = this.i;
        final Long l2 = this.j;
        final mx1 mx1Var = this.k;
        builder.setPositiveButton(str, new DialogInterface.OnClickListener() { // from class: ads_mobile_sdk.lx1$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                lx1.a(str2, str3, str4, l, l2, mx1Var, dialogInterface, i);
            }
        });
        String str5 = this.e;
        final mx1 mx1Var2 = this.k;
        final r31 r31Var = this.l;
        builder.setNegativeButton(str5, new DialogInterface.OnClickListener() { // from class: ads_mobile_sdk.lx1$$ExternalSyntheticLambda1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                lx1.a(mx1Var2, r31Var, dialogInterface, i);
            }
        });
        builder.create().show();
        return Unit.INSTANCE;
    }

    public static final void a(String str, String str2, String str3, Long l, Long l2, mx1 mx1Var, DialogInterface dialogInterface, int i) {
        Intent data = new Intent("android.intent.action.EDIT").setData(CalendarContract.Events.CONTENT_URI);
        Intrinsics.checkNotNullExpressionValue(data, "setData(...)");
        data.putExtra(C3522b4.i.D0, str);
        data.putExtra("eventLocation", str2);
        data.putExtra("description", str3);
        if (l != null) {
            data.putExtra("beginTime", l.longValue());
        }
        if (l2 != null) {
            data.putExtra("endTime", l2.longValue());
        }
        data.setFlags(268435456);
        mx1Var.c.a(data);
    }

    public static final void a(mx1 mx1Var, r31 r31Var, DialogInterface dialogInterface, int i) {
        BuildersKt__Builders_commonKt.launch$default(mx1Var.d, null, null, new kx1(mx1Var, r31Var, "Operation denied by user.", null), 3, null);
    }
}
