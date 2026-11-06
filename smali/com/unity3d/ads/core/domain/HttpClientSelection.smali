###### Class com.unity3d.ads.core.domain.HttpClientSelection (com.unity3d.ads.core.domain.HttpClientSelection)
.class public final enum Lcom/unity3d/ads/core/domain/HttpClientSelection;
.super Ljava/lang/Enum;
.source "AndroidHttpClientProvider.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/ads/core/domain/HttpClientSelection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/unity3d/ads/core/domain/HttpClientSelection;

.field public static final enum CRONET_WITHOUT_QUIC:Lcom/unity3d/ads/core/domain/HttpClientSelection;

.field public static final enum CRONET_WITH_QUIC:Lcom/unity3d/ads/core/domain/HttpClientSelection;

.field public static final enum LEGACY:Lcom/unity3d/ads/core/domain/HttpClientSelection;

.field public static final enum OKHTTP3:Lcom/unity3d/ads/core/domain/HttpClientSelection;


# direct methods
.method private static final synthetic $values()[Lcom/unity3d/ads/core/domain/HttpClientSelection;
    .registers 4

    .line 0
    sget-object v0, Lcom/unity3d/ads/core/domain/HttpClientSelection;->CRONET_WITHOUT_QUIC:Lcom/unity3d/ads/core/domain/HttpClientSelection;

    sget-object v1, Lcom/unity3d/ads/core/domain/HttpClientSelection;->CRONET_WITH_QUIC:Lcom/unity3d/ads/core/domain/HttpClientSelection;

    sget-object v2, Lcom/unity3d/ads/core/domain/HttpClientSelection;->LEGACY:Lcom/unity3d/ads/core/domain/HttpClientSelection;

    sget-object v3, Lcom/unity3d/ads/core/domain/HttpClientSelection;->OKHTTP3:Lcom/unity3d/ads/core/domain/HttpClientSelection;

    filled-new-array {v0, v1, v2, v3}, [Lcom/unity3d/ads/core/domain/HttpClientSelection;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 37
    new-instance v0, Lcom/unity3d/ads/core/domain/HttpClientSelection;

    const-string v1, "CRONET_WITHOUT_QUIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/core/domain/HttpClientSelection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/core/domain/HttpClientSelection;->CRONET_WITHOUT_QUIC:Lcom/unity3d/ads/core/domain/HttpClientSelection;

    .line 38
    new-instance v0, Lcom/unity3d/ads/core/domain/HttpClientSelection;

    const-string v1, "CRONET_WITH_QUIC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/core/domain/HttpClientSelection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/core/domain/HttpClientSelection;->CRONET_WITH_QUIC:Lcom/unity3d/ads/core/domain/HttpClientSelection;

    .line 39
    new-instance v0, Lcom/unity3d/ads/core/domain/HttpClientSelection;

    const-string v1, "LEGACY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/core/domain/HttpClientSelection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/core/domain/HttpClientSelection;->LEGACY:Lcom/unity3d/ads/core/domain/HttpClientSelection;

    .line 40
    new-instance v0, Lcom/unity3d/ads/core/domain/HttpClientSelection;

    const-string v1, "OKHTTP3"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/core/domain/HttpClientSelection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/core/domain/HttpClientSelection;->OKHTTP3:Lcom/unity3d/ads/core/domain/HttpClientSelection;

    invoke-static {}, Lcom/unity3d/ads/core/domain/HttpClientSelection;->$values()[Lcom/unity3d/ads/core/domain/HttpClientSelection;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/core/domain/HttpClientSelection;->$VALUES:[Lcom/unity3d/ads/core/domain/HttpClientSelection;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/core/domain/HttpClientSelection;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/unity3d/ads/core/domain/HttpClientSelection;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lcom/unity3d/ads/core/domain/HttpClientSelection;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/ads/core/domain/HttpClientSelection;
    .registers 2

    const-class v0, Lcom/unity3d/ads/core/domain/HttpClientSelection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 41
    check-cast p0, Lcom/unity3d/ads/core/domain/HttpClientSelection;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/ads/core/domain/HttpClientSelection;
    .registers 1

    sget-object v0, Lcom/unity3d/ads/core/domain/HttpClientSelection;->$VALUES:[Lcom/unity3d/ads/core/domain/HttpClientSelection;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 41
    check-cast v0, [Lcom/unity3d/ads/core/domain/HttpClientSelection;

    return-object v0
.end method
