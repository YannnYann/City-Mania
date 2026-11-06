###### Class com.unity3d.ads.core.configuration.GameServerIdReader (com.unity3d.ads.core.configuration.GameServerIdReader)
.class public final Lcom/unity3d/ads/core/configuration/GameServerIdReader;
.super Lcom/unity3d/ads/core/configuration/MetadataReader;
.source "GameServerIdReader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/configuration/GameServerIdReader$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/unity3d/ads/core/configuration/MetadataReader<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/unity3d/ads/core/configuration/GameServerIdReader$Companion;

.field public static final PLAYER_SERVER_ID_KEY:Ljava/lang/String; = "player.server_id.value"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/unity3d/ads/core/configuration/GameServerIdReader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/configuration/GameServerIdReader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/ads/core/configuration/GameServerIdReader;->Companion:Lcom/unity3d/ads/core/configuration/GameServerIdReader$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/unity3d/services/core/misc/JsonStorage;)V
    .registers 3

    const-string v0, "jsonStorage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const-string v0, "player.server_id.value"

    invoke-direct {p0, p1, v0}, Lcom/unity3d/ads/core/configuration/MetadataReader;-><init>(Lcom/unity3d/services/core/misc/JsonStorage;Ljava/lang/String;)V

    return-void
.end method

###### Class com.unity3d.ads.core.configuration.GameServerIdReader.Companion (com.unity3d.ads.core.configuration.GameServerIdReader$Companion)
.class public final Lcom/unity3d/ads/core/configuration/GameServerIdReader$Companion;
.super Ljava/lang/Object;
.source "GameServerIdReader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/configuration/GameServerIdReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/unity3d/ads/core/configuration/GameServerIdReader$Companion;-><init>()V

    return-void
.end method
