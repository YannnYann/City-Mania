###### Class com.unity3d.ads.UnityAdsInitModuleListener (com.unity3d.ads.UnityAdsInitModuleListener)
.class public interface abstract Lcom/unity3d/ads/UnityAdsInitModuleListener;
.super Ljava/lang/Object;
.source "UnityAdsInitModuleListener.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/UnityAdsInitModuleListener$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/unity3d/ads/UnityAdsInitModuleListener$Companion;

.field public static final ERROR_INITIALIZATION_FAILED:I = 0x1

.field public static final ERROR_INTERNAL:I = 0x3

.field public static final ERROR_NO_CONFIG:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    sget-object v0, Lcom/unity3d/ads/UnityAdsInitModuleListener$Companion;->$$INSTANCE:Lcom/unity3d/ads/UnityAdsInitModuleListener$Companion;

    sput-object v0, Lcom/unity3d/ads/UnityAdsInitModuleListener;->Companion:Lcom/unity3d/ads/UnityAdsInitModuleListener$Companion;

    return-void
.end method


# virtual methods
.method public abstract initParams(Ljava/util/Map;)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation
.end method

.method public abstract moduleName()Ljava/lang/String;
.end method

.method public abstract onFailure(Ljava/lang/String;I)V
.end method

.method public abstract onSuccess([BLjava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

###### Class com.unity3d.ads.UnityAdsInitModuleListener.Companion (com.unity3d.ads.UnityAdsInitModuleListener$Companion)
.class public final Lcom/unity3d/ads/UnityAdsInitModuleListener$Companion;
.super Ljava/lang/Object;
.source "UnityAdsInitModuleListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/UnityAdsInitModuleListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/unity3d/ads/UnityAdsInitModuleListener$Companion;

.field public static final ERROR_INITIALIZATION_FAILED:I = 0x1

.field public static final ERROR_INTERNAL:I = 0x3

.field public static final ERROR_NO_CONFIG:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/unity3d/ads/UnityAdsInitModuleListener$Companion;

    invoke-direct {v0}, Lcom/unity3d/ads/UnityAdsInitModuleListener$Companion;-><init>()V

    sput-object v0, Lcom/unity3d/ads/UnityAdsInitModuleListener$Companion;->$$INSTANCE:Lcom/unity3d/ads/UnityAdsInitModuleListener$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
