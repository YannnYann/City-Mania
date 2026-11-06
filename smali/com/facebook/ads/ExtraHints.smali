###### Class com.facebook.ads.ExtraHints (com.facebook.ads.ExtraHints)
.class public Lcom/facebook/ads/ExtraHints;
.super Ljava/lang/Object;
.source "ExtraHints.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/ExtraHints$HintType;,
        Lcom/facebook/ads/ExtraHints$Builder;,
        Lcom/facebook/ads/ExtraHints$Keyword;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final HINTS_JSON_KEY:Ljava/lang/String; = "hints"

.field private static final KEYWORD_SEPARATOR:Ljava/lang/String; = ";"


# instance fields
.field private final mHintsSerialized:Ljava/lang/String;

.field private final mMediationData:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/util/HashMap;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/facebook/ads/ExtraHints$HintType;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/facebook/ads/ExtraHints;->mMediationData:Ljava/lang/String;

    .line 31
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 32
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 34
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_17
    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 36
    :try_start_23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/ExtraHints$HintType;

    invoke-static {v2}, Lcom/facebook/ads/ExtraHints$HintType;->access$000(Lcom/facebook/ads/ExtraHints$HintType;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_34} :catch_17

    goto :goto_17

    .line 42
    :cond_35
    :try_start_35
    const-string p1, "hints"

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3a
    .catch Lorg/json/JSONException; {:try_start_35 .. :try_end_3a} :catch_3a

    .line 46
    :catch_3a
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/ads/ExtraHints;->mHintsSerialized:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/HashMap;Ljava/lang/String;Lcom/facebook/ads/ExtraHints$1;)V
    .registers 4

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/ExtraHints;-><init>(Ljava/util/HashMap;Ljava/lang/String;)V

    return-void
.end method

