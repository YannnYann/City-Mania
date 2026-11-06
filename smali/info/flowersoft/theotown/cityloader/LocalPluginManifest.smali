###### Class info.flowersoft.theotown.cityloader.LocalPluginManifest (info.flowersoft.theotown.cityloader.LocalPluginManifest)
.class public Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;
.super Ljava/lang/Object;
.source "LocalPluginManifest.java"


# instance fields
.field public active:Z

.field public author:Ljava/lang/String;

.field public category:Z

.field public id:Ljava/lang/String;

.field public isLoaded:Z

.field public manifestPath:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

.field public minVersion:I

.field public multiplayer:Z

.field public occurrences:I

.field public once:Z

.field public permanent:Z

.field public platforms:[Ljava/lang/String;

.field public pluginPath:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

.field public size:J

.field public text:Ljava/lang/String;

.field public thumbnail:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->text:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->thumbnail:Ljava/lang/String;

    const/4 v1, 0x1

    .line 21
    iput-boolean v1, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->category:Z

    .line 22
    iput-object v0, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->url:Ljava/lang/String;

    const/4 v2, 0x0

    .line 23
    iput v2, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->minVersion:I

    .line 25
    iput-boolean v2, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->permanent:Z

    .line 26
    iput-boolean v1, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->multiplayer:Z

    .line 27
    iput-boolean v2, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->once:Z

    .line 34
    iput-boolean v1, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->active:Z

    .line 35
    iput-boolean v2, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->isLoaded:Z

    .line 38
    const-string v3, "id"

    invoke-virtual {p1, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->id:Ljava/lang/String;

    .line 39
    const-string v3, "version"

    invoke-virtual {p1, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->version:I

    .line 40
    const-string v3, "title"

    invoke-virtual {p1, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->title:Ljava/lang/String;

    .line 41
    const-string v3, "text"

    invoke-virtual {p1, v3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->text:Ljava/lang/String;

    .line 42
    const-string v3, "author"

    invoke-virtual {p1, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->author:Ljava/lang/String;

    .line 43
    const-string v3, "thumbnail"

    invoke-virtual {p1, v3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->thumbnail:Ljava/lang/String;

    .line 44
    const-string v3, "category"

    invoke-virtual {p1, v3, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->category:Z

    .line 45
    const-string v3, "url"

    invoke-virtual {p1, v3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->url:Ljava/lang/String;

    .line 46
    const-string v3, "min version"

    invoke-virtual {p1, v3, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->minVersion:I

    .line 47
    const-string v3, "permanent"

    invoke-virtual {p1, v3, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->permanent:Z

    .line 48
    const-string v3, "multiplayer"

    invoke-virtual {p1, v3, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->multiplayer:Z

    .line 49
    const-string v1, "once"

    invoke-virtual {p1, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->once:Z

    .line 51
    const-string v1, "platforms"

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ac

    .line 52
    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_ac

    .line 54
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->platforms:[Ljava/lang/String;

    .line 55
    :goto_91
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_ac

    .line 56
    iget-object v1, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->platforms:[Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_91

    .line 61
    :cond_ac
    iget-object p1, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->id:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_c5

    .line 62
    iget-object p1, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->title:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_bd

    return-void

    :cond_bd
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Title may not be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_c5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Id may not be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->text:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->thumbnail:Ljava/lang/String;

    const/4 v1, 0x1

    .line 21
    iput-boolean v1, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->category:Z

    .line 22
    iput-object v0, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->url:Ljava/lang/String;

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->minVersion:I

    .line 25
    iput-boolean v0, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->permanent:Z

    .line 26
    iput-boolean v1, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->multiplayer:Z

    .line 27
    iput-boolean v0, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->once:Z

    .line 34
    iput-boolean v1, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->active:Z

    .line 35
    iput-boolean v0, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->isLoaded:Z

    .line 66
    :goto_1b
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_154

    .line 67
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_156

    goto/16 :goto_cf

    :sswitch_32
    const-string v4, "min version"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    goto/16 :goto_cf

    :cond_3c
    const/16 v3, 0xc

    goto/16 :goto_cf

    :sswitch_40
    const-string v4, "thumbnail"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a

    goto/16 :goto_cf

    :cond_4a
    const/16 v3, 0xb

    goto/16 :goto_cf

    :sswitch_4e
    const-string v4, "occurrences"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_58

    goto/16 :goto_cf

    :cond_58
    const/16 v3, 0xa

    goto/16 :goto_cf

    :sswitch_5c
    const-string v4, "permanent"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_66

    goto/16 :goto_cf

    :cond_66
    const/16 v3, 0x9

    goto/16 :goto_cf

    :sswitch_6a
    const-string v4, "version"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_74

    goto/16 :goto_cf

    :cond_74
    const/16 v3, 0x8

    goto/16 :goto_cf

    :sswitch_78
    const-string v4, "title"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_81

    goto :goto_cf

    :cond_81
    const/4 v3, 0x7

    goto :goto_cf

    :sswitch_83
    const-string v4, "text"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8c

    goto :goto_cf

    :cond_8c
    const/4 v3, 0x6

    goto :goto_cf

    :sswitch_8e
    const-string v4, "size"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_97

    goto :goto_cf

    :cond_97
    const/4 v3, 0x5

    goto :goto_cf

    :sswitch_99
    const-string v4, "once"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a2

    goto :goto_cf

    :cond_a2
    const/4 v3, 0x4

    goto :goto_cf

    :sswitch_a4
    const-string v4, "url"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ad

    goto :goto_cf

    :cond_ad
    const/4 v3, 0x3

    goto :goto_cf

    :sswitch_af
    const-string v4, "id"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b8

    goto :goto_cf

    :cond_b8
    const/4 v3, 0x2

    goto :goto_cf

    :sswitch_ba
    const-string v4, "author"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c3

    goto :goto_cf

    :cond_c3
    move v3, v1

    goto :goto_cf

    :sswitch_c5
    const-string v4, "platforms"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ce

    goto :goto_cf

    :cond_ce
    move v3, v0

    :goto_cf
    packed-switch v3, :pswitch_data_18c

    .line 114
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto/16 :goto_1b

    .line 87
    :pswitch_d7
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v2

    iput v2, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->minVersion:I

    goto/16 :goto_1b

    .line 84
    :pswitch_df
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->thumbnail:Ljava/lang/String;

    goto/16 :goto_1b

    .line 90
    :pswitch_e7
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v2

    iput v2, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->occurrences:I

    goto/16 :goto_1b

    .line 99
    :pswitch_ef
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextBoolean()Z

    move-result v2

    iput-boolean v2, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->permanent:Z

    goto/16 :goto_1b

    .line 72
    :pswitch_f7
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v2

    iput v2, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->version:I

    goto/16 :goto_1b

    .line 75
    :pswitch_ff
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->title:Ljava/lang/String;

    goto/16 :goto_1b

    .line 78
    :pswitch_107
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->text:Ljava/lang/String;

    goto/16 :goto_1b

    .line 93
    :pswitch_10f
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v2

    iput-wide v2, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->size:J

    goto/16 :goto_1b

    .line 102
    :pswitch_117
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextBoolean()Z

    move-result v2

    iput-boolean v2, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->once:Z

    goto/16 :goto_1b

    .line 96
    :pswitch_11f
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->url:Ljava/lang/String;

    goto/16 :goto_1b

    .line 69
    :pswitch_127
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->id:Ljava/lang/String;

    goto/16 :goto_1b

    .line 81
    :pswitch_12f
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->author:Ljava/lang/String;

    goto/16 :goto_1b

    .line 105
    :pswitch_137
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 106
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v2

    .line 107
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->platforms:[Ljava/lang/String;

    move v3, v0

    :goto_143
    if-ge v3, v2, :cond_14f

    .line 109
    iget-object v4, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->platforms:[Ljava/lang/String;

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    add-int/2addr v3, v1

    goto :goto_143

    .line 111
    :cond_14f
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_1b

    :cond_154
    return-void

    nop

    :sswitch_data_156
    .sparse-switch
        -0x781059a0 -> :sswitch_c5
        -0x53d2de75 -> :sswitch_ba
        0xd1b -> :sswitch_af
        0x1c56f -> :sswitch_a4
        0x341e81 -> :sswitch_99
        0x35e001 -> :sswitch_8e
        0x36452d -> :sswitch_83
        0x6942258 -> :sswitch_78
        0x14f51cd8 -> :sswitch_6a
        0x27d854ae -> :sswitch_5c
        0x2ec250c2 -> :sswitch_4e
        0x4f4e50ec -> :sswitch_40
        0x5e01ed0a -> :sswitch_32
    .end sparse-switch

    :pswitch_data_18c
    .packed-switch 0x0
        :pswitch_137
        :pswitch_12f
        :pswitch_127
        :pswitch_11f
        :pswitch_117
        :pswitch_10f
        :pswitch_107
        :pswitch_ff
        :pswitch_f7
        :pswitch_ef
        :pswitch_e7
        :pswitch_df
        :pswitch_d7
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 263
    instance-of v0, p1, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 264
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->id:Ljava/lang/String;

    if-eqz v0, :cond_15

    check-cast p1, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;

    iget-object p1, p1, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    const/4 p1, 0x1

    return p1

    :cond_15
    return v1
.end method

.method public getAuthor()Ljava/lang/String;
    .registers 2

    .line 192
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 176
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMinVersion()I
    .registers 2

    .line 208
    iget v0, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->minVersion:I

    return v0
.end method

.method public getPluginPath()Linfo/flowersoft/theotown/util/vfs/AbstractFile;
    .registers 2

    .line 168
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->pluginPath:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    return-object v0
.end method

.method public getSize()J
    .registers 3

    .line 144
    iget-wide v0, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->size:J

    return-wide v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .line 188
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 184
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .line 180
    iget v0, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->version:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 271
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->id:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public isActive()Z
    .registers 2

    .line 212
    iget-boolean v0, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->active:Z

    return v0
.end method

.method public isLoaded()Z
    .registers 2

    .line 220
    iget-boolean v0, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->isLoaded:Z

    return v0
.end method

.method public isMultiplayer()Z
    .registers 2

    .line 232
    iget-boolean v0, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->multiplayer:Z

    return v0
.end method

.method public isOnce()Z
    .registers 2

    .line 236
    iget-boolean v0, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->once:Z

    return v0
.end method

.method public isPermanent()Z
    .registers 2

    .line 228
    iget-boolean v0, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->permanent:Z

    return v0
.end method

.method public final limitString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_f

    .line 276
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_f

    const/4 v0, 0x0

    .line 277
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_f
    return-object p1
.end method

.method public requiresRestart()Z
    .registers 3

    .line 258
    iget-boolean v0, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->active:Z

    iget-boolean v1, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->isLoaded:Z

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    const-string v0, "id"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 122
    const-string v0, "version"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->version:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 123
    const-string v0, "title"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->title:Ljava/lang/String;

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->limitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 124
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3c

    const-string v0, "text"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->text:Ljava/lang/String;

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->limitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 125
    :cond_3c
    const-string v0, "author"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->author:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 126
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->thumbnail:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5e

    const-string v0, "thumbnail"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->thumbnail:Ljava/lang/String;

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->limitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 127
    :cond_5e
    iget v0, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->minVersion:I

    if-lez v0, :cond_6d

    const-string v0, "min version"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->minVersion:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 128
    :cond_6d
    iget v0, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->occurrences:I

    if-lez v0, :cond_7c

    const-string v0, "occurrences"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->occurrences:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 129
    :cond_7c
    const-string v0, "size"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-wide v1, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->size:J

    invoke-interface {v0, v1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 130
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9e

    const-string v0, "url"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->url:Ljava/lang/String;

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->limitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 131
    :cond_9e
    iget-boolean v0, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->permanent:Z

    if-eqz v0, :cond_ad

    const-string v0, "permanent"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-boolean v1, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->permanent:Z

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Z)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 132
    :cond_ad
    iget-boolean v0, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->once:Z

    if-eqz v0, :cond_bc

    const-string v0, "once"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-boolean v1, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->once:Z

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Z)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 133
    :cond_bc
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->platforms:[Ljava/lang/String;

    if-eqz v0, :cond_e3

    array-length v0, v0

    if-lez v0, :cond_e3

    .line 134
    const-string v0, "platforms"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 135
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->platforms:[Ljava/lang/String;

    array-length v0, v0

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    const/4 v0, 0x0

    .line 136
    :goto_d3
    iget-object v1, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->platforms:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_e0

    .line 137
    aget-object v1, v1, v0

    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_d3

    .line 139
    :cond_e0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    :cond_e3
    return-void
.end method

.method public setActive(Z)V
    .registers 2

    .line 216
    iput-boolean p1, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->active:Z

    return-void
.end method

.method public setLoaded(Z)V
    .registers 2

    .line 224
    iput-boolean p1, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->isLoaded:Z

    return-void
.end method

.method public setManifestPath(Linfo/flowersoft/theotown/util/vfs/AbstractFile;)V
    .registers 2

    .line 164
    iput-object p1, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->manifestPath:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    return-void
.end method

.method public setOccurrences(I)V
    .registers 2

    .line 156
    iput p1, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->occurrences:I

    return-void
.end method

.method public setPluginPath(Linfo/flowersoft/theotown/util/vfs/AbstractFile;)V
    .registers 2

    .line 172
    iput-object p1, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->pluginPath:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    return-void
.end method

.method public setSize(J)V
    .registers 3

    .line 148
    iput-wide p1, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->size:J

    return-void
.end method

.method public supportsPlatform(Ljava/lang/String;)Z
    .registers 7

    .line 244
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->platforms:[Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_2a

    array-length v0, v0

    if-nez v0, :cond_9

    goto :goto_2a

    :cond_9
    const/4 v0, 0x0

    if-nez p1, :cond_d

    return v0

    .line 246
    :cond_d
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    move v2, v0

    .line 247
    :goto_18
    iget-object v3, p0, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->platforms:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_29

    .line 248
    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    return v1

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_29
    return v0

    :cond_2a
    :goto_2a
    return v1
.end method
