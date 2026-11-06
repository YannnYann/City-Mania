###### Class com.unity3d.ads.core.domain.events.HandleAdRevenueEventKt (com.unity3d.ads.core.domain.events.HandleAdRevenueEventKt)
.class public final Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEventKt;
.super Ljava/lang/Object;
.source "HandleAdRevenueEvent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEventKt$WhenMappings;
    }
.end annotation


# direct methods
.method public static final synthetic access$toProto(Lcom/unity3d/ads/core/data/model/AdRevenueOrigin;)Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueOrigin;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEventKt;->toProto(Lcom/unity3d/ads/core/data/model/AdRevenueOrigin;)Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueOrigin;

    move-result-object p0

    return-object p0
.end method

.method private static final toProto(Lcom/unity3d/ads/core/data/model/AdRevenueOrigin;)Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueOrigin;
    .registers 2

    .line 37
    sget-object v0, Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEventKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_e

    .line 38
    sget-object p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueOrigin;->AD_REVENUE_ORIGIN_AUTOMATIC_COLLECTION:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueOrigin;

    return-object p0

    .line 37
    :cond_e
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

###### Class com.unity3d.ads.core.domain.events.HandleAdRevenueEventKt.WhenMappings (com.unity3d.ads.core.domain.events.HandleAdRevenueEventKt$WhenMappings)
.class public final synthetic Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEventKt$WhenMappings;
.super Ljava/lang/Object;
.source "HandleAdRevenueEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEventKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 0
    invoke-static {}, Lcom/unity3d/ads/core/data/model/AdRevenueOrigin;->values()[Lcom/unity3d/ads/core/data/model/AdRevenueOrigin;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lcom/unity3d/ads/core/data/model/AdRevenueOrigin;->AUTOMATIC_COLLECTION:Lcom/unity3d/ads/core/data/model/AdRevenueOrigin;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    sput-object v0, Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEventKt$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
