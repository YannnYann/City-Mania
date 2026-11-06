###### Class info.flowersoft.theotown.draftloader.RoadFlagsLoader (info.flowersoft.theotown.draftloader.RoadFlagsLoader)
.class public Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;
.super Ljava/lang/Object;
.source "RoadFlagsLoader.java"


# instance fields
.field public final customFlags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;->customFlags:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final interpretFlag(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;JJ)J
    .registers 8

    .line 90
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 91
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    or-long p1, p3, p5

    return-wide p1

    :cond_f
    not-long p1, p5

    and-long/2addr p1, p3

    return-wide p1

    :cond_12
    return-wide p3
.end method

.method public load(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;J)J
    .registers 15

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allocate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_47

    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 26
    new-instance v2, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v2}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    .line 27
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    :cond_47
    const/4 v7, 0x0

    if-eqz v2, :cond_7e

    move v3, v7

    .line 30
    :goto_4b
    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_7e

    .line 31
    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    .line 32
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7b

    .line 33
    iget-object v5, p0, Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;->customFlags:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7b

    .line 34
    iget-object v5, p0, Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;->customFlags:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0x20

    if-ge v5, v6, :cond_73

    .line 36
    iget-object v5, p0, Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;->customFlags:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7b

    .line 35
    :cond_73
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Too much custom flags (max. 32 allowed)"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7b
    :goto_7b
    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    .line 42
    :cond_7e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " normal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_98

    move-wide v3, p3

    goto :goto_9b

    :cond_98
    const-wide/16 v2, 0x0

    move-wide v3, v2

    .line 46
    :goto_9b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " military"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;->interpretFlag(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;JJ)J

    move-result-wide v3

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pedestrian"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v5, 0x4

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;->interpretFlag(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;JJ)J

    move-result-wide v3

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " tram"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v5, 0x8

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;->interpretFlag(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;JJ)J

    move-result-wide v3

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " airport"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v5, 0x10

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;->interpretFlag(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;JJ)J

    move-result-wide v3

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " user0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v5, 0x2000

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;->interpretFlag(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;JJ)J

    move-result-wide v3

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " user1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v5, 0x4000

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;->interpretFlag(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;JJ)J

    move-result-wide v3

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " user2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/32 v5, 0x8000

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;->interpretFlag(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;JJ)J

    move-result-wide v3

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " user3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/32 v5, 0x10000

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;->interpretFlag(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;JJ)J

    move-result-wide v3

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " user4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/32 v5, 0x20000

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;->interpretFlag(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;JJ)J

    move-result-wide v3

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " user5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/32 v5, 0x40000

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;->interpretFlag(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;JJ)J

    move-result-wide v3

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " user6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/32 v5, 0x80000

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;->interpretFlag(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;JJ)J

    move-result-wide v3

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " user7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/32 v5, 0x100000

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;->interpretFlag(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;JJ)J

    move-result-wide v3

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " elevated train"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/32 v5, 0x200000

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;->interpretFlag(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;JJ)J

    move-result-wide v3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " native pedestrian"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/32 v5, 0x400000

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;->interpretFlag(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;JJ)J

    move-result-wide v3

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " none"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/32 v5, 0x2000000

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;->interpretFlag(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;JJ)J

    move-result-wide v3

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pkw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v5, 0x20

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;->interpretFlag(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;JJ)J

    move-result-wide v3

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " lkw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v5, 0x40

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;->interpretFlag(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;JJ)J

    move-result-wide v3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " bus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v5, 0x80

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;->interpretFlag(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;JJ)J

    move-result-wide v3

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " train"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v5, 0x100

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;->interpretFlag(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;JJ)J

    move-result-wide v3

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " maglev"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v5, 0x200

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;->interpretFlag(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;JJ)J

    move-result-wide v3

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " monorail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v5, 0x400

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;->interpretFlag(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;JJ)J

    move-result-wide v3

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " high speed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v5, 0x800

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;->interpretFlag(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;JJ)J

    move-result-wide v3

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " subway"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;->interpretFlag(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;JJ)J

    move-result-wide v3

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " tractor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/32 v5, 0x800000

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;->interpretFlag(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;JJ)J

    move-result-wide v3

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " emergency"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/32 v5, 0x18000e0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;->interpretFlag(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;JJ)J

    move-result-wide v2

    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " all"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_330

    const-wide/16 v2, -0x1

    :cond_330
    move v4, v7

    .line 79
    :goto_331
    iget-object v5, p0, Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;->customFlags:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_365

    .line 80
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;->customFlags:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_362

    rsub-int/lit8 v5, v4, 0x3f

    const-wide/16 v8, 0x1

    shl-long v5, v8, v5

    or-long/2addr v2, v5

    :cond_362
    add-int/lit8 v4, v4, 0x1

    goto :goto_331

    :cond_365
    return-wide v2
.end method
