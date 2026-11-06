###### Class ads_mobile_sdk.z40 (ads_mobile_sdk.z40)
.class public final Lads_mobile_sdk/z40;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lads_mobile_sdk/s93;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/s93;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/z40;->b:Lads_mobile_sdk/s93;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static final a(Lads_mobile_sdk/s93;Landroid/view/View;)V
    .registers 2

    .line 2
    iget-object p0, p0, Lads_mobile_sdk/s93;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public static final a(Lads_mobile_sdk/s93;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 5
    iget-object p0, p0, Lads_mobile_sdk/s93;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    .line 6
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance v0, Lads_mobile_sdk/z40;

    iget-object v1, p0, Lads_mobile_sdk/z40;->b:Lads_mobile_sdk/s93;

    invoke-direct {v0, v1, p2}, Lads_mobile_sdk/z40;-><init>(Lads_mobile_sdk/s93;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lads_mobile_sdk/z40;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lads_mobile_sdk/r31;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance v0, Lads_mobile_sdk/z40;

    iget-object v1, p0, Lads_mobile_sdk/z40;->b:Lads_mobile_sdk/s93;

    invoke-direct {v0, v1, p2}, Lads_mobile_sdk/z40;-><init>(Lads_mobile_sdk/s93;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lads_mobile_sdk/z40;->a:Ljava/lang/Object;

    .line 3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/z40;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 247
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/z40;->a:Ljava/lang/Object;

    check-cast p1, Lads_mobile_sdk/r31;

    .line 248
    invoke-virtual {p1}, Lads_mobile_sdk/r31;->b()Lads_mobile_sdk/g41;

    move-result-object v0

    iget-object v1, p0, Lads_mobile_sdk/z40;->b:Lads_mobile_sdk/s93;

    .line 249
    iput-object v1, v0, Lads_mobile_sdk/g41;->u:Lads_mobile_sdk/s93;

    .line 250
    iget-object v0, p0, Lads_mobile_sdk/z40;->b:Lads_mobile_sdk/s93;

    new-instance v1, Lads_mobile_sdk/z40$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lads_mobile_sdk/z40$$ExternalSyntheticLambda0;-><init>(Lads_mobile_sdk/s93;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    iget-object v0, p0, Lads_mobile_sdk/z40;->b:Lads_mobile_sdk/s93;

    new-instance v1, Lads_mobile_sdk/z40$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lads_mobile_sdk/z40$$ExternalSyntheticLambda1;-><init>(Lads_mobile_sdk/s93;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 256
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class ads_mobile_sdk.z40$$ExternalSyntheticLambda0 (ads_mobile_sdk.z40$$ExternalSyntheticLambda0)
.class public final synthetic Lads_mobile_sdk/z40$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/s93;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/s93;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/z40$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/s93;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/z40$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/s93;

    invoke-static {v0, p1}, Lads_mobile_sdk/z40;->a(Lads_mobile_sdk/s93;Landroid/view/View;)V

    return-void
.end method

###### Class ads_mobile_sdk.z40$$ExternalSyntheticLambda1 (ads_mobile_sdk.z40$$ExternalSyntheticLambda1)
.class public final synthetic Lads_mobile_sdk/z40$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/s93;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/s93;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/z40$$ExternalSyntheticLambda1;->f$0:Lads_mobile_sdk/s93;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/z40$$ExternalSyntheticLambda1;->f$0:Lads_mobile_sdk/s93;

    invoke-static {v0, p1, p2}, Lads_mobile_sdk/z40;->a(Lads_mobile_sdk/s93;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
