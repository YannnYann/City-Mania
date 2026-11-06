###### Class com.unity3d.ads.core.domain.events.AndroidGetAdRevenueEventDataKt (com.unity3d.ads.core.domain.events.AndroidGetAdRevenueEventDataKt)
.class public final Lcom/unity3d/ads/core/domain/events/AndroidGetAdRevenueEventDataKt;
.super Ljava/lang/Object;
.source "AndroidGetAdRevenueEventData.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/events/AndroidGetAdRevenueEventDataKt$WhenMappings;
    }
.end annotation


# direct methods
.method public static final synthetic access$toProto(Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;)Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/events/AndroidGetAdRevenueEventDataKt;->toProto(Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;)Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    move-result-object p0

    return-object p0
.end method

.method private static final toProto(Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;)Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;
    .registers 2

    .line 25
    sget-object v0, Lcom/unity3d/ads/core/domain/events/AndroidGetAdRevenueEventDataKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_29

    const/4 v0, 0x2

    if-eq p0, v0, :cond_26

    const/4 v0, 0x3

    if-eq p0, v0, :cond_23

    const/4 v0, 0x4

    if-eq p0, v0, :cond_20

    const/4 v0, 0x5

    if-ne p0, v0, :cond_1a

    .line 30
    sget-object p0, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->AD_FORMAT_NATIVE:Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    return-object p0

    .line 25
    :cond_1a
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 29
    :cond_20
    sget-object p0, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->AD_FORMAT_REWARDED:Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    return-object p0

    .line 28
    :cond_23
    sget-object p0, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->AD_FORMAT_INTERSTITIAL:Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    return-object p0

    .line 27
    :cond_26
    sget-object p0, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->AD_FORMAT_MREC:Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    return-object p0

    .line 26
    :cond_29
    sget-object p0, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->AD_FORMAT_BANNER:Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    return-object p0
.end method

###### Class com.unity3d.ads.core.domain.events.AndroidGetAdRevenueEventDataKt.WhenMappings (com.unity3d.ads.core.domain.events.AndroidGetAdRevenueEventDataKt$WhenMappings)
.class public final synthetic Lcom/unity3d/ads/core/domain/events/AndroidGetAdRevenueEventDataKt$WhenMappings;
.super Ljava/lang/Object;
.source "AndroidGetAdRevenueEventData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/domain/events/AndroidGetAdRevenueEventDataKt;
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
    invoke-static {}, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->values()[Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->BANNER:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->MREC:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->INTERSTITIAL:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    :try_start_22
    sget-object v1, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->REWARDED:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2b
    sget-object v1, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->NATIVE:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_34} :catch_34

    :catch_34
    sput-object v0, Lcom/unity3d/ads/core/domain/events/AndroidGetAdRevenueEventDataKt$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
