###### Class info.flowersoft.theotown.online.VirtualGift (info.flowersoft.theotown.online.VirtualGift)
.class public Linfo/flowersoft/theotown/online/VirtualGift;
.super Ljava/lang/Object;
.source "VirtualGift.java"


# instance fields
.field public amount:D

.field public content:Ljava/lang/String;

.field public creation_time:J

.field public id:I

.field public priv:I

.field public receive_time:J

.field public receiver:Linfo/flowersoft/theotown/online/VirtualUser;

.field public receiver_id:I

.field public sender:Linfo/flowersoft/theotown/online/VirtualUser;

.field public sender_id:I

.field public type:Linfo/flowersoft/theotown/online/GiftType;

.field public typeParts:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "id"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/online/VirtualGift;->id:I

    .line 22
    const-string v0, "sender_id"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/online/VirtualGift;->sender_id:I

    .line 23
    const-string v0, "receiver_id"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/online/VirtualGift;->receiver_id:I

    .line 24
    const-string v0, "creation_time"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/online/VirtualGift;->creation_time:J

    .line 25
    const-string v0, "receive_time"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/online/VirtualGift;->receive_time:J

    .line 26
    const-string v0, "type"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/online/VirtualGift;->typeParts:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 27
    aget-object v0, v0, v1

    invoke-static {v0}, Linfo/flowersoft/theotown/online/GiftType;->getGiftType(Ljava/lang/String;)Linfo/flowersoft/theotown/online/GiftType;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/online/VirtualGift;->type:Linfo/flowersoft/theotown/online/GiftType;

    .line 28
    const-string v0, "amount"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/online/VirtualGift;->amount:D

    .line 29
    const-string v0, "content"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/online/VirtualGift;->content:Ljava/lang/String;

    .line 30
    const-string v0, "private"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/online/VirtualGift;->priv:I

    .line 31
    const-string v0, "sender"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 32
    new-instance v1, Linfo/flowersoft/theotown/online/VirtualUser;

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v0}, Linfo/flowersoft/theotown/online/VirtualUser;-><init>(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    iput-object v1, p0, Linfo/flowersoft/theotown/online/VirtualGift;->sender:Linfo/flowersoft/theotown/online/VirtualUser;

    .line 34
    :cond_6f
    const-string v0, "receiver"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 35
    new-instance v1, Linfo/flowersoft/theotown/online/VirtualUser;

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    invoke-direct {v1, p1}, Linfo/flowersoft/theotown/online/VirtualUser;-><init>(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    iput-object v1, p0, Linfo/flowersoft/theotown/online/VirtualGift;->receiver:Linfo/flowersoft/theotown/online/VirtualUser;

    :cond_82
    return-void
.end method


# virtual methods
.method public getAmount()D
    .registers 3

    .line 72
    iget-wide v0, p0, Linfo/flowersoft/theotown/online/VirtualGift;->amount:D

    return-wide v0
.end method

.method public getContent()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Linfo/flowersoft/theotown/online/VirtualGift;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCreationTime()J
    .registers 3

    .line 52
    iget-wide v0, p0, Linfo/flowersoft/theotown/online/VirtualGift;->creation_time:J

    return-wide v0
.end method

.method public getId()I
    .registers 2

    .line 40
    iget v0, p0, Linfo/flowersoft/theotown/online/VirtualGift;->id:I

    return v0
.end method

.method public getPriv()I
    .registers 2

    .line 80
    iget v0, p0, Linfo/flowersoft/theotown/online/VirtualGift;->priv:I

    return v0
.end method

.method public getReceiveTime()J
    .registers 3

    .line 56
    iget-wide v0, p0, Linfo/flowersoft/theotown/online/VirtualGift;->receive_time:J

    return-wide v0
.end method

.method public getSender()Linfo/flowersoft/theotown/online/VirtualUser;
    .registers 2

    .line 84
    iget-object v0, p0, Linfo/flowersoft/theotown/online/VirtualGift;->sender:Linfo/flowersoft/theotown/online/VirtualUser;

    return-object v0
.end method

.method public getSenderId()I
    .registers 2

    .line 44
    iget v0, p0, Linfo/flowersoft/theotown/online/VirtualGift;->sender_id:I

    return v0
.end method

.method public getType()Linfo/flowersoft/theotown/online/GiftType;
    .registers 2

    .line 68
    iget-object v0, p0, Linfo/flowersoft/theotown/online/VirtualGift;->type:Linfo/flowersoft/theotown/online/GiftType;

    return-object v0
.end method

.method public setReceiveTime(J)V
    .registers 3

    .line 60
    iput-wide p1, p0, Linfo/flowersoft/theotown/online/VirtualGift;->receive_time:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Linfo/flowersoft/theotown/online/VirtualGift;->type:Linfo/flowersoft/theotown/online/GiftType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/online/VirtualGift;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
