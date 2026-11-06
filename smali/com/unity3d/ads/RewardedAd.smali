###### Class com.unity3d.ads.RewardedAd (com.unity3d.ads.RewardedAd)
.class public final Lcom/unity3d/ads/RewardedAd;
.super Ljava/lang/Object;
.source "RewardedAd.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/RewardedAd$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/unity3d/ads/RewardedAd$Companion;


# instance fields
.field private final adObject:Lcom/unity3d/ads/core/data/model/AdObject;

.field private onAdExpired:Lcom/unity3d/ads/AdExpiredListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/unity3d/ads/AdExpiredListener<",
            "Lcom/unity3d/ads/RewardedAd;",
            ">;"
        }
    .end annotation
.end field

.field private final safeCallbackInvoke:Lcom/unity3d/ads/core/domain/SafeCallbackInvoke;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/unity3d/ads/RewardedAd$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/ads/RewardedAd$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/ads/RewardedAd;->Companion:Lcom/unity3d/ads/RewardedAd$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/unity3d/ads/core/data/model/AdObject;Lcom/unity3d/ads/core/domain/SafeCallbackInvoke;)V
    .registers 9

    const-string v0, "adObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeCallbackInvoke"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/unity3d/ads/RewardedAd;->adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    .line 50
    iput-object p2, p0, Lcom/unity3d/ads/RewardedAd;->safeCallbackInvoke:Lcom/unity3d/ads/core/domain/SafeCallbackInvoke;

    .line 56
    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/AdObject;->getAdPlayer()Lcom/unity3d/ads/adplayer/AdPlayer;

    move-result-object p1

    if-eqz p1, :cond_2a

    invoke-interface {p1}, Lcom/unity3d/ads/adplayer/AdPlayer;->getScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 57
    new-instance v3, Lcom/unity3d/ads/RewardedAd$1$1;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lcom/unity3d/ads/RewardedAd$1$1;-><init>(Lcom/unity3d/ads/RewardedAd;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_2a
    return-void
.end method

.method public static final synthetic access$getAdObject$p(Lcom/unity3d/ads/RewardedAd;)Lcom/unity3d/ads/core/data/model/AdObject;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/unity3d/ads/RewardedAd;->adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    return-object p0
.end method

.method public static final synthetic access$getSafeCallbackInvoke$p(Lcom/unity3d/ads/RewardedAd;)Lcom/unity3d/ads/core/domain/SafeCallbackInvoke;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/unity3d/ads/RewardedAd;->safeCallbackInvoke:Lcom/unity3d/ads/core/domain/SafeCallbackInvoke;

    return-object p0
.end method

.method public static final load(Lcom/unity3d/ads/LoadConfiguration;Lcom/unity3d/ads/LoadListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/LoadConfiguration;",
            "Lcom/unity3d/ads/LoadListener<",
            "Lcom/unity3d/ads/RewardedAd;",
            ">;)V"
        }
    .end annotation

    .line 0
    sget-object v0, Lcom/unity3d/ads/RewardedAd;->Companion:Lcom/unity3d/ads/RewardedAd$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/unity3d/ads/RewardedAd$Companion;->load(Lcom/unity3d/ads/LoadConfiguration;Lcom/unity3d/ads/LoadListener;)V

    return-void
.end method

.method public static synthetic show$default(Lcom/unity3d/ads/RewardedAd;Landroid/content/Context;Lcom/unity3d/ads/ShowConfiguration;Lcom/unity3d/ads/RewardedShowListener;ILjava/lang/Object;)V
    .registers 7

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    move-object p2, v0

    :cond_6
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_b

    move-object p3, v0

    .line 77
    :cond_b
    invoke-virtual {p0, p1, p2, p3}, Lcom/unity3d/ads/RewardedAd;->show(Landroid/content/Context;Lcom/unity3d/ads/ShowConfiguration;Lcom/unity3d/ads/RewardedShowListener;)V

    return-void
.end method


# virtual methods
.method public final getOnAdExpired()Lcom/unity3d/ads/AdExpiredListener;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/unity3d/ads/AdExpiredListener<",
            "Lcom/unity3d/ads/RewardedAd;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/unity3d/ads/RewardedAd;->onAdExpired:Lcom/unity3d/ads/AdExpiredListener;

    return-object v0
.end method

.method public final setOnAdExpired(Lcom/unity3d/ads/AdExpiredListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/AdExpiredListener<",
            "Lcom/unity3d/ads/RewardedAd;",
            ">;)V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/unity3d/ads/RewardedAd;->onAdExpired:Lcom/unity3d/ads/AdExpiredListener;

    return-void
.end method

.method public final show(Landroid/content/Context;Lcom/unity3d/ads/ShowConfiguration;Lcom/unity3d/ads/RewardedShowListener;)V
    .registers 12

    .line 78
    sget-object v0, Lcom/unity3d/services/core/di/ServiceProvider;->INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider;

    invoke-virtual {v0}, Lcom/unity3d/services/core/di/ServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object v0

    .line 79
    new-instance v1, Lcom/unity3d/services/core/di/ServiceKey;

    .line 80
    const-class v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 79
    const-string v3, "show_scope"

    invoke-direct {v1, v3, v2}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    .line 78
    invoke-interface {v0, v1}, Lcom/unity3d/services/core/di/IServicesRegistry;->resolveService(Lcom/unity3d/services/core/di/ServiceKey;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 84
    new-instance v2, Lcom/unity3d/ads/RewardedAd$show$1;

    const/4 v7, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/unity3d/ads/RewardedAd$show$1;-><init>(Lcom/unity3d/ads/ShowConfiguration;Lcom/unity3d/ads/RewardedAd;Landroid/content/Context;Lcom/unity3d/ads/RewardedShowListener;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v4, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

###### Class com.unity3d.ads.RewardedAd.Companion (com.unity3d.ads.RewardedAd$Companion)
.class public final Lcom/unity3d/ads/RewardedAd$Companion;
.super Ljava/lang/Object;
.source "RewardedAd.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/RewardedAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/unity3d/ads/RewardedAd$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final load(Lcom/unity3d/ads/LoadConfiguration;Lcom/unity3d/ads/LoadListener;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/LoadConfiguration;",
            "Lcom/unity3d/ads/LoadListener<",
            "Lcom/unity3d/ads/RewardedAd;",
            ">;)V"
        }
    .end annotation

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    sget-object v0, Lcom/unity3d/services/core/di/ServiceProvider;->INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider;

    invoke-virtual {v0}, Lcom/unity3d/services/core/di/ServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object v0

    new-instance v1, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "load_scope"

    invoke-direct {v1, v3, v2}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    invoke-interface {v0, v1}, Lcom/unity3d/services/core/di/IServicesRegistry;->resolveService(Lcom/unity3d/services/core/di/ServiceKey;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 174
    new-instance v4, Lcom/unity3d/ads/RewardedAd$Companion$load$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p2, v0}, Lcom/unity3d/ads/RewardedAd$Companion$load$1;-><init>(Lcom/unity3d/ads/LoadConfiguration;Lcom/unity3d/ads/LoadListener;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

###### Class com.unity3d.ads.RewardedAd.AnonymousClass1 (com.unity3d.ads.RewardedAd$show$1)
.class final Lcom/unity3d/ads/RewardedAd$show$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RewardedAd.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/RewardedAd;->show(Landroid/content/Context;Lcom/unity3d/ads/ShowConfiguration;Lcom/unity3d/ads/RewardedShowListener;)V
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
    value = "SMAP\nRewardedAd.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RewardedAd.kt\ncom/unity3d/ads/RewardedAd$show$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,219:1\n1#2:220\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.unity3d.ads.RewardedAd$show$1"
    f = "RewardedAd.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $configuration:Lcom/unity3d/ads/ShowConfiguration;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $listener:Lcom/unity3d/ads/RewardedShowListener;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/RewardedAd;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/ShowConfiguration;Lcom/unity3d/ads/RewardedAd;Landroid/content/Context;Lcom/unity3d/ads/RewardedShowListener;Lkotlin/coroutines/Continuation;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/ShowConfiguration;",
            "Lcom/unity3d/ads/RewardedAd;",
            "Landroid/content/Context;",
            "Lcom/unity3d/ads/RewardedShowListener;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/RewardedAd$show$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/RewardedAd$show$1;->$configuration:Lcom/unity3d/ads/ShowConfiguration;

    iput-object p2, p0, Lcom/unity3d/ads/RewardedAd$show$1;->this$0:Lcom/unity3d/ads/RewardedAd;

    iput-object p3, p0, Lcom/unity3d/ads/RewardedAd$show$1;->$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/unity3d/ads/RewardedAd$show$1;->$listener:Lcom/unity3d/ads/RewardedShowListener;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 9
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
    new-instance v0, Lcom/unity3d/ads/RewardedAd$show$1;

    iget-object v1, p0, Lcom/unity3d/ads/RewardedAd$show$1;->$configuration:Lcom/unity3d/ads/ShowConfiguration;

    iget-object v2, p0, Lcom/unity3d/ads/RewardedAd$show$1;->this$0:Lcom/unity3d/ads/RewardedAd;

    iget-object v3, p0, Lcom/unity3d/ads/RewardedAd$show$1;->$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/unity3d/ads/RewardedAd$show$1;->$listener:Lcom/unity3d/ads/RewardedShowListener;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/ads/RewardedAd$show$1;-><init>(Lcom/unity3d/ads/ShowConfiguration;Lcom/unity3d/ads/RewardedAd;Landroid/content/Context;Lcom/unity3d/ads/RewardedShowListener;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/RewardedAd$show$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/RewardedAd$show$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/RewardedAd$show$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/RewardedAd$show$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 84
    iget v0, p0, Lcom/unity3d/ads/RewardedAd$show$1;->label:I

    if-nez v0, :cond_eb

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 85
    new-instance p1, Lcom/unity3d/ads/core/data/model/ShowConfigurationInternal;

    .line 86
    iget-object v0, p0, Lcom/unity3d/ads/RewardedAd$show$1;->$configuration:Lcom/unity3d/ads/ShowConfiguration;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/unity3d/ads/ShowConfiguration;->getCustomRewardString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_16
    move-object v0, v1

    .line 87
    :goto_17
    iget-object v2, p0, Lcom/unity3d/ads/RewardedAd$show$1;->$configuration:Lcom/unity3d/ads/ShowConfiguration;

    if-eqz v2, :cond_21

    invoke-virtual {v2}, Lcom/unity3d/ads/ShowConfiguration;->getExtras()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_25

    :cond_21
    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 85
    :cond_25
    invoke-direct {p1, v0, v2}, Lcom/unity3d/ads/core/data/model/ShowConfigurationInternal;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 90
    new-instance v0, Lcom/unity3d/ads/UnityAdsShowOptions;

    invoke-direct {v0}, Lcom/unity3d/ads/UnityAdsShowOptions;-><init>()V

    .line 91
    iget-object v2, p0, Lcom/unity3d/ads/RewardedAd$show$1;->this$0:Lcom/unity3d/ads/RewardedAd;

    invoke-static {v2}, Lcom/unity3d/ads/RewardedAd;->access$getAdObject$p(Lcom/unity3d/ads/RewardedAd;)Lcom/unity3d/ads/core/data/model/AdObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/core/data/model/AdObject;->getOpportunityId()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/ads/core/extensions/ProtobufExtensionsKt;->toUUID(Lcom/google/protobuf/ByteString;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/unity3d/ads/UnityAdsBaseOptions;->setObjectId(Ljava/lang/String;)V

    .line 92
    iput-object p1, v0, Lcom/unity3d/ads/UnityAdsShowOptions;->showConfiguration:Lcom/unity3d/ads/core/data/model/ShowConfigurationInternal;

    .line 94
    iget-object p1, p0, Lcom/unity3d/ads/RewardedAd$show$1;->this$0:Lcom/unity3d/ads/RewardedAd;

    invoke-static {p1}, Lcom/unity3d/ads/RewardedAd;->access$getAdObject$p(Lcom/unity3d/ads/RewardedAd;)Lcom/unity3d/ads/core/data/model/AdObject;

    move-result-object p1

    iget-object v2, p0, Lcom/unity3d/ads/RewardedAd$show$1;->$configuration:Lcom/unity3d/ads/ShowConfiguration;

    invoke-virtual {p1, v2}, Lcom/unity3d/ads/core/data/model/AdObject;->setShowConfiguration(Lcom/unity3d/ads/ShowConfiguration;)V

    .line 95
    iget-object p1, p0, Lcom/unity3d/ads/RewardedAd$show$1;->this$0:Lcom/unity3d/ads/RewardedAd;

    invoke-static {p1}, Lcom/unity3d/ads/RewardedAd;->access$getAdObject$p(Lcom/unity3d/ads/RewardedAd;)Lcom/unity3d/ads/core/data/model/AdObject;

    move-result-object p1

    iget-object v2, p0, Lcom/unity3d/ads/RewardedAd$show$1;->$configuration:Lcom/unity3d/ads/ShowConfiguration;

    if-eqz v2, :cond_5e

    invoke-virtual {v2}, Lcom/unity3d/ads/ShowConfiguration;->getCustomRewardString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5f

    :cond_5e
    move-object v2, v1

    :goto_5f
    invoke-virtual {p1, v2}, Lcom/unity3d/ads/core/data/model/AdObject;->setPlayerServerId(Ljava/lang/String;)V

    .line 97
    sget-object p1, Lcom/unity3d/services/core/di/ServiceProvider;->INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider;

    invoke-virtual {p1}, Lcom/unity3d/services/core/di/ServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object v2

    .line 98
    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/data/datasource/CurrentActivityDataSource;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v1, v4, v5, v1}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v3}, Lcom/unity3d/services/core/di/IServicesRegistry;->resolveService(Lcom/unity3d/services/core/di/ServiceKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unity3d/ads/core/data/datasource/CurrentActivityDataSource;

    .line 99
    invoke-virtual {p1}, Lcom/unity3d/services/core/di/ServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object v3

    .line 100
    new-instance v4, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v6, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-direct {v4, v1, v6, v5, v1}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v3, v4}, Lcom/unity3d/services/core/di/IServicesRegistry;->resolveService(Lcom/unity3d/services/core/di/ServiceKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 101
    invoke-virtual {p1}, Lcom/unity3d/services/core/di/ServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p1

    .line 102
    new-instance v4, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v6, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-direct {v4, v1, v6, v5, v1}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p1, v4}, Lcom/unity3d/services/core/di/IServicesRegistry;->resolveService(Lcom/unity3d/services/core/di/ServiceKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 103
    invoke-interface {v2}, Lcom/unity3d/ads/core/data/datasource/CurrentActivityDataSource;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    .line 105
    iget-object v4, p0, Lcom/unity3d/ads/RewardedAd$show$1;->$context:Landroid/content/Context;

    iget-object v6, p0, Lcom/unity3d/ads/RewardedAd$show$1;->$configuration:Lcom/unity3d/ads/ShowConfiguration;

    invoke-static {v4, v2, v6}, Lcom/unity3d/ads/ShowActivityResolverKt;->commitExtras(Landroid/content/Context;Landroid/app/Activity;Lcom/unity3d/ads/ShowConfiguration;)V

    .line 107
    iget-object v4, p0, Lcom/unity3d/ads/RewardedAd$show$1;->$context:Landroid/content/Context;

    iget-object v6, p0, Lcom/unity3d/ads/RewardedAd$show$1;->this$0:Lcom/unity3d/ads/RewardedAd;

    invoke-static {v6}, Lcom/unity3d/ads/RewardedAd;->access$getAdObject$p(Lcom/unity3d/ads/RewardedAd;)Lcom/unity3d/ads/core/data/model/AdObject;

    move-result-object v6

    invoke-static {v4, v2, v6, v3, p1}, Lcom/unity3d/ads/ShowActivityResolverKt;->resolveEffectiveActivity(Landroid/content/Context;Landroid/app/Activity;Lcom/unity3d/ads/core/data/model/AdObject;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/data/repository/SessionRepository;)Landroid/app/Activity;

    move-result-object p1

    .line 108
    iget-object v2, p0, Lcom/unity3d/ads/RewardedAd$show$1;->this$0:Lcom/unity3d/ads/RewardedAd;

    invoke-static {v2}, Lcom/unity3d/ads/RewardedAd;->access$getAdObject$p(Lcom/unity3d/ads/RewardedAd;)Lcom/unity3d/ads/core/data/model/AdObject;

    move-result-object v2

    if-eqz p1, :cond_c9

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_ca

    :cond_c9
    move-object v3, v1

    :goto_ca
    invoke-virtual {v2, v3}, Lcom/unity3d/ads/core/data/model/AdObject;->setActivity(Ljava/lang/ref/WeakReference;)V

    .line 110
    new-instance p1, Lcom/unity3d/services/UnityAdsSDK;

    invoke-direct {p1, v1, v5, v1}, Lcom/unity3d/services/UnityAdsSDK;-><init>(Lcom/unity3d/services/core/di/IServiceProvider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v1, p0, Lcom/unity3d/ads/RewardedAd$show$1;->this$0:Lcom/unity3d/ads/RewardedAd;

    invoke-static {v1}, Lcom/unity3d/ads/RewardedAd;->access$getAdObject$p(Lcom/unity3d/ads/RewardedAd;)Lcom/unity3d/ads/core/data/model/AdObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/ads/core/data/model/AdObject;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/unity3d/ads/RewardedAd$show$1$2;

    iget-object v3, p0, Lcom/unity3d/ads/RewardedAd$show$1;->$listener:Lcom/unity3d/ads/RewardedShowListener;

    iget-object v4, p0, Lcom/unity3d/ads/RewardedAd$show$1;->this$0:Lcom/unity3d/ads/RewardedAd;

    invoke-direct {v2, v3, v4}, Lcom/unity3d/ads/RewardedAd$show$1$2;-><init>(Lcom/unity3d/ads/RewardedShowListener;Lcom/unity3d/ads/RewardedAd;)V

    invoke-virtual {p1, v1, v0, v2}, Lcom/unity3d/services/UnityAdsSDK;->show(Ljava/lang/String;Lcom/unity3d/ads/UnityAdsShowOptions;Lcom/unity3d/ads/core/data/model/Listeners;)Lkotlinx/coroutines/Job;

    .line 160
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 84
    :cond_eb
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class com.unity3d.ads.RewardedAd.AnonymousClass1.AnonymousClass2 (com.unity3d.ads.RewardedAd$show$1$2)
.class public final Lcom/unity3d/ads/RewardedAd$show$1$2;
.super Ljava/lang/Object;
.source "RewardedAd.kt"

# interfaces
.implements Lcom/unity3d/ads/core/data/model/Listeners;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/RewardedAd$show$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/RewardedAd$show$1$2$WhenMappings;
    }
.end annotation


# instance fields
.field final synthetic $listener:Lcom/unity3d/ads/RewardedShowListener;

.field final synthetic this$0:Lcom/unity3d/ads/RewardedAd;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/RewardedShowListener;Lcom/unity3d/ads/RewardedAd;)V
    .registers 3

    iput-object p1, p0, Lcom/unity3d/ads/RewardedAd$show$1$2;->$listener:Lcom/unity3d/ads/RewardedShowListener;

    iput-object p2, p0, Lcom/unity3d/ads/RewardedAd$show$1$2;->this$0:Lcom/unity3d/ads/RewardedAd;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Ljava/lang/String;)V
    .registers 3

    const-string v0, "placementId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iget-object p1, p0, Lcom/unity3d/ads/RewardedAd$show$1$2;->$listener:Lcom/unity3d/ads/RewardedShowListener;

    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/unity3d/ads/RewardedAd$show$1$2;->this$0:Lcom/unity3d/ads/RewardedAd;

    invoke-interface {p1, v0}, Lcom/unity3d/ads/ShowListener;->onClicked(Ljava/lang/Object;)V

    :cond_e
    return-void
.end method

.method public onComplete(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;)V
    .registers 4

    const-string v0, "placementId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "state"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    sget-object p1, Lcom/unity3d/ads/RewardedAd$show$1$2$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_21

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1b

    .line 150
    sget-object p1, Lcom/unity3d/ads/ShowFinishState;->SKIPPED:Lcom/unity3d/ads/ShowFinishState;

    goto :goto_23

    .line 148
    :cond_1b
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 149
    :cond_21
    sget-object p1, Lcom/unity3d/ads/ShowFinishState;->COMPLETED:Lcom/unity3d/ads/ShowFinishState;

    .line 153
    :goto_23
    iget-object p2, p0, Lcom/unity3d/ads/RewardedAd$show$1$2;->$listener:Lcom/unity3d/ads/RewardedShowListener;

    if-eqz p2, :cond_2c

    iget-object v0, p0, Lcom/unity3d/ads/RewardedAd$show$1$2;->this$0:Lcom/unity3d/ads/RewardedAd;

    invoke-interface {p2, v0, p1}, Lcom/unity3d/ads/ShowListener;->onCompleted(Ljava/lang/Object;Lcom/unity3d/ads/ShowFinishState;)V

    :cond_2c
    return-void
.end method

.method public onError(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsShowError;Ljava/lang/String;)V
    .registers 6

    const-string v0, "placementId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "error"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "message"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    sget-object p1, Lcom/unity3d/ads/RewardedAd$show$1$2$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_29

    const/4 p2, 0x2

    if-eq p1, p2, :cond_26

    const/4 p2, 0x3

    if-eq p1, p2, :cond_23

    .line 124
    sget-object p1, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_SHOW_INTERNAL:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    goto :goto_2b

    .line 123
    :cond_23
    sget-object p1, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_SHOW_ALREADY_SHOWN:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    goto :goto_2b

    .line 122
    :cond_26
    sget-object p1, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_SHOW_EXPIRED:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    goto :goto_2b

    .line 121
    :cond_29
    sget-object p1, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_TIMEOUT:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    .line 127
    :goto_2b
    iget-object p2, p0, Lcom/unity3d/ads/RewardedAd$show$1$2;->$listener:Lcom/unity3d/ads/RewardedShowListener;

    if-eqz p2, :cond_41

    .line 128
    iget-object p3, p0, Lcom/unity3d/ads/RewardedAd$show$1$2;->this$0:Lcom/unity3d/ads/RewardedAd;

    .line 129
    new-instance v0, Lcom/unity3d/ads/UnityAdsError;

    .line 130
    invoke-virtual {p1}, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->getNumber()I

    move-result v1

    .line 131
    invoke-static {p1}, Lcom/unity3d/ads/UnityAdsErrorKt;->getShowErrorMsg(Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;)Ljava/lang/String;

    move-result-object p1

    .line 129
    invoke-direct {v0, v1, p1}, Lcom/unity3d/ads/UnityAdsError;-><init>(ILjava/lang/String;)V

    .line 127
    invoke-interface {p2, p3, v0}, Lcom/unity3d/ads/ShowListener;->onFailed(Ljava/lang/Object;Lcom/unity3d/ads/UnityAdsError;)V

    :cond_41
    return-void
.end method

.method public onLeftApplication(Ljava/lang/String;)V
    .registers 3

    .line 0
    const-string v0, "placementId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onRewarded(Ljava/lang/String;)V
    .registers 3

    const-string v0, "placementId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    iget-object p1, p0, Lcom/unity3d/ads/RewardedAd$show$1$2;->$listener:Lcom/unity3d/ads/RewardedShowListener;

    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/unity3d/ads/RewardedAd$show$1$2;->this$0:Lcom/unity3d/ads/RewardedAd;

    invoke-interface {p1, v0}, Lcom/unity3d/ads/RewardedShowListener;->onRewarded(Lcom/unity3d/ads/RewardedAd;)V

    :cond_e
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .registers 3

    const-string v0, "placementId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iget-object p1, p0, Lcom/unity3d/ads/RewardedAd$show$1$2;->$listener:Lcom/unity3d/ads/RewardedShowListener;

    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/unity3d/ads/RewardedAd$show$1$2;->this$0:Lcom/unity3d/ads/RewardedAd;

    invoke-interface {p1, v0}, Lcom/unity3d/ads/ShowListener;->onStarted(Ljava/lang/Object;)V

    :cond_e
    return-void
.end method

###### Class com.unity3d.ads.RewardedAd.AnonymousClass1.AnonymousClass2.WhenMappings (com.unity3d.ads.RewardedAd$show$1$2$WhenMappings)
.class public final synthetic Lcom/unity3d/ads/RewardedAd$show$1$2$WhenMappings;
.super Ljava/lang/Object;
.source "RewardedAd.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/RewardedAd$show$1$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 0
    invoke-static {}, Lcom/unity3d/ads/UnityAds$UnityAdsShowError;->values()[Lcom/unity3d/ads/UnityAds$UnityAdsShowError;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_8
    sget-object v2, Lcom/unity3d/ads/UnityAds$UnityAdsShowError;->TIMEOUT:Lcom/unity3d/ads/UnityAds$UnityAdsShowError;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_10} :catch_10

    :catch_10
    const/4 v2, 0x2

    :try_start_11
    sget-object v3, Lcom/unity3d/ads/UnityAds$UnityAdsShowError;->EXPIRED:Lcom/unity3d/ads/UnityAds$UnityAdsShowError;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v3, Lcom/unity3d/ads/UnityAds$UnityAdsShowError;->ALREADY_SHOWING:Lcom/unity3d/ads/UnityAds$UnityAdsShowError;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v0, v3
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    sput-object v0, Lcom/unity3d/ads/RewardedAd$show$1$2$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;->values()[Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_2b
    sget-object v3, Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;->COMPLETED:Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v1, Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;->SKIPPED:Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3b} :catch_3b

    :catch_3b
    sput-object v0, Lcom/unity3d/ads/RewardedAd$show$1$2$WhenMappings;->$EnumSwitchMapping$1:[I

    return-void
.end method
