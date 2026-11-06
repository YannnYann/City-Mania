###### Class ads_mobile_sdk.lq (ads_mobile_sdk.lq)
.class public final Lads_mobile_sdk/lq;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Lads_mobile_sdk/ot0;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public synthetic g:Ljava/lang/Object;

.field public final synthetic h:Lads_mobile_sdk/nq;

.field public i:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/nq;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/lq;->h:Lads_mobile_sdk/nq;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/lq;->g:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/lq;->i:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/lq;->i:I

    iget-object p1, p0, Lads_mobile_sdk/lq;->h:Lads_mobile_sdk/nq;

    invoke-static {p1, p0}, Lads_mobile_sdk/nq;->a(Lads_mobile_sdk/nq;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
