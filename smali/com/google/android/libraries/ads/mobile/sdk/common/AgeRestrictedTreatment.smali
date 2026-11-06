###### Class com.google.android.libraries.ads.mobile.sdk.common.AgeRestrictedTreatment (com.google.android.libraries.ads.mobile.sdk.common.AgeRestrictedTreatment)
.class public final enum Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CHILD:Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;

.field public static final enum TEEN:Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;

.field public static final enum UNSPECIFIED:Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;

.field public static final synthetic b:[Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;

    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;->UNSPECIFIED:Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;

    .line 3
    new-instance v1, Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;

    const-string v2, "CHILD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;->CHILD:Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;

    .line 5
    new-instance v2, Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;

    const-string v3, "TEEN"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;->TEEN:Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;

    .line 6
    filled-new-array {v0, v1, v2}, [Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;

    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;->b:[Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;->a:I

    return-void
.end method

.method public static values()[Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;
    .registers 1

    .line 0
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;->b:[Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;->a:I

    return v0
.end method
