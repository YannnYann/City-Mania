###### Class com.unity3d.ads.core.data.datasource.AndroidMediationDataSource (com.unity3d.ads.core.data.datasource.AndroidMediationDataSource)
.class public final Lcom/unity3d/ads/core/data/datasource/AndroidMediationDataSource;
.super Ljava/lang/Object;
.source "AndroidMediationDataSource.kt"

# interfaces
.implements Lcom/unity3d/ads/core/data/datasource/MediationDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/data/datasource/AndroidMediationDataSource$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/unity3d/ads/core/data/datasource/AndroidMediationDataSource$Companion;

.field private static final MEDIATION_NAME:Ljava/lang/String; = "name"

.field public static final MEDIATION_NAME_KEY:Ljava/lang/String; = "mediation.name.value"

.field private static final MEDIATION_STORAGE_NAME:Ljava/lang/String; = "mediation"

.field private static final MEDIATION_VALUE:Ljava/lang/String; = "value"

.field private static final MEDIATION_VERSION:Ljava/lang/String; = "version"

.field public static final MEDIATION_VERSION_KEY:Ljava/lang/String; = "mediation.version.value"


# instance fields
.field private final storage:Lcom/unity3d/services/core/misc/JsonStorage;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/unity3d/ads/core/data/datasource/AndroidMediationDataSource$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/data/datasource/AndroidMediationDataSource$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/ads/core/data/datasource/AndroidMediationDataSource;->Companion:Lcom/unity3d/ads/core/data/datasource/AndroidMediationDataSource$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/unity3d/services/core/misc/JsonStorage;)V
    .registers 3

    const-string v0, "storage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AndroidMediationDataSource;->storage:Lcom/unity3d/services/core/misc/JsonStorage;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 3

    .line 9
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AndroidMediationDataSource;->storage:Lcom/unity3d/services/core/misc/JsonStorage;

    const-string v1, "mediation.name.value"

    invoke-virtual {v0, v1}, Lcom/unity3d/services/core/misc/JsonStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 3

    .line 12
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AndroidMediationDataSource;->storage:Lcom/unity3d/services/core/misc/JsonStorage;

    const-string v1, "mediation.version.value"

    invoke-virtual {v0, v1}, Lcom/unity3d/services/core/misc/JsonStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

###### Class com.unity3d.ads.core.data.datasource.AndroidMediationDataSource.Companion (com.unity3d.ads.core.data.datasource.AndroidMediationDataSource$Companion)
.class public final Lcom/unity3d/ads/core/data/datasource/AndroidMediationDataSource$Companion;
.super Ljava/lang/Object;
.source "AndroidMediationDataSource.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/data/datasource/AndroidMediationDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/unity3d/ads/core/data/datasource/AndroidMediationDataSource$Companion;-><init>()V

    return-void
.end method
