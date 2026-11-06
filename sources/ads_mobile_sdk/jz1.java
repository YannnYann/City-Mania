package ads_mobile_sdk;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.text.Regex;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class jz1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Activity a;
    public final /* synthetic */ String b;
    public final /* synthetic */ String c;
    public final /* synthetic */ String d;
    public final /* synthetic */ String e;
    public final /* synthetic */ mz1 f;
    public final /* synthetic */ String g;
    public final /* synthetic */ String h;
    public final /* synthetic */ String i;
    public final /* synthetic */ r31 j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jz1(Activity activity, String str, String str2, String str3, String str4, mz1 mz1Var, String str5, String str6, String str7, r31 r31Var, Continuation continuation) {
        super(2, continuation);
        this.a = activity;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = mz1Var;
        this.g = str5;
        this.h = str6;
        this.i = str7;
        this.j = r31Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new jz1(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((jz1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        AlertDialog.Builder message = new AlertDialog.Builder(this.a, R.style.Theme.Material.Dialog.Alert).setTitle(this.b).setMessage(this.c);
        String str = this.d;
        final mz1 mz1Var = this.f;
        final String str2 = this.g;
        final String str3 = this.h;
        final String str4 = this.i;
        final Activity activity = this.a;
        final r31 r31Var = this.j;
        AlertDialog.Builder positiveButton = message.setPositiveButton(str, new DialogInterface.OnClickListener() { // from class: ads_mobile_sdk.jz1$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                jz1.a(mz1Var, str2, str3, str4, activity, r31Var, dialogInterface, i);
            }
        });
        String str5 = this.e;
        final mz1 mz1Var2 = this.f;
        final r31 r31Var2 = this.j;
        positiveButton.setNegativeButton(str5, new DialogInterface.OnClickListener() { // from class: ads_mobile_sdk.jz1$$ExternalSyntheticLambda1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                jz1.a(mz1Var2, r31Var2, dialogInterface, i);
            }
        }).create().show();
        return Unit.INSTANCE;
    }

    public static final void a(mz1 mz1Var, String str, String str2, String str3, Activity activity, r31 r31Var, DialogInterface dialogInterface, int i) {
        BuildersKt__Builders_commonKt.launch$default(mz1Var.d, null, null, new lz1(mz1Var, str, r31Var, str2, str3, activity, null), 3, null);
    }

    public static final void a(mz1 mz1Var, r31 r31Var, DialogInterface dialogInterface, int i) {
        Regex regex = mz1.i;
        mz1Var.a("User canceled the download.", r31Var, false);
    }
}
