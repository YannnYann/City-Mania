###### Class ads_mobile_sdk.hj (ads_mobile_sdk.hj)
.class public final Lads_mobile_sdk/hj;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:J

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lads_mobile_sdk/sj;

.field public g:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/sj;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/hj;->f:Lads_mobile_sdk/sj;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/hj;->e:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/hj;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/hj;->g:I

    iget-object p1, p0, Lads_mobile_sdk/hj;->f:Lads_mobile_sdk/sj;

    .line 2
    invoke-virtual {p1, p0}, Lads_mobile_sdk/sj;->x(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
