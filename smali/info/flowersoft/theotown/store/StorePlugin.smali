###### Class info.flowersoft.theotown.store.StorePlugin (info.flowersoft.theotown.store.StorePlugin)
.class public Linfo/flowersoft/theotown/store/StorePlugin;
.super Ljava/lang/Object;
.source "StorePlugin.java"


# instance fields
.field public allowComments:Z

.field public final author:Ljava/lang/String;

.field public final authorColor:Lio/blueflower/stapel2d/drawing/Color;

.field public final authorId:I

.field public final available:Z

.field public category:Linfo/flowersoft/theotown/store/StoreCategory;

.field public final certifiedPluginQuality:Z

.field public comments:I

.field public description:Ljava/lang/String;

.field public final downloads:I

.field public final featured:Z

.field public final hash:Ljava/lang/String;

.field public final img:Ljava/lang/String;

.field public final imgThumb:Ljava/lang/String;

.field public final lastUpdate:J

.field public final pluginId:I

.field public final price:I

.field public ratingCount:I

.field public ratingSum:I

.field public final revisionId:I

.field public final size:J

.field public title:Ljava/lang/String;

.field public final version:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/store/ManagedPluginFile;)V
    .registers 6

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getPluginId()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->pluginId:I

    .line 66
    invoke-virtual {p1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getRevisionId()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->revisionId:I

    .line 67
    invoke-virtual {p1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getVersion()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->version:I

    .line 68
    invoke-virtual {p1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->title:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->description:Ljava/lang/String;

    .line 70
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->translatePlugins:Z

    if-eqz v0, :cond_35

    .line 71
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->translateInline(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->title:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->translateInline(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->description:Ljava/lang/String;

    .line 74
    :cond_35
    invoke-virtual {p1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getAuthorId()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->authorId:I

    .line 75
    const-string v0, ""

    iput-object v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->img:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->imgThumb:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->hash:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getFileSize()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->size:J

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->ratingSum:I

    const/4 v1, -0x1

    .line 80
    iput v1, p0, Linfo/flowersoft/theotown/store/StorePlugin;->ratingCount:I

    .line 81
    iput v1, p0, Linfo/flowersoft/theotown/store/StorePlugin;->downloads:I

    .line 82
    invoke-virtual {p1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getLastUpdate()J

    move-result-wide v2

    iput-wide v2, p0, Linfo/flowersoft/theotown/store/StorePlugin;->lastUpdate:J

    .line 83
    invoke-virtual {p1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getAuthor()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Linfo/flowersoft/theotown/store/StorePlugin;->author:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getAuthorColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/store/StorePlugin;->authorColor:Lio/blueflower/stapel2d/drawing/Color;

    .line 85
    iput-boolean v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->certifiedPluginQuality:Z

    .line 86
    iput v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->price:I

    .line 87
    iput-boolean v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->featured:Z

    .line 88
    iput-boolean v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->available:Z

    .line 89
    iput v1, p0, Linfo/flowersoft/theotown/store/StorePlugin;->comments:I

    .line 90
    iput-boolean v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->allowComments:Z

    const/4 p1, 0x0

    .line 91
    iput-object p1, p0, Linfo/flowersoft/theotown/store/StorePlugin;->category:Linfo/flowersoft/theotown/store/StoreCategory;

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/util/json/JSONObject;Lio/blueflower/stapel2d/gamestack/Translator;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const-string v0, "plugin_id"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->pluginId:I

    .line 96
    const-string v0, "revision_id"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->revisionId:I

    .line 97
    const-string v0, "version"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->version:I

    .line 98
    const-string v0, "title"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->title:Ljava/lang/String;

    .line 99
    const-string v0, "description"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->description:Ljava/lang/String;

    .line 100
    const-string v0, "author_id"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->authorId:I

    .line 101
    const-string v0, "img"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->img:Ljava/lang/String;

    .line 102
    const-string v0, "img_thumb"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->imgThumb:Ljava/lang/String;

    .line 103
    const-string v0, "hash"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->hash:Ljava/lang/String;

    .line 104
    const-string v0, "size"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->size:J

    .line 105
    const-string v0, "rating_sum"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->ratingSum:I

    .line 106
    const-string v0, "rating_count"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->ratingCount:I

    .line 107
    const-string v0, "downloads"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->downloads:I

    .line 108
    const-string v0, "last_update"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->lastUpdate:J

    .line 109
    const-string v0, "author_name"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->author:Ljava/lang/String;

    .line 110
    const-string v0, "author_color"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->authorColor:Lio/blueflower/stapel2d/drawing/Color;

    .line 111
    const-string v0, "cpq"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->certifiedPluginQuality:Z

    .line 112
    const-string v0, "price"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->price:I

    .line 113
    const-string v0, "featured"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->featured:Z

    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->available:Z

    .line 115
    const-string v1, "comments"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/store/StorePlugin;->comments:I

    .line 116
    const-string v1, "allow_comments"

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_b4

    goto :goto_b5

    :cond_b4
    const/4 v0, 0x0

    :goto_b5
    iput-boolean v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->allowComments:Z

    .line 117
    new-instance v0, Linfo/flowersoft/theotown/store/StoreCategory;

    const-string v1, "category"

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Linfo/flowersoft/theotown/store/StoreCategory;-><init>(Linfo/flowersoft/theotown/util/json/JSONObject;Lio/blueflower/stapel2d/gamestack/Translator;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->category:Linfo/flowersoft/theotown/store/StoreCategory;

    return-void
.end method


# virtual methods
.method public allowsComments()Z
    .registers 2

    .line 217
    iget-boolean v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->allowComments:Z

    return v0
.end method

.method public getAuthor()Ljava/lang/String;
    .registers 2

    .line 185
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 189
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->authorColor:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public getAuthorId()I
    .registers 2

    .line 149
    iget v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->authorId:I

    return v0
.end method

.method public getCategory()Linfo/flowersoft/theotown/store/StoreCategory;
    .registers 2

    .line 221
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->category:Linfo/flowersoft/theotown/store/StoreCategory;

    return-object v0
.end method

.method public getComments()I
    .registers 2

    .line 209
    iget v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->comments:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 145
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloads()I
    .registers 2

    .line 177
    iget v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->downloads:I

    return v0
.end method

.method public getImg()Ljava/lang/String;
    .registers 2

    .line 153
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getImgThumb()Ljava/lang/String;
    .registers 2

    .line 157
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->imgThumb:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginId()I
    .registers 2

    .line 129
    iget v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->pluginId:I

    return v0
.end method

.method public getPrice()I
    .registers 2

    .line 125
    iget v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->price:I

    return v0
.end method

.method public getRatingCount()I
    .registers 2

    .line 173
    iget v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->ratingCount:I

    return v0
.end method

.method public getRatingSum()I
    .registers 2

    .line 169
    iget v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->ratingSum:I

    return v0
.end method

.method public getRevisionId()I
    .registers 2

    .line 133
    iget v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->revisionId:I

    return v0
.end method

.method public getSize()J
    .registers 3

    .line 165
    iget-wide v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->size:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 141
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .line 137
    iget v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->version:I

    return v0
.end method

.method public isAvailable()Z
    .registers 2

    .line 121
    iget-boolean v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->available:Z

    return v0
.end method

.method public isCertifiedPluginQuality()Z
    .registers 2

    .line 193
    iget-boolean v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->certifiedPluginQuality:Z

    return v0
.end method

.method public isFeatured()Z
    .registers 2

    .line 197
    iget-boolean v0, p0, Linfo/flowersoft/theotown/store/StorePlugin;->featured:Z

    return v0
.end method

.method public setAllowComments(Z)V
    .registers 2

    .line 225
    iput-boolean p1, p0, Linfo/flowersoft/theotown/store/StorePlugin;->allowComments:Z

    return-void
.end method

.method public setRatingCount(I)V
    .registers 2

    .line 205
    iput p1, p0, Linfo/flowersoft/theotown/store/StorePlugin;->ratingCount:I

    return-void
.end method

.method public setRatingSum(I)V
    .registers 2

    .line 201
    iput p1, p0, Linfo/flowersoft/theotown/store/StorePlugin;->ratingSum:I

    return-void
.end method
