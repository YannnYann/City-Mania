###### Class com.unity3d.ads.core.domain.AndroidGetIsModulesInitEnabled (com.unity3d.ads.core.domain.AndroidGetIsModulesInitEnabled)
.class public final Lcom/unity3d/ads/core/domain/AndroidGetIsModulesInitEnabled;
.super Ljava/lang/Object;
.source "AndroidGetIsModulesInitEnabled.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/GetIsModulesInitEnabled;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/AndroidGetIsModulesInitEnabled$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/unity3d/ads/core/domain/AndroidGetIsModulesInitEnabled$Companion;

.field public static final ENABLE_MODULES_INIT_KEY:Ljava/lang/String; = "enable_modules_init"

.field public static final ENABLE_MODULES_INIT_VALUE:Ljava/lang/String; = "true"


# instance fields
.field private final sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/unity3d/ads/core/domain/AndroidGetIsModulesInitEnabled$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/domain/AndroidGetIsModulesInitEnabled$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/ads/core/domain/AndroidGetIsModulesInitEnabled;->Companion:Lcom/unity3d/ads/core/domain/AndroidGetIsModulesInitEnabled$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/unity3d/ads/core/data/repository/SessionRepository;)V
    .registers 3

    const-string v0, "sessionRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidGetIsModulesInitEnabled;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    return-void
.end method


# virtual methods
.method public invoke()Z
    .registers 3

    .line 16
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidGetIsModulesInitEnabled;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-interface {v0}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getInitializationConfiguration()Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 17
    invoke-virtual {v0}, Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;->getExtras()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_17

    const-string v1, "enable_modules_init"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    const-string v1, "true"

    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

###### Class com.unity3d.ads.core.domain.AndroidGetIsModulesInitEnabled.Companion (com.unity3d.ads.core.domain.AndroidGetIsModulesInitEnabled$Companion)
.class public final Lcom/unity3d/ads/core/domain/AndroidGetIsModulesInitEnabled$Companion;
.super Ljava/lang/Object;
.source "AndroidGetIsModulesInitEnabled.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/domain/AndroidGetIsModulesInitEnabled;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/unity3d/ads/core/domain/AndroidGetIsModulesInitEnabled$Companion;-><init>()V

    return-void
.end method
