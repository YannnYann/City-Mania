###### Class info.flowersoft.theotown.online.VirtualCity (info.flowersoft.theotown.online.VirtualCity)
.class public Linfo/flowersoft/theotown/online/VirtualCity;
.super Ljava/lang/Object;
.source "VirtualCity.java"


# instance fields
.field public allowComments:Z

.field public final cityName:Ljava/lang/String;

.field public final comments:I

.field public final downloads:I

.field public final file:Ljava/lang/String;

.field public final firstFile:Ljava/lang/String;

.field public final id:I

.field public final name:Ljava/lang/String;

.field public final newGifts:I

.field public owner:Linfo/flowersoft/theotown/online/VirtualUser;

.field public final prtc:Z

.field public final reports:I

.field public final time:J


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "id"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/online/VirtualCity;->id:I

    .line 23
    const-string v0, "name"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/online/VirtualCity;->name:Ljava/lang/String;

    .line 24
    const-string v0, "city_name"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/online/VirtualCity;->cityName:Ljava/lang/String;

    .line 25
    const-string v0, "file"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/online/VirtualCity;->file:Ljava/lang/String;

    .line 26
    const-string v0, "first_file"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/online/VirtualCity;->firstFile:Ljava/lang/String;

    .line 27
    const-string v0, "time"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/online/VirtualCity;->time:J

    .line 28
    const-string v0, "comments"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/online/VirtualCity;->comments:I

    .line 29
    const-string v0, "reports"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/online/VirtualCity;->reports:I

    .line 30
    const-string v0, "protected"

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4f

    move v0, v2

    goto :goto_50

    :cond_4f
    move v0, v1

    :goto_50
    iput-boolean v0, p0, Linfo/flowersoft/theotown/online/VirtualCity;->prtc:Z

    .line 31
    const-string v0, "new_gifts"

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/online/VirtualCity;->newGifts:I

    .line 32
    const-string v0, "downloads"

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/online/VirtualCity;->downloads:I

    .line 33
    const-string v0, "allow_comments"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6b

    move v1, v2

    :cond_6b
    iput-boolean v1, p0, Linfo/flowersoft/theotown/online/VirtualCity;->allowComments:Z

    .line 35
    const-string v0, "owner"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 36
    new-instance v1, Linfo/flowersoft/theotown/online/VirtualUser;

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    invoke-direct {v1, p1}, Linfo/flowersoft/theotown/online/VirtualUser;-><init>(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    iput-object v1, p0, Linfo/flowersoft/theotown/online/VirtualCity;->owner:Linfo/flowersoft/theotown/online/VirtualUser;

    :cond_80
    return-void
.end method


# virtual methods
.method public allowsComments()Z
    .registers 2

    .line 89
    iget-boolean v0, p0, Linfo/flowersoft/theotown/online/VirtualCity;->allowComments:Z

    return v0
.end method

.method public getComments()I
    .registers 2

    .line 69
    iget v0, p0, Linfo/flowersoft/theotown/online/VirtualCity;->comments:I

    return v0
.end method

.method public getDownloads()I
    .registers 2

    .line 85
    iget v0, p0, Linfo/flowersoft/theotown/online/VirtualCity;->downloads:I

    return v0
.end method

.method public getFile()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Linfo/flowersoft/theotown/online/VirtualCity;->file:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstFile()Ljava/lang/String;
    .registers 2

    .line 57
    iget-object v0, p0, Linfo/flowersoft/theotown/online/VirtualCity;->firstFile:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .line 41
    iget v0, p0, Linfo/flowersoft/theotown/online/VirtualCity;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Linfo/flowersoft/theotown/online/VirtualCity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNewGifts()I
    .registers 2

    .line 81
    iget v0, p0, Linfo/flowersoft/theotown/online/VirtualCity;->newGifts:I

    return v0
.end method

.method public getOwner()Linfo/flowersoft/theotown/online/VirtualUser;
    .registers 2

    .line 65
    iget-object v0, p0, Linfo/flowersoft/theotown/online/VirtualCity;->owner:Linfo/flowersoft/theotown/online/VirtualUser;

    return-object v0
.end method

.method public getReports()I
    .registers 2

    .line 73
    iget v0, p0, Linfo/flowersoft/theotown/online/VirtualCity;->reports:I

    return v0
.end method

.method public getTime()J
    .registers 3

    .line 61
    iget-wide v0, p0, Linfo/flowersoft/theotown/online/VirtualCity;->time:J

    return-wide v0
.end method

.method public isProtected()Z
    .registers 2

    .line 77
    iget-boolean v0, p0, Linfo/flowersoft/theotown/online/VirtualCity;->prtc:Z

    return v0
.end method

.method public setAllowComments(Z)V
    .registers 2

    .line 93
    iput-boolean p1, p0, Linfo/flowersoft/theotown/online/VirtualCity;->allowComments:Z

    return-void
.end method
