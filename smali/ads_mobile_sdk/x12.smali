###### Class ads_mobile_sdk.x12 (ads_mobile_sdk.x12)
.class public final Lads_mobile_sdk/x12;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lads_mobile_sdk/c22;

.field public c:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/c22;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/x12;->b:Lads_mobile_sdk/c22;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/x12;->a:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/x12;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/x12;->c:I

    iget-object p1, p0, Lads_mobile_sdk/x12;->b:Lads_mobile_sdk/c22;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0, v0, p0}, Lads_mobile_sdk/c22;->a(Lads_mobile_sdk/q52;Lads_mobile_sdk/i2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
