###### Class info.flowersoft.theotown.store.PluginFileTranslation (info.flowersoft.theotown.store.PluginFileTranslation)
.class public Linfo/flowersoft/theotown/store/PluginFileTranslation;
.super Ljava/lang/Object;
.source "PluginFileTranslation.java"


# instance fields
.field public applyTranslations:Linfo/flowersoft/theotown/util/json/JSONObject;

.field public mappingTranslations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/store/PluginFileTranslation;->mappingTranslations:Ljava/util/Map;

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Linfo/flowersoft/theotown/store/PluginFileTranslation;->applyTranslations:Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 16
    const-string v0, "version"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 17
    const-string v0, "mapping"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    .line 18
    const-string v1, "apply"

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    if-eqz v0, :cond_41

    .line 21
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->names()Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 22
    :goto_25
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_41

    .line 23
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 24
    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 25
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3e

    .line 26
    iget-object v5, p0, Linfo/flowersoft/theotown/store/PluginFileTranslation;->mappingTranslations:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_41
    if-eqz p1, :cond_45

    .line 32
    iput-object p1, p0, Linfo/flowersoft/theotown/store/PluginFileTranslation;->applyTranslations:Linfo/flowersoft/theotown/util/json/JSONObject;

    :cond_45
    return-void
.end method


# virtual methods
.method public getApplyTranslations()Linfo/flowersoft/theotown/util/json/JSONObject;
    .registers 2

    .line 42
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginFileTranslation;->applyTranslations:Linfo/flowersoft/theotown/util/json/JSONObject;

    return-object v0
.end method

.method public translateInline(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 37
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginFileTranslation;->mappingTranslations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    return-object p1
.end method
