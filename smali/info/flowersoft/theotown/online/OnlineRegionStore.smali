###### Class info.flowersoft.theotown.online.OnlineRegionStore (info.flowersoft.theotown.online.OnlineRegionStore)
.class public Linfo/flowersoft/theotown/online/OnlineRegionStore;
.super Ljava/lang/Object;
.source "OnlineRegionStore.java"


# instance fields
.field public GET_FILE_URL:Ljava/lang/String;

.field public idToRegion:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Linfo/flowersoft/theotown/online/VirtualRegion;",
            ">;"
        }
    .end annotation
.end field

.field public regions:[Linfo/flowersoft/theotown/online/VirtualRegion;

.field public final service:Linfo/flowersoft/theotown/backend/Service;

.field public tags:Linfo/flowersoft/theotown/online/RegionTagMap;

.field public visitedRegionIds:Lio/blueflower/stapel2d/util/IntList;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Linfo/flowersoft/theotown/backend/Service;

    const-string v1, "region/region"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/backend/Service;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore;->service:Linfo/flowersoft/theotown/backend/Service;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore;->idToRegion:Ljava/util/Map;

    .line 175
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore;->visitedRegionIds:Lio/blueflower/stapel2d/util/IntList;

    return-void
.end method

.method public static synthetic access$002(Linfo/flowersoft/theotown/online/OnlineRegionStore;Linfo/flowersoft/theotown/online/RegionTagMap;)Linfo/flowersoft/theotown/online/RegionTagMap;
    .registers 2

    .line 18
    iput-object p1, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore;->tags:Linfo/flowersoft/theotown/online/RegionTagMap;

    return-object p1
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/online/OnlineRegionStore;Linfo/flowersoft/theotown/util/json/JSONArray;)Linfo/flowersoft/theotown/online/RegionTagMap;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 18
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->parseTags(Linfo/flowersoft/theotown/util/json/JSONArray;)Linfo/flowersoft/theotown/online/RegionTagMap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$202(Linfo/flowersoft/theotown/online/OnlineRegionStore;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 18
    iput-object p1, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore;->GET_FILE_URL:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/online/OnlineRegionStore;)[Linfo/flowersoft/theotown/online/VirtualRegion;
    .registers 1

    .line 18
    iget-object p0, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore;->regions:[Linfo/flowersoft/theotown/online/VirtualRegion;

    return-object p0
.end method

.method public static synthetic access$302(Linfo/flowersoft/theotown/online/OnlineRegionStore;[Linfo/flowersoft/theotown/online/VirtualRegion;)[Linfo/flowersoft/theotown/online/VirtualRegion;
    .registers 2

    .line 18
    iput-object p1, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore;->regions:[Linfo/flowersoft/theotown/online/VirtualRegion;

    return-object p1
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/online/OnlineRegionStore;)Ljava/util/Map;
    .registers 1

    .line 18
    iget-object p0, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore;->idToRegion:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$402(Linfo/flowersoft/theotown/online/OnlineRegionStore;Ljava/util/Map;)Ljava/util/Map;
    .registers 2

    .line 18
    iput-object p1, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore;->idToRegion:Ljava/util/Map;

    return-object p1
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/online/OnlineRegionStore;I)I
    .registers 2

    .line 18
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->getRegionIndex(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public fetchCityComments(ILjava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 6

    .line 69
    iget-object v0, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore;->service:Linfo/flowersoft/theotown/backend/Service;

    const-string v1, "city comments"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/backend/Service;->buildRequest(Ljava/lang/String;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v0

    const-string v1, "city_id"

    .line 70
    invoke-virtual {v0, v1, p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    const-string v0, "password"

    .line 71
    invoke-virtual {p1, v0, p2}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    .line 72
    invoke-virtual {p0}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->getUserId()J

    move-result-wide v0

    long-to-float p2, v0

    const-string v0, "user_id"

    invoke-virtual {p1, v0, p2}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;F)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    .line 73
    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->build()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    .line 74
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object p2

    iget-object v0, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore;->service:Linfo/flowersoft/theotown/backend/Service;

    invoke-virtual {v0, p1, p3}, Linfo/flowersoft/theotown/backend/Service;->buildTask(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Service$Handler;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Linfo/flowersoft/theotown/backend/Backend$Task;->setUserBound(Z)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    return-void
.end method

.method public fetchCityGifts(ILinfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 5

    .line 78
    iget-object v0, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore;->service:Linfo/flowersoft/theotown/backend/Service;

    const-string v1, "city gifts"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/backend/Service;->buildRequest(Ljava/lang/String;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v0

    const-string v1, "city_id"

    .line 79
    invoke-virtual {v0, v1, p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    .line 80
    invoke-virtual {p0}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->getUserId()J

    move-result-wide v0

    long-to-float v0, v0

    const-string v1, "user_id"

    invoke-virtual {p1, v1, v0}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;F)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    .line 81
    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->build()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    .line 82
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore;->service:Linfo/flowersoft/theotown/backend/Service;

    invoke-virtual {v1, p1, p2}, Linfo/flowersoft/theotown/backend/Service;->buildTask(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Service$Handler;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/backend/Backend$Task;->setUserBound(Z)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    return-void
.end method

.method public fetchEnterRegion(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-lez p5, :cond_c

    .line 178
    iget-object v1, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore;->visitedRegionIds:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1, p5}, Lio/blueflower/stapel2d/util/IntList;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_c

    move p5, v0

    :cond_c
    if-lez p5, :cond_13

    .line 179
    iget-object v1, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore;->visitedRegionIds:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1, p5}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 181
    :cond_13
    iget-object v1, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore;->service:Linfo/flowersoft/theotown/backend/Service;

    const-string v2, "enter region"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/backend/Service;->buildRequest(Ljava/lang/String;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->build()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v1

    .line 183
    :try_start_1f
    const-string v2, "region_id"

    invoke-virtual {v1, v2, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v2

    const-string v3, "user_id"

    .line 184
    invoke-virtual {p0}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->getUserId()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;J)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v2

    const-string v3, "city_id"

    .line 185
    invoke-virtual {v2, v3, p5}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/util/json/JSONObject;

    if-eqz p2, :cond_46

    .line 186
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_46

    const-string p5, "password"

    invoke-virtual {v1, p5, p2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;
    :try_end_41
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_1f .. :try_end_41} :catch_42

    goto :goto_46

    :catch_42
    move-exception p2

    .line 188
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 191
    :cond_46
    :goto_46
    iget-object p2, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore;->service:Linfo/flowersoft/theotown/backend/Service;

    new-instance p5, Linfo/flowersoft/theotown/online/OnlineRegionStore$3;

    invoke-direct {p5, p0, p1, p3, p4}, Linfo/flowersoft/theotown/online/OnlineRegionStore$3;-><init>(Linfo/flowersoft/theotown/online/OnlineRegionStore;ILjava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V

    invoke-virtual {p2, v1, p5}, Linfo/flowersoft/theotown/backend/Service;->buildTask(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Service$Handler;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    .line 226
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/backend/Backend$Task;->setUserBound(Z)Linfo/flowersoft/theotown/backend/Backend$Task;

    .line 227
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object p2

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    return-void
.end method

.method public fetchListRegions(Ljava/lang/Runnable;Ljava/lang/String;JLjava/lang/String;)V
    .registers 8

    .line 135
    iget-object v0, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore;->service:Linfo/flowersoft/theotown/backend/Service;

    const-string v1, "list regions"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/backend/Service;->buildRequest(Ljava/lang/String;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v0

    const-string v1, "type"

    .line 136
    invoke-virtual {v0, v1, p2}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p2

    const-string v0, "type_id"

    long-to-float p3, p3

    .line 137
    invoke-virtual {p2, v0, p3}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;F)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p2

    const-string p3, "type_extra"

    .line 138
    invoke-virtual {p2, p3, p5}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p2

    .line 139
    invoke-virtual {p0}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->getUserId()J

    move-result-wide p3

    long-to-float p3, p3

    const-string p4, "user_id"

    invoke-virtual {p2, p4, p3}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;F)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p2

    .line 140
    invoke-virtual {p2}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->build()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p2

    .line 141
    iget-object p3, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore;->service:Linfo/flowersoft/theotown/backend/Service;

    new-instance p4, Linfo/flowersoft/theotown/online/OnlineRegionStore$2;

    invoke-direct {p4, p0, p1}, Linfo/flowersoft/theotown/online/OnlineRegionStore$2;-><init>(Linfo/flowersoft/theotown/online/OnlineRegionStore;Ljava/lang/Runnable;)V

    invoke-virtual {p3, p2, p4}, Linfo/flowersoft/theotown/backend/Service;->buildTask(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Service$Handler;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    const/4 p2, 0x0

    .line 171
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/backend/Backend$Task;->setUserBound(Z)Linfo/flowersoft/theotown/backend/Backend$Task;

    .line 172
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object p2

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    return-void
.end method

.method public fetchRegionComments(ILjava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 6

    .line 60
    iget-object v0, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore;->service:Linfo/flowersoft/theotown/backend/Service;

    const-string v1, "region comments"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/backend/Service;->buildRequest(Ljava/lang/String;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v0

    const-string v1, "region_id"

    .line 61
    invoke-virtual {v0, v1, p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    const-string v0, "password"

    .line 62
    invoke-virtual {p1, v0, p2}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    .line 63
    invoke-virtual {p0}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->getUserId()J

    move-result-wide v0

    long-to-float p2, v0

    const-string v0, "user_id"

    invoke-virtual {p1, v0, p2}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;F)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->build()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    .line 65
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object p2

    iget-object v0, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore;->service:Linfo/flowersoft/theotown/backend/Service;

    invoke-virtual {v0, p1, p3}, Linfo/flowersoft/theotown/backend/Service;->buildTask(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Service$Handler;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Linfo/flowersoft/theotown/backend/Backend$Task;->setUserBound(Z)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    return-void
.end method

.method public fetchTags(Ljava/lang/Runnable;)V
    .registers 5

    .line 109
    iget-object v0, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore;->service:Linfo/flowersoft/theotown/backend/Service;

    const-string v1, "list tags"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/backend/Service;->buildRequest(Ljava/lang/String;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v0

    .line 110
    invoke-virtual {p0}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->getUserId()J

    move-result-wide v1

    long-to-float v1, v1

    const-string v2, "user_id"

    invoke-virtual {v0, v2, v1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;F)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->build()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    .line 112
    iget-object v1, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore;->service:Linfo/flowersoft/theotown/backend/Service;

    new-instance v2, Linfo/flowersoft/theotown/online/OnlineRegionStore$1;

    invoke-direct {v2, p0, p1}, Linfo/flowersoft/theotown/online/OnlineRegionStore$1;-><init>(Linfo/flowersoft/theotown/online/OnlineRegionStore;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v0, v2}, Linfo/flowersoft/theotown/backend/Service;->buildTask(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Service$Handler;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/backend/Backend$Task;->setUserBound(Z)Linfo/flowersoft/theotown/backend/Backend$Task;

    .line 131
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    return-void
.end method

.method public fetchUsersByName(Ljava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 6

    .line 52
    iget-object v0, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore;->service:Linfo/flowersoft/theotown/backend/Service;

    const-string v1, "search user"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/backend/Service;->buildRequest(Ljava/lang/String;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v0

    const-string v1, "term"

    .line 53
    invoke-virtual {v0, v1, p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    .line 54
    const-string v0, "user_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->build()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    .line 56
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    iget-object v2, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore;->service:Linfo/flowersoft/theotown/backend/Service;

    invoke-virtual {v2, p1, p2}, Linfo/flowersoft/theotown/backend/Service;->buildTask(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Service$Handler;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/backend/Backend$Task;->setUserBound(Z)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    return-void
.end method

.method public getFilePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore;->GET_FILE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRegion(I)Linfo/flowersoft/theotown/online/VirtualRegion;
    .registers 3

    .line 235
    iget-object v0, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore;->idToRegion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/online/VirtualRegion;

    return-object p1
.end method

.method public final getRegionIndex(I)I
    .registers 5

    const/4 v0, 0x0

    .line 243
    :goto_1
    iget-object v1, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore;->regions:[Linfo/flowersoft/theotown/online/VirtualRegion;

    array-length v2, v1

    if-ge v0, v2, :cond_12

    .line 244
    aget-object v1, v1, v0

    invoke-virtual {v1}, Linfo/flowersoft/theotown/online/VirtualRegion;->getId()I

    move-result v1

    if-ne v1, p1, :cond_f

    return v0

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    const/4 p1, -0x1

    return p1
.end method

.method public getRegions()[Linfo/flowersoft/theotown/online/VirtualRegion;
    .registers 2

    .line 231
    iget-object v0, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore;->regions:[Linfo/flowersoft/theotown/online/VirtualRegion;

    return-object v0
.end method

.method public getTags()Linfo/flowersoft/theotown/online/RegionTagMap;
    .registers 2

    .line 239
    iget-object v0, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore;->tags:Linfo/flowersoft/theotown/online/RegionTagMap;

    return-object v0
.end method

.method public final getUserId()J
    .registers 3

    .line 86
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 88
    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->isForumConnected()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 89
    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->getId()J

    move-result-wide v0

    return-wide v0

    :cond_1b
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final parseTags(Linfo/flowersoft/theotown/util/json/JSONArray;)Linfo/flowersoft/theotown/online/RegionTagMap;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 96
    new-instance v0, Linfo/flowersoft/theotown/online/RegionTagMap;

    invoke-direct {v0}, Linfo/flowersoft/theotown/online/RegionTagMap;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 97
    :goto_7
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3a

    .line 98
    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->getJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v3

    .line 99
    const-string v4, "id"

    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 100
    const-string v5, "name"

    invoke-virtual {v3, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 101
    const-string v6, "color"

    invoke-virtual {v3, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    new-instance v8, Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v8}, Lio/blueflower/stapel2d/drawing/Color;-><init>()V

    invoke-static {v6, v7, v8}, Lio/blueflower/stapel2d/drawing/Color;->fromHex(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v6

    .line 102
    const-string v7, "ctr"

    invoke-virtual {v3, v7, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 103
    invoke-virtual {v0, v4, v5, v6, v3}, Linfo/flowersoft/theotown/online/RegionTagMap;->put(ILjava/lang/String;Lio/blueflower/stapel2d/drawing/Color;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_3a
    return-object v0
.end method

.method public reportCity(ILjava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 6

    .line 28
    iget-object v0, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore;->service:Linfo/flowersoft/theotown/backend/Service;

    const-string v1, "report city"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/backend/Service;->buildRequest(Ljava/lang/String;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v0

    const-string v1, "city_id"

    .line 29
    invoke-virtual {v0, v1, p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    const-string v0, "reason"

    .line 30
    invoke-virtual {p1, v0, p2}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->build()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    .line 32
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object p2

    iget-object v0, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore;->service:Linfo/flowersoft/theotown/backend/Service;

    invoke-virtual {v0, p1, p3}, Linfo/flowersoft/theotown/backend/Service;->buildTask(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Service$Handler;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Linfo/flowersoft/theotown/backend/Backend$Task;->setUserBound(Z)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    return-void
.end method

.method public reportGift(ILjava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 6

    .line 44
    iget-object v0, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore;->service:Linfo/flowersoft/theotown/backend/Service;

    const-string v1, "report gift"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/backend/Service;->buildRequest(Ljava/lang/String;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v0

    const-string v1, "gift_id"

    .line 45
    invoke-virtual {v0, v1, p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    const-string v0, "reason"

    .line 46
    invoke-virtual {p1, v0, p2}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->build()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    .line 48
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object p2

    iget-object v0, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore;->service:Linfo/flowersoft/theotown/backend/Service;

    invoke-virtual {v0, p1, p3}, Linfo/flowersoft/theotown/backend/Service;->buildTask(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Service$Handler;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Linfo/flowersoft/theotown/backend/Backend$Task;->setUserBound(Z)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    return-void
.end method

.method public reportRegion(ILjava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 6

    .line 36
    iget-object v0, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore;->service:Linfo/flowersoft/theotown/backend/Service;

    const-string v1, "report region"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/backend/Service;->buildRequest(Ljava/lang/String;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v0

    const-string v1, "region_id"

    .line 37
    invoke-virtual {v0, v1, p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    const-string v0, "reason"

    .line 38
    invoke-virtual {p1, v0, p2}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    .line 39
    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->build()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    .line 40
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object p2

    iget-object v0, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore;->service:Linfo/flowersoft/theotown/backend/Service;

    invoke-virtual {v0, p1, p3}, Linfo/flowersoft/theotown/backend/Service;->buildTask(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Service$Handler;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Linfo/flowersoft/theotown/backend/Backend$Task;->setUserBound(Z)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    return-void
.end method

###### Class info.flowersoft.theotown.online.OnlineRegionStore.AnonymousClass1 (info.flowersoft.theotown.online.OnlineRegionStore$1)
.class public Linfo/flowersoft/theotown/online/OnlineRegionStore$1;
.super Ljava/lang/Object;
.source "OnlineRegionStore.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Service$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/online/OnlineRegionStore;->fetchTags(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/online/OnlineRegionStore;

.field public final synthetic val$done:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/online/OnlineRegionStore;Ljava/lang/Runnable;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore$1;->this$0:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    iput-object p2, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore$1;->val$done:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 6

    .line 127
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error loading tags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "hint"

    const-string v3, "Unknown"

    invoke-virtual {p1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 5

    .line 116
    :try_start_0
    iget-object v0, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore$1;->this$0:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    monitor-enter v0
    :try_end_3
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_0 .. :try_end_3} :catch_19

    .line 117
    :try_start_3
    iget-object v1, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore$1;->this$0:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    const-string v2, "tags"

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object p1

    invoke-static {v1, p1}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->access$100(Linfo/flowersoft/theotown/online/OnlineRegionStore;Linfo/flowersoft/theotown/util/json/JSONArray;)Linfo/flowersoft/theotown/online/RegionTagMap;

    move-result-object p1

    invoke-static {v1, p1}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->access$002(Linfo/flowersoft/theotown/online/OnlineRegionStore;Linfo/flowersoft/theotown/online/RegionTagMap;)Linfo/flowersoft/theotown/online/RegionTagMap;

    .line 118
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_1b

    .line 119
    :try_start_13
    iget-object p1, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore$1;->val$done:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_18
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_13 .. :try_end_18} :catch_19

    return-void

    :catch_19
    move-exception p1

    goto :goto_1e

    :catchall_1b
    move-exception p1

    .line 118
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw p1
    :try_end_1e
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_1d .. :try_end_1e} :catch_19

    .line 121
    :goto_1e
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

###### Class info.flowersoft.theotown.online.OnlineRegionStore.AnonymousClass2 (info.flowersoft.theotown.online.OnlineRegionStore$2)
.class public Linfo/flowersoft/theotown/online/OnlineRegionStore$2;
.super Ljava/lang/Object;
.source "OnlineRegionStore.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Service$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/online/OnlineRegionStore;->fetchListRegions(Ljava/lang/Runnable;Ljava/lang/String;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/online/OnlineRegionStore;

.field public final synthetic val$done:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/online/OnlineRegionStore;Ljava/lang/Runnable;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 141
    iput-object p1, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore$2;->this$0:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    iput-object p2, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore$2;->val$done:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 6

    .line 168
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error loading region list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "hint"

    const-string v3, "Unknown"

    invoke-virtual {p1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 8

    .line 145
    :try_start_0
    iget-object v0, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore$2;->this$0:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    const-string v1, "get file url"

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->access$202(Linfo/flowersoft/theotown/online/OnlineRegionStore;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    iget-object v0, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore$2;->this$0:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    monitor-enter v0
    :try_end_e
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_0 .. :try_end_e} :catch_63

    .line 148
    :try_start_e
    iget-object v1, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore$2;->this$0:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    const-string v2, "tags"

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v2

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->access$100(Linfo/flowersoft/theotown/online/OnlineRegionStore;Linfo/flowersoft/theotown/util/json/JSONArray;)Linfo/flowersoft/theotown/online/RegionTagMap;

    move-result-object v2

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->access$002(Linfo/flowersoft/theotown/online/OnlineRegionStore;Linfo/flowersoft/theotown/online/RegionTagMap;)Linfo/flowersoft/theotown/online/RegionTagMap;

    .line 149
    const-string v1, "regions"

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object p1

    .line 150
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Linfo/flowersoft/theotown/online/VirtualRegion;

    .line 151
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    .line 152
    :goto_2f
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_52

    .line 153
    new-instance v4, Linfo/flowersoft/theotown/online/VirtualRegion;

    invoke-virtual {p1, v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->getJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5}, Linfo/flowersoft/theotown/online/VirtualRegion;-><init>(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    aput-object v4, v1, v3

    .line 154
    invoke-virtual {v4}, Linfo/flowersoft/theotown/online/VirtualRegion;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aget-object v5, v1, v3

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    :catchall_50
    move-exception p1

    goto :goto_65

    .line 156
    :cond_52
    iget-object p1, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore$2;->this$0:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    invoke-static {p1, v1}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->access$302(Linfo/flowersoft/theotown/online/OnlineRegionStore;[Linfo/flowersoft/theotown/online/VirtualRegion;)[Linfo/flowersoft/theotown/online/VirtualRegion;

    .line 157
    iget-object p1, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore$2;->this$0:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    invoke-static {p1, v2}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->access$402(Linfo/flowersoft/theotown/online/OnlineRegionStore;Ljava/util/Map;)Ljava/util/Map;

    .line 158
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_e .. :try_end_5d} :catchall_50

    .line 160
    :try_start_5d
    iget-object p1, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore$2;->val$done:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_62
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_5d .. :try_end_62} :catch_63

    return-void

    :catch_63
    move-exception p1

    goto :goto_67

    .line 158
    :goto_65
    :try_start_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_50

    :try_start_66
    throw p1
    :try_end_67
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_66 .. :try_end_67} :catch_63

    .line 162
    :goto_67
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

###### Class info.flowersoft.theotown.online.OnlineRegionStore.AnonymousClass3 (info.flowersoft.theotown.online.OnlineRegionStore$3)
.class public Linfo/flowersoft/theotown/online/OnlineRegionStore$3;
.super Ljava/lang/Object;
.source "OnlineRegionStore.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Service$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/online/OnlineRegionStore;->fetchEnterRegion(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/online/OnlineRegionStore;

.field public final synthetic val$done:Ljava/lang/Runnable;

.field public final synthetic val$onError:Lio/blueflower/stapel2d/util/Setter;

.field public final synthetic val$regionId:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/online/OnlineRegionStore;ILjava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 191
    iput-object p1, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore$3;->this$0:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    iput p2, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore$3;->val$regionId:I

    iput-object p3, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore$3;->val$done:Ljava/lang/Runnable;

    iput-object p4, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore$3;->val$onError:Lio/blueflower/stapel2d/util/Setter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 5

    .line 223
    iget-object v0, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore$3;->val$onError:Lio/blueflower/stapel2d/util/Setter;

    if-eqz v0, :cond_f

    const-string v1, "hint"

    const-string v2, "Error when entering region"

    invoke-virtual {p1, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    :cond_f
    return-void
.end method

.method public onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 5

    .line 195
    :try_start_0
    iget-object v0, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore$3;->this$0:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    const-string v1, "get file url"

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->access$202(Linfo/flowersoft/theotown/online/OnlineRegionStore;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    const-string v0, "region"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    .line 199
    new-instance v0, Linfo/flowersoft/theotown/online/VirtualRegion;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/online/VirtualRegion;-><init>(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    .line 200
    iget-object p1, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore$3;->this$0:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    iget v1, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore$3;->val$regionId:I

    invoke-static {p1, v1}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->access$500(Linfo/flowersoft/theotown/online/OnlineRegionStore;I)I

    move-result p1

    .line 202
    iget-object v1, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore$3;->this$0:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    monitor-enter v1
    :try_end_21
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_0 .. :try_end_21} :catch_62

    if-ltz p1, :cond_3d

    .line 204
    :try_start_23
    iget-object v2, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore$3;->this$0:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    invoke-static {v2}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->access$300(Linfo/flowersoft/theotown/online/OnlineRegionStore;)[Linfo/flowersoft/theotown/online/VirtualRegion;

    move-result-object v2

    aput-object v0, v2, p1

    .line 205
    iget-object p1, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore$3;->this$0:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    invoke-static {p1}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->access$400(Linfo/flowersoft/theotown/online/OnlineRegionStore;)Ljava/util/Map;

    move-result-object p1

    iget v2, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore$3;->val$regionId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_59

    :catchall_3b
    move-exception p1

    goto :goto_64

    .line 207
    :cond_3d
    iget-object p1, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore$3;->this$0:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    filled-new-array {v0}, [Linfo/flowersoft/theotown/online/VirtualRegion;

    move-result-object v2

    invoke-static {p1, v2}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->access$302(Linfo/flowersoft/theotown/online/OnlineRegionStore;[Linfo/flowersoft/theotown/online/VirtualRegion;)[Linfo/flowersoft/theotown/online/VirtualRegion;

    .line 208
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 209
    iget v2, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore$3;->val$regionId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v0, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore$3;->this$0:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->access$402(Linfo/flowersoft/theotown/online/OnlineRegionStore;Ljava/util/Map;)Ljava/util/Map;

    .line 212
    :goto_59
    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_23 .. :try_end_5a} :catchall_3b

    .line 214
    :try_start_5a
    iget-object p1, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore$3;->val$done:Ljava/lang/Runnable;

    if-eqz p1, :cond_74

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_61
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_5a .. :try_end_61} :catch_62

    return-void

    :catch_62
    move-exception p1

    goto :goto_66

    .line 212
    :goto_64
    :try_start_64
    monitor-exit v1
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_3b

    :try_start_65
    throw p1
    :try_end_66
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_65 .. :try_end_66} :catch_62

    .line 216
    :goto_66
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 217
    iget-object v0, p0, Linfo/flowersoft/theotown/online/OnlineRegionStore$3;->val$onError:Lio/blueflower/stapel2d/util/Setter;

    if-eqz v0, :cond_74

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    :cond_74
    return-void
.end method
