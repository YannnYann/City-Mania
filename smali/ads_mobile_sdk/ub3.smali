###### Class ads_mobile_sdk.ub3 (ads_mobile_sdk.ub3)
.class public final Lads_mobile_sdk/ub3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/ur3;

.field public final b:Lkotlinx/coroutines/channels/Channel;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ur3;Lkotlinx/coroutines/CoroutineScope;)V
    .registers 5

    .line 2
    const-string v0, "backgroundScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceLogger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lads_mobile_sdk/ub3;->a:Lads_mobile_sdk/ur3;

    const/4 p1, 0x6

    const v0, 0x7fffffff

    const/4 v1, 0x0

    .line 21
    invoke-static {v0, v1, v1, p1, v1}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/Channel;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/ub3;->b:Lkotlinx/coroutines/channels/Channel;

    .line 26
    new-instance p1, Lads_mobile_sdk/tb3;

    invoke-direct {p1, p0, v1}, Lads_mobile_sdk/tb3;-><init>(Lads_mobile_sdk/ub3;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, p1}, Lads_mobile_sdk/xs3;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/jvm/functions/Function1;)V
    .registers 3

    .line 1
    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lads_mobile_sdk/ub3;->b:Lkotlinx/coroutines/channels/Channel;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
