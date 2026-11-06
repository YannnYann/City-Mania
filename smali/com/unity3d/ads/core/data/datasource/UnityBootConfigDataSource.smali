###### Class com.unity3d.ads.core.data.datasource.UnityBootConfigDataSource (com.unity3d.ads.core.data.datasource.UnityBootConfigDataSource)
.class public interface abstract Lcom/unity3d/ads/core/data/datasource/UnityBootConfigDataSource;
.super Ljava/lang/Object;
.source "UnityBootConfigDataSource.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/data/datasource/UnityBootConfigDataSource$Companion;
    }
.end annotation


# static fields
.field public static final BUILD_GUID:Ljava/lang/String; = "build-guid"

.field public static final Companion:Lcom/unity3d/ads/core/data/datasource/UnityBootConfigDataSource$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    sget-object v0, Lcom/unity3d/ads/core/data/datasource/UnityBootConfigDataSource$Companion;->$$INSTANCE:Lcom/unity3d/ads/core/data/datasource/UnityBootConfigDataSource$Companion;

    sput-object v0, Lcom/unity3d/ads/core/data/datasource/UnityBootConfigDataSource;->Companion:Lcom/unity3d/ads/core/data/datasource/UnityBootConfigDataSource$Companion;

    return-void
.end method


# virtual methods
.method public abstract getValue(Ljava/lang/String;)Ljava/lang/String;
.end method

###### Class com.unity3d.ads.core.data.datasource.UnityBootConfigDataSource.Companion (com.unity3d.ads.core.data.datasource.UnityBootConfigDataSource$Companion)
.class public final Lcom/unity3d/ads/core/data/datasource/UnityBootConfigDataSource$Companion;
.super Ljava/lang/Object;
.source "UnityBootConfigDataSource.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/data/datasource/UnityBootConfigDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/unity3d/ads/core/data/datasource/UnityBootConfigDataSource$Companion;

.field public static final BUILD_GUID:Ljava/lang/String; = "build-guid"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/unity3d/ads/core/data/datasource/UnityBootConfigDataSource$Companion;

    invoke-direct {v0}, Lcom/unity3d/ads/core/data/datasource/UnityBootConfigDataSource$Companion;-><init>()V

    sput-object v0, Lcom/unity3d/ads/core/data/datasource/UnityBootConfigDataSource$Companion;->$$INSTANCE:Lcom/unity3d/ads/core/data/datasource/UnityBootConfigDataSource$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
