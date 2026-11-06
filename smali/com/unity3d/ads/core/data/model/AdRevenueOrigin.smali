###### Class com.unity3d.ads.core.data.model.AdRevenueOrigin (com.unity3d.ads.core.data.model.AdRevenueOrigin)
.class public final enum Lcom/unity3d/ads/core/data/model/AdRevenueOrigin;
.super Ljava/lang/Enum;
.source "AdRevenueOrigin.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/ads/core/data/model/AdRevenueOrigin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/unity3d/ads/core/data/model/AdRevenueOrigin;

.field public static final enum AUTOMATIC_COLLECTION:Lcom/unity3d/ads/core/data/model/AdRevenueOrigin;


# direct methods
.method private static final synthetic $values()[Lcom/unity3d/ads/core/data/model/AdRevenueOrigin;
    .registers 1

    .line 0
    sget-object v0, Lcom/unity3d/ads/core/data/model/AdRevenueOrigin;->AUTOMATIC_COLLECTION:Lcom/unity3d/ads/core/data/model/AdRevenueOrigin;

    filled-new-array {v0}, [Lcom/unity3d/ads/core/data/model/AdRevenueOrigin;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 7
    new-instance v0, Lcom/unity3d/ads/core/data/model/AdRevenueOrigin;

    const-string v1, "AUTOMATIC_COLLECTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/core/data/model/AdRevenueOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/core/data/model/AdRevenueOrigin;->AUTOMATIC_COLLECTION:Lcom/unity3d/ads/core/data/model/AdRevenueOrigin;

    invoke-static {}, Lcom/unity3d/ads/core/data/model/AdRevenueOrigin;->$values()[Lcom/unity3d/ads/core/data/model/AdRevenueOrigin;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/core/data/model/AdRevenueOrigin;->$VALUES:[Lcom/unity3d/ads/core/data/model/AdRevenueOrigin;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/core/data/model/AdRevenueOrigin;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/unity3d/ads/core/data/model/AdRevenueOrigin;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lcom/unity3d/ads/core/data/model/AdRevenueOrigin;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/ads/core/data/model/AdRevenueOrigin;
    .registers 2

    const-class v0, Lcom/unity3d/ads/core/data/model/AdRevenueOrigin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 8
    check-cast p0, Lcom/unity3d/ads/core/data/model/AdRevenueOrigin;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/ads/core/data/model/AdRevenueOrigin;
    .registers 1

    sget-object v0, Lcom/unity3d/ads/core/data/model/AdRevenueOrigin;->$VALUES:[Lcom/unity3d/ads/core/data/model/AdRevenueOrigin;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, [Lcom/unity3d/ads/core/data/model/AdRevenueOrigin;

    return-object v0
.end method
