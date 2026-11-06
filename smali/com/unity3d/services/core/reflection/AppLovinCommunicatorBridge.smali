###### Class com.unity3d.services.core.reflection.AppLovinCommunicatorBridge (com.unity3d.services.core.reflection.AppLovinCommunicatorBridge)
.class public final Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge;
.super Lcom/unity3d/services/core/reflection/GenericBridge;
.source "AppLovinCommunicatorBridge.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge$Companion;
    }
.end annotation


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "com.applovin.communicator.AppLovinCommunicator"

.field public static final Companion:Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge$Companion;

.field private static final GET_INSTANCE:Ljava/lang/String; = "getInstance"

.field private static final SUBSCRIBE:Ljava/lang/String; = "subscribe"

.field private static final UNSUBSCRIBE:Ljava/lang/String; = "unsubscribe"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge;->Companion:Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget-object v0, Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge;->Companion:Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge$Companion;

    invoke-static {v0}, Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge$Companion;->access$buildFunctionMap(Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge$Companion;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/unity3d/services/core/reflection/GenericBridge;-><init>(Ljava/util/Map;Z)V

    iput-object p1, p0, Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge;->context:Landroid/content/Context;

    return-void
.end method

.method private final getCommunicatorInstance()Ljava/lang/Object;
    .registers 4

    .line 37
    iget-object v0, p0, Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge;->context:Landroid/content/Context;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/unity3d/services/core/reflection/GenericBridge;->callNonVoidMethod(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .registers 2

    .line 11
    const-string v0, "com.applovin.communicator.AppLovinCommunicator"

    return-object v0
.end method

.method public final subscribe(Lcom/unity3d/services/core/reflection/CommunicatorSubscriberProxy;Ljava/lang/String;)Ljava/lang/Object;
    .registers 6

    const-string v0, "proxy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "topic"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge;->getCommunicatorInstance()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    return-object v1

    .line 21
    :cond_12
    :try_start_12
    invoke-virtual {p1}, Lcom/unity3d/services/core/reflection/GenericListenerProxy;->getProxyInstance()Ljava/lang/Object;

    move-result-object p1

    .line 22
    const-string v2, "subscribe"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v2, v0, p2}, Lcom/unity3d/services/core/reflection/GenericBridge;->callVoidMethod(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_1f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_12 .. :try_end_1f} :catch_20

    return-object p1

    :catch_20
    return-object v1
.end method

.method public final unsubscribe(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "topic"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge;->getCommunicatorInstance()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_11

    return-void

    .line 34
    :cond_11
    const-string v1, "unsubscribe"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, v0, p1}, Lcom/unity3d/services/core/reflection/GenericBridge;->callVoidMethod(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

###### Class com.unity3d.services.core.reflection.AppLovinCommunicatorBridge.Companion (com.unity3d.services.core.reflection.AppLovinCommunicatorBridge$Companion)
.class public final Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge$Companion;
.super Ljava/lang/Object;
.source "AppLovinCommunicatorBridge.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$buildFunctionMap(Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge$Companion;)Ljava/util/Map;
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge$Companion;->buildFunctionMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private final buildFunctionMap()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 47
    const-class v0, Ljava/lang/String;

    .line 48
    const-string v1, "getInstance"

    const-class v2, Landroid/content/Context;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    filled-new-array {v1}, [Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    .line 50
    :try_start_16
    const-string v2, "com.applovin.communicator.AppLovinCommunicatorSubscriber"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "forName(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    const-string v3, "subscribe"

    filled-new-array {v2, v0}, [Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v3, "unsubscribe"

    filled-new-array {v2, v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Ljava/lang/ClassNotFoundException; {:try_start_16 .. :try_end_33} :catch_33

    :catch_33
    return-object v1
.end method
