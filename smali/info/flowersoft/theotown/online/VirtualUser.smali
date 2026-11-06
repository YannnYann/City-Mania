###### Class info.flowersoft.theotown.online.VirtualUser (info.flowersoft.theotown.online.VirtualUser)
.class public Linfo/flowersoft/theotown/online/VirtualUser;
.super Ljava/lang/Object;
.source "VirtualUser.java"


# instance fields
.field public color:Lio/blueflower/stapel2d/drawing/Color;

.field public id:I

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "id"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/online/VirtualUser;->id:I

    .line 15
    const-string v0, "name"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/online/VirtualUser;->name:Ljava/lang/String;

    .line 17
    :try_start_13
    const-string v0, "color"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/online/VirtualUser;->color:Lio/blueflower/stapel2d/drawing/Color;
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_21} :catch_22

    return-void

    .line 19
    :catch_22
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->GRAY:Lio/blueflower/stapel2d/drawing/Color;

    iput-object p1, p0, Linfo/flowersoft/theotown/online/VirtualUser;->color:Lio/blueflower/stapel2d/drawing/Color;

    return-void
.end method


# virtual methods
.method public getColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 32
    iget-object v0, p0, Linfo/flowersoft/theotown/online/VirtualUser;->color:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .line 24
    iget v0, p0, Linfo/flowersoft/theotown/online/VirtualUser;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Linfo/flowersoft/theotown/online/VirtualUser;->name:Ljava/lang/String;

    return-object v0
.end method
