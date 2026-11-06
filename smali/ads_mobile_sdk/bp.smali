###### Class ads_mobile_sdk.bp (ads_mobile_sdk.bp)
.class public final Lads_mobile_sdk/bp;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lads_mobile_sdk/cp;

.field public b:Lkotlinx/coroutines/sync/Mutex;

.field public c:Z

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lads_mobile_sdk/cp;

.field public f:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/cp;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/bp;->e:Lads_mobile_sdk/cp;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/bp;->d:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/bp;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/bp;->f:I

    iget-object p1, p0, Lads_mobile_sdk/bp;->e:Lads_mobile_sdk/cp;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lads_mobile_sdk/cp;->b(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
