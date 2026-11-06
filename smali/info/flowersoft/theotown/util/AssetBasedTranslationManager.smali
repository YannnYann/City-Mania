###### Class info.flowersoft.theotown.util.AssetBasedTranslationManager (info.flowersoft.theotown.util.AssetBasedTranslationManager)
.class public Linfo/flowersoft/theotown/util/AssetBasedTranslationManager;
.super Ljava/lang/Object;
.source "AssetBasedTranslationManager.java"

# interfaces
.implements Lio/blueflower/stapel2d/gamestack/TranslationManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/util/AssetBasedTranslationManager$FileResolver;
    }
.end annotation


# static fields
.field public static final defaultLocale:Ljava/util/Locale;


# instance fields
.field public effectiveLocale:Ljava/util/Locale;

.field public final externalTranslationMap:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final fileResolver:Linfo/flowersoft/theotown/util/AssetBasedTranslationManager$FileResolver;

.field public final indexFile:Lcom/badlogic/gdx/files/FileHandle;

.field public final keyToTranslationMap:Lcom/badlogic/gdx/utils/ObjectIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectIntMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public setLocale:Ljava/util/Locale;

.field public final translations:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/util/AssetBasedTranslationManager;->defaultLocale:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Linfo/flowersoft/theotown/util/AssetBasedTranslationManager$FileResolver;)V
    .registers 6

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    sget-object v0, Linfo/flowersoft/theotown/R;->STRING_NAMES:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Linfo/flowersoft/theotown/util/AssetBasedTranslationManager;->translations:[Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/util/AssetBasedTranslationManager;->keyToTranslationMap:Lcom/badlogic/gdx/utils/ObjectIntMap;

    const/4 v0, 0x1

    .line 78
    :goto_12
    sget-object v1, Linfo/flowersoft/theotown/R;->STRING_NAMES:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_21

    .line 79
    iget-object v2, p0, Linfo/flowersoft/theotown/util/AssetBasedTranslationManager;->keyToTranslationMap:Lcom/badlogic/gdx/utils/ObjectIntMap;

    aget-object v1, v1, v0

    invoke-virtual {v2, v1, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 87
    :cond_21
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/util/AssetBasedTranslationManager;->externalTranslationMap:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 90
    iput-object p1, p0, Linfo/flowersoft/theotown/util/AssetBasedTranslationManager;->indexFile:Lcom/badlogic/gdx/files/FileHandle;

    .line 91
    iput-object p2, p0, Linfo/flowersoft/theotown/util/AssetBasedTranslationManager;->fileResolver:Linfo/flowersoft/theotown/util/AssetBasedTranslationManager$FileResolver;

    .line 92
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "translation "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Linfo/flowersoft/theotown/util/AssetBasedTranslationManager;->defaultLocale:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Linfo/flowersoft/theotown/crossplatform/Analytics;->writeToLog(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 93
    invoke-virtual {p0, p1, p1}, Linfo/flowersoft/theotown/util/AssetBasedTranslationManager;->setLanguage(Ljava/util/Locale;Ljava/util/List;)V

    return-void
.end method

.method public static getDefaultLocaleInit()Ljava/util/Locale;
    .registers 1

    .line 344
    sget-object v0, Linfo/flowersoft/theotown/util/AssetBasedTranslationManager;->defaultLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public static getLocaleForQualifier(Ljava/lang/String;)Ljava/util/Locale;
    .registers 4

    const/16 v0, 0x2d

    const/16 v1, 0x5f

    .line 256
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 257
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "zh_rtw"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string p0, "zh_tw"

    .line 258
    :cond_18
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "zh_rhk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    const-string p0, "zh_hk"

    .line 259
    :cond_26
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "b+fil"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const-string p0, "fil"

    .line 261
    :cond_34
    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 263
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_44

    .line 264
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 266
    :cond_44
    new-instance p0, Ljava/util/Locale;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    aget-object v0, v0, v2

    invoke-direct {p0, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getTranslationIndex(Ljava/util/Locale;)I
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 237
    :goto_3
    sget-object v3, Linfo/flowersoft/theotown/R;->STRING_QUALIFIERS:[Ljava/lang/String;

    array-length v4, v3

    if-ge v0, v4, :cond_34

    .line 238
    aget-object v3, v3, v0

    invoke-static {v3}, Linfo/flowersoft/theotown/util/AssetBasedTranslationManager;->getLocaleForQualifier(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    .line 240
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 242
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    const/4 v3, 0x2

    goto :goto_2d

    :cond_2c
    const/4 v3, 0x1

    :goto_2d
    if-le v3, v2, :cond_31

    move v1, v0

    move v2, v3

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_34
    return v1
.end method


# virtual methods
.method public _translate(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 102
    iget-object v0, p0, Linfo/flowersoft/theotown/util/AssetBasedTranslationManager;->keyToTranslationMap:Lcom/badlogic/gdx/utils/ObjectIntMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result v0

    if-lez v0, :cond_e

    .line 104
    iget-object p1, p0, Linfo/flowersoft/theotown/util/AssetBasedTranslationManager;->translations:[Ljava/lang/String;

    aget-object p1, p1, v0

    return-object p1

    .line 106
    :cond_e
    iget-object v0, p0, Linfo/flowersoft/theotown/util/AssetBasedTranslationManager;->externalTranslationMap:Lcom/badlogic/gdx/utils/ObjectMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final activateTaggedTranslations(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x1

    .line 221
    :goto_1
    sget-object v1, Linfo/flowersoft/theotown/R;->STRING_NAMES:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_2e

    .line 222
    aget-object v1, v1, v0

    .line 223
    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 224
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 225
    iget-object v2, p0, Linfo/flowersoft/theotown/util/AssetBasedTranslationManager;->keyToTranslationMap:Lcom/badlogic/gdx/utils/ObjectIntMap;

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result v1

    if-lez v1, :cond_2b

    .line 227
    iget-object v2, p0, Linfo/flowersoft/theotown/util/AssetBasedTranslationManager;->translations:[Ljava/lang/String;

    aget-object v3, v2, v0

    aput-object v3, v2, v1

    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2e
    return-void
.end method

.method public final applyPatches(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 273
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 274
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 275
    iget-object v2, p0, Linfo/flowersoft/theotown/util/AssetBasedTranslationManager;->keyToTranslationMap:Lcom/badlogic/gdx/utils/ObjectIntMap;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result v2

    if-lez v2, :cond_2e

    .line 277
    iget-object v1, p0, Linfo/flowersoft/theotown/util/AssetBasedTranslationManager;->translations:[Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v1, v2

    goto :goto_8

    .line 279
    :cond_2e
    iget-object v2, p0, Linfo/flowersoft/theotown/util/AssetBasedTranslationManager;->externalTranslationMap:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_3a
    return-void
.end method

.method public final collectPatches(Ljava/util/List;Ljava/util/Locale;)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/util/json/JSONObject;",
            ">;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 287
    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_21

    .line 288
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 289
    const-string v4, "*"

    invoke-virtual {p0, v3, v4}, Linfo/flowersoft/theotown/util/AssetBasedTranslationManager;->getPatchArr(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_1e

    .line 290
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_21
    move v2, v1

    .line 292
    :goto_22
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3e

    .line 293
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 294
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Linfo/flowersoft/theotown/util/AssetBasedTranslationManager;->getPatchArr(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_3b

    .line 295
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 297
    :cond_3e
    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7f

    move v2, v1

    .line 298
    :goto_45
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7f

    .line 299
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 300
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Linfo/flowersoft/theotown/util/AssetBasedTranslationManager;->getPatchArr(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_7c

    .line 301
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7c
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 305
    :cond_7f
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_87

    const/4 p1, 0x0

    return-object p1

    .line 309
    :cond_87
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    move p2, v1

    .line 310
    :goto_8d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_bb

    .line 311
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/util/json/JSONArray;

    move v3, v1

    .line 312
    :goto_9a
    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_b8

    .line 313
    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->optJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_b5

    .line 315
    const-string v5, "name"

    invoke-virtual {v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 316
    const-string v6, "value"

    invoke-virtual {v4, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 317
    invoke-interface {p1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b5
    add-int/lit8 v3, v3, 0x1

    goto :goto_9a

    :cond_b8
    add-int/lit8 p2, p2, 0x1

    goto :goto_8d

    :cond_bb
    return-object p1
.end method

.method public getDefaultLocale()Ljava/util/Locale;
    .registers 2

    .line 340
    sget-object v0, Linfo/flowersoft/theotown/util/AssetBasedTranslationManager;->defaultLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getEffectiveLocale()Ljava/util/Locale;
    .registers 2

    .line 331
    iget-object v0, p0, Linfo/flowersoft/theotown/util/AssetBasedTranslationManager;->setLocale:Ljava/util/Locale;

    if-nez v0, :cond_8

    .line 332
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/AssetBasedTranslationManager;->getDefaultLocale()Ljava/util/Locale;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .registers 2

    .line 131
    iget-object v0, p0, Linfo/flowersoft/theotown/util/AssetBasedTranslationManager;->effectiveLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public final getPatchArr(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;
    .registers 8

    .line 135
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/util/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 136
    instance-of p2, p1, Linfo/flowersoft/theotown/util/json/JSONArray;

    if-eqz p2, :cond_b

    .line 137
    check-cast p1, Linfo/flowersoft/theotown/util/json/JSONArray;

    return-object p1

    .line 138
    :cond_b
    instance-of p2, p1, Linfo/flowersoft/theotown/util/json/JSONObject;

    if-eqz p2, :cond_45

    .line 139
    new-instance p2, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {p2}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    .line 140
    check-cast p1, Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 141
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 142
    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 143
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 145
    :try_start_26
    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 147
    new-instance v3, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v3}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 148
    const-string v4, "name"

    invoke-virtual {v3, v4, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 149
    const-string v1, "value"

    invoke-virtual {v3, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 150
    invoke-virtual {p2, v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;
    :try_end_3e
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_26 .. :try_end_3e} :catch_3f

    goto :goto_1a

    :catch_3f
    move-exception v1

    .line 153
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1a

    :cond_44
    return-object p2

    :cond_45
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSelectedLocale()Ljava/util/Locale;
    .registers 2

    .line 326
    iget-object v0, p0, Linfo/flowersoft/theotown/util/AssetBasedTranslationManager;->setLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public prefersRTL()Z
    .registers 3

    .line 124
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/AssetBasedTranslationManager;->getEffectiveLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 126
    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "fa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    return v0

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    return v0
.end method

.method public setLanguage(Ljava/util/Locale;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/util/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 164
    iput-object p1, p0, Linfo/flowersoft/theotown/util/AssetBasedTranslationManager;->setLocale:Ljava/util/Locale;

    if-eqz p1, :cond_6

    move-object v0, p1

    goto :goto_a

    .line 166
    :cond_6
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/AssetBasedTranslationManager;->getDefaultLocale()Ljava/util/Locale;

    move-result-object v0

    :goto_a
    iput-object v0, p0, Linfo/flowersoft/theotown/util/AssetBasedTranslationManager;->effectiveLocale:Ljava/util/Locale;

    if-nez p1, :cond_f

    move-object p1, v0

    .line 171
    :cond_f
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    const-string v0, ""

    .line 172
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    const-string v0, "HK"

    .line 173
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    const-string v0, "CN"

    .line 174
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 175
    new-instance p1, Ljava/util/Locale;

    const-string v0, "tw"

    invoke-direct {p1, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_46
    invoke-static {p1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 179
    invoke-static {p1}, Linfo/flowersoft/theotown/util/AssetBasedTranslationManager;->getTranslationIndex(Ljava/util/Locale;)I

    move-result p1

    .line 182
    :try_start_4d
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONObject;

    iget-object v1, p0, Linfo/flowersoft/theotown/util/AssetBasedTranslationManager;->indexFile:Lcom/badlogic/gdx/files/FileHandle;

    invoke-static {v1}, Linfo/flowersoft/theotown/util/Files;->readTextFile(Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 183
    const-string v1, "creation id"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide v3, 0x1a177ebc6a2L

    cmp-long v1, v1, v3

    if-nez v1, :cond_cd

    .line 188
    const-string v1, "translation files"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v0

    .line 189
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 190
    iget-object v0, p0, Linfo/flowersoft/theotown/util/AssetBasedTranslationManager;->fileResolver:Linfo/flowersoft/theotown/util/AssetBasedTranslationManager$FileResolver;

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/util/AssetBasedTranslationManager$FileResolver;->resolve(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    .line 192
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/util/zip/GZIPInputStream;

    .line 193
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 194
    new-instance p1, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    const/4 v0, 0x1

    .line 197
    :goto_99
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_ae

    .line 198
    iget-object v1, p0, Linfo/flowersoft/theotown/util/AssetBasedTranslationManager;->translations:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_a7} :catch_ac
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_4d .. :try_end_a7} :catch_aa

    add-int/lit8 v0, v0, 0x1

    goto :goto_99

    :catch_aa
    move-exception p1

    goto :goto_d5

    :catch_ac
    move-exception p1

    goto :goto_db

    .line 206
    :cond_ae
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {p1}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object p1

    sget-object v0, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne p1, v0, :cond_bd

    .line 207
    const-string p1, "_onmouseinput"

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/AssetBasedTranslationManager;->activateTaggedTranslations(Ljava/lang/String;)V

    :cond_bd
    if-eqz p2, :cond_c6

    .line 212
    iget-object p1, p0, Linfo/flowersoft/theotown/util/AssetBasedTranslationManager;->effectiveLocale:Ljava/util/Locale;

    invoke-virtual {p0, p2, p1}, Linfo/flowersoft/theotown/util/AssetBasedTranslationManager;->collectPatches(Ljava/util/List;Ljava/util/Locale;)Ljava/util/Map;

    move-result-object p1

    goto :goto_c7

    :cond_c6
    const/4 p1, 0x0

    :goto_c7
    if-eqz p1, :cond_cc

    .line 216
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/AssetBasedTranslationManager;->applyPatches(Ljava/util/Map;)V

    :cond_cc
    return-void

    .line 185
    :cond_cd
    :try_start_cd
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Translation file doesn\'t match class file"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_d5} :catch_ac
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_cd .. :try_end_d5} :catch_aa

    .line 203
    :goto_d5
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 201
    :goto_db
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public translate(I)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    if-lt p1, v0, :cond_b

    .line 116
    iget-object v0, p0, Linfo/flowersoft/theotown/util/AssetBasedTranslationManager;->translations:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_b

    .line 117
    aget-object p1, v0, p1

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

###### Class info.flowersoft.theotown.util.AssetBasedTranslationManager.FileResolver (info.flowersoft.theotown.util.AssetBasedTranslationManager$FileResolver)
.class public interface abstract Linfo/flowersoft/theotown/util/AssetBasedTranslationManager$FileResolver;
.super Ljava/lang/Object;
.source "AssetBasedTranslationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/util/AssetBasedTranslationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FileResolver"
.end annotation


# virtual methods
.method public abstract resolve(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
.end method
