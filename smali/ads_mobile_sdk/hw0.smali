###### Class ads_mobile_sdk.hw0 (ads_mobile_sdk.hw0)
.class public final Lads_mobile_sdk/hw0;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lads_mobile_sdk/jw0;

.field public b:Lads_mobile_sdk/vv0;

.field public c:Lkotlinx/coroutines/sync/Mutex;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lads_mobile_sdk/jw0;

.field public f:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/jw0;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/hw0;->e:Lads_mobile_sdk/jw0;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/hw0;->d:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/hw0;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/hw0;->f:I

    iget-object p1, p0, Lads_mobile_sdk/hw0;->e:Lads_mobile_sdk/jw0;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v0, v1, p0}, Lads_mobile_sdk/jw0;->a(Lads_mobile_sdk/jw0;Lads_mobile_sdk/k30;Lcom/google/gson/JsonObject;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
