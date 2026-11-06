###### Class ads_mobile_sdk.jj (ads_mobile_sdk.jj)
.class public final Lads_mobile_sdk/jj;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lads_mobile_sdk/sj;

.field public b:Lkotlinx/coroutines/sync/Mutex;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lads_mobile_sdk/sj;

.field public e:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/sj;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/jj;->d:Lads_mobile_sdk/sj;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/jj;->c:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/jj;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/jj;->e:I

    iget-object p1, p0, Lads_mobile_sdk/jj;->d:Lads_mobile_sdk/sj;

    invoke-static {p1, p0}, Lads_mobile_sdk/sj;->d(Lads_mobile_sdk/sj;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
