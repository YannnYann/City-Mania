###### Class ads_mobile_sdk.j21 (ads_mobile_sdk.j21)
.class public final Lads_mobile_sdk/j21;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lads_mobile_sdk/m21;

.field public c:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/m21;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/j21;->b:Lads_mobile_sdk/m21;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/j21;->a:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/j21;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/j21;->c:I

    iget-object p1, p0, Lads_mobile_sdk/j21;->b:Lads_mobile_sdk/m21;

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, p0}, Lads_mobile_sdk/m21;->a(JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
