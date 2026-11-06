###### Class ads_mobile_sdk.x92 (ads_mobile_sdk.x92)
.class public final Lads_mobile_sdk/x92;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lads_mobile_sdk/ca2;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Lkotlinx/coroutines/sync/Mutex;

.field public e:J

.field public f:Z

.field public synthetic g:Ljava/lang/Object;

.field public final synthetic h:Lads_mobile_sdk/ca2;

.field public i:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ca2;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/x92;->h:Lads_mobile_sdk/ca2;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/x92;->g:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/x92;->i:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/x92;->i:I

    iget-object v0, p0, Lads_mobile_sdk/x92;->h:Lads_mobile_sdk/ca2;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-object v6, p0

    .line 2
    invoke-virtual/range {v0 .. v6}, Lads_mobile_sdk/ca2;->a(JLandroid/net/Network;Landroid/net/NetworkCapabilities;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
