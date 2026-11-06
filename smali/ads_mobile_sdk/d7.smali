###### Class ads_mobile_sdk.d7 (ads_mobile_sdk.d7)
.class public final Lads_mobile_sdk/d7;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lads_mobile_sdk/q7;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/List;

.field public d:Lkotlinx/coroutines/sync/Mutex;

.field public e:J

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lads_mobile_sdk/q7;

.field public h:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/q7;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/d7;->g:Lads_mobile_sdk/q7;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/d7;->f:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/d7;->h:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/d7;->h:I

    iget-object p1, p0, Lads_mobile_sdk/d7;->g:Lads_mobile_sdk/q7;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, p0}, Lads_mobile_sdk/q7;->a(Lads_mobile_sdk/q7;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
