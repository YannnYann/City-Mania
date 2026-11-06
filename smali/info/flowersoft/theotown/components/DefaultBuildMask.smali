###### Class info.flowersoft.theotown.components.DefaultBuildMask (info.flowersoft.theotown.components.DefaultBuildMask)
.class public Linfo/flowersoft/theotown/components/DefaultBuildMask;
.super Linfo/flowersoft/theotown/city/components/BuildMask;
.source "DefaultBuildMask.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/BuildMask;-><init>()V

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/BuildMask;-><init>()V

    .line 18
    :goto_3
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_3

    :cond_d
    return-void
.end method


# virtual methods
.method public accessGranted(II)Z
    .registers 3

    .line 0
    const/4 p1, 0x1

    return p1
.end method

.method public correct(II)[I
    .registers 3

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isClickable(II)Z
    .registers 3

    .line 0
    const/4 p1, 0x1

    return p1
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    return-void
.end method
