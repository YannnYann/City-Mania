###### Class com.vungle.ads.AdConfig (com.vungle.ads.AdConfig)
.class public Lcom/vungle/ads/AdConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/AdConfig$Orientation;,
        Lcom/vungle/ads/AdConfig$Companion;,
        Lcom/vungle/ads/AdConfig$Settings;
    }
.end annotation


# static fields
.field public static final AUTO_ROTATE:I = 0x2

.field public static final Companion:Lcom/vungle/ads/AdConfig$Companion;

.field public static final IMMEDIATE_BACK:I = 0x2

.field public static final LANDSCAPE:I = 0x1

.field public static final PORTRAIT:I


# instance fields
.field public a:Ljava/util/LinkedHashMap;

.field public b:I

.field public c:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/vungle/ads/AdConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/AdConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vungle/ads/AdConfig;->Companion:Lcom/vungle/ads/AdConfig$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/ads/AdConfig;->a:Ljava/util/LinkedHashMap;

    const/4 v0, 0x2

    .line 8
    iput v0, p0, Lcom/vungle/ads/AdConfig;->c:I

    return-void
.end method

.method public static synthetic getAdOrientation$annotations()V
    .registers 0
    .annotation runtime Lcom/vungle/ads/AdConfig$Orientation;
    .end annotation

    .line 0
    return-void
.end method


# virtual methods
.method public final getAdOrientation()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/vungle/ads/AdConfig;->c:I

    return v0
.end method

.method public final getSettings()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/vungle/ads/AdConfig;->b:I

    return v0
.end method

.method public final getWatermark$vungle_ads_release()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/AdConfig;->a:Ljava/util/LinkedHashMap;

    const-string v1, "WATERMARK"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final setAdOrientation(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/vungle/ads/AdConfig;->c:I

    return-void
.end method

.method public final setBackButtonImmediatelyEnabled(Z)V
    .registers 2

    if-eqz p1, :cond_7

    .line 1
    iget p1, p0, Lcom/vungle/ads/AdConfig;->b:I

    or-int/lit8 p1, p1, 0x2

    goto :goto_b

    .line 3
    :cond_7
    iget p1, p0, Lcom/vungle/ads/AdConfig;->b:I

    and-int/lit8 p1, p1, -0x3

    .line 4
    :goto_b
    iput p1, p0, Lcom/vungle/ads/AdConfig;->b:I

    return-void
.end method

.method public final setWatermark(Ljava/lang/String;)V
    .registers 4

    const-string v0, "watermark"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/AdConfig;->a:Ljava/util/LinkedHashMap;

    const-string v1, "WATERMARK"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class com.vungle.ads.AdConfig.Companion (com.vungle.ads.AdConfig$Companion)
.class public final Lcom/vungle/ads/AdConfig$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/AdConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/vungle/ads/AdConfig$Companion;-><init>()V

    return-void
.end method

###### Class com.vungle.ads.AdConfig.Orientation (com.vungle.ads.AdConfig$Orientation)
.class public interface abstract annotation Lcom/vungle/ads/AdConfig$Orientation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/AdConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Orientation"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class com.vungle.ads.AdConfig.Settings (com.vungle.ads.AdConfig$Settings)
.class public interface abstract annotation Lcom/vungle/ads/AdConfig$Settings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/AdConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Settings"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation
