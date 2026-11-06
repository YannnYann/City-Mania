###### Class com.vungle.ads.VungleAdSize (com.vungle.ads.VungleAdSize)
.class public final Lcom/vungle/ads/VungleAdSize;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/VungleAdSize$Companion;
    }
.end annotation


# static fields
.field public static final BANNER:Lcom/vungle/ads/VungleAdSize;

.field public static final BANNER_LEADERBOARD:Lcom/vungle/ads/VungleAdSize;

.field public static final BANNER_SHORT:Lcom/vungle/ads/VungleAdSize;

.field public static final Companion:Lcom/vungle/ads/VungleAdSize$Companion;

.field public static final MREC:Lcom/vungle/ads/VungleAdSize;


# instance fields
.field public final a:I

.field public final b:I

.field public c:Z

.field public d:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/vungle/ads/VungleAdSize$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/VungleAdSize$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vungle/ads/VungleAdSize;->Companion:Lcom/vungle/ads/VungleAdSize$Companion;

    .line 1
    new-instance v0, Lcom/vungle/ads/VungleAdSize;

    const/16 v1, 0x140

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/VungleAdSize;-><init>(II)V

    sput-object v0, Lcom/vungle/ads/VungleAdSize;->BANNER:Lcom/vungle/ads/VungleAdSize;

    .line 4
    new-instance v0, Lcom/vungle/ads/VungleAdSize;

    const/16 v1, 0x12c

    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/VungleAdSize;-><init>(II)V

    sput-object v0, Lcom/vungle/ads/VungleAdSize;->BANNER_SHORT:Lcom/vungle/ads/VungleAdSize;

    .line 7
    new-instance v0, Lcom/vungle/ads/VungleAdSize;

    const/16 v2, 0x2d8

    const/16 v3, 0x5a

    invoke-direct {v0, v2, v3}, Lcom/vungle/ads/VungleAdSize;-><init>(II)V

    sput-object v0, Lcom/vungle/ads/VungleAdSize;->BANNER_LEADERBOARD:Lcom/vungle/ads/VungleAdSize;

    .line 10
    new-instance v0, Lcom/vungle/ads/VungleAdSize;

    const/16 v2, 0xfa

    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/VungleAdSize;-><init>(II)V

    sput-object v0, Lcom/vungle/ads/VungleAdSize;->MREC:Lcom/vungle/ads/VungleAdSize;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/vungle/ads/VungleAdSize;->a:I

    iput p2, p0, Lcom/vungle/ads/VungleAdSize;->b:I

    return-void
.end method

.method public static final getAdSizeWithWidth(Landroid/content/Context;I)Lcom/vungle/ads/VungleAdSize;
    .registers 3

    .line 0
    sget-object v0, Lcom/vungle/ads/VungleAdSize;->Companion:Lcom/vungle/ads/VungleAdSize$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/vungle/ads/VungleAdSize$Companion;->getAdSizeWithWidth(Landroid/content/Context;I)Lcom/vungle/ads/VungleAdSize;

    move-result-object p0

    return-object p0
.end method

.method public static final getAdSizeWithWidthAndHeight(II)Lcom/vungle/ads/VungleAdSize;
    .registers 3

    .line 0
    sget-object v0, Lcom/vungle/ads/VungleAdSize;->Companion:Lcom/vungle/ads/VungleAdSize$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/vungle/ads/VungleAdSize$Companion;->getAdSizeWithWidthAndHeight(II)Lcom/vungle/ads/VungleAdSize;

    move-result-object p0

    return-object p0
.end method

.method public static final getValidAdSizeFromSize(IILjava/lang/String;)Lcom/vungle/ads/VungleAdSize;
    .registers 4

    .line 0
    sget-object v0, Lcom/vungle/ads/VungleAdSize;->Companion:Lcom/vungle/ads/VungleAdSize$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/vungle/ads/VungleAdSize$Companion;->getValidAdSizeFromSize(IILjava/lang/String;)Lcom/vungle/ads/VungleAdSize;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/vungle/ads/VungleAdSize;->b:I

    return v0
.end method

.method public final getWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/vungle/ads/VungleAdSize;->a:I

    return v0
.end method

.method public final isAdaptiveHeight$vungle_ads_release()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/vungle/ads/VungleAdSize;->c:Z

    return v0
.end method

.method public final isAdaptiveWidth$vungle_ads_release()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/vungle/ads/VungleAdSize;->d:Z

    return v0
.end method

.method public final isValidSize$vungle_ads_release()Z
    .registers 2

    .line 1
    iget v0, p0, Lcom/vungle/ads/VungleAdSize;->a:I

    if-ltz v0, :cond_a

    iget v0, p0, Lcom/vungle/ads/VungleAdSize;->b:I

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final setAdaptiveHeight$vungle_ads_release(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/vungle/ads/VungleAdSize;->c:Z

    return-void
.end method

.method public final setAdaptiveWidth$vungle_ads_release(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/vungle/ads/VungleAdSize;->d:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "VungleAdSize(width="

    invoke-static {v0}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 108
    iget v1, p0, Lcom/vungle/ads/VungleAdSize;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/ads/VungleAdSize;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.ads.VungleAdSize.Companion (com.vungle.ads.VungleAdSize$Companion)
.class public final Lcom/vungle/ads/VungleAdSize$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/VungleAdSize;
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
    invoke-direct {p0}, Lcom/vungle/ads/VungleAdSize$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAdSizeWithWidth(Landroid/content/Context;I)Lcom/vungle/ads/VungleAdSize;
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcom/vungle/ads/internal/util/b0;->a(Landroid/content/Context;)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-gez p2, :cond_16

    const/4 p2, 0x0

    .line 6
    :cond_16
    new-instance v0, Lcom/vungle/ads/VungleAdSize;

    invoke-direct {v0, p2, p1}, Lcom/vungle/ads/VungleAdSize;-><init>(II)V

    .line 7
    invoke-virtual {v0}, Lcom/vungle/ads/VungleAdSize;->getWidth()I

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_25

    .line 8
    invoke-virtual {v0, p2}, Lcom/vungle/ads/VungleAdSize;->setAdaptiveWidth$vungle_ads_release(Z)V

    .line 10
    :cond_25
    invoke-virtual {v0, p2}, Lcom/vungle/ads/VungleAdSize;->setAdaptiveHeight$vungle_ads_release(Z)V

    return-object v0
.end method

.method public final getAdSizeWithWidthAndHeight(II)Lcom/vungle/ads/VungleAdSize;
    .registers 4

    const/4 v0, 0x0

    if-gez p1, :cond_4

    move p1, v0

    :cond_4
    if-gez p2, :cond_7

    move p2, v0

    .line 1
    :cond_7
    new-instance v0, Lcom/vungle/ads/VungleAdSize;

    invoke-direct {v0, p1, p2}, Lcom/vungle/ads/VungleAdSize;-><init>(II)V

    .line 2
    invoke-virtual {v0}, Lcom/vungle/ads/VungleAdSize;->getWidth()I

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_16

    .line 3
    invoke-virtual {v0, p2}, Lcom/vungle/ads/VungleAdSize;->setAdaptiveWidth$vungle_ads_release(Z)V

    .line 5
    :cond_16
    invoke-virtual {v0}, Lcom/vungle/ads/VungleAdSize;->getHeight()I

    move-result p1

    if-nez p1, :cond_1f

    .line 6
    invoke-virtual {v0, p2}, Lcom/vungle/ads/VungleAdSize;->setAdaptiveHeight$vungle_ads_release(Z)V

    :cond_1f
    return-object v0
.end method

.method public final getValidAdSizeFromSize(IILjava/lang/String;)Lcom/vungle/ads/VungleAdSize;
    .registers 5

    const-string v0, "placementId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Lcom/vungle/ads/internal/ConfigManager;->a(Ljava/lang/String;)Lcom/vungle/ads/internal/model/j3;

    move-result-object p3

    if-eqz p3, :cond_58

    .line 2
    invoke-virtual {p3}, Lcom/vungle/ads/internal/model/j3;->f()Z

    move-result p3

    if-eqz p3, :cond_17

    goto :goto_58

    .line 6
    :cond_17
    sget-object p3, Lcom/vungle/ads/VungleAdSize;->MREC:Lcom/vungle/ads/VungleAdSize;

    invoke-virtual {p3}, Lcom/vungle/ads/VungleAdSize;->getWidth()I

    move-result v0

    if-lt p1, v0, :cond_26

    invoke-virtual {p3}, Lcom/vungle/ads/VungleAdSize;->getHeight()I

    move-result v0

    if-lt p2, v0, :cond_26

    return-object p3

    .line 8
    :cond_26
    sget-object p3, Lcom/vungle/ads/VungleAdSize;->BANNER_LEADERBOARD:Lcom/vungle/ads/VungleAdSize;

    invoke-virtual {p3}, Lcom/vungle/ads/VungleAdSize;->getWidth()I

    move-result v0

    if-lt p1, v0, :cond_35

    invoke-virtual {p3}, Lcom/vungle/ads/VungleAdSize;->getHeight()I

    move-result v0

    if-lt p2, v0, :cond_35

    return-object p3

    .line 10
    :cond_35
    sget-object p3, Lcom/vungle/ads/VungleAdSize;->BANNER:Lcom/vungle/ads/VungleAdSize;

    invoke-virtual {p3}, Lcom/vungle/ads/VungleAdSize;->getWidth()I

    move-result v0

    if-lt p1, v0, :cond_44

    invoke-virtual {p3}, Lcom/vungle/ads/VungleAdSize;->getHeight()I

    move-result v0

    if-lt p2, v0, :cond_44

    return-object p3

    .line 12
    :cond_44
    sget-object p3, Lcom/vungle/ads/VungleAdSize;->BANNER_SHORT:Lcom/vungle/ads/VungleAdSize;

    invoke-virtual {p3}, Lcom/vungle/ads/VungleAdSize;->getWidth()I

    move-result v0

    if-lt p1, v0, :cond_53

    invoke-virtual {p3}, Lcom/vungle/ads/VungleAdSize;->getHeight()I

    move-result v0

    if-lt p2, v0, :cond_53

    return-object p3

    .line 16
    :cond_53
    invoke-virtual {p0, p1, p2}, Lcom/vungle/ads/VungleAdSize$Companion;->getAdSizeWithWidthAndHeight(II)Lcom/vungle/ads/VungleAdSize;

    move-result-object p1

    return-object p1

    .line 17
    :cond_58
    :goto_58
    invoke-virtual {p0, p1, p2}, Lcom/vungle/ads/VungleAdSize$Companion;->getAdSizeWithWidthAndHeight(II)Lcom/vungle/ads/VungleAdSize;

    move-result-object p1

    return-object p1
.end method
