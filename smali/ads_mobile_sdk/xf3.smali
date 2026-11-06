###### Class ads_mobile_sdk.xf3 (ads_mobile_sdk.xf3)
.class public final Lads_mobile_sdk/xf3;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lads_mobile_sdk/yf3;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lads_mobile_sdk/tf3;

.field public e:Lkotlinx/coroutines/sync/Mutex;

.field public f:I

.field public synthetic g:Ljava/lang/Object;

.field public final synthetic h:Lads_mobile_sdk/yf3;

.field public i:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/yf3;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/xf3;->h:Lads_mobile_sdk/yf3;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/xf3;->g:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/xf3;->i:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/xf3;->i:I

    iget-object v0, p0, Lads_mobile_sdk/xf3;->h:Lads_mobile_sdk/yf3;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lads_mobile_sdk/yf3;->a(Ljava/lang/String;Ljava/lang/String;Lads_mobile_sdk/tf3;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
