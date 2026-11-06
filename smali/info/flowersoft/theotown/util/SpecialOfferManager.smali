###### Class info.flowersoft.theotown.util.SpecialOfferManager (info.flowersoft.theotown.util.SpecialOfferManager)
.class public final Linfo/flowersoft/theotown/util/SpecialOfferManager;
.super Ljava/lang/Object;
.source "SpecialOfferManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSpecialOfferManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SpecialOfferManager.kt\ninfo/flowersoft/theotown/util/SpecialOfferManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,125:1\n1#2:126\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Linfo/flowersoft/theotown/util/SpecialOfferManager;

.field public static final specialOfferHistory:Lcom/badlogic/gdx/utils/ObjectLongMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectLongMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Linfo/flowersoft/theotown/util/SpecialOfferManager;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/SpecialOfferManager;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/util/SpecialOfferManager;->INSTANCE:Linfo/flowersoft/theotown/util/SpecialOfferManager;

    .line 28
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectLongMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectLongMap;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/util/SpecialOfferManager;->specialOfferHistory:Lcom/badlogic/gdx/utils/ObjectLongMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final canBeOffered(Linfo/flowersoft/theotown/draft/FeatureDraft;)Z
    .registers 3

    if-eqz p1, :cond_10

    .line 39
    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/FeatureDraft;->isUnlocked()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/FeatureDraft;->availableForPurchase()Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public final getConfig()Linfo/flowersoft/theotown/util/json/JSONObject;
    .registers 3

    .line 18
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "special offer"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrentSpecialOffer()Linfo/flowersoft/theotown/draft/FeatureDraft;
    .registers 7

    .line 83
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/SpecialOfferManager;->getConfig()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 86
    :cond_8
    const-string v2, "auto offers"

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 87
    sget-object v3, Linfo/flowersoft/theotown/util/SpecialOfferManager;->INSTANCE:Linfo/flowersoft/theotown/util/SpecialOfferManager;

    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/util/SpecialOfferManager;->selectFromAutoList(Linfo/flowersoft/theotown/util/json/JSONArray;)Linfo/flowersoft/theotown/draft/FeatureDraft;

    move-result-object v2

    if-eqz v2, :cond_19

    return-object v2

    .line 91
    :cond_19
    const-string v2, "offers"

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 93
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_26
    if-ge v3, v2, :cond_44

    .line 94
    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2f

    goto :goto_41

    .line 95
    :cond_2f
    const-class v5, Linfo/flowersoft/theotown/draft/FeatureDraft;

    invoke-static {v4, v5}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/draft/FeatureDraft;

    if-nez v4, :cond_3a

    goto :goto_41

    .line 96
    :cond_3a
    invoke-virtual {p0, v4}, Linfo/flowersoft/theotown/util/SpecialOfferManager;->canBeOffered(Linfo/flowersoft/theotown/draft/FeatureDraft;)Z

    move-result v5

    if-eqz v5, :cond_41

    return-object v4

    :cond_41
    :goto_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    :cond_44
    return-object v1
.end method

