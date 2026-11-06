###### Class ads_mobile_sdk.s33 (ads_mobile_sdk.s33)
.class public final Lads_mobile_sdk/s33;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lads_mobile_sdk/v33;

.field public b:Lads_mobile_sdk/v01;

.field public c:Lads_mobile_sdk/i2;

.field public d:Lads_mobile_sdk/bs0;

.field public e:Ljava/lang/Integer;

.field public f:Lkotlinx/coroutines/sync/Mutex;

.field public g:J

.field public synthetic h:Ljava/lang/Object;

.field public final synthetic i:Lads_mobile_sdk/v33;

.field public j:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/v33;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/s33;->i:Lads_mobile_sdk/v33;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/s33;->h:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/s33;->j:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/s33;->j:I

    iget-object v0, p0, Lads_mobile_sdk/s33;->i:Lads_mobile_sdk/v33;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v1, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lads_mobile_sdk/v33;->a(Lads_mobile_sdk/v01;Lads_mobile_sdk/i2;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
