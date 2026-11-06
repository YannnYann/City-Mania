###### Class ads_mobile_sdk.u33 (ads_mobile_sdk.u33)
.class public final Lads_mobile_sdk/u33;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lads_mobile_sdk/v33;

.field public b:Lads_mobile_sdk/i2;

.field public c:Lkotlinx/coroutines/sync/Mutex;

.field public d:J

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lads_mobile_sdk/v33;

.field public g:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/v33;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/u33;->f:Lads_mobile_sdk/v33;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/u33;->e:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/u33;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/u33;->g:I

    iget-object p1, p0, Lads_mobile_sdk/u33;->f:Lads_mobile_sdk/v33;

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p1, v0, v1, v2, p0}, Lads_mobile_sdk/v33;->a(JLads_mobile_sdk/i2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
