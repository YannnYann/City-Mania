###### Class info.flowersoft.theotown.online.VirtualRegion (info.flowersoft.theotown.online.VirtualRegion)
.class public Linfo/flowersoft/theotown/online/VirtualRegion;
.super Ljava/lang/Object;
.source "VirtualRegion.java"


# instance fields
.field public allowComments:Z

.field public final allowPlugins:Z

.field public final allowSandbox:Z

.field public cities:[Linfo/flowersoft/theotown/online/VirtualCity;

.field public final comments:I

.field public final enforcePassword:Z

.field public extra:Linfo/flowersoft/theotown/util/json/JSONObject;

.field public final freeCities:I

.field public final headersFile:Ljava/lang/String;

.field public final icon:Ljava/lang/String;

.field public final id:I

.field public final idToCity:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Linfo/flowersoft/theotown/online/VirtualCity;",
            ">;"
        }
    .end annotation
.end field

.field public final infos:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final newGifts:I

.field public owner:Linfo/flowersoft/theotown/online/VirtualUser;

.field public final passwordProtected:Z

.field public final reports:I

.field public final rules:Ljava/lang/String;

.field public final rulesTime:J

.field public tags:[I

.field public final time:J

.field public final totalCities:I

.field public final userCities:I

.field public valid:Z

.field public final winter:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->idToCity:Ljava/util/Map;

    .line 39
    const-string v0, "id"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->id:I

    .line 40
    const-string v0, "icon"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->icon:Ljava/lang/String;

    .line 41
    const-string v0, "name"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->name:Ljava/lang/String;

    .line 42
    const-string v0, "headers_file"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->headersFile:Ljava/lang/String;

    .line 43
    const-string v0, "time"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->time:J

    .line 44
    const-string v0, "password"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->passwordProtected:Z

    .line 45
    const-string v3, "comments"

    invoke-virtual {p1, v3, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->comments:I

    .line 46
    const-string v3, "total cities"

    invoke-virtual {p1, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->totalCities:I

    .line 47
    const-string v3, "free cities"

    invoke-virtual {p1, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->freeCities:I

    .line 48
    const-string v3, "user cities"

    invoke-virtual {p1, v3, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->userCities:I

    .line 49
    const-string v3, "allow_plugins"

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_68

    move v3, v4

    goto :goto_69

    :cond_68
    move v3, v2

    :goto_69
    iput-boolean v3, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->allowPlugins:Z

    .line 50
    const-string v3, "allow_sandbox"

    invoke-virtual {p1, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_75

    move v3, v4

    goto :goto_76

    :cond_75
    move v3, v2

    :goto_76
    iput-boolean v3, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->allowSandbox:Z

    .line 51
    const-string v3, "rules"

    invoke-virtual {p1, v3, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->rules:Ljava/lang/String;

    .line 52
    const-string v3, "infos"

    invoke-virtual {p1, v3, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->infos:Ljava/lang/String;

    .line 53
    const-string v1, "rules_time"

    const-wide/16 v5, 0x0

    invoke-virtual {p1, v1, v5, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->rulesTime:J

    .line 54
    const-string v1, "enforce_password"

    invoke-virtual {p1, v1, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9e

    if-eqz v0, :cond_9e

    move v0, v4

    goto :goto_9f

    :cond_9e
    move v0, v2

    :goto_9f
    iput-boolean v0, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->enforcePassword:Z

    .line 55
    const-string v0, "reports"

    invoke-virtual {p1, v0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->reports:I

    .line 56
    const-string v0, "winter"

    invoke-virtual {p1, v0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->winter:I

    .line 58
    :try_start_b1
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "extra"

    const-string v3, "{}"

    invoke-virtual {p1, v1, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->extra:Linfo/flowersoft/theotown/util/json/JSONObject;
    :try_end_c0
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_b1 .. :try_end_c0} :catch_c1

    goto :goto_c8

    .line 60
    :catch_c1
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->extra:Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 62
    :goto_c8
    const-string v0, "new_gifts"

    invoke-virtual {p1, v0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->newGifts:I

    .line 63
    const-string v0, "allow_comments"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_da

    move v0, v4

    goto :goto_db

    :cond_da
    move v0, v2

    :goto_db
    iput-boolean v0, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->allowComments:Z

    .line 65
    const-string v0, "tags"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_103

    .line 66
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->tags:[I

    move v1, v2

    .line 68
    :goto_f2
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_107

    .line 69
    iget-object v3, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->tags:[I

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->getInt(I)I

    move-result v5

    aput v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_f2

    .line 72
    :cond_103
    new-array v0, v2, [I

    iput-object v0, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->tags:[I

    .line 75
    :cond_107
    const-string v0, "cities"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_146

    .line 76
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Linfo/flowersoft/theotown/online/VirtualCity;

    iput-object v1, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->cities:[Linfo/flowersoft/theotown/online/VirtualCity;

    .line 78
    :goto_11b
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_146

    .line 79
    iget-object v1, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->cities:[Linfo/flowersoft/theotown/online/VirtualCity;

    new-instance v3, Linfo/flowersoft/theotown/online/VirtualCity;

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->getJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v5

    invoke-direct {v3, v5}, Linfo/flowersoft/theotown/online/VirtualCity;-><init>(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    aput-object v3, v1, v2

    .line 80
    iget-object v1, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->idToCity:Ljava/util/Map;

    iget-object v3, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->cities:[Linfo/flowersoft/theotown/online/VirtualCity;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Linfo/flowersoft/theotown/online/VirtualCity;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v5, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->cities:[Linfo/flowersoft/theotown/online/VirtualCity;

    aget-object v5, v5, v2

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_11b

    .line 84
    :cond_146
    const-string v0, "owner"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_159

    .line 85
    new-instance v1, Linfo/flowersoft/theotown/online/VirtualUser;

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    invoke-direct {v1, p1}, Linfo/flowersoft/theotown/online/VirtualUser;-><init>(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    iput-object v1, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->owner:Linfo/flowersoft/theotown/online/VirtualUser;

    .line 87
    :cond_159
    iput-boolean v4, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->valid:Z

    return-void
.end method


# virtual methods
.method public allowsComments()Z
    .registers 2

    .line 179
    iget-boolean v0, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->allowComments:Z

    return v0
.end method

.method public getCities()[Linfo/flowersoft/theotown/online/VirtualCity;
    .registers 2

    .line 115
    iget-object v0, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->cities:[Linfo/flowersoft/theotown/online/VirtualCity;

    return-object v0
.end method

.method public getCity(I)Linfo/flowersoft/theotown/online/VirtualCity;
    .registers 3

    .line 123
    iget-object v0, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->idToCity:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/online/VirtualCity;

    return-object p1
.end method

.method public getCity(Ljava/lang/Integer;)Linfo/flowersoft/theotown/online/VirtualCity;
    .registers 2

    if-eqz p1, :cond_b

    .line 128
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/online/VirtualRegion;->getCity(I)Linfo/flowersoft/theotown/online/VirtualCity;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public getComments()I
    .registers 2

    .line 155
    iget v0, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->comments:I

    return v0
.end method

.method public getExtra()Linfo/flowersoft/theotown/util/json/JSONObject;
    .registers 2

    .line 215
    iget-object v0, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->extra:Linfo/flowersoft/theotown/util/json/JSONObject;

    return-object v0
.end method

.method public getFreeCities()I
    .registers 2

    .line 163
    iget v0, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->freeCities:I

    return v0
.end method

.method public getHeadersFile()Ljava/lang/String;
    .registers 2

    .line 107
    iget-object v0, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->headersFile:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .registers 2

    .line 103
    iget-object v0, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .line 95
    iget v0, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->id:I

    return v0
.end method

.method public getIdToCity()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Linfo/flowersoft/theotown/online/VirtualCity;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->idToCity:Ljava/util/Map;

    return-object v0
.end method

.method public getInfos()Ljava/lang/String;
    .registers 2

    .line 199
    iget-object v0, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->infos:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 99
    iget-object v0, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNewGifts()I
    .registers 2

    .line 219
    iget v0, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->newGifts:I

    return v0
.end method

.method public getOwner()Linfo/flowersoft/theotown/online/VirtualUser;
    .registers 2

    .line 135
    iget-object v0, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->owner:Linfo/flowersoft/theotown/online/VirtualUser;

    return-object v0
.end method

.method public getReports()I
    .registers 2

    .line 207
    iget v0, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->reports:I

    return v0
.end method

.method public getRules()Ljava/lang/String;
    .registers 2

    .line 195
    iget-object v0, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->rules:Ljava/lang/String;

    return-object v0
.end method

.method public getRulesTime()J
    .registers 3

    .line 203
    iget-wide v0, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->rulesTime:J

    return-wide v0
.end method

.method public getTags()[I
    .registers 2

    .line 187
    iget-object v0, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->tags:[I

    return-object v0
.end method

.method public getTime()J
    .registers 3

    .line 111
    iget-wide v0, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->time:J

    return-wide v0
.end method

.method public getTotalCities()I
    .registers 2

    .line 159
    iget v0, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->totalCities:I

    return v0
.end method

.method public getUserCities()I
    .registers 2

    .line 167
    iget v0, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->userCities:I

    return v0
.end method

.method public getWinter()I
    .registers 2

    .line 211
    iget v0, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->winter:I

    return v0
.end method

.method public hasPasswordDefined()Z
    .registers 2

    .line 147
    iget-boolean v0, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->passwordProtected:Z

    return v0
.end method

.method public invalidate()V
    .registers 2

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->valid:Z

    return-void
.end method

.method public isAllowPlugins()Z
    .registers 2

    .line 171
    iget-boolean v0, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->allowPlugins:Z

    return v0
.end method

.method public isAllowSandbox()Z
    .registers 2

    .line 175
    iget-boolean v0, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->allowSandbox:Z

    return v0
.end method

.method public isPasswordEnforced()Z
    .registers 2

    .line 151
    iget-boolean v0, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->enforcePassword:Z

    return v0
.end method

.method public isPasswordProtected()Z
    .registers 2

    .line 143
    iget-boolean v0, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->passwordProtected:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->enforcePassword:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public isValid()Z
    .registers 2

    .line 139
    iget-boolean v0, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->valid:Z

    return v0
.end method

.method public setAllowComments(Z)V
    .registers 2

    .line 183
    iput-boolean p1, p0, Linfo/flowersoft/theotown/online/VirtualRegion;->allowComments:Z

    return-void
.end method
