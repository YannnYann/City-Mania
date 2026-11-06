###### Class ads_mobile_sdk.zz1 (ads_mobile_sdk.zz1)
.class public final Lads_mobile_sdk/zz1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:I

.field public final synthetic c:Lads_mobile_sdk/a02;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/a02;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/zz1;->c:Lads_mobile_sdk/a02;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/zz1;->a:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/zz1;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/zz1;->b:I

    iget-object p1, p0, Lads_mobile_sdk/zz1;->c:Lads_mobile_sdk/a02;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lads_mobile_sdk/a02;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
