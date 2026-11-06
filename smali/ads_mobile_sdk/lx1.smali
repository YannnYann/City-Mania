###### Class ads_mobile_sdk.lx1 (ads_mobile_sdk.lx1)
.class public final Lads_mobile_sdk/lx1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Ljava/lang/Long;

.field public final synthetic j:Ljava/lang/Long;

.field public final synthetic k:Lads_mobile_sdk/mx1;

.field public final synthetic l:Lads_mobile_sdk/r31;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lads_mobile_sdk/mx1;Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)V
    .registers 14

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/lx1;->a:Landroid/app/Activity;

    iput-object p2, p0, Lads_mobile_sdk/lx1;->b:Ljava/lang/String;

    iput-object p3, p0, Lads_mobile_sdk/lx1;->c:Ljava/lang/String;

    iput-object p4, p0, Lads_mobile_sdk/lx1;->d:Ljava/lang/String;

    iput-object p5, p0, Lads_mobile_sdk/lx1;->e:Ljava/lang/String;

    iput-object p6, p0, Lads_mobile_sdk/lx1;->f:Ljava/lang/String;

    iput-object p7, p0, Lads_mobile_sdk/lx1;->g:Ljava/lang/String;

    iput-object p8, p0, Lads_mobile_sdk/lx1;->h:Ljava/lang/String;

    iput-object p9, p0, Lads_mobile_sdk/lx1;->i:Ljava/lang/Long;

    iput-object p10, p0, Lads_mobile_sdk/lx1;->j:Ljava/lang/Long;

    iput-object p11, p0, Lads_mobile_sdk/lx1;->k:Lads_mobile_sdk/mx1;

    iput-object p12, p0, Lads_mobile_sdk/lx1;->l:Lads_mobile_sdk/r31;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p13}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static final a(Lads_mobile_sdk/mx1;Lads_mobile_sdk/r31;Landroid/content/DialogInterface;I)V
    .registers 10

    .line 157
    iget-object v0, p0, Lads_mobile_sdk/mx1;->d:Lkotlinx/coroutines/CoroutineScope;

    .line 158
    new-instance v3, Lads_mobile_sdk/kx1;

    const/4 p2, 0x0

    const-string p3, "Operation denied by user."

    invoke-direct {v3, p0, p1, p3, p2}, Lads_mobile_sdk/kx1;-><init>(Lads_mobile_sdk/mx1;Lads_mobile_sdk/r31;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lads_mobile_sdk/mx1;Landroid/content/DialogInterface;I)V
    .registers 8

    .line 67
    new-instance p6, Landroid/content/Intent;

    const-string p7, "android.intent.action.EDIT"

    invoke-direct {p6, p7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object p7, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p6, p7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p6

    const-string p7, "setData(...)"

    invoke-static {p6, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    const-string p7, "title"

    invoke-virtual {p6, p7, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string p0, "eventLocation"

    invoke-virtual {p6, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const-string p0, "description"

    invoke-virtual {p6, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_2c

    .line 72
    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    const-string p2, "beginTime"

    invoke-virtual {p6, p2, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_2c
    if-eqz p4, :cond_37

    .line 73
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    const-string p2, "endTime"

    invoke-virtual {p6, p2, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_37
    const/high16 p0, 0x10000000

    .line 75
    invoke-virtual {p6, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 76
    iget-object p0, p5, Lads_mobile_sdk/mx1;->c:Lads_mobile_sdk/o21;

    .line 77
    invoke-virtual {p0, p6}, Lads_mobile_sdk/o21;->a(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 17

    .line 1
    new-instance v0, Lads_mobile_sdk/lx1;

    iget-object v1, p0, Lads_mobile_sdk/lx1;->a:Landroid/app/Activity;

    iget-object v2, p0, Lads_mobile_sdk/lx1;->b:Ljava/lang/String;

    iget-object v3, p0, Lads_mobile_sdk/lx1;->c:Ljava/lang/String;

    iget-object v4, p0, Lads_mobile_sdk/lx1;->d:Ljava/lang/String;

    iget-object v5, p0, Lads_mobile_sdk/lx1;->e:Ljava/lang/String;

    iget-object v6, p0, Lads_mobile_sdk/lx1;->f:Ljava/lang/String;

    iget-object v7, p0, Lads_mobile_sdk/lx1;->g:Ljava/lang/String;

    iget-object v8, p0, Lads_mobile_sdk/lx1;->h:Ljava/lang/String;

    iget-object v9, p0, Lads_mobile_sdk/lx1;->i:Ljava/lang/Long;

    iget-object v10, p0, Lads_mobile_sdk/lx1;->j:Ljava/lang/Long;

    iget-object v11, p0, Lads_mobile_sdk/lx1;->k:Lads_mobile_sdk/mx1;

    iget-object v12, p0, Lads_mobile_sdk/lx1;->l:Lads_mobile_sdk/r31;

    move-object/from16 v13, p2

    invoke-direct/range {v0 .. v13}, Lads_mobile_sdk/lx1;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lads_mobile_sdk/mx1;Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/lx1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/lx1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/lx1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 62
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 63
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lads_mobile_sdk/lx1;->a:Landroid/app/Activity;

    const v1, 0x1030226

    invoke-direct {p1, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 64
    iget-object v0, p0, Lads_mobile_sdk/lx1;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 65
    iget-object v0, p0, Lads_mobile_sdk/lx1;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 66
    iget-object v0, p0, Lads_mobile_sdk/lx1;->d:Ljava/lang/String;

    iget-object v2, p0, Lads_mobile_sdk/lx1;->f:Ljava/lang/String;

    iget-object v3, p0, Lads_mobile_sdk/lx1;->g:Ljava/lang/String;

    iget-object v4, p0, Lads_mobile_sdk/lx1;->h:Ljava/lang/String;

    iget-object v5, p0, Lads_mobile_sdk/lx1;->i:Ljava/lang/Long;

    iget-object v6, p0, Lads_mobile_sdk/lx1;->j:Ljava/lang/Long;

    iget-object v7, p0, Lads_mobile_sdk/lx1;->k:Lads_mobile_sdk/mx1;

    new-instance v1, Lads_mobile_sdk/lx1$$ExternalSyntheticLambda0;

    invoke-direct/range {v1 .. v7}, Lads_mobile_sdk/lx1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lads_mobile_sdk/mx1;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 78
    iget-object v0, p0, Lads_mobile_sdk/lx1;->e:Ljava/lang/String;

    iget-object v1, p0, Lads_mobile_sdk/lx1;->k:Lads_mobile_sdk/mx1;

    iget-object v2, p0, Lads_mobile_sdk/lx1;->l:Lads_mobile_sdk/r31;

    new-instance v3, Lads_mobile_sdk/lx1$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1, v2}, Lads_mobile_sdk/lx1$$ExternalSyntheticLambda1;-><init>(Lads_mobile_sdk/mx1;Lads_mobile_sdk/r31;)V

    invoke-virtual {p1, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 81
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 82
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class ads_mobile_sdk.lx1$$ExternalSyntheticLambda0 (ads_mobile_sdk.lx1$$ExternalSyntheticLambda0)
.class public final synthetic Lads_mobile_sdk/lx1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/Long;

.field public final synthetic f$4:Ljava/lang/Long;

.field public final synthetic f$5:Lads_mobile_sdk/mx1;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lads_mobile_sdk/mx1;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/lx1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lads_mobile_sdk/lx1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lads_mobile_sdk/lx1$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lads_mobile_sdk/lx1$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Long;

    iput-object p5, p0, Lads_mobile_sdk/lx1$$ExternalSyntheticLambda0;->f$4:Ljava/lang/Long;

    iput-object p6, p0, Lads_mobile_sdk/lx1$$ExternalSyntheticLambda0;->f$5:Lads_mobile_sdk/mx1;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 11

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/lx1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lads_mobile_sdk/lx1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lads_mobile_sdk/lx1$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lads_mobile_sdk/lx1$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Long;

    iget-object v4, p0, Lads_mobile_sdk/lx1$$ExternalSyntheticLambda0;->f$4:Ljava/lang/Long;

    iget-object v5, p0, Lads_mobile_sdk/lx1$$ExternalSyntheticLambda0;->f$5:Lads_mobile_sdk/mx1;

    move-object v6, p1

    move v7, p2

    invoke-static/range {v0 .. v7}, Lads_mobile_sdk/lx1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lads_mobile_sdk/mx1;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class ads_mobile_sdk.lx1$$ExternalSyntheticLambda1 (ads_mobile_sdk.lx1$$ExternalSyntheticLambda1)
.class public final synthetic Lads_mobile_sdk/lx1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/mx1;

.field public final synthetic f$1:Lads_mobile_sdk/r31;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/mx1;Lads_mobile_sdk/r31;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/lx1$$ExternalSyntheticLambda1;->f$0:Lads_mobile_sdk/mx1;

    iput-object p2, p0, Lads_mobile_sdk/lx1$$ExternalSyntheticLambda1;->f$1:Lads_mobile_sdk/r31;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/lx1$$ExternalSyntheticLambda1;->f$0:Lads_mobile_sdk/mx1;

    iget-object v1, p0, Lads_mobile_sdk/lx1$$ExternalSyntheticLambda1;->f$1:Lads_mobile_sdk/r31;

    invoke-static {v0, v1, p1, p2}, Lads_mobile_sdk/lx1;->a(Lads_mobile_sdk/mx1;Lads_mobile_sdk/r31;Landroid/content/DialogInterface;I)V

    return-void
.end method