.method private static join(Ljava/util/List;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 196
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getHints()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/facebook/ads/ExtraHints;->mHintsSerialized:Ljava/lang/String;

    return-object v0
.end method

.method public getMediationData()Ljava/lang/String;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/facebook/ads/ExtraHints;->mMediationData:Ljava/lang/String;

    return-object v0
.end method

###### Class com.facebook.ads.ExtraHints.AnonymousClass1 (com.facebook.ads.ExtraHints$1)
.class public synthetic Lcom/facebook/ads/ExtraHints$1;
.super Ljava/lang/Object;
.source "ExtraHints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/ExtraHints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class com.facebook.ads.ExtraHints.Builder (com.facebook.ads.ExtraHints$Builder)
.class public Lcom/facebook/ads/ExtraHints$Builder;
.super Ljava/lang/Object;
.source "ExtraHints.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/ExtraHints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mHints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/facebook/ads/ExtraHints$HintType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMediationData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/ExtraHints$Builder;->mHints:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public build()Lcom/facebook/ads/ExtraHints;
    .registers 5

    .line 184
    new-instance v0, Lcom/facebook/ads/ExtraHints;

    iget-object v1, p0, Lcom/facebook/ads/ExtraHints$Builder;->mHints:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/facebook/ads/ExtraHints$Builder;->mMediationData:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/ExtraHints;-><init>(Ljava/util/HashMap;Ljava/lang/String;Lcom/facebook/ads/ExtraHints$1;)V

    return-object v0
.end method

.method public contentUrl(Ljava/lang/String;)Lcom/facebook/ads/ExtraHints$Builder;
    .registers 4

    if-nez p1, :cond_3

    return-object p0

    .line 170
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/ExtraHints$Builder;->mHints:Ljava/util/HashMap;

    sget-object v1, Lcom/facebook/ads/ExtraHints$HintType;->CONTENT_URL:Lcom/facebook/ads/ExtraHints$HintType;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public extraData(Ljava/lang/String;)Lcom/facebook/ads/ExtraHints$Builder;
    .registers 4

    if-nez p1, :cond_3

    return-object p0

    .line 161
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/ExtraHints$Builder;->mHints:Ljava/util/HashMap;

    sget-object v1, Lcom/facebook/ads/ExtraHints$HintType;->EXTRA_DATA:Lcom/facebook/ads/ExtraHints$HintType;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public keywords(Ljava/util/List;)Lcom/facebook/ads/ExtraHints$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/ExtraHints$Keyword;",
            ">;)",
            "Lcom/facebook/ads/ExtraHints$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    return-object p0
.end method

.method public mediationData(Ljava/lang/String;)Lcom/facebook/ads/ExtraHints$Builder;
    .registers 3

    .line 175
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 179
    :cond_7
    iput-object p1, p0, Lcom/facebook/ads/ExtraHints$Builder;->mMediationData:Ljava/lang/String;

    return-object p0
.end method

###### Class com.facebook.ads.ExtraHints.HintType (com.facebook.ads.ExtraHints$HintType)
.class public final enum Lcom/facebook/ads/ExtraHints$HintType;
.super Ljava/lang/Enum;
.source "ExtraHints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/ExtraHints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HintType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/ExtraHints$HintType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/ads/ExtraHints$HintType;

.field public static final enum CONTENT_URL:Lcom/facebook/ads/ExtraHints$HintType;

.field public static final enum EXTRA_DATA:Lcom/facebook/ads/ExtraHints$HintType;

.field public static final enum KEYWORDS:Lcom/facebook/ads/ExtraHints$HintType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mKey:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/facebook/ads/ExtraHints$HintType;
    .registers 3

    .line 58
    sget-object v0, Lcom/facebook/ads/ExtraHints$HintType;->KEYWORDS:Lcom/facebook/ads/ExtraHints$HintType;

    sget-object v1, Lcom/facebook/ads/ExtraHints$HintType;->CONTENT_URL:Lcom/facebook/ads/ExtraHints$HintType;

    sget-object v2, Lcom/facebook/ads/ExtraHints$HintType;->EXTRA_DATA:Lcom/facebook/ads/ExtraHints$HintType;

    filled-new-array {v0, v1, v2}, [Lcom/facebook/ads/ExtraHints$HintType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 62
    new-instance v0, Lcom/facebook/ads/ExtraHints$HintType;

    const/4 v1, 0x0

    const-string v2, "keywords"

    const-string v3, "KEYWORDS"

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/ads/ExtraHints$HintType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$HintType;->KEYWORDS:Lcom/facebook/ads/ExtraHints$HintType;

    .line 64
    new-instance v0, Lcom/facebook/ads/ExtraHints$HintType;

    const/4 v1, 0x1

    const-string v2, "content_url"

    const-string v3, "CONTENT_URL"

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/ads/ExtraHints$HintType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$HintType;->CONTENT_URL:Lcom/facebook/ads/ExtraHints$HintType;

    .line 65
    new-instance v0, Lcom/facebook/ads/ExtraHints$HintType;

    const/4 v1, 0x2

    const-string v2, "extra_data"

    const-string v3, "EXTRA_DATA"

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/ads/ExtraHints$HintType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$HintType;->EXTRA_DATA:Lcom/facebook/ads/ExtraHints$HintType;

    .line 58
    invoke-static {}, Lcom/facebook/ads/ExtraHints$HintType;->$values()[Lcom/facebook/ads/ExtraHints$HintType;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/ExtraHints$HintType;->$VALUES:[Lcom/facebook/ads/ExtraHints$HintType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 71
    iput-object p3, p0, Lcom/facebook/ads/ExtraHints$HintType;->mKey:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/facebook/ads/ExtraHints$HintType;)Ljava/lang/String;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/facebook/ads/ExtraHints$HintType;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/ExtraHints$HintType;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 58
    const-class v0, Lcom/facebook/ads/ExtraHints$HintType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/ads/ExtraHints$HintType;

    return-object p0
.end method

.method public static values()[Lcom/facebook/ads/ExtraHints$HintType;
    .registers 1

    .line 58
    sget-object v0, Lcom/facebook/ads/ExtraHints$HintType;->$VALUES:[Lcom/facebook/ads/ExtraHints$HintType;

    invoke-virtual {v0}, [Lcom/facebook/ads/ExtraHints$HintType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/ExtraHints$HintType;

    return-object v0
.end method

###### Class com.facebook.ads.ExtraHints.Keyword (com.facebook.ads.ExtraHints$Keyword)
.class public final enum Lcom/facebook/ads/ExtraHints$Keyword;
.super Ljava/lang/Enum;
.source "ExtraHints.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/ExtraHints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Keyword"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/ExtraHints$Keyword;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum ACCESSORIES:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum ART_HISTORY:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum AUTOMOTIVE:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum BEAUTY:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum BIOLOGY:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum BOARD_GAMES:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum BUSINESS_SOFTWARE:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum BUYING_SELLING_HOMES:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum CATS:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum CELEBRITIES:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum CLOTHING:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum COMIC_BOOKS:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum DESKTOP_VIDEO:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum DOGS:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum EDUCATION:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum EMAIL:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum ENTERTAINMENT:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum FAMILY_PARENTING:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum FASHION:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum FINE_ART:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum FOOD_DRINK:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum FRENCH_CUISINE:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum GOVERNMENT:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum HEALTH_FITNESS:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum HOBBIES:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum HOME_GARDEN:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum HUMOR:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum INTERNET_TECHNOLOGY:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum LARGE_ANIMALS:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum LAW:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum LEGAL_ISSUES:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum LITERATURE:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum MARKETING:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum MOVIES:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum MUSIC:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum NEWS:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum PERSONAL_FINANCE:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum PETS:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum PHOTOGRAPHY:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum POLITICS:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum REAL_ESTATE:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum ROLEPLAYING_GAMES:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum SCIENCE:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum SHOPPING:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum SOCIETY:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum SPORTS:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum TECHNOLOGY:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum TELEVISION:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum TRAVEL:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum VIDEO_COMPUTER_GAMES:Lcom/facebook/ads/ExtraHints$Keyword;


# direct methods
.method private static synthetic $values()[Lcom/facebook/ads/ExtraHints$Keyword;
    .registers 51

    .line 78
    sget-object v1, Lcom/facebook/ads/ExtraHints$Keyword;->ACCESSORIES:Lcom/facebook/ads/ExtraHints$Keyword;

    sget-object v2, Lcom/facebook/ads/ExtraHints$Keyword;->ART_HISTORY:Lcom/facebook/ads/ExtraHints$Keyword;

    sget-object v3, Lcom/facebook/ads/ExtraHints$Keyword;->AUTOMOTIVE:Lcom/facebook/ads/ExtraHints$Keyword;

    sget-object v4, Lcom/facebook/ads/ExtraHints$Keyword;->BEAUTY:Lcom/facebook/ads/ExtraHints$Keyword;

    sget-object v5, Lcom/facebook/ads/ExtraHints$Keyword;->BIOLOGY:Lcom/facebook/ads/ExtraHints$Keyword;

    sget-object v6, Lcom/facebook/ads/ExtraHints$Keyword;->BOARD_GAMES:Lcom/facebook/ads/ExtraHints$Keyword;

    sget-object v7, Lcom/facebook/ads/ExtraHints$Keyword;->BUSINESS_SOFTWARE:Lcom/facebook/ads/ExtraHints$Keyword;

    sget-object v8, Lcom/facebook/ads/ExtraHints$Keyword;->BUYING_SELLING_HOMES:Lcom/facebook/ads/ExtraHints$Keyword;

    sget-object v9, Lcom/facebook/ads/ExtraHints$Keyword;->CATS:Lcom/facebook/ads/ExtraHints$Keyword;

    sget-object v10, Lcom/facebook/ads/ExtraHints$Keyword;->CELEBRITIES:Lcom/facebook/ads/ExtraHints$Keyword;

    sget-object v11, Lcom/facebook/ads/ExtraHints$Keyword;->CLOTHING:Lcom/facebook/ads/ExtraHints$Keyword;

    sget-object v12, Lcom/facebook/ads/ExtraHints$Keyword;->COMIC_BOOKS:Lcom/facebook/ads/ExtraHints$Keyword;

    sget-object v13, Lcom/facebook/ads/ExtraHints$Keyword;->DESKTOP_VIDEO:Lcom/facebook/ads/ExtraHints$Keyword;

    sget-object v14, Lcom/facebook/ads/ExtraHints$Keyword;->DOGS:Lcom/facebook/ads/ExtraHints$Keyword;

    sget-object v15, Lcom/facebook/ads/ExtraHints$Keyword;->EDUCATION:Lcom/facebook/ads/ExtraHints$Keyword;

    sget-object v16, Lcom/facebook/ads/ExtraHints$Keyword;->EMAIL:Lcom/facebook/ads/ExtraHints$Keyword;

    sget-object v17, Lcom/facebook/ads/ExtraHints$Keyword;->ENTERTAINMENT:Lcom/facebook/ads/ExtraHints$Keyword;

    sget-object v18, Lcom/facebook/ads/ExtraHints$Keyword;->FAMILY_PARENTING:Lcom/facebook/ads/ExtraHints$Keyword;

    sget-object v19, Lcom/facebook/ads/ExtraHints$Keyword;->FASHION:Lcom/facebook/ads/ExtraHints$Keyword;

    sget-object v20, Lcom/facebook/ads/ExtraHints$Keyword;->FINE_ART:Lcom/facebook/ads/ExtraHints$Keyword;

    sget-object v21, Lcom/facebook/ads/ExtraHints$Keyword;->FOOD_DRINK:Lcom/facebook/ads/ExtraHints$Keyword;

    sget-object v22, Lcom/facebook/ads/ExtraHints$Keyword;->FRENCH_CUISINE:Lcom/facebook/ads/ExtraHints$Keyword;

    sget-object v23, Lcom/facebook/ads/ExtraHints$Keyword;->GOVERNMENT:Lcom/facebook/ads/ExtraHints$Keyword;

    sget-object v24, Lcom/facebook/ads/ExtraHints$Keyword;->HEALTH_FITNESS:Lcom/facebook/ads/ExtraHints$Keyword;

    sget-object v25, Lcom/facebook/ads/ExtraHints$Keyword;->HOBBIES:Lcom/facebook/ads/ExtraHints$Keyword;

    sget-object v26, Lcom/facebook/ads/ExtraHints$Keyword;->HOME_GARDEN:Lcom/facebook/ads/ExtraHints$Keyword;

    sget-object v27, Lcom/facebook/ads/ExtraHints$Keyword;->HUMOR:Lcom/facebook/ads/ExtraHints$Keyword;

    sget-object v28, Lcom/facebook/ads/ExtraHints$Keyword;->INTERNET_TECHNOLOGY:Lcom/facebook/ads/ExtraHints$Keyword;

    sget-object v29, Lcom/facebook/ads/ExtraHints$Keyword;->LARGE_ANIMALS:Lcom/facebook/ads/ExtraHints$Keyword;

    sget-object v30, Lcom/facebook/ads/ExtraHints$Keyword;->LAW:Lcom/facebook/ads/ExtraHints$Keyword;

    sget-object v31, Lcom/facebook/ads/ExtraHints$Keyword;->LEGAL_ISSUES:Lcom/facebook/ads/ExtraHints$Keyword;

    sget-object v32, Lcom/facebook/ads/ExtraHints$Keyword;->LITERATURE:Lcom/facebook/ads/ExtraHints$Keyword;

    sget-object v33, Lcom/facebook/ads/ExtraHints$Keyword;->MARKETING:Lcom/facebook/ads/ExtraHints$Keyword;

    sget-object v34, Lcom/facebook/ads/ExtraHints$Keyword;->MOVIES:Lcom/facebook/ads/ExtraHints$Keyword;

    sget-object v35, Lcom/facebook/ads/ExtraHints$Keyword;->MUSIC:Lcom/facebook/ads/ExtraHints$Keyword;

    sget-object v36, Lcom/facebook/ads/ExtraHints$Keyword;->NEWS:Lcom/facebook/ads/ExtraHints$Keyword;

    sget-object v37, Lcom/facebook/ads/ExtraHints$Keyword;->PERSONAL_FINANCE:Lcom/facebook/ads/ExtraHints$Keyword;

    sget-object v38, Lcom/facebook/ads/ExtraHints$Keyword;->PETS:Lcom/facebook/ads/ExtraHints$Keyword;

    sget-object v39, Lcom/facebook/ads/ExtraHints$Keyword;->PHOTOGRAPHY:Lcom/facebook/ads/ExtraHints$Keyword;

    sget-object v40, Lcom/facebook/ads/ExtraHints$Keyword;->POLITICS:Lcom/facebook/ads/ExtraHints$Keyword;

    sget-object v41, Lcom/facebook/ads/ExtraHints$Keyword;->REAL_ESTATE:Lcom/facebook/ads/ExtraHints$Keyword;

    sget-object v42, Lcom/facebook/ads/ExtraHints$Keyword;->ROLEPLAYING_GAMES:Lcom/facebook/ads/ExtraHints$Keyword;

    sget-object v43, Lcom/facebook/ads/ExtraHints$Keyword;->SCIENCE:Lcom/facebook/ads/ExtraHints$Keyword;

    sget-object v44, Lcom/facebook/ads/ExtraHints$Keyword;->SHOPPING:Lcom/facebook/ads/ExtraHints$Keyword;

    sget-object v45, Lcom/facebook/ads/ExtraHints$Keyword;->SOCIETY:Lcom/facebook/ads/ExtraHints$Keyword;

    sget-object v46, Lcom/facebook/ads/ExtraHints$Keyword;->SPORTS:Lcom/facebook/ads/ExtraHints$Keyword;

    sget-object v47, Lcom/facebook/ads/ExtraHints$Keyword;->TECHNOLOGY:Lcom/facebook/ads/ExtraHints$Keyword;

    sget-object v48, Lcom/facebook/ads/ExtraHints$Keyword;->TELEVISION:Lcom/facebook/ads/ExtraHints$Keyword;

    sget-object v49, Lcom/facebook/ads/ExtraHints$Keyword;->TRAVEL:Lcom/facebook/ads/ExtraHints$Keyword;

    sget-object v50, Lcom/facebook/ads/ExtraHints$Keyword;->VIDEO_COMPUTER_GAMES:Lcom/facebook/ads/ExtraHints$Keyword;

    filled-new-array/range {v1 .. v50}, [Lcom/facebook/ads/ExtraHints$Keyword;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 81
    new-instance v0, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v1, "ACCESSORIES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->ACCESSORIES:Lcom/facebook/ads/ExtraHints$Keyword;

    .line 82
    new-instance v0, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v1, "ART_HISTORY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->ART_HISTORY:Lcom/facebook/ads/ExtraHints$Keyword;

    .line 83
    new-instance v0, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v1, "AUTOMOTIVE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->AUTOMOTIVE:Lcom/facebook/ads/ExtraHints$Keyword;

    .line 84
    new-instance v0, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v1, "BEAUTY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->BEAUTY:Lcom/facebook/ads/ExtraHints$Keyword;

    .line 85
    new-instance v0, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v1, "BIOLOGY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->BIOLOGY:Lcom/facebook/ads/ExtraHints$Keyword;

    .line 86
    new-instance v0, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v1, "BOARD_GAMES"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->BOARD_GAMES:Lcom/facebook/ads/ExtraHints$Keyword;

    .line 87
    new-instance v0, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v1, "BUSINESS_SOFTWARE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->BUSINESS_SOFTWARE:Lcom/facebook/ads/ExtraHints$Keyword;

    .line 88
    new-instance v0, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v1, "BUYING_SELLING_HOMES"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->BUYING_SELLING_HOMES:Lcom/facebook/ads/ExtraHints$Keyword;

    .line 89
    new-instance v0, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v1, "CATS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->CATS:Lcom/facebook/ads/ExtraHints$Keyword;

    .line 90
    new-instance v0, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v1, "CELEBRITIES"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->CELEBRITIES:Lcom/facebook/ads/ExtraHints$Keyword;

    .line 91
    new-instance v0, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v1, "CLOTHING"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->CLOTHING:Lcom/facebook/ads/ExtraHints$Keyword;

    .line 92
    new-instance v0, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v1, "COMIC_BOOKS"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->COMIC_BOOKS:Lcom/facebook/ads/ExtraHints$Keyword;

    .line 93
    new-instance v0, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v1, "DESKTOP_VIDEO"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->DESKTOP_VIDEO:Lcom/facebook/ads/ExtraHints$Keyword;

    .line 94
    new-instance v0, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v1, "DOGS"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->DOGS:Lcom/facebook/ads/ExtraHints$Keyword;

    .line 95
    new-instance v0, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v1, "EDUCATION"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->EDUCATION:Lcom/facebook/ads/ExtraHints$Keyword;

    .line 96
    new-instance v0, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v1, "EMAIL"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->EMAIL:Lcom/facebook/ads/ExtraHints$Keyword;

    .line 97
    new-instance v0, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v1, "ENTERTAINMENT"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->ENTERTAINMENT:Lcom/facebook/ads/ExtraHints$Keyword;

    .line 98
    new-instance v0, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v1, "FAMILY_PARENTING"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->FAMILY_PARENTING:Lcom/facebook/ads/ExtraHints$Keyword;

    .line 99
    new-instance v0, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v1, "FASHION"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->FASHION:Lcom/facebook/ads/ExtraHints$Keyword;

    .line 100
    new-instance v0, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v1, "FINE_ART"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->FINE_ART:Lcom/facebook/ads/ExtraHints$Keyword;

    .line 101
    new-instance v0, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v1, "FOOD_DRINK"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->FOOD_DRINK:Lcom/facebook/ads/ExtraHints$Keyword;

    .line 102
    new-instance v0, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v1, "FRENCH_CUISINE"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->FRENCH_CUISINE:Lcom/facebook/ads/ExtraHints$Keyword;

    .line 103
    new-instance v0, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v1, "GOVERNMENT"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->GOVERNMENT:Lcom/facebook/ads/ExtraHints$Keyword;

    .line 104
    new-instance v0, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v1, "HEALTH_FITNESS"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->HEALTH_FITNESS:Lcom/facebook/ads/ExtraHints$Keyword;

    .line 105
    new-instance v0, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v1, "HOBBIES"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->HOBBIES:Lcom/facebook/ads/ExtraHints$Keyword;

    .line 106
    new-instance v0, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v1, "HOME_GARDEN"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->HOME_GARDEN:Lcom/facebook/ads/ExtraHints$Keyword;

    .line 107
    new-instance v0, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v1, "HUMOR"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->HUMOR:Lcom/facebook/ads/ExtraHints$Keyword;

    .line 108
    new-instance v0, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v1, "INTERNET_TECHNOLOGY"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->INTERNET_TECHNOLOGY:Lcom/facebook/ads/ExtraHints$Keyword;

    .line 109
    new-instance v0, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v1, "LARGE_ANIMALS"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->LARGE_ANIMALS:Lcom/facebook/ads/ExtraHints$Keyword;

    .line 110
    new-instance v0, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v1, "LAW"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->LAW:Lcom/facebook/ads/ExtraHints$Keyword;

    .line 111
    new-instance v0, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v1, "LEGAL_ISSUES"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->LEGAL_ISSUES:Lcom/facebook/ads/ExtraHints$Keyword;

    .line 112
    new-instance v0, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v1, "LITERATURE"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->LITERATURE:Lcom/facebook/ads/ExtraHints$Keyword;

    .line 113
    new-instance v0, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v1, "MARKETING"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->MARKETING:Lcom/facebook/ads/ExtraHints$Keyword;

    .line 114
    new-instance v0, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v1, "MOVIES"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->MOVIES:Lcom/facebook/ads/ExtraHints$Keyword;

    .line 115
    new-instance v0, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v1, "MUSIC"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->MUSIC:Lcom/facebook/ads/ExtraHints$Keyword;

    .line 116
    new-instance v0, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v1, "NEWS"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->NEWS:Lcom/facebook/ads/ExtraHints$Keyword;

    .line 117
    new-instance v0, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v1, "PERSONAL_FINANCE"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->PERSONAL_FINANCE:Lcom/facebook/ads/ExtraHints$Keyword;

    .line 118
    new-instance v0, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v1, "PETS"

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->PETS:Lcom/facebook/ads/ExtraHints$Keyword;

    .line 119
    new-instance v0, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v1, "PHOTOGRAPHY"

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->PHOTOGRAPHY:Lcom/facebook/ads/ExtraHints$Keyword;

    .line 120
    new-instance v0, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v1, "POLITICS"

    const/16 v2, 0x27

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->POLITICS:Lcom/facebook/ads/ExtraHints$Keyword;

    .line 121
    new-instance v0, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v1, "REAL_ESTATE"

    const/16 v2, 0x28

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->REAL_ESTATE:Lcom/facebook/ads/ExtraHints$Keyword;

    .line 122
    new-instance v0, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v1, "ROLEPLAYING_GAMES"

    const/16 v2, 0x29

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->ROLEPLAYING_GAMES:Lcom/facebook/ads/ExtraHints$Keyword;

    .line 123
    new-instance v0, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v1, "SCIENCE"

    const/16 v2, 0x2a

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->SCIENCE:Lcom/facebook/ads/ExtraHints$Keyword;

    .line 124
    new-instance v0, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v1, "SHOPPING"

    const/16 v2, 0x2b

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->SHOPPING:Lcom/facebook/ads/ExtraHints$Keyword;

    .line 125
    new-instance v0, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v1, "SOCIETY"

    const/16 v2, 0x2c

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->SOCIETY:Lcom/facebook/ads/ExtraHints$Keyword;

    .line 126
    new-instance v0, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v1, "SPORTS"

    const/16 v2, 0x2d

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->SPORTS:Lcom/facebook/ads/ExtraHints$Keyword;

    .line 127
    new-instance v0, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v1, "TECHNOLOGY"

    const/16 v2, 0x2e

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->TECHNOLOGY:Lcom/facebook/ads/ExtraHints$Keyword;

    .line 128
    new-instance v0, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v1, "TELEVISION"

    const/16 v2, 0x2f

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->TELEVISION:Lcom/facebook/ads/ExtraHints$Keyword;

    .line 129
    new-instance v0, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v1, "TRAVEL"

    const/16 v2, 0x30

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->TRAVEL:Lcom/facebook/ads/ExtraHints$Keyword;

    .line 130
    new-instance v0, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v1, "VIDEO_COMPUTER_GAMES"

    const/16 v2, 0x31

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->VIDEO_COMPUTER_GAMES:Lcom/facebook/ads/ExtraHints$Keyword;

    .line 78
    invoke-static {}, Lcom/facebook/ads/ExtraHints$Keyword;->$values()[Lcom/facebook/ads/ExtraHints$Keyword;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->$VALUES:[Lcom/facebook/ads/ExtraHints$Keyword;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/ExtraHints$Keyword;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 78
    const-class v0, Lcom/facebook/ads/ExtraHints$Keyword;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/ads/ExtraHints$Keyword;

    return-object p0
.end method

.method public static values()[Lcom/facebook/ads/ExtraHints$Keyword;
    .registers 1

    .line 78
    sget-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->$VALUES:[Lcom/facebook/ads/ExtraHints$Keyword;

    invoke-virtual {v0}, [Lcom/facebook/ads/ExtraHints$Keyword;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/ExtraHints$Keyword;

    return-object v0
.end method
