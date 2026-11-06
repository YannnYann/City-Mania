###### Class ads_mobile_sdk.gp0 (ads_mobile_sdk.gp0)
.class public final Lads_mobile_sdk/gp0;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Lads_mobile_sdk/fl1;

.field public c:Lkotlinx/coroutines/sync/Mutex;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lads_mobile_sdk/rp0;

.field public f:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/rp0;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/gp0;->e:Lads_mobile_sdk/rp0;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/gp0;->d:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/gp0;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/gp0;->f:I

    iget-object p1, p0, Lads_mobile_sdk/gp0;->e:Lads_mobile_sdk/rp0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lads_mobile_sdk/rp0;->c(Lads_mobile_sdk/fl1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
