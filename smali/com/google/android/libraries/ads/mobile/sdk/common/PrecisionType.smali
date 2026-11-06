###### Class com.google.android.libraries.ads.mobile.sdk.common.PrecisionType (com.google.android.libraries.ads.mobile.sdk.common.PrecisionType)
.class public final enum Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ESTIMATED:Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;

.field public static final enum PRECISE:Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;

.field public static final enum PUBLISHER_PROVIDED:Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;

.field public static final enum UNKNOWN:Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;

.field public static final synthetic a:[Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;->UNKNOWN:Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;

    .line 2
    new-instance v1, Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;

    const-string v2, "ESTIMATED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;->ESTIMATED:Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;

    .line 3
    new-instance v2, Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;

    const-string v3, "PUBLISHER_PROVIDED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;->PUBLISHER_PROVIDED:Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;

    .line 4
    new-instance v3, Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;

    const-string v4, "PRECISE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;->PRECISE:Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;

    .line 5
    filled-new-array {v0, v1, v2, v3}, [Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;

    move-result-object v0

    .line 6
    sput-object v0, Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;->a:[Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;
    .registers 1

    .line 0
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;->a:[Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;

    return-object v0
.end method
