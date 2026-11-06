###### Class com.unity3d.ads.RewardedAd$1$1 (com.unity3d.ads.RewardedAd$1$1)
.class final Lcom/unity3d/ads/RewardedAd$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RewardedAd.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/RewardedAd;-><init>(Lcom/unity3d/ads/core/data/model/AdObject;Lcom/unity3d/ads/core/domain/SafeCallbackInvoke;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRewardedAd.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RewardedAd.kt\ncom/unity3d/ads/RewardedAd$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,219:1\n17#2:220\n19#2:224\n46#3:221\n51#3:223\n105#4:222\n*S KotlinDebug\n*F\n+ 1 RewardedAd.kt\ncom/unity3d/ads/RewardedAd$1$1\n*L\n59#1:220\n59#1:224\n59#1:221\n59#1:223\n59#1:222\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.unity3d.ads.RewardedAd$1$1"
    f = "RewardedAd.kt"
    l = {
        0x3d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/RewardedAd;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/RewardedAd;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/RewardedAd;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/RewardedAd$1$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/RewardedAd$1$1;->this$0:Lcom/unity3d/ads/RewardedAd;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 0
    new-instance p1, Lcom/unity3d/ads/RewardedAd$1$1;

    iget-object v0, p0, Lcom/unity3d/ads/RewardedAd$1$1;->this$0:Lcom/unity3d/ads/RewardedAd;

    invoke-direct {p1, v0, p2}, Lcom/unity3d/ads/RewardedAd$1$1;-><init>(Lcom/unity3d/ads/RewardedAd;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/RewardedAd$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/RewardedAd$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/RewardedAd$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/RewardedAd$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 57
    iget v1, p0, Lcom/unity3d/ads/RewardedAd$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3f

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 58
    iget-object p1, p0, Lcom/unity3d/ads/RewardedAd$1$1;->this$0:Lcom/unity3d/ads/RewardedAd;

    invoke-static {p1}, Lcom/unity3d/ads/RewardedAd;->access$getAdObject$p(Lcom/unity3d/ads/RewardedAd;)Lcom/unity3d/ads/core/data/model/AdObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/AdObject;->getState()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    .line 59
    sget-object v1, Lcom/unity3d/ads/core/data/model/AdObjectState;->EXPIRED:Lcom/unity3d/ads/core/data/model/AdObjectState;

    .line 105
    new-instance v3, Lcom/unity3d/ads/RewardedAd$1$1$invokeSuspend$$inlined$filter$1;

    invoke-direct {v3, p1, v1}, Lcom/unity3d/ads/RewardedAd$1$1$invokeSuspend$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/unity3d/ads/core/data/model/AdObjectState;)V

    .line 60
    invoke-static {v3, v2}, Lkotlinx/coroutines/flow/FlowKt;->take(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 61
    new-instance v1, Lcom/unity3d/ads/RewardedAd$1$1$2;

    iget-object v3, p0, Lcom/unity3d/ads/RewardedAd$1$1;->this$0:Lcom/unity3d/ads/RewardedAd;

    invoke-direct {v1, v3}, Lcom/unity3d/ads/RewardedAd$1$1$2;-><init>(Lcom/unity3d/ads/RewardedAd;)V

    iput v2, p0, Lcom/unity3d/ads/RewardedAd$1$1;->label:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3f

    return-object v0

    .line 66
    :cond_3f
    :goto_3f
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class com.unity3d.ads.RewardedAd$1$1.AnonymousClass2 (com.unity3d.ads.RewardedAd$1$1$2)
.class final Lcom/unity3d/ads/RewardedAd$1$1$2;
.super Ljava/lang/Object;
.source "RewardedAd.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/RewardedAd$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/ads/RewardedAd;


# direct methods
.method public static synthetic $r8$lambda$bfw7K67flPbI8OC5Um4BbxCAyss(Lcom/unity3d/ads/RewardedAd;)Lkotlin/Unit;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/unity3d/ads/RewardedAd$1$1$2;->emit$lambda$0(Lcom/unity3d/ads/RewardedAd;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/unity3d/ads/RewardedAd;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/RewardedAd$1$1$2;->this$0:Lcom/unity3d/ads/RewardedAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final emit$lambda$0(Lcom/unity3d/ads/RewardedAd;)Lkotlin/Unit;
    .registers 2

    .line 63
    invoke-virtual {p0}, Lcom/unity3d/ads/RewardedAd;->getOnAdExpired()Lcom/unity3d/ads/AdExpiredListener;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0, p0}, Lcom/unity3d/ads/AdExpiredListener;->onAdExpired(Ljava/lang/Object;)V

    .line 64
    :cond_9
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final emit(Lcom/unity3d/ads/core/data/model/AdObjectState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/data/model/AdObjectState;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 62
    iget-object p1, p0, Lcom/unity3d/ads/RewardedAd$1$1$2;->this$0:Lcom/unity3d/ads/RewardedAd;

    invoke-static {p1}, Lcom/unity3d/ads/RewardedAd;->access$getSafeCallbackInvoke$p(Lcom/unity3d/ads/RewardedAd;)Lcom/unity3d/ads/core/domain/SafeCallbackInvoke;

    move-result-object p1

    iget-object p2, p0, Lcom/unity3d/ads/RewardedAd$1$1$2;->this$0:Lcom/unity3d/ads/RewardedAd;

    new-instance v0, Lcom/unity3d/ads/RewardedAd$1$1$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/unity3d/ads/RewardedAd$1$1$2$$ExternalSyntheticLambda0;-><init>(Lcom/unity3d/ads/RewardedAd;)V

    invoke-interface {p1, v0}, Lcom/unity3d/ads/core/domain/SafeCallbackInvoke;->invoke(Lkotlin/jvm/functions/Function0;)V

    .line 65
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 61
    check-cast p1, Lcom/unity3d/ads/core/data/model/AdObjectState;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/RewardedAd$1$1$2;->emit(Lcom/unity3d/ads/core/data/model/AdObjectState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class com.unity3d.ads.RewardedAd$1$1$2$$ExternalSyntheticLambda0 (com.unity3d.ads.RewardedAd$1$1$2$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/unity3d/ads/RewardedAd$1$1$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/RewardedAd;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/RewardedAd;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/RewardedAd$1$1$2$$ExternalSyntheticLambda0;->f$0:Lcom/unity3d/ads/RewardedAd;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/RewardedAd$1$1$2$$ExternalSyntheticLambda0;->f$0:Lcom/unity3d/ads/RewardedAd;

    invoke-static {v0}, Lcom/unity3d/ads/RewardedAd$1$1$2;->$r8$lambda$bfw7K67flPbI8OC5Um4BbxCAyss(Lcom/unity3d/ads/RewardedAd;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.RewardedAd$1$1$invokeSuspend$$inlined$filter$1 (com.unity3d.ads.RewardedAd$1$1$invokeSuspend$$inlined$filter$1)
.class public final Lcom/unity3d/ads/RewardedAd$1$1$invokeSuspend$$inlined$filter$1;
.super Ljava/lang/Object;
.source "SafeCollector.common.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/RewardedAd$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/Flow<",
        "Lcom/unity3d/ads/core/data/model/AdObjectState;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n1#1,108:1\n47#2,5:109\n*E\n"
.end annotation


# instance fields
.field final synthetic $this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

.field final synthetic receiver$inlined:Lcom/unity3d/ads/core/data/model/AdObjectState;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/Flow;Lcom/unity3d/ads/core/data/model/AdObjectState;)V
    .registers 3

    iput-object p1, p0, Lcom/unity3d/ads/RewardedAd$1$1$invokeSuspend$$inlined$filter$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    iput-object p2, p0, Lcom/unity3d/ads/RewardedAd$1$1$invokeSuspend$$inlined$filter$1;->receiver$inlined:Lcom/unity3d/ads/core/data/model/AdObjectState;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 109
    iget-object v0, p0, Lcom/unity3d/ads/RewardedAd$1$1$invokeSuspend$$inlined$filter$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    new-instance v1, Lcom/unity3d/ads/RewardedAd$1$1$invokeSuspend$$inlined$filter$1$2;

    iget-object v2, p0, Lcom/unity3d/ads/RewardedAd$1$1$invokeSuspend$$inlined$filter$1;->receiver$inlined:Lcom/unity3d/ads/core/data/model/AdObjectState;

    invoke-direct {v1, p1, v2}, Lcom/unity3d/ads/RewardedAd$1$1$invokeSuspend$$inlined$filter$1$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/unity3d/ads/core/data/model/AdObjectState;)V

    invoke-interface {v0, v1, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_14

    return-object p1

    .line 107
    :cond_14
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class com.unity3d.ads.RewardedAd$1$1$invokeSuspend$$inlined$filter$1.AnonymousClass2 (com.unity3d.ads.RewardedAd$1$1$invokeSuspend$$inlined$filter$1$2)
.class public final Lcom/unity3d/ads/RewardedAd$1$1$invokeSuspend$$inlined$filter$1$2;
.super Ljava/lang/Object;
.source "Emitters.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/RewardedAd$1$1$invokeSuspend$$inlined$filter$1;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 RewardedAd.kt\ncom/unity3d/ads/RewardedAd$1$1\n*L\n1#1,49:1\n18#2:50\n19#2:52\n59#3:51\n*E\n"
.end annotation


# instance fields
.field final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field final synthetic receiver$inlined:Lcom/unity3d/ads/core/data/model/AdObjectState;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/unity3d/ads/core/data/model/AdObjectState;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/RewardedAd$1$1$invokeSuspend$$inlined$filter$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/unity3d/ads/RewardedAd$1$1$invokeSuspend$$inlined$filter$1$2;->receiver$inlined:Lcom/unity3d/ads/core/data/model/AdObjectState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    instance-of v0, p2, Lcom/unity3d/ads/RewardedAd$1$1$invokeSuspend$$inlined$filter$1$2$1;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lcom/unity3d/ads/RewardedAd$1$1$invokeSuspend$$inlined$filter$1$2$1;

    iget v1, v0, Lcom/unity3d/ads/RewardedAd$1$1$invokeSuspend$$inlined$filter$1$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/unity3d/ads/RewardedAd$1$1$invokeSuspend$$inlined$filter$1$2$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/unity3d/ads/RewardedAd$1$1$invokeSuspend$$inlined$filter$1$2$1;

    invoke-direct {v0, p0, p2}, Lcom/unity3d/ads/RewardedAd$1$1$invokeSuspend$$inlined$filter$1$2$1;-><init>(Lcom/unity3d/ads/RewardedAd$1$1$invokeSuspend$$inlined$filter$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lcom/unity3d/ads/RewardedAd$1$1$invokeSuspend$$inlined$filter$1$2$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 58
    iget v2, v0, Lcom/unity3d/ads/RewardedAd$1$1$invokeSuspend$$inlined$filter$1$2$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_47

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    iget-object p2, p0, Lcom/unity3d/ads/RewardedAd$1$1$invokeSuspend$$inlined$filter$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .line 59
    iget-object v2, p0, Lcom/unity3d/ads/RewardedAd$1$1$invokeSuspend$$inlined$filter$1$2;->receiver$inlined:Lcom/unity3d/ads/core/data/model/AdObjectState;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 50
    iput v3, v0, Lcom/unity3d/ads/RewardedAd$1$1$invokeSuspend$$inlined$filter$1$2$1;->label:I

    invoke-interface {p2, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_47

    return-object v1

    .line 49
    :cond_47
    :goto_47
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class com.unity3d.ads.RewardedAd$1$1$invokeSuspend$$inlined$filter$1.AnonymousClass2.AnonymousClass1 (com.unity3d.ads.RewardedAd$1$1$invokeSuspend$$inlined$filter$1$2$1)
.class public final Lcom/unity3d/ads/RewardedAd$1$1$invokeSuspend$$inlined$filter$1$2$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/RewardedAd$1$1$invokeSuspend$$inlined$filter$1$2;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.unity3d.ads.RewardedAd$1$1$invokeSuspend$$inlined$filter$1$2"
    f = "RewardedAd.kt"
    l = {
        0x32
    }
    m = "emit"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/unity3d/ads/RewardedAd$1$1$invokeSuspend$$inlined$filter$1$2;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/RewardedAd$1$1$invokeSuspend$$inlined$filter$1$2;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/RewardedAd$1$1$invokeSuspend$$inlined$filter$1$2$1;->this$0:Lcom/unity3d/ads/RewardedAd$1$1$invokeSuspend$$inlined$filter$1$2;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/RewardedAd$1$1$invokeSuspend$$inlined$filter$1$2$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/unity3d/ads/RewardedAd$1$1$invokeSuspend$$inlined$filter$1$2$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/unity3d/ads/RewardedAd$1$1$invokeSuspend$$inlined$filter$1$2$1;->label:I

    iget-object p1, p0, Lcom/unity3d/ads/RewardedAd$1$1$invokeSuspend$$inlined$filter$1$2$1;->this$0:Lcom/unity3d/ads/RewardedAd$1$1$invokeSuspend$$inlined$filter$1$2;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/unity3d/ads/RewardedAd$1$1$invokeSuspend$$inlined$filter$1$2;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
