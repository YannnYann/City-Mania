###### Class ads_mobile_sdk.le1 (ads_mobile_sdk.le1)
.class public final Lads_mobile_sdk/le1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Lkotlinx/coroutines/sync/Mutex;

.field public c:Lads_mobile_sdk/if1;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lads_mobile_sdk/if1;

.field public f:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/le1;->e:Lads_mobile_sdk/if1;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/le1;->d:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/le1;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/le1;->f:I

    iget-object p1, p0, Lads_mobile_sdk/le1;->e:Lads_mobile_sdk/if1;

    .line 2
    invoke-virtual {p1, p0}, Lads_mobile_sdk/if1;->z(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
