###### Class info.flowersoft.theotown.cityfile.RegionInformation (info.flowersoft.theotown.cityfile.RegionInformation)
.class public Linfo/flowersoft/theotown/cityfile/RegionInformation;
.super Ljava/lang/Object;
.source "RegionInformation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;
    }
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public final nameToInformation:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;",
            ">;"
        }
    .end annotation
.end field

.field public final time:J


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/online/VirtualRegion;)V
    .registers 16

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation;->nameToInformation:Ljava/util/Map;

    .line 60
    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualRegion;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation;->name:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualRegion;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation;->id:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualRegion;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation;->time:J

    .line 63
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v0

    .line 65
    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualRegion;->getCities()[Linfo/flowersoft/theotown/online/VirtualCity;

    move-result-object v2

    if-eqz v2, :cond_cb

    const/4 v3, 0x0

    move v4, v3

    .line 67
    :goto_3d
    array-length v5, v2

    if-ge v4, v5, :cond_cb

    .line 68
    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualRegion;->getCities()[Linfo/flowersoft/theotown/online/VirtualCity;

    move-result-object v5

    aget-object v5, v5, v4

    .line 69
    new-instance v6, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;

    invoke-direct {v6}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;-><init>()V

    .line 70
    invoke-virtual {v5}, Linfo/flowersoft/theotown/online/VirtualCity;->getOwner()Linfo/flowersoft/theotown/online/VirtualUser;

    move-result-object v7

    .line 71
    invoke-virtual {v5}, Linfo/flowersoft/theotown/online/VirtualCity;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$002(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    invoke-virtual {v5}, Linfo/flowersoft/theotown/online/VirtualCity;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    const/4 v9, 0x1

    if-lez v8, :cond_77

    invoke-virtual {v5}, Linfo/flowersoft/theotown/online/VirtualCity;->getOwner()Linfo/flowersoft/theotown/online/VirtualUser;

    move-result-object v8

    if-eqz v8, :cond_77

    invoke-virtual {v5}, Linfo/flowersoft/theotown/online/VirtualCity;->getFile()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Linfo/flowersoft/theotown/online/VirtualCity;->getFirstFile()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_77

    move v8, v9

    goto :goto_78

    :cond_77
    move v8, v3

    :goto_78
    invoke-static {v6, v8}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$102(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;Z)Z

    .line 73
    invoke-static {v6, v3}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$202(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;Z)Z

    .line 74
    invoke-static {v6, v3}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$302(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;Z)Z

    .line 75
    invoke-static {v6, v3}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$402(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;Z)Z

    if-eqz v7, :cond_a1

    .line 76
    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->isValid()Z

    move-result v8

    if-eqz v8, :cond_a1

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->isForumConnected()Z

    move-result v8

    if-eqz v8, :cond_a1

    invoke-virtual {v7}, Linfo/flowersoft/theotown/online/VirtualUser;->getId()I

    move-result v8

    int-to-long v10, v8

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->getId()J

    move-result-wide v12

    cmp-long v8, v10, v12

    if-nez v8, :cond_a1

    move v8, v9

    goto :goto_a2

    :cond_a1
    move v8, v3

    :goto_a2
    invoke-static {v6, v8}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$502(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;Z)Z

    if-nez v7, :cond_a8

    goto :goto_a9

    :cond_a8
    move v9, v3

    .line 77
    :goto_a9
    invoke-static {v6, v9}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$602(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;Z)Z

    if-eqz v7, :cond_b3

    .line 78
    invoke-virtual {v7}, Linfo/flowersoft/theotown/online/VirtualUser;->getName()Ljava/lang/String;

    move-result-object v7

    goto :goto_b4

    :cond_b3
    move-object v7, v1

    :goto_b4
    invoke-static {v6, v7}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$702(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    invoke-virtual {v5}, Linfo/flowersoft/theotown/online/VirtualCity;->getDownloads()I

    move-result v5

    invoke-static {v6, v5}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$802(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;I)I

    .line 80
    iget-object v5, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation;->nameToInformation:Ljava/util/Map;

    invoke-static {v6}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$000(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3d

    :cond_cb
    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/util/List;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/util/json/JSONObject;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/cityloader/CityKeeper;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 85
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Linfo/flowersoft/theotown/cityfile/RegionInformation;->nameToInformation:Ljava/util/Map;

    .line 86
    const-string v2, "name"

    const-string v3, "Stuckenborstel"

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Linfo/flowersoft/theotown/cityfile/RegionInformation;->name:Ljava/lang/String;

    .line 87
    const-string v2, "id"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Linfo/flowersoft/theotown/cityfile/RegionInformation;->id:Ljava/lang/String;

    .line 88
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_30

    const/16 v2, 0x10

    .line 89
    invoke-static {v2}, Linfo/flowersoft/theotown/util/IdGenerator;->generateId(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Linfo/flowersoft/theotown/cityfile/RegionInformation;->id:Ljava/lang/String;

    .line 91
    :cond_30
    const-string v2, "time"

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Linfo/flowersoft/theotown/cityfile/RegionInformation;->time:J

    .line 94
    const-string v2, "cities"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v1

    goto :goto_4a

    :cond_49
    const/4 v1, 0x0

    .line 96
    :goto_4a
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const-string v4, "spf"

    const-string v5, "sign waiting"

    const-string v6, "waiting start"

    const-string v7, "waiting time"

    const-string v8, "sign"

    const-string v9, "created"

    const-string v10, "\n"

    const-string v11, ","

    const-string v12, "waiting"

    const-string v13, "locked"

    if-eqz v2, :cond_132

    if-eqz v1, :cond_132

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->names()Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_132

    .line 97
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->names()Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v2

    const/4 v15, 0x0

    .line 98
    :goto_71
    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v14

    if-ge v15, v14, :cond_20f

    .line 99
    invoke-virtual {v2, v15}, Linfo/flowersoft/theotown/util/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 p2, v2

    .line 100
    new-instance v2, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;

    invoke-direct {v2}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;-><init>()V

    .line 101
    invoke-static {v2, v14}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$002(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;Ljava/lang/String;)Ljava/lang/String;

    move/from16 v17, v15

    const/4 v15, 0x1

    .line 102
    invoke-static {v2, v15}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$502(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;Z)Z

    move-object/from16 v18, v4

    .line 104
    invoke-virtual {v1, v14}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v4

    move-object/from16 v19, v1

    .line 105
    invoke-virtual {v4, v13, v15}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v2, v1}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$302(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;Z)Z

    const/4 v1, 0x0

    .line 106
    invoke-virtual {v4, v9, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v15

    invoke-static {v2, v15}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$102(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;Z)Z

    .line 107
    invoke-virtual {v4, v12, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v15

    invoke-static {v2, v15}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$202(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;Z)Z

    .line 109
    invoke-static {v2}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$300(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;)Z

    move-result v1

    if-nez v1, :cond_c2

    .line 111
    invoke-virtual {v4, v8, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-virtual {v0, v14, v13, v1}, Linfo/flowersoft/theotown/cityfile/RegionInformation;->checkSign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/16 v16, 0x1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v2, v1}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$302(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;Z)Z

    .line 115
    :cond_c2
    invoke-static {v2}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$200(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;)Z

    move-result v1

    if-eqz v1, :cond_10f

    .line 116
    invoke-virtual {v4, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v2, v1}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$902(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;I)I

    move-object v1, v7

    move-object v15, v8

    .line 117
    invoke-virtual {v4, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v2, v7, v8}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$1002(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;J)J

    .line 118
    invoke-virtual {v4, v5, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v10, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 119
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    invoke-static {v2}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$1000(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;)J

    move-result-wide v5

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$900(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;)I

    move-result v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v12, v7}, Linfo/flowersoft/theotown/cityfile/RegionInformation;->checkSign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    invoke-static {v2, v5}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$202(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;Z)Z

    :goto_10b
    move-object/from16 v5, v18

    const/4 v6, 0x0

    goto :goto_116

    :cond_10f
    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object v1, v7

    move-object v15, v8

    goto :goto_10b

    .line 122
    :goto_116
    invoke-virtual {v4, v5, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v2, v4}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$402(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;Z)Z

    .line 124
    iget-object v4, v0, Linfo/flowersoft/theotown/cityfile/RegionInformation;->nameToInformation:Ljava/util/Map;

    invoke-interface {v4, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v17, 0x1

    move-object v7, v1

    move-object v4, v5

    move-object v8, v15

    move-object/from16 v1, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move v15, v2

    move-object/from16 v2, p2

    goto/16 :goto_71

    :cond_132
    move-object/from16 v19, v1

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object v1, v7

    move-object v15, v8

    move-object v5, v4

    .line 127
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/cityloader/CityKeeper;

    .line 128
    invoke-virtual {v4}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 129
    new-instance v6, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;

    invoke-direct {v6}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;-><init>()V

    .line 130
    invoke-static {v6, v4}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$002(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;Ljava/lang/String;)Ljava/lang/String;

    const/4 v7, 0x1

    .line 131
    invoke-static {v6, v7}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$502(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;Z)Z

    if-eqz v19, :cond_1f9

    move-object/from16 v8, v19

    .line 133
    invoke-virtual {v8, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1f7

    .line 134
    invoke-virtual {v8, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v14

    move-object/from16 v17, v1

    .line 135
    invoke-virtual {v14, v13, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v6, v1}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$302(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;Z)Z

    const/4 v1, 0x0

    .line 136
    invoke-virtual {v14, v9, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {v6, v7}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$102(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;Z)Z

    .line 137
    invoke-virtual {v14, v12, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {v6, v7}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$202(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;Z)Z

    .line 139
    invoke-static {v6}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$300(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;)Z

    move-result v1

    if-nez v1, :cond_19e

    .line 140
    invoke-virtual {v14, v15, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-virtual {v0, v4, v13, v1}, Linfo/flowersoft/theotown/cityfile/RegionInformation;->checkSign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/16 v16, 0x1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v6, v1}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$302(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;Z)Z

    .line 144
    :cond_19e
    invoke-static {v6}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$200(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;)Z

    move-result v1

    if-eqz v1, :cond_1e9

    move-object/from16 v1, v17

    .line 145
    invoke-virtual {v14, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v6, v7}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$902(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;I)I

    move-object/from16 p2, v2

    move-object/from16 v7, v21

    .line 146
    invoke-virtual {v14, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v6, v1, v2}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$1002(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;J)J

    move-object/from16 v1, v20

    .line 147
    invoke-virtual {v14, v1, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v19, v8

    invoke-static {v6}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$1000(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;)J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$900(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;)I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v12, v2}, Linfo/flowersoft/theotown/cityfile/RegionInformation;->checkSign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v6, v1}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$202(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;Z)Z

    :goto_1e7
    const/4 v1, 0x0

    goto :goto_1ee

    :cond_1e9
    move-object/from16 p2, v2

    move-object/from16 v19, v8

    goto :goto_1e7

    .line 151
    :goto_1ee
    invoke-virtual {v14, v5, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v6, v2}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$402(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;Z)Z

    const/4 v7, 0x1

    goto :goto_204

    :cond_1f7
    move-object/from16 v19, v8

    :cond_1f9
    move-object/from16 v17, v1

    move-object/from16 p2, v2

    const/4 v1, 0x0

    .line 153
    invoke-static {v6, v7}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$302(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;Z)Z

    .line 154
    invoke-static {v6, v1}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$102(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;Z)Z

    .line 157
    :goto_204
    iget-object v2, v0, Linfo/flowersoft/theotown/cityfile/RegionInformation;->nameToInformation:Ljava/util/Map;

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, p2

    move-object/from16 v1, v17

    goto/16 :goto_13f

    :cond_20f
    return-void
.end method


# virtual methods
.method public final checkSign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    .line 50
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->INTRINSICS:Lvm2/LuaValue;

    const-string v1, "checkRegionSign"

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    .line 52
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation;->id:Ljava/lang/String;

    .line 53
    invoke-static {v1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v1

    .line 54
    invoke-static {p2}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p2

    .line 55
    invoke-static {p3}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p3

    const/4 v2, 0x4

    new-array v2, v2, [Lvm2/LuaValue;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v1, v2, p1

    const/4 v1, 0x2

    aput-object p2, v2, v1

    const/4 p2, 0x3

    aput-object p3, v2, p2

    .line 51
    invoke-static {v2}, Lvm2/LuaValue;->varargsOf([Lvm2/LuaValue;)Lvm2/Varargs;

    move-result-object p2

    .line 50
    invoke-virtual {v0, p2}, Lvm2/LuaValue;->invoke(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p2

    .line 56
    invoke-virtual {p2, p1}, Lvm2/Varargs;->checkboolean(I)Z

    move-result p1

    return p1
.end method

.method public final generateSign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 43
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->INTRINSICS:Lvm2/LuaValue;

    const-string v1, "signRegionLegacy"

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    .line 44
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation;->id:Ljava/lang/String;

    .line 45
    invoke-static {v1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v1

    .line 46
    invoke-static {p2}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p2

    .line 43
    invoke-virtual {v0, p1, v1, p2}, Lvm2/LuaValue;->call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCityInformation(Linfo/flowersoft/theotown/cityloader/CityKeeper;)Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;
    .registers 2

    .line 213
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getFile()Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 215
    :cond_8
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/cityfile/RegionInformation;->getCityInformation(Ljava/lang/String;)Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;

    move-result-object p1

    return-object p1
.end method

.method public getCityInformation(Ljava/lang/String;)Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;
    .registers 3

    .line 219
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation;->nameToInformation:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;

    return-object p1
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 197
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getJson()Linfo/flowersoft/theotown/util/json/JSONObject;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 163
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 164
    const-string v1, "name"

    iget-object v2, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 165
    const-string v1, "id"

    iget-object v2, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 166
    const-string v1, "time"

    iget-wide v2, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation;->time:J

    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;J)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 168
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v1}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 169
    iget-object v2, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation;->nameToInformation:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;

    .line 170
    new-instance v4, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v4}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 172
    invoke-static {v3}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$300(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;)Z

    move-result v5

    const-string v6, "locked"

    invoke-virtual {v4, v6, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Z)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 173
    const-string v5, "created"

    invoke-static {v3}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$100(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;)Z

    move-result v7

    invoke-virtual {v4, v5, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Z)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 174
    invoke-static {v3}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$300(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;)Z

    move-result v5

    if-nez v5, :cond_5f

    .line 175
    invoke-static {v3}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$000(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v6}, Linfo/flowersoft/theotown/cityfile/RegionInformation;->generateSign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sign"

    invoke-virtual {v4, v6, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 178
    :cond_5f
    invoke-static {v3}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$200(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;)Z

    move-result v5

    if-eqz v5, :cond_af

    .line 179
    invoke-static {v3}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$200(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;)Z

    move-result v5

    const-string v6, "waiting"

    invoke-virtual {v4, v6, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Z)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 180
    const-string v5, "waiting time"

    invoke-static {v3}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$900(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;)I

    move-result v7

    invoke-virtual {v4, v5, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 181
    const-string v5, "waiting start"

    invoke-static {v3}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$1000(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;)J

    move-result-wide v7

    invoke-virtual {v4, v5, v7, v8}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;J)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 182
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$000(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$1000(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$900(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v6}, Linfo/flowersoft/theotown/cityfile/RegionInformation;->generateSign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sign waiting"

    invoke-virtual {v4, v6, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 185
    :cond_af
    invoke-static {v3}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$400(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;)Z

    move-result v5

    if-eqz v5, :cond_be

    .line 186
    const-string v5, "spf"

    invoke-static {v3}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$400(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;)Z

    move-result v6

    invoke-virtual {v1, v5, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Z)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 189
    :cond_be
    invoke-static {v3}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->access$000(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    goto/16 :goto_29

    .line 191
    :cond_c7
    const-string v2, "cities"

    invoke-virtual {v0, v2, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 205
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .registers 3

    .line 209
    iget-wide v0, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation;->time:J

    return-wide v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 201
    iput-object p1, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation;->name:Ljava/lang/String;

    return-void
.end method

###### Class info.flowersoft.theotown.cityfile.RegionInformation.CityInformation (info.flowersoft.theotown.cityfile.RegionInformation$CityInformation)
.class public Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;
.super Ljava/lang/Object;
.source "RegionInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/cityfile/RegionInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CityInformation"
.end annotation


# instance fields
.field public acquired:Z

.field public author:Ljava/lang/String;

.field public canBeAcquired:Z

.field public created:Z

.field public downloads:I

.field public locked:Z

.field public name:Ljava/lang/String;

.field public prevFreemode:Z

.field public waiting:Z

.field public waitingStart:J

.field public waitingTime:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    const-string v0, ""

    iput-object v0, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->author:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;)Ljava/lang/String;
    .registers 1

    .line 222
    iget-object p0, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->name:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$002(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 222
    iput-object p1, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->name:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;)Z
    .registers 1

    .line 222
    iget-boolean p0, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->created:Z

    return p0
.end method

.method public static synthetic access$1000(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;)J
    .registers 3

    .line 222
    iget-wide v0, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->waitingStart:J

    return-wide v0
.end method

.method public static synthetic access$1002(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;J)J
    .registers 3

    .line 222
    iput-wide p1, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->waitingStart:J

    return-wide p1
.end method

.method public static synthetic access$102(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;Z)Z
    .registers 2

    .line 222
    iput-boolean p1, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->created:Z

    return p1
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;)Z
    .registers 1

    .line 222
    iget-boolean p0, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->waiting:Z

    return p0
.end method

.method public static synthetic access$202(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;Z)Z
    .registers 2

    .line 222
    iput-boolean p1, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->waiting:Z

    return p1
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;)Z
    .registers 1

    .line 222
    iget-boolean p0, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->locked:Z

    return p0
.end method

.method public static synthetic access$302(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;Z)Z
    .registers 2

    .line 222
    iput-boolean p1, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->locked:Z

    return p1
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;)Z
    .registers 1

    .line 222
    iget-boolean p0, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->prevFreemode:Z

    return p0
.end method

.method public static synthetic access$402(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;Z)Z
    .registers 2

    .line 222
    iput-boolean p1, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->prevFreemode:Z

    return p1
.end method

.method public static synthetic access$502(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;Z)Z
    .registers 2

    .line 222
    iput-boolean p1, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->acquired:Z

    return p1
.end method

.method public static synthetic access$602(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;Z)Z
    .registers 2

    .line 222
    iput-boolean p1, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->canBeAcquired:Z

    return p1
.end method

.method public static synthetic access$702(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 222
    iput-object p1, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->author:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$802(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;I)I
    .registers 2

    .line 222
    iput p1, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->downloads:I

    return p1
.end method

.method public static synthetic access$900(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;)I
    .registers 1

    .line 222
    iget p0, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->waitingTime:I

    return p0
.end method

.method public static synthetic access$902(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;I)I
    .registers 2

    .line 222
    iput p1, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->waitingTime:I

    return p1
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .registers 2

    .line 295
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloads()I
    .registers 2

    .line 299
    iget v0, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->downloads:I

    return v0
.end method

.method public isAcquired()Z
    .registers 2

    .line 287
    iget-boolean v0, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->acquired:Z

    return v0
.end method

.method public isCanBeAcquired()Z
    .registers 2

    .line 291
    iget-boolean v0, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->canBeAcquired:Z

    return v0
.end method

.method public isCreated()Z
    .registers 2

    .line 275
    iget-boolean v0, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->created:Z

    return v0
.end method

.method public isLocked()Z
    .registers 2

    .line 240
    iget-boolean v0, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->locked:Z

    return v0
.end method

.method public isWaitingToUnlock()Z
    .registers 2

    .line 244
    iget-boolean v0, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->waiting:Z

    return v0
.end method

.method public setCreated(Z)V
    .registers 2

    .line 279
    iput-boolean p1, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->created:Z

    return-void
.end method

.method public setLocked(Z)V
    .registers 2

    .line 270
    iput-boolean p1, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->locked:Z

    const/4 p1, 0x0

    .line 271
    iput-boolean p1, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->waiting:Z

    return-void
.end method

.method public setTimeUntilUnlock(I)V
    .registers 4

    const/4 v0, 0x1

    .line 264
    iput-boolean v0, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->waiting:Z

    .line 265
    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->waitingStart:J

    .line 266
    iput p1, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->waitingTime:I

    return-void
.end method

.method public timeUntilUnlockInMS()I
    .registers 5

    .line 252
    iget-wide v0, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->waitingStart:J

    iget v2, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->waitingTime:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    if-gez v0, :cond_14

    const/4 v0, 0x0

    return v0

    .line 255
    :cond_14
    iget v1, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->waitingTime:I

    if-le v0, v1, :cond_24

    .line 256
    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->waitingStart:J

    .line 257
    iget v0, p0, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->waitingTime:I

    :cond_24
    return v0
.end method
