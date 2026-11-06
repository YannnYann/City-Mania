###### Class ads_mobile_sdk.i62 (ads_mobile_sdk.i62)
.class public final Lads_mobile_sdk/i62;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lads_mobile_sdk/r31;

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lads_mobile_sdk/j62;

.field public d:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/j62;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/i62;->c:Lads_mobile_sdk/j62;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/i62;->b:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/i62;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/i62;->d:I

    iget-object p1, p0, Lads_mobile_sdk/i62;->c:Lads_mobile_sdk/j62;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lads_mobile_sdk/j62;->a(Lads_mobile_sdk/j62;Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
