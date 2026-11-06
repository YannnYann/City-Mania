###### Class info.flowersoft.theotown.online.Multiplayer (info.flowersoft.theotown.online.Multiplayer)
.class public Linfo/flowersoft/theotown/online/Multiplayer;
.super Ljava/lang/Object;
.source "Multiplayer.java"


# static fields
.field public static CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    const-string v0, "multiplayer"

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/online/Multiplayer;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    return-void
.end method

.method public static allowToUploadUsedRegions()Z
    .registers 3

    .line 72
    sget-object v0, Linfo/flowersoft/theotown/online/Multiplayer;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "allow to upload used regions"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getRegionCoinsDayDelay()I
    .registers 3

    .line 46
    sget-object v0, Linfo/flowersoft/theotown/online/Multiplayer;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "region coins day delay"

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getRegionCoinsInit()I
    .registers 3

    .line 54
    sget-object v0, Linfo/flowersoft/theotown/online/Multiplayer;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "region coins init"

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getRegionCoinsLimit()I
    .registers 3

    .line 58
    sget-object v0, Linfo/flowersoft/theotown/online/Multiplayer;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "region coins limit"

    const v2, 0x186a0

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getRegionCoinsPerDay()I
    .registers 3

    .line 42
    sget-object v0, Linfo/flowersoft/theotown/online/Multiplayer;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "region coins per day"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getRegionUnlockCooldownMinutes()I
    .registers 3

    .line 50
    sget-object v0, Linfo/flowersoft/theotown/online/Multiplayer;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "region unlock cooldown minutes"

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getRulesUrl()Ljava/lang/String;
    .registers 3

    .line 62
    sget-object v0, Linfo/flowersoft/theotown/online/Multiplayer;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "rules url"

    const-string v2, "https://forum.theotown.com/"

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static giftsAreAvailable()Z
    .registers 4

    .line 66
    sget-object v0, Linfo/flowersoft/theotown/online/Multiplayer;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "gifts available"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Linfo/flowersoft/theotown/online/Multiplayer;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "gifts min version"

    const/16 v3, 0x270f

    .line 67
    invoke-virtual {v0, v1, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sget v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSION_CODE:I

    if-le v0, v1, :cond_27

    .line 68
    :cond_19
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->getAdmin()I

    move-result v0

    if-eqz v0, :cond_29

    :cond_27
    const/4 v0, 0x1

    return v0

    :cond_29
    return v2
.end method

.method public static isAvailable()Z
    .registers 8

    .line 18
    sget-object v0, Linfo/flowersoft/theotown/online/Multiplayer;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "available"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    return v1

    .line 20
    :cond_c
    sget-object v0, Linfo/flowersoft/theotown/online/Multiplayer;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "available for android"

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v2, :cond_21

    return v1

    .line 22
    :cond_21
    sget-object v0, Linfo/flowersoft/theotown/online/Multiplayer;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "available for desktop"

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v2, :cond_36

    return v1

    .line 24
    :cond_36
    sget-object v0, Linfo/flowersoft/theotown/online/Multiplayer;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "available for ios"

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/Application$ApplicationType;->iOS:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v2, :cond_4b

    return v1

    .line 26
    :cond_4b
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->getForumId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v2, 0x0

    if-eqz v0, :cond_86

    .line 27
    sget-object v0, Linfo/flowersoft/theotown/online/Multiplayer;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "available for forum ids"

    invoke-static {v0, v3}, Linfo/flowersoft/theotown/util/JSONUtil;->optArray(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v0

    move v3, v2

    .line 28
    :goto_67
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_86

    .line 29
    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->optInt(I)I

    move-result v4

    int-to-long v4, v4

    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v6

    invoke-virtual {v6}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v6

    invoke-virtual {v6}, Linfo/flowersoft/theotown/backend/User;->getForumId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_83

    return v1

    :cond_83
    add-int/lit8 v3, v3, 0x1

    goto :goto_67

    :cond_86
    return v2
.end method

.method public static isSupported()Z
    .registers 3

    .line 38
    sget v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSION_CODE:I

    sget-object v1, Linfo/flowersoft/theotown/online/Multiplayer;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "min version"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-lt v0, v1, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public static minUploadPrice()I
    .registers 3

    .line 75
    sget-object v0, Linfo/flowersoft/theotown/online/Multiplayer;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "min region upload price"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static uploadMapFactor()I
    .registers 3

    .line 78
    sget-object v0, Linfo/flowersoft/theotown/online/Multiplayer;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "region upload map factor"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static uploadSizeFactor()I
    .registers 3

    .line 81
    sget-object v0, Linfo/flowersoft/theotown/online/Multiplayer;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "region upload size factor"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