.method public final getSpecialOfferDurationMinutes()I
    .registers 4

    .line 23
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/SpecialOfferManager;->getConfig()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x5

    if-eqz v0, :cond_e

    const-string v2, "offer duration minutes"

    invoke-virtual {v0, v2, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_e
    return v1
.end method

.method public final getStarterPack()Linfo/flowersoft/theotown/draft/FeatureDraft;
    .registers 7

    .line 106
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/SpecialOfferManager;->getConfig()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 109
    :cond_8
    const-string v2, "auto starter packs"

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 110
    sget-object v3, Linfo/flowersoft/theotown/util/SpecialOfferManager;->INSTANCE:Linfo/flowersoft/theotown/util/SpecialOfferManager;

    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/util/SpecialOfferManager;->selectFromAutoList(Linfo/flowersoft/theotown/util/json/JSONArray;)Linfo/flowersoft/theotown/draft/FeatureDraft;

    move-result-object v2

    if-eqz v2, :cond_19

    return-object v2

    .line 113
    :cond_19
    const-string v2, "starter packs"

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_22

    return-object v1

    .line 115
    :cond_22
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_27
    if-ge v3, v2, :cond_45

    .line 116
    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_30

    goto :goto_42

    .line 117
    :cond_30
    const-class v5, Linfo/flowersoft/theotown/draft/FeatureDraft;

    invoke-static {v4, v5}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/draft/FeatureDraft;

    if-nez v4, :cond_3b

    goto :goto_42

    .line 118
    :cond_3b
    invoke-virtual {p0, v4}, Linfo/flowersoft/theotown/util/SpecialOfferManager;->canBeOffered(Linfo/flowersoft/theotown/draft/FeatureDraft;)Z

    move-result v5

    if-eqz v5, :cond_42

    return-object v4

    :cond_42
    :goto_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    :cond_45
    return-object v1
.end method

.method public final getTime()J
    .registers 3

    .line 33
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final selectFromAutoList(Linfo/flowersoft/theotown/util/json/JSONArray;)Linfo/flowersoft/theotown/draft/FeatureDraft;
    .registers 14

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 48
    :cond_4
    new-instance v1, Lio/blueflower/stapel2d/util/ProbabilitySelector;

    invoke-direct {v1}, Lio/blueflower/stapel2d/util/ProbabilitySelector;-><init>()V

    .line 50
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_81

    .line 51
    invoke-virtual {p1, v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->optJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_17

    goto :goto_7e

    .line 52
    :cond_17
    const-string v5, "id"

    invoke-virtual {v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_20

    goto :goto_7e

    .line 53
    :cond_20
    const-class v6, Linfo/flowersoft/theotown/draft/FeatureDraft;

    invoke-static {v5, v6}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/draft/FeatureDraft;

    if-nez v6, :cond_2b

    goto :goto_7e

    .line 54
    :cond_2b
    invoke-virtual {p0, v6}, Linfo/flowersoft/theotown/util/SpecialOfferManager;->canBeOffered(Linfo/flowersoft/theotown/draft/FeatureDraft;)Z

    move-result v7

    if-eqz v7, :cond_7e

    .line 56
    const-string v7, "prob"

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v4, v7, v8, v9}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    double-to-float v7, v7

    .line 58
    const-string v8, "start day"

    const/4 v9, -0x1

    invoke-virtual {v4, v8, v9}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 59
    const-string v10, "start month"

    invoke-virtual {v4, v10, v9}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    .line 60
    const-string v11, "day length"

    invoke-virtual {v4, v11, v9}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 63
    sget-object v9, Linfo/flowersoft/theotown/util/DateUtil;->INSTANCE:Linfo/flowersoft/theotown/util/DateUtil;

    invoke-virtual {v9, v8, v10, v4}, Linfo/flowersoft/theotown/util/DateUtil;->checkDate(III)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 65
    sget-object v4, Linfo/flowersoft/theotown/util/SpecialOfferManager;->specialOfferHistory:Lcom/badlogic/gdx/utils/ObjectLongMap;

    const-wide/16 v8, 0x0

    invoke-virtual {v4, v5, v8, v9}, Lcom/badlogic/gdx/utils/ObjectLongMap;->get(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v10, v4, v8

    if-lez v10, :cond_7b

    .line 70
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/SpecialOfferManager;->getTime()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    const/4 v5, 0x1

    int-to-float v5, v5

    const/16 v8, 0x258

    int-to-float v8, v8

    div-float/2addr v4, v8

    add-float/2addr v5, v4

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v5, v4, v5

    sub-float/2addr v4, v5

    mul-float/2addr v7, v4

    .line 73
    :cond_7b
    invoke-virtual {v1, v6, v7}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V

    :cond_7e
    :goto_7e
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 76
    :cond_81
    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->hasResult()Z

    move-result p1

    if-nez p1, :cond_88

    return-object v0

    .line 78
    :cond_88
    sget-object p1, Linfo/flowersoft/theotown/util/SpecialOfferManager;->specialOfferHistory:Lcom/badlogic/gdx/utils/ObjectLongMap;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/FeatureDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/SpecialOfferManager;->getTime()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/badlogic/gdx/utils/ObjectLongMap;->put(Ljava/lang/Object;J)V

    .line 79
    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/FeatureDraft;

    return-object p1
.end method
