###### Class info.flowersoft.theotown.resources.PCPS (info.flowersoft.theotown.resources.PCPS)
.class public final Linfo/flowersoft/theotown/resources/PCPS;
.super Ljava/lang/Object;
.source "PCPS.java"


# static fields
.field public static CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    const-string v0, "pcps"

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/resources/PCPS;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    return-void
.end method

.method public static isAvailable()Z
    .registers 3

    .line 16
    sget-object v0, Linfo/flowersoft/theotown/resources/PCPS;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "available"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_c

    return v2

    .line 18
    :cond_c
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v1, :cond_18

    const/4 v0, 0x1

    return v0

    :cond_18
    return v2
.end method
