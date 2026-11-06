###### Class ads_mobile_sdk.rj2 (ads_mobile_sdk.rj2)
.class public final Lads_mobile_sdk/rj2;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lads_mobile_sdk/sj2;

.field public c:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/sj2;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/rj2;->b:Lads_mobile_sdk/sj2;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/rj2;->a:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/rj2;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/rj2;->c:I

    iget-object p1, p0, Lads_mobile_sdk/rj2;->b:Lads_mobile_sdk/sj2;

    invoke-virtual {p1, p0}, Lads_mobile_sdk/sj2;->s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
