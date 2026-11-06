###### Class info.flowersoft.theotown.backend.User (info.flowersoft.theotown.backend.User)
.class public Linfo/flowersoft/theotown/backend/User;
.super Ljava/lang/Object;
.source "User.java"


# instance fields
.field public accessKey:Ljava/lang/String;

.field public admin:I

.field public email:Ljava/lang/String;

.field public forumColor:Ljava/lang/String;

.field public forumColorEvaluated:Lio/blueflower/stapel2d/drawing/Color;

.field public forumId:J

.field public forumName:Ljava/lang/String;

.field public forumPw:Ljava/lang/String;

.field public id:J

.field public last_active:J

.field public name:Ljava/lang/String;

.field public permissions:I

.field public social_id:Ljava/lang/String;

.field public social_token:Ljava/lang/String;

.field public social_type:Ljava/lang/String;

.field public steamId:J

.field public steamName:Ljava/lang/String;

.field public steamToken:Ljava/lang/String;

.field public time_created:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromJson(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 6

    .line 46
    const-string v0, "id"

    iget-wide v1, p0, Linfo/flowersoft/theotown/backend/User;->id:J

    invoke-virtual {p1, v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/backend/User;->id:J

    .line 47
    const-string v0, "name"

    iget-object v1, p0, Linfo/flowersoft/theotown/backend/User;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/backend/User;->name:Ljava/lang/String;

    .line 48
    const-string v0, "email"

    iget-object v1, p0, Linfo/flowersoft/theotown/backend/User;->email:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/backend/User;->email:Ljava/lang/String;

    .line 49
    const-string v0, "fb_id"

    iget-object v1, p0, Linfo/flowersoft/theotown/backend/User;->social_id:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/backend/User;->social_id:Ljava/lang/String;

    .line 50
    const-string v0, "fb_token"

    iget-object v1, p0, Linfo/flowersoft/theotown/backend/User;->social_token:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/backend/User;->social_token:Ljava/lang/String;

    .line 51
    const-string v0, "social_type"

    const-string v1, "fb"

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/backend/User;->social_type:Ljava/lang/String;

    .line 52
    const-string v0, "last_active"

    iget-wide v1, p0, Linfo/flowersoft/theotown/backend/User;->last_active:J

    invoke-virtual {p1, v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/backend/User;->last_active:J

    .line 53
    const-string v0, "time_created"

    iget-wide v1, p0, Linfo/flowersoft/theotown/backend/User;->time_created:J

    invoke-virtual {p1, v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/backend/User;->time_created:J

    .line 54
    const-string v0, "admin"

    iget v1, p0, Linfo/flowersoft/theotown/backend/User;->admin:I

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/backend/User;->admin:I

    .line 55
    const-string v0, "permissions"

    iget v1, p0, Linfo/flowersoft/theotown/backend/User;->permissions:I

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/backend/User;->permissions:I

    .line 56
    const-string v0, "access_key"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/backend/User;->accessKey:Ljava/lang/String;

    .line 57
    const-string v0, "steam_id"

    iget-wide v2, p0, Linfo/flowersoft/theotown/backend/User;->steamId:J

    invoke-virtual {p1, v0, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Linfo/flowersoft/theotown/backend/User;->steamId:J

    .line 58
    const-string v0, "steam_name"

    iget-object v2, p0, Linfo/flowersoft/theotown/backend/User;->steamName:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/backend/User;->steamName:Ljava/lang/String;

    .line 60
    const-string v0, "forum_id"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Linfo/flowersoft/theotown/backend/User;->forumId:J

    .line 61
    const-string v0, "forum_name"

    iget-object v2, p0, Linfo/flowersoft/theotown/backend/User;->forumName:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/backend/User;->forumName:Ljava/lang/String;

    .line 62
    const-string v0, "forum_pw"

    iget-object v2, p0, Linfo/flowersoft/theotown/backend/User;->forumPw:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/backend/User;->forumPw:Ljava/lang/String;

    .line 63
    const-string v2, "forum_color"

    invoke-virtual {p1, v2, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/backend/User;->forumColor:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Linfo/flowersoft/theotown/backend/User;->forumColorEvaluated:Lio/blueflower/stapel2d/drawing/Color;

    return-void
.end method

.method public getAccessKey()Ljava/lang/String;
    .registers 2

    .line 204
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/User;->accessKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAdmin()I
    .registers 2

    .line 95
    invoke-virtual {p0}, Linfo/flowersoft/theotown/backend/User;->isValid()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Linfo/flowersoft/theotown/backend/User;->isSocialConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Linfo/flowersoft/theotown/backend/User;->admin:I

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public getEmail()Ljava/lang/String;
    .registers 2

    .line 164
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/User;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getForumColor()Ljava/lang/String;
    .registers 2

    .line 268
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/User;->forumColor:Ljava/lang/String;

    return-object v0
.end method

.method public getForumId()J
    .registers 3

    .line 248
    iget-wide v0, p0, Linfo/flowersoft/theotown/backend/User;->forumId:J

    return-wide v0
.end method

.method public getForumName()Ljava/lang/String;
    .registers 2

    .line 232
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/User;->forumName:Ljava/lang/String;

    return-object v0
.end method

.method public getForumPw()Ljava/lang/String;
    .registers 2

    .line 240
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/User;->forumPw:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .line 148
    iget-wide v0, p0, Linfo/flowersoft/theotown/backend/User;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 156
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/User;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissions()I
    .registers 2

    .line 103
    invoke-virtual {p0}, Linfo/flowersoft/theotown/backend/User;->isValid()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Linfo/flowersoft/theotown/backend/User;->permissions:I

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public getSocial_id()Ljava/lang/String;
    .registers 2

    .line 172
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/User;->social_id:Ljava/lang/String;

    return-object v0
.end method

.method public getSocial_type()Ljava/lang/String;
    .registers 2

    .line 188
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/User;->social_type:Ljava/lang/String;

    return-object v0
.end method

.method public getSteamId()J
    .registers 3

    .line 208
    iget-wide v0, p0, Linfo/flowersoft/theotown/backend/User;->steamId:J

    return-wide v0
.end method

.method public getSteamName()Ljava/lang/String;
    .registers 2

    .line 216
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/User;->steamName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 3

    .line 277
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/User;->forumColorEvaluated:Lio/blueflower/stapel2d/drawing/Color;

    if-nez v0, :cond_27

    .line 278
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/User;->forumColor:Ljava/lang/String;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_23

    .line 281
    :cond_f
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/User;->forumColor:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v1}, Lio/blueflower/stapel2d/drawing/Color;-><init>()V

    invoke-static {v0, v1}, Lio/blueflower/stapel2d/drawing/Color;->fromRGB(ILio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/backend/User;->forumColorEvaluated:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_27

    .line 279
    :cond_23
    :goto_23
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    iput-object v0, p0, Linfo/flowersoft/theotown/backend/User;->forumColorEvaluated:Lio/blueflower/stapel2d/drawing/Color;

    .line 284
    :cond_27
    :goto_27
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/User;->forumColorEvaluated:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public hasPermissionToUploadScreenshot()Z
    .registers 3

    .line 107
    invoke-virtual {p0}, Linfo/flowersoft/theotown/backend/User;->isValid()Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, p0, Linfo/flowersoft/theotown/backend/User;->permissions:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    return v1

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public invalidateSocialConnection()V
    .registers 4

    .line 123
    const-string v0, ""

    iput-object v0, p0, Linfo/flowersoft/theotown/backend/User;->social_id:Ljava/lang/String;

    .line 124
    iput-object v0, p0, Linfo/flowersoft/theotown/backend/User;->social_token:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 125
    iput-wide v1, p0, Linfo/flowersoft/theotown/backend/User;->steamId:J

    .line 126
    iput-object v0, p0, Linfo/flowersoft/theotown/backend/User;->steamName:Ljava/lang/String;

    .line 127
    iput-object v0, p0, Linfo/flowersoft/theotown/backend/User;->steamToken:Ljava/lang/String;

    .line 128
    iput-wide v1, p0, Linfo/flowersoft/theotown/backend/User;->forumId:J

    .line 129
    iput-object v0, p0, Linfo/flowersoft/theotown/backend/User;->forumName:Ljava/lang/String;

    .line 130
    iput-object v0, p0, Linfo/flowersoft/theotown/backend/User;->forumPw:Ljava/lang/String;

    .line 131
    iput-object v0, p0, Linfo/flowersoft/theotown/backend/User;->forumColor:Ljava/lang/String;

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Linfo/flowersoft/theotown/backend/User;->forumColorEvaluated:Lio/blueflower/stapel2d/drawing/Color;

    return-void
.end method

.method public isFBConnected()Z
    .registers 3

    .line 256
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/User;->social_id:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v1, p0, Linfo/flowersoft/theotown/backend/User;->social_token:Ljava/lang/String;

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Linfo/flowersoft/theotown/backend/User;->social_token:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    return v0

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public isForumConnected()Z
    .registers 5

    .line 260
    iget-wide v0, p0, Linfo/flowersoft/theotown/backend/User;->forumId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Linfo/flowersoft/theotown/backend/User;->isValid()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public isSocialConnectable()Z
    .registers 5

    .line 142
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/User;->social_id:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v1, p0, Linfo/flowersoft/theotown/backend/User;->social_token:Ljava/lang/String;

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Linfo/flowersoft/theotown/backend/User;->social_token:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_34

    :cond_16
    iget-wide v0, p0, Linfo/flowersoft/theotown/backend/User;->steamId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_28

    iget-object v0, p0, Linfo/flowersoft/theotown/backend/User;->steamName:Ljava/lang/String;

    if-eqz v0, :cond_28

    .line 143
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_34

    :cond_28
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/User;->forumName:Ljava/lang/String;

    if-eqz v0, :cond_36

    iget-object v0, p0, Linfo/flowersoft/theotown/backend/User;->forumPw:Ljava/lang/String;

    .line 144
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_36

    :cond_34
    const/4 v0, 0x1

    return v0

    :cond_36
    const/4 v0, 0x0

    return v0
.end method

.method public isSocialConnected()Z
    .registers 5

    .line 136
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/User;->social_id:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v1, p0, Linfo/flowersoft/theotown/backend/User;->social_token:Ljava/lang/String;

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Linfo/flowersoft/theotown/backend/User;->social_token:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_38

    :cond_16
    iget-wide v0, p0, Linfo/flowersoft/theotown/backend/User;->steamId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_28

    iget-object v0, p0, Linfo/flowersoft/theotown/backend/User;->steamName:Ljava/lang/String;

    if-eqz v0, :cond_28

    .line 137
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_38

    :cond_28
    iget-wide v0, p0, Linfo/flowersoft/theotown/backend/User;->forumId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3a

    iget-object v0, p0, Linfo/flowersoft/theotown/backend/User;->forumName:Ljava/lang/String;

    if-eqz v0, :cond_3a

    .line 138
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3a

    :cond_38
    const/4 v0, 0x1

    return v0

    :cond_3a
    const/4 v0, 0x0

    return v0
.end method

.method public isValid()Z
    .registers 5

    .line 111
    iget-wide v0, p0, Linfo/flowersoft/theotown/backend/User;->id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Linfo/flowersoft/theotown/backend/User;->isSocialConnected()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .registers 2

    .line 168
    iput-object p1, p0, Linfo/flowersoft/theotown/backend/User;->email:Ljava/lang/String;

    return-void
.end method

.method public setForumColor(Ljava/lang/String;)V
    .registers 2

    .line 272
    iput-object p1, p0, Linfo/flowersoft/theotown/backend/User;->forumColor:Ljava/lang/String;

    const/4 p1, 0x0

    .line 273
    iput-object p1, p0, Linfo/flowersoft/theotown/backend/User;->forumColorEvaluated:Lio/blueflower/stapel2d/drawing/Color;

    return-void
.end method

.method public setForumId(J)V
    .registers 3

    .line 252
    iput-wide p1, p0, Linfo/flowersoft/theotown/backend/User;->forumId:J

    return-void
.end method

.method public setForumName(Ljava/lang/String;)V
    .registers 2

    .line 236
    iput-object p1, p0, Linfo/flowersoft/theotown/backend/User;->forumName:Ljava/lang/String;

    return-void
.end method

.method public setForumPw(Ljava/lang/String;)V
    .registers 2

    .line 244
    iput-object p1, p0, Linfo/flowersoft/theotown/backend/User;->forumPw:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .registers 3

    .line 152
    iput-wide p1, p0, Linfo/flowersoft/theotown/backend/User;->id:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 160
    iput-object p1, p0, Linfo/flowersoft/theotown/backend/User;->name:Ljava/lang/String;

    return-void
.end method

.method public setSocial_id(Ljava/lang/String;)V
    .registers 2

    .line 176
    iput-object p1, p0, Linfo/flowersoft/theotown/backend/User;->social_id:Ljava/lang/String;

    return-void
.end method

.method public setSocial_type(Ljava/lang/String;)V
    .registers 2

    .line 192
    iput-object p1, p0, Linfo/flowersoft/theotown/backend/User;->social_type:Ljava/lang/String;

    return-void
.end method

.method public setSteamId(J)V
    .registers 3

    .line 212
    iput-wide p1, p0, Linfo/flowersoft/theotown/backend/User;->steamId:J

    return-void
.end method

.method public setSteamName(Ljava/lang/String;)V
    .registers 2

    .line 220
    iput-object p1, p0, Linfo/flowersoft/theotown/backend/User;->steamName:Ljava/lang/String;

    return-void
.end method

.method public toJson()Linfo/flowersoft/theotown/util/json/JSONObject;
    .registers 5

    .line 68
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 70
    :try_start_5
    const-string v1, "id"

    iget-wide v2, p0, Linfo/flowersoft/theotown/backend/User;->id:J

    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;J)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 71
    const-string v1, "name"

    iget-object v2, p0, Linfo/flowersoft/theotown/backend/User;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 72
    const-string v1, "email"

    iget-object v2, p0, Linfo/flowersoft/theotown/backend/User;->email:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 73
    const-string v1, "fb_id"

    iget-object v2, p0, Linfo/flowersoft/theotown/backend/User;->social_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 74
    const-string v1, "fb_token"

    iget-object v2, p0, Linfo/flowersoft/theotown/backend/User;->social_token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 75
    const-string v1, "social_type"

    iget-object v2, p0, Linfo/flowersoft/theotown/backend/User;->social_type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 76
    const-string v1, "last_active"

    iget-wide v2, p0, Linfo/flowersoft/theotown/backend/User;->last_active:J

    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;J)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 77
    const-string v1, "time_created"

    iget-wide v2, p0, Linfo/flowersoft/theotown/backend/User;->time_created:J

    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;J)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 78
    const-string v1, "admin"

    iget v2, p0, Linfo/flowersoft/theotown/backend/User;->admin:I

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 79
    const-string v1, "permissions"

    iget v2, p0, Linfo/flowersoft/theotown/backend/User;->permissions:I

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 80
    const-string v1, "access_key"

    iget-object v2, p0, Linfo/flowersoft/theotown/backend/User;->accessKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 81
    const-string v1, "steam_id"

    iget-wide v2, p0, Linfo/flowersoft/theotown/backend/User;->steamId:J

    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;J)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 82
    const-string v1, "steam_name"

    iget-object v2, p0, Linfo/flowersoft/theotown/backend/User;->steamName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 83
    const-string v1, "steam_token"

    iget-object v2, p0, Linfo/flowersoft/theotown/backend/User;->steamToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 84
    const-string v1, "forum_id"

    iget-wide v2, p0, Linfo/flowersoft/theotown/backend/User;->forumId:J

    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;J)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 85
    const-string v1, "forum_name"

    iget-object v2, p0, Linfo/flowersoft/theotown/backend/User;->forumName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 86
    const-string v1, "forum_pw"

    iget-object v2, p0, Linfo/flowersoft/theotown/backend/User;->forumPw:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 87
    const-string v1, "forum_color"

    iget-object v2, p0, Linfo/flowersoft/theotown/backend/User;->forumColor:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;
    :try_end_83
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_5 .. :try_end_83} :catch_84

    return-object v0

    :catch_84
    move-exception v1

    .line 89
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method
