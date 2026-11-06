###### Class com.unity3d.ads.core.data.model.AdRevenueAdFormat (com.unity3d.ads.core.data.model.AdRevenueAdFormat)
.class public final enum Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;
.super Ljava/lang/Enum;
.source "AdRevenueAdFormat.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

.field public static final enum BANNER:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

.field public static final Companion:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat$Companion;

.field public static final enum INTERSTITIAL:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

.field public static final enum MREC:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

.field public static final enum NATIVE:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

.field public static final enum REWARDED:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;


# direct methods
.method private static final synthetic $values()[Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;
    .registers 5

    .line 0
    sget-object v0, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->BANNER:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    sget-object v1, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->MREC:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    sget-object v2, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->INTERSTITIAL:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    sget-object v3, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->REWARDED:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    sget-object v4, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->NATIVE:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 7
    new-instance v0, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    const-string v1, "BANNER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->BANNER:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    .line 8
    new-instance v0, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    const-string v1, "MREC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->MREC:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    .line 9
    new-instance v0, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    const-string v1, "INTERSTITIAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->INTERSTITIAL:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    .line 10
    new-instance v0, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    const-string v1, "REWARDED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->REWARDED:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    .line 11
    new-instance v0, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    const-string v1, "NATIVE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->NATIVE:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    invoke-static {}, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->$values()[Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->$VALUES:[Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->Companion:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat$Companion;

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
            "Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;
    .registers 2

    const-class v0, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 19
    check-cast p0, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;
    .registers 1

    sget-object v0, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->$VALUES:[Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 19
    check-cast v0, [Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    return-object v0
.end method

###### Class com.unity3d.ads.core.data.model.AdRevenueAdFormat.Companion (com.unity3d.ads.core.data.model.AdRevenueAdFormat$Companion)
.class public final Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat$Companion;
.super Ljava/lang/Object;
.source "AdRevenueAdFormat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAdRevenueAdFormat.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdRevenueAdFormat.kt\ncom/unity3d/ads/core/data/model/AdRevenueAdFormat$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,20:1\n1#2:21\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromString(Ljava/lang/String;)Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 16
    :cond_4
    :try_start_4
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "toUpperCase(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->valueOf(Ljava/lang/String;)Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_1a

    goto :goto_25

    :catchall_1a
    move-exception p1

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_25
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    goto :goto_2d

    :cond_2c
    move-object v0, p1

    :goto_2d
    check-cast v0, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    return-object v0
.end method
