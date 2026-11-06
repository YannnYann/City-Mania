###### Class com.unity3d.ads.core.data.model.AdRefreshState (com.unity3d.ads.core.data.model.AdRefreshState)
.class public final enum Lcom/unity3d/ads/core/data/model/AdRefreshState;
.super Ljava/lang/Enum;
.source "AdRefreshState.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/ads/core/data/model/AdRefreshState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/unity3d/ads/core/data/model/AdRefreshState;

.field public static final enum REUSE_DURING_RELOAD:Lcom/unity3d/ads/core/data/model/AdRefreshState;

.field public static final enum REUSE_ERROR:Lcom/unity3d/ads/core/data/model/AdRefreshState;

.field public static final enum REUSE_NO_FILL:Lcom/unity3d/ads/core/data/model/AdRefreshState;

.field public static final enum REUSE_RELOADED:Lcom/unity3d/ads/core/data/model/AdRefreshState;


# direct methods
.method private static final synthetic $values()[Lcom/unity3d/ads/core/data/model/AdRefreshState;
    .registers 4

    .line 0
    sget-object v0, Lcom/unity3d/ads/core/data/model/AdRefreshState;->REUSE_RELOADED:Lcom/unity3d/ads/core/data/model/AdRefreshState;

    sget-object v1, Lcom/unity3d/ads/core/data/model/AdRefreshState;->REUSE_NO_FILL:Lcom/unity3d/ads/core/data/model/AdRefreshState;

    sget-object v2, Lcom/unity3d/ads/core/data/model/AdRefreshState;->REUSE_ERROR:Lcom/unity3d/ads/core/data/model/AdRefreshState;

    sget-object v3, Lcom/unity3d/ads/core/data/model/AdRefreshState;->REUSE_DURING_RELOAD:Lcom/unity3d/ads/core/data/model/AdRefreshState;

    filled-new-array {v0, v1, v2, v3}, [Lcom/unity3d/ads/core/data/model/AdRefreshState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 4
    new-instance v0, Lcom/unity3d/ads/core/data/model/AdRefreshState;

    const-string v1, "REUSE_RELOADED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/core/data/model/AdRefreshState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/core/data/model/AdRefreshState;->REUSE_RELOADED:Lcom/unity3d/ads/core/data/model/AdRefreshState;

    new-instance v0, Lcom/unity3d/ads/core/data/model/AdRefreshState;

    const-string v1, "REUSE_NO_FILL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/core/data/model/AdRefreshState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/core/data/model/AdRefreshState;->REUSE_NO_FILL:Lcom/unity3d/ads/core/data/model/AdRefreshState;

    new-instance v0, Lcom/unity3d/ads/core/data/model/AdRefreshState;

    const-string v1, "REUSE_ERROR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/core/data/model/AdRefreshState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/core/data/model/AdRefreshState;->REUSE_ERROR:Lcom/unity3d/ads/core/data/model/AdRefreshState;

    new-instance v0, Lcom/unity3d/ads/core/data/model/AdRefreshState;

    const-string v1, "REUSE_DURING_RELOAD"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/core/data/model/AdRefreshState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/core/data/model/AdRefreshState;->REUSE_DURING_RELOAD:Lcom/unity3d/ads/core/data/model/AdRefreshState;

    invoke-static {}, Lcom/unity3d/ads/core/data/model/AdRefreshState;->$values()[Lcom/unity3d/ads/core/data/model/AdRefreshState;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/core/data/model/AdRefreshState;->$VALUES:[Lcom/unity3d/ads/core/data/model/AdRefreshState;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/core/data/model/AdRefreshState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/unity3d/ads/core/data/model/AdRefreshState;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lcom/unity3d/ads/core/data/model/AdRefreshState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/ads/core/data/model/AdRefreshState;
    .registers 2

    const-class v0, Lcom/unity3d/ads/core/data/model/AdRefreshState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 5
    check-cast p0, Lcom/unity3d/ads/core/data/model/AdRefreshState;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/ads/core/data/model/AdRefreshState;
    .registers 1

    sget-object v0, Lcom/unity3d/ads/core/data/model/AdRefreshState;->$VALUES:[Lcom/unity3d/ads/core/data/model/AdRefreshState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, [Lcom/unity3d/ads/core/data/model/AdRefreshState;

    return-object v0
.end method
