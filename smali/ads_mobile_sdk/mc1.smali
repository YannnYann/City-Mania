###### Class ads_mobile_sdk.mc1 (ads_mobile_sdk.mc1)
.class public final Lads_mobile_sdk/mc1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lads_mobile_sdk/nc1;

.field public b:Lads_mobile_sdk/rr3;

.field public c:Lads_mobile_sdk/rr3;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lads_mobile_sdk/nc1;

.field public f:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/nc1;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/mc1;->e:Lads_mobile_sdk/nc1;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/mc1;->d:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/mc1;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/mc1;->f:I

    iget-object p1, p0, Lads_mobile_sdk/mc1;->e:Lads_mobile_sdk/nc1;

    invoke-virtual {p1, p0}, Lads_mobile_sdk/nc1;->t(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
