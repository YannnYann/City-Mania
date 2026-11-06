###### Class info.flowersoft.theotown.online.RegionUploader (info.flowersoft.theotown.online.RegionUploader)
.class public Linfo/flowersoft/theotown/online/RegionUploader;
.super Ljava/lang/Object;
.source "RegionUploader.java"


# static fields
.field public static final MANAGE_REGION_SERVICE:Linfo/flowersoft/theotown/backend/Service;


# instance fields
.field public final fileUploader:Linfo/flowersoft/theotown/backend/FileUploader;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 23
    new-instance v0, Linfo/flowersoft/theotown/backend/Service;

    const-string v1, "region/manage_region"

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/backend/Service;-><init>(Ljava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/online/RegionUploader;->MANAGE_REGION_SERVICE:Linfo/flowersoft/theotown/backend/Service;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Linfo/flowersoft/theotown/backend/FileUploader;

    invoke-direct {v0}, Linfo/flowersoft/theotown/backend/FileUploader;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/online/RegionUploader;->fileUploader:Linfo/flowersoft/theotown/backend/FileUploader;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/online/RegionUploader;)Linfo/flowersoft/theotown/backend/FileUploader;
    .registers 1

    .line 21
    iget-object p0, p0, Linfo/flowersoft/theotown/online/RegionUploader;->fileUploader:Linfo/flowersoft/theotown/backend/FileUploader;

    return-object p0
.end method

.method public static synthetic access$100()Linfo/flowersoft/theotown/backend/Service;
    .registers 1

    .line 21
    sget-object v0, Linfo/flowersoft/theotown/online/RegionUploader;->MANAGE_REGION_SERVICE:Linfo/flowersoft/theotown/backend/Service;

    return-object v0
.end method


# virtual methods
.method public acquireCity(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 149
    sget-object v0, Linfo/flowersoft/theotown/online/RegionUploader;->MANAGE_REGION_SERVICE:Linfo/flowersoft/theotown/backend/Service;

    const-string v1, "acquire"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/backend/Service;->buildRequest(Ljava/lang/String;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v1

    const-string v2, "city_id"

    .line 150
    invoke-virtual {v1, v2, p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    const-string v1, "password"

    .line 151
    invoke-virtual {p1, v1, p2}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->build()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    .line 152
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object p2

    new-instance v1, Linfo/flowersoft/theotown/online/RegionUploader$1;

    invoke-direct {v1, p0, p3, p4}, Linfo/flowersoft/theotown/online/RegionUploader$1;-><init>(Linfo/flowersoft/theotown/online/RegionUploader;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V

    invoke-virtual {v0, p1, v1}, Linfo/flowersoft/theotown/backend/Service;->buildTask(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Service$Handler;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    return-void
.end method

.method public applyRegionSettings(ILinfo/flowersoft/theotown/online/RegionSettings;Linfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 7

    .line 188
    sget-object v0, Linfo/flowersoft/theotown/online/RegionUploader;->MANAGE_REGION_SERVICE:Linfo/flowersoft/theotown/backend/Service;

    const-string v1, "configure region"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/backend/Service;->buildRequest(Ljava/lang/String;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v1

    const-string v2, "region_id"

    .line 189
    invoke-virtual {v1, v2, p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    .line 190
    iget-boolean v1, p2, Linfo/flowersoft/theotown/online/RegionSettings;->allowPlugins:Z

    const-string v2, "allow_plugins"

    invoke-virtual {p1, v2, v1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    .line 191
    iget-boolean v1, p2, Linfo/flowersoft/theotown/online/RegionSettings;->allowSandbox:Z

    const-string v2, "allow_sandbox"

    invoke-virtual {p1, v2, v1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    iget-object v1, p2, Linfo/flowersoft/theotown/online/RegionSettings;->icon:Linfo/flowersoft/theotown/region/RegionIcon;

    .line 192
    invoke-virtual {v1}, Linfo/flowersoft/theotown/region/RegionIcon;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "icon"

    invoke-virtual {p1, v2, v1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    const-string v1, "rules"

    iget-object v2, p2, Linfo/flowersoft/theotown/online/RegionSettings;->rules:Ljava/lang/String;

    .line 193
    invoke-virtual {p1, v1, v2}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    const-string v1, "infos"

    iget-object v2, p2, Linfo/flowersoft/theotown/online/RegionSettings;->infos:Ljava/lang/String;

    .line 194
    invoke-virtual {p1, v1, v2}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    const-string v1, "password"

    iget-object v2, p2, Linfo/flowersoft/theotown/online/RegionSettings;->password:Ljava/lang/String;

    .line 195
    invoke-virtual {p1, v1, v2}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    iget-boolean v1, p2, Linfo/flowersoft/theotown/online/RegionSettings;->enforcePassword:Z

    .line 196
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "enforce_password"

    invoke-virtual {p1, v2, v1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    const-string v1, "winter"

    iget v2, p2, Linfo/flowersoft/theotown/online/RegionSettings;->winter:I

    .line 197
    invoke-virtual {p1, v1, v2}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    .line 198
    invoke-virtual {p2}, Linfo/flowersoft/theotown/online/RegionSettings;->getExtra()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra"

    invoke-virtual {p1, v2, v1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    iget-object p2, p2, Linfo/flowersoft/theotown/online/RegionSettings;->tags:Lio/blueflower/stapel2d/util/IntList;

    const-string v1, ","

    .line 199
    invoke-virtual {p2, v1}, Lio/blueflower/stapel2d/util/IntList;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "tags"

    invoke-virtual {p1, v1, p2}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    .line 200
    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->build()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    .line 201
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object p2

    invoke-virtual {v0, p1, p3}, Linfo/flowersoft/theotown/backend/Service;->buildTask(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Service$Handler;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    return-void
.end method

.method public clearCityRequests(ILinfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 6

    .line 173
    sget-object v0, Linfo/flowersoft/theotown/online/RegionUploader;->MANAGE_REGION_SERVICE:Linfo/flowersoft/theotown/backend/Service;

    const-string v1, "clear city reports"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/backend/Service;->buildRequest(Ljava/lang/String;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v1

    const-string v2, "city_id"

    .line 174
    invoke-virtual {v1, v2, p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    .line 175
    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->build()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    .line 176
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v1

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/backend/Service;->buildTask(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Service$Handler;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    return-void
.end method

.method public clearRegionReports(ILinfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 6

    .line 166
    sget-object v0, Linfo/flowersoft/theotown/online/RegionUploader;->MANAGE_REGION_SERVICE:Linfo/flowersoft/theotown/backend/Service;

    const-string v1, "clear region reports"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/backend/Service;->buildRequest(Ljava/lang/String;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v1

    const-string v2, "region_id"

    .line 167
    invoke-virtual {v1, v2, p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    .line 168
    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->build()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    .line 169
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v1

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/backend/Service;->buildTask(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Service$Handler;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    return-void
.end method

.method public commentCity(ILjava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 8

    .line 141
    sget-object v0, Linfo/flowersoft/theotown/online/RegionUploader;->MANAGE_REGION_SERVICE:Linfo/flowersoft/theotown/backend/Service;

    const-string v1, "comment city"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/backend/Service;->buildRequest(Ljava/lang/String;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v1

    const-string v2, "city_id"

    .line 142
    invoke-virtual {v1, v2, p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    const-string v1, "content"

    .line 143
    invoke-virtual {p1, v1, p3}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    const-string p3, "password"

    .line 144
    invoke-virtual {p1, p3, p2}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->build()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    .line 145
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object p2

    invoke-virtual {v0, p1, p4}, Linfo/flowersoft/theotown/backend/Service;->buildTask(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Service$Handler;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    return-void
.end method

.method public commentRegion(ILjava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 8

    .line 133
    sget-object v0, Linfo/flowersoft/theotown/online/RegionUploader;->MANAGE_REGION_SERVICE:Linfo/flowersoft/theotown/backend/Service;

    const-string v1, "comment region"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/backend/Service;->buildRequest(Ljava/lang/String;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v1

    const-string v2, "region_id"

    .line 134
    invoke-virtual {v1, v2, p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    const-string v1, "content"

    .line 135
    invoke-virtual {p1, v1, p3}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    const-string p3, "password"

    .line 136
    invoke-virtual {p1, p3, p2}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->build()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    .line 137
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object p2

    invoke-virtual {v0, p1, p4}, Linfo/flowersoft/theotown/backend/Service;->buildTask(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Service$Handler;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    return-void
.end method

.method public deleteGift(ILinfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 6

    .line 62
    sget-object v0, Linfo/flowersoft/theotown/online/RegionUploader;->MANAGE_REGION_SERVICE:Linfo/flowersoft/theotown/backend/Service;

    const-string v1, "delete gift"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/backend/Service;->buildRequest(Ljava/lang/String;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v1

    const-string v2, "gift_id"

    .line 63
    invoke-virtual {v1, v2, p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->build()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    .line 65
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v1

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/backend/Service;->buildTask(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Service$Handler;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    return-void
.end method

.method public deleteRegion(ILjava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 7

    .line 111
    sget-object v0, Linfo/flowersoft/theotown/online/RegionUploader;->MANAGE_REGION_SERVICE:Linfo/flowersoft/theotown/backend/Service;

    const-string v1, "delete region"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/backend/Service;->buildRequest(Ljava/lang/String;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v1

    const-string v2, "region_id"

    .line 112
    invoke-virtual {v1, v2, p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    const-string v1, "reason"

    .line 113
    invoke-virtual {p1, v1, p2}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    .line 114
    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->build()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    .line 115
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object p2

    invoke-virtual {v0, p1, p3}, Linfo/flowersoft/theotown/backend/Service;->buildTask(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Service$Handler;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    return-void
.end method

.method public listNotifications(Linfo/flowersoft/theotown/backend/Service$Handler;Z)V
    .registers 6

    .line 32
    sget-object v0, Linfo/flowersoft/theotown/online/RegionUploader;->MANAGE_REGION_SERVICE:Linfo/flowersoft/theotown/backend/Service;

    const-string v1, "list notifications"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/backend/Service;->buildRequest(Ljava/lang/String;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v1

    .line 33
    const-string v2, "unseen_only"

    invoke-virtual {v1, v2, p2}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p2

    .line 34
    invoke-virtual {p2}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->build()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p2

    .line 35
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v1

    invoke-virtual {v0, p2, p1}, Linfo/flowersoft/theotown/backend/Service;->buildTask(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Service$Handler;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    return-void
.end method

.method public makeGift(ILjava/lang/String;DLjava/lang/String;ZLinfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 11

    .line 44
    sget-object v0, Linfo/flowersoft/theotown/online/RegionUploader;->MANAGE_REGION_SERVICE:Linfo/flowersoft/theotown/backend/Service;

    const-string v1, "make gift"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/backend/Service;->buildRequest(Ljava/lang/String;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v1

    const-string v2, "city_id"

    .line 45
    invoke-virtual {v1, v2, p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    const-string v1, "type"

    .line 46
    invoke-virtual {p1, v1, p2}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    const-string p2, "amount"

    .line 47
    invoke-virtual {p1, p2, p3, p4}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;D)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    const-string p2, "content"

    .line 48
    invoke-virtual {p1, p2, p5}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    .line 49
    const-string p2, "private"

    invoke-virtual {p1, p2, p6}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->build()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    .line 51
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object p2

    invoke-virtual {v0, p1, p7}, Linfo/flowersoft/theotown/backend/Service;->buildTask(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Service$Handler;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    return-void
.end method

.method public markNotificationsAsSeen(Linfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 5

    .line 39
    sget-object v0, Linfo/flowersoft/theotown/online/RegionUploader;->MANAGE_REGION_SERVICE:Linfo/flowersoft/theotown/backend/Service;

    const-string v1, "mark notifications as seen"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/backend/Service;->buildRequest(Ljava/lang/String;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->build()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v1

    .line 40
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v2

    invoke-virtual {v0, v1, p1}, Linfo/flowersoft/theotown/backend/Service;->buildTask(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Service$Handler;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    invoke-virtual {v2, p1}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    return-void
.end method

.method public removeOwner(ILjava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 7

    .line 77
    sget-object v0, Linfo/flowersoft/theotown/online/RegionUploader;->MANAGE_REGION_SERVICE:Linfo/flowersoft/theotown/backend/Service;

    const-string v1, "remove city owner"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/backend/Service;->buildRequest(Ljava/lang/String;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v1

    const-string v2, "city_id"

    .line 78
    invoke-virtual {v1, v2, p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    const-string v1, "reason"

    .line 79
    invoke-virtual {p1, v1, p2}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    .line 80
    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->build()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    .line 81
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object p2

    invoke-virtual {v0, p1, p3}, Linfo/flowersoft/theotown/backend/Service;->buildTask(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Service$Handler;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    return-void
.end method

.method public renameRegion(ILjava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 7

    .line 103
    sget-object v0, Linfo/flowersoft/theotown/online/RegionUploader;->MANAGE_REGION_SERVICE:Linfo/flowersoft/theotown/backend/Service;

    const-string v1, "rename region"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/backend/Service;->buildRequest(Ljava/lang/String;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v1

    const-string v2, "region_id"

    .line 104
    invoke-virtual {v1, v2, p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    const-string v1, "name"

    .line 105
    invoke-virtual {p1, v1, p2}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    .line 106
    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->build()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    .line 107
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object p2

    invoke-virtual {v0, p1, p3}, Linfo/flowersoft/theotown/backend/Service;->buildTask(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Service$Handler;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    return-void
.end method

.method public resetCity(ILjava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 7

    .line 69
    sget-object v0, Linfo/flowersoft/theotown/online/RegionUploader;->MANAGE_REGION_SERVICE:Linfo/flowersoft/theotown/backend/Service;

    const-string v1, "reset city"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/backend/Service;->buildRequest(Ljava/lang/String;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v1

    const-string v2, "city_id"

    .line 70
    invoke-virtual {v1, v2, p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    const-string v1, "reason"

    .line 71
    invoke-virtual {p1, v1, p2}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->build()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    .line 73
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object p2

    invoke-virtual {v0, p1, p3}, Linfo/flowersoft/theotown/backend/Service;->buildTask(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Service$Handler;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    return-void
.end method

.method public setCityAllowComments(IZLinfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 7

    .line 126
    sget-object v0, Linfo/flowersoft/theotown/online/RegionUploader;->MANAGE_REGION_SERVICE:Linfo/flowersoft/theotown/backend/Service;

    const-string v1, "set city allow comments"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/backend/Service;->buildRequest(Ljava/lang/String;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v1

    const-string v2, "city_id"

    .line 127
    invoke-virtual {v1, v2, p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    .line 128
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v1, "allow"

    invoke-virtual {p1, v1, p2}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->build()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    .line 129
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object p2

    invoke-virtual {v0, p1, p3}, Linfo/flowersoft/theotown/backend/Service;->buildTask(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Service$Handler;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    return-void
.end method

.method public setCityProtected(IZLinfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 7

    .line 180
    sget-object v0, Linfo/flowersoft/theotown/online/RegionUploader;->MANAGE_REGION_SERVICE:Linfo/flowersoft/theotown/backend/Service;

    const-string v1, "protect city"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/backend/Service;->buildRequest(Ljava/lang/String;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v1

    const-string v2, "city_id"

    .line 181
    invoke-virtual {v1, v2, p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    .line 182
    const-string v1, "state"

    invoke-virtual {p1, v1, p2}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    .line 183
    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->build()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    .line 184
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object p2

    invoke-virtual {v0, p1, p3}, Linfo/flowersoft/theotown/backend/Service;->buildTask(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Service$Handler;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    return-void
.end method

.method public setRegionAllowComments(IZLinfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 7

    .line 119
    sget-object v0, Linfo/flowersoft/theotown/online/RegionUploader;->MANAGE_REGION_SERVICE:Linfo/flowersoft/theotown/backend/Service;

    const-string v1, "set region allow comments"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/backend/Service;->buildRequest(Ljava/lang/String;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v1

    const-string v2, "region_id"

    .line 120
    invoke-virtual {v1, v2, p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    .line 121
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v1, "allow"

    invoke-virtual {p1, v1, p2}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->build()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    .line 122
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object p2

    invoke-virtual {v0, p1, p3}, Linfo/flowersoft/theotown/backend/Service;->buildTask(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Service$Handler;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    return-void
.end method

.method public transferCity(IILjava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 8

    .line 85
    sget-object v0, Linfo/flowersoft/theotown/online/RegionUploader;->MANAGE_REGION_SERVICE:Linfo/flowersoft/theotown/backend/Service;

    const-string v1, "transfer city"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/backend/Service;->buildRequest(Ljava/lang/String;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v1

    const-string v2, "city_id"

    .line 86
    invoke-virtual {v1, v2, p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    const-string v1, "new_owner_id"

    .line 87
    invoke-virtual {p1, v1, p2}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    const-string p2, "reason"

    .line 88
    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    .line 89
    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->build()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    .line 90
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object p2

    invoke-virtual {v0, p1, p4}, Linfo/flowersoft/theotown/backend/Service;->buildTask(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Service$Handler;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    return-void
.end method

.method public transferRegion(IILjava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 8

    .line 94
    sget-object v0, Linfo/flowersoft/theotown/online/RegionUploader;->MANAGE_REGION_SERVICE:Linfo/flowersoft/theotown/backend/Service;

    const-string v1, "transfer region"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/backend/Service;->buildRequest(Ljava/lang/String;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v1

    const-string v2, "region_id"

    .line 95
    invoke-virtual {v1, v2, p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    const-string v1, "new_owner_id"

    .line 96
    invoke-virtual {p1, v1, p2}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    const-string p2, "reason"

    .line 97
    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    .line 98
    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->build()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    .line 99
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object p2

    invoke-virtual {v0, p1, p4}, Linfo/flowersoft/theotown/backend/Service;->buildTask(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Service$Handler;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    return-void
.end method

.method public uploadCity(ILjava/io/File;)Lio/blueflower/stapel2d/util/Getter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/io/File;",
            ")",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 211
    new-instance v0, Linfo/flowersoft/theotown/online/RegionUploader$2;

    invoke-direct {v0, p0, p2, p1}, Linfo/flowersoft/theotown/online/RegionUploader$2;-><init>(Linfo/flowersoft/theotown/online/RegionUploader;Ljava/io/File;I)V

    return-object v0
.end method

.method public uploadRegion(Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;Linfo/flowersoft/theotown/util/ProgressVariable;Ljava/lang/String;Ljava/lang/String;Z)Lio/blueflower/stapel2d/util/Getter;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;",
            "Linfo/flowersoft/theotown/util/ProgressVariable;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 284
    new-instance v0, Linfo/flowersoft/theotown/online/RegionUploader$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/online/RegionUploader$3;-><init>(Linfo/flowersoft/theotown/online/RegionUploader;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;Linfo/flowersoft/theotown/util/ProgressVariable;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public useGift(ILinfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 6

    .line 55
    sget-object v0, Linfo/flowersoft/theotown/online/RegionUploader;->MANAGE_REGION_SERVICE:Linfo/flowersoft/theotown/backend/Service;

    const-string v1, "use gift"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/backend/Service;->buildRequest(Ljava/lang/String;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v1

    const-string v2, "gift_id"

    .line 56
    invoke-virtual {v1, v2, p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->build()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    .line 58
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v1

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/backend/Service;->buildTask(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Service$Handler;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    return-void
.end method

###### Class info.flowersoft.theotown.online.RegionUploader.AnonymousClass1 (info.flowersoft.theotown.online.RegionUploader$1)
.class public Linfo/flowersoft/theotown/online/RegionUploader$1;
.super Ljava/lang/Object;
.source "RegionUploader.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Service$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/online/RegionUploader;->acquireCity(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/online/RegionUploader;

.field public final synthetic val$onError:Lio/blueflower/stapel2d/util/Setter;

.field public final synthetic val$onSuccess:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/online/RegionUploader;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 152
    iput-object p1, p0, Linfo/flowersoft/theotown/online/RegionUploader$1;->this$0:Linfo/flowersoft/theotown/online/RegionUploader;

    iput-object p2, p0, Linfo/flowersoft/theotown/online/RegionUploader$1;->val$onSuccess:Ljava/lang/Runnable;

    iput-object p3, p0, Linfo/flowersoft/theotown/online/RegionUploader$1;->val$onError:Lio/blueflower/stapel2d/util/Setter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 5

    .line 160
    iget-object v0, p0, Linfo/flowersoft/theotown/online/RegionUploader$1;->val$onError:Lio/blueflower/stapel2d/util/Setter;

    const-string v1, "hint"

    const-string v2, "Error"

    invoke-virtual {p1, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 2

    .line 155
    iget-object p1, p0, Linfo/flowersoft/theotown/online/RegionUploader$1;->val$onSuccess:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

###### Class info.flowersoft.theotown.online.RegionUploader.AnonymousClass2 (info.flowersoft.theotown.online.RegionUploader$2)
.class public Linfo/flowersoft/theotown/online/RegionUploader$2;
.super Ljava/lang/Object;
.source "RegionUploader.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/online/RegionUploader;->uploadCity(ILjava/io/File;)Lio/blueflower/stapel2d/util/Getter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Getter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public done:Z

.field public failedMessage:Ljava/lang/String;

.field public fileId:I

.field public final synthetic this$0:Linfo/flowersoft/theotown/online/RegionUploader;

.field public final synthetic val$cityId:I

.field public final synthetic val$file:Ljava/io/File;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/online/RegionUploader;Ljava/io/File;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 211
    iput-object p1, p0, Linfo/flowersoft/theotown/online/RegionUploader$2;->this$0:Linfo/flowersoft/theotown/online/RegionUploader;

    iput-object p2, p0, Linfo/flowersoft/theotown/online/RegionUploader$2;->val$file:Ljava/io/File;

    iput p3, p0, Linfo/flowersoft/theotown/online/RegionUploader$2;->val$cityId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 211
    invoke-virtual {p0}, Linfo/flowersoft/theotown/online/RegionUploader$2;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .registers 7

    .line 219
    iget-object v0, p0, Linfo/flowersoft/theotown/online/RegionUploader$2;->this$0:Linfo/flowersoft/theotown/online/RegionUploader;

    invoke-static {v0}, Linfo/flowersoft/theotown/online/RegionUploader;->access$000(Linfo/flowersoft/theotown/online/RegionUploader;)Linfo/flowersoft/theotown/backend/FileUploader;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/online/RegionUploader$2;->val$file:Ljava/io/File;

    new-instance v2, Linfo/flowersoft/theotown/online/RegionUploader$2$1;

    invoke-direct {v2, p0}, Linfo/flowersoft/theotown/online/RegionUploader$2$1;-><init>(Linfo/flowersoft/theotown/online/RegionUploader$2;)V

    new-instance v3, Linfo/flowersoft/theotown/online/RegionUploader$2$2;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/online/RegionUploader$2$2;-><init>(Linfo/flowersoft/theotown/online/RegionUploader$2;)V

    const-string v4, "city"

    invoke-virtual {v0, v4, v1, v2, v3}, Linfo/flowersoft/theotown/backend/FileUploader;->addFile(Ljava/lang/String;Ljava/io/File;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;)Z

    :goto_17
    const-wide/16 v0, 0xa

    .line 234
    :try_start_19
    iget-boolean v2, p0, Linfo/flowersoft/theotown/online/RegionUploader$2;->done:Z

    if-nez v2, :cond_25

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_20} :catch_21

    goto :goto_17

    :catch_21
    move-exception v2

    .line 236
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 240
    :cond_25
    iget-object v2, p0, Linfo/flowersoft/theotown/online/RegionUploader$2;->failedMessage:Ljava/lang/String;

    if-nez v2, :cond_67

    .line 241
    invoke-static {}, Linfo/flowersoft/theotown/online/RegionUploader;->access$100()Linfo/flowersoft/theotown/backend/Service;

    move-result-object v2

    const-string v3, "update"

    .line 242
    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/backend/Service;->buildRequest(Ljava/lang/String;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v2

    const-string v3, "city_id"

    iget v4, p0, Linfo/flowersoft/theotown/online/RegionUploader$2;->val$cityId:I

    .line 243
    invoke-virtual {v2, v3, v4}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v2

    const-string v3, "file_id"

    iget v4, p0, Linfo/flowersoft/theotown/online/RegionUploader$2;->fileId:I

    .line 244
    invoke-virtual {v2, v3, v4}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->build()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v2

    .line 245
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v3

    invoke-static {}, Linfo/flowersoft/theotown/online/RegionUploader;->access$100()Linfo/flowersoft/theotown/backend/Service;

    move-result-object v4

    new-instance v5, Linfo/flowersoft/theotown/online/RegionUploader$2$3;

    invoke-direct {v5, p0}, Linfo/flowersoft/theotown/online/RegionUploader$2$3;-><init>(Linfo/flowersoft/theotown/online/RegionUploader$2;)V

    invoke-virtual {v4, v2, v5}, Linfo/flowersoft/theotown/backend/Service;->buildTask(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Service$Handler;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object v2

    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    .line 259
    :goto_5b
    :try_start_5b
    iget-boolean v2, p0, Linfo/flowersoft/theotown/online/RegionUploader$2;->done:Z

    if-nez v2, :cond_67

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_62
    .catch Ljava/lang/InterruptedException; {:try_start_5b .. :try_end_62} :catch_63

    goto :goto_5b

    :catch_63
    move-exception v0

    .line 261
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 265
    :cond_67
    iget-object v0, p0, Linfo/flowersoft/theotown/online/RegionUploader$2;->failedMessage:Ljava/lang/String;

    return-object v0
.end method

###### Class info.flowersoft.theotown.online.RegionUploader.AnonymousClass2.AnonymousClass1 (info.flowersoft.theotown.online.RegionUploader$2$1)
.class public Linfo/flowersoft/theotown/online/RegionUploader$2$1;
.super Ljava/lang/Object;
.source "RegionUploader.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/online/RegionUploader$2;->get()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Setter<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/online/RegionUploader$2;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/online/RegionUploader$2;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 219
    iput-object p1, p0, Linfo/flowersoft/theotown/online/RegionUploader$2$1;->this$1:Linfo/flowersoft/theotown/online/RegionUploader$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Ljava/lang/Integer;)V
    .registers 4

    .line 222
    iget-object v0, p0, Linfo/flowersoft/theotown/online/RegionUploader$2$1;->this$1:Linfo/flowersoft/theotown/online/RegionUploader$2;

    const/4 v1, 0x1

    iput-boolean v1, v0, Linfo/flowersoft/theotown/online/RegionUploader$2;->done:Z

    .line 223
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Linfo/flowersoft/theotown/online/RegionUploader$2;->fileId:I

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 219
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/online/RegionUploader$2$1;->set(Ljava/lang/Integer;)V

    return-void
.end method

###### Class info.flowersoft.theotown.online.RegionUploader.AnonymousClass2.C10772 (info.flowersoft.theotown.online.RegionUploader$2$2)
.class public Linfo/flowersoft/theotown/online/RegionUploader$2$2;
.super Ljava/lang/Object;
.source "RegionUploader.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/online/RegionUploader$2;->get()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Setter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/online/RegionUploader$2;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/online/RegionUploader$2;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 225
    iput-object p1, p0, Linfo/flowersoft/theotown/online/RegionUploader$2$2;->this$1:Linfo/flowersoft/theotown/online/RegionUploader$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 225
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/online/RegionUploader$2$2;->set(Ljava/lang/String;)V

    return-void
.end method

.method public set(Ljava/lang/String;)V
    .registers 4

    .line 228
    iget-object v0, p0, Linfo/flowersoft/theotown/online/RegionUploader$2$2;->this$1:Linfo/flowersoft/theotown/online/RegionUploader$2;

    const/4 v1, 0x1

    iput-boolean v1, v0, Linfo/flowersoft/theotown/online/RegionUploader$2;->done:Z

    .line 229
    iput-object p1, v0, Linfo/flowersoft/theotown/online/RegionUploader$2;->failedMessage:Ljava/lang/String;

    return-void
.end method

###### Class info.flowersoft.theotown.online.RegionUploader.AnonymousClass2.AnonymousClass3 (info.flowersoft.theotown.online.RegionUploader$2$3)
.class public Linfo/flowersoft/theotown/online/RegionUploader$2$3;
.super Ljava/lang/Object;
.source "RegionUploader.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Service$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/online/RegionUploader$2;->get()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/online/RegionUploader$2;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/online/RegionUploader$2;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 245
    iput-object p1, p0, Linfo/flowersoft/theotown/online/RegionUploader$2$3;->this$1:Linfo/flowersoft/theotown/online/RegionUploader$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 5

    .line 253
    iget-object v0, p0, Linfo/flowersoft/theotown/online/RegionUploader$2$3;->this$1:Linfo/flowersoft/theotown/online/RegionUploader$2;

    const/4 v1, 0x1

    iput-boolean v1, v0, Linfo/flowersoft/theotown/online/RegionUploader$2;->done:Z

    .line 254
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hint"

    invoke-virtual {p1, v2, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Linfo/flowersoft/theotown/online/RegionUploader$2;->failedMessage:Ljava/lang/String;

    return-void
.end method

.method public onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 3

    .line 248
    iget-object p1, p0, Linfo/flowersoft/theotown/online/RegionUploader$2$3;->this$1:Linfo/flowersoft/theotown/online/RegionUploader$2;

    const/4 v0, 0x1

    iput-boolean v0, p1, Linfo/flowersoft/theotown/online/RegionUploader$2;->done:Z

    return-void
.end method

###### Class info.flowersoft.theotown.online.RegionUploader.AnonymousClass3 (info.flowersoft.theotown.online.RegionUploader$3)
.class public Linfo/flowersoft/theotown/online/RegionUploader$3;
.super Ljava/lang/Object;
.source "RegionUploader.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/online/RegionUploader;->uploadRegion(Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;Linfo/flowersoft/theotown/util/ProgressVariable;Ljava/lang/String;Ljava/lang/String;Z)Lio/blueflower/stapel2d/util/Getter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Getter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public done:Z

.field public failedMessage:Ljava/lang/String;

.field public final synthetic this$0:Linfo/flowersoft/theotown/online/RegionUploader;

.field public final uploadedCities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Linfo/flowersoft/theotown/cityloader/CityKeeper;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic val$allowPlugins:Z

.field public final synthetic val$mapDirectory:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

.field public final synthetic val$name:Ljava/lang/String;

.field public final synthetic val$password:Ljava/lang/String;

.field public final synthetic val$progress:Linfo/flowersoft/theotown/util/ProgressVariable;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/online/RegionUploader;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;Linfo/flowersoft/theotown/util/ProgressVariable;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
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

    .line 284
    iput-object p1, p0, Linfo/flowersoft/theotown/online/RegionUploader$3;->this$0:Linfo/flowersoft/theotown/online/RegionUploader;

    iput-object p2, p0, Linfo/flowersoft/theotown/online/RegionUploader$3;->val$mapDirectory:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    iput-object p3, p0, Linfo/flowersoft/theotown/online/RegionUploader$3;->val$progress:Linfo/flowersoft/theotown/util/ProgressVariable;

    iput-object p4, p0, Linfo/flowersoft/theotown/online/RegionUploader$3;->val$name:Ljava/lang/String;

    iput-object p5, p0, Linfo/flowersoft/theotown/online/RegionUploader$3;->val$password:Ljava/lang/String;

    iput-boolean p6, p0, Linfo/flowersoft/theotown/online/RegionUploader$3;->val$allowPlugins:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/online/RegionUploader$3;->uploadedCities:Ljava/util/Map;

    return-void
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/online/RegionUploader$3;)Ljava/util/Map;
    .registers 1

    .line 284
    iget-object p0, p0, Linfo/flowersoft/theotown/online/RegionUploader$3;->uploadedCities:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$302(Linfo/flowersoft/theotown/online/RegionUploader$3;Z)Z
    .registers 2

    .line 284
    iput-boolean p1, p0, Linfo/flowersoft/theotown/online/RegionUploader$3;->done:Z

    return p1
.end method

.method public static synthetic access$402(Linfo/flowersoft/theotown/online/RegionUploader$3;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 284
    iput-object p1, p0, Linfo/flowersoft/theotown/online/RegionUploader$3;->failedMessage:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 284
    invoke-virtual {p0}, Linfo/flowersoft/theotown/online/RegionUploader$3;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .registers 12

    .line 292
    const-string v0, "name"

    iget-object v1, p0, Linfo/flowersoft/theotown/online/RegionUploader$3;->val$mapDirectory:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->getMaps()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 295
    :goto_a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const-wide/16 v5, 0xa

    if-ge v3, v4, :cond_52

    iget-object v4, p0, Linfo/flowersoft/theotown/online/RegionUploader$3;->failedMessage:Ljava/lang/String;

    if-nez v4, :cond_52

    .line 296
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/cityloader/CityKeeper;

    .line 297
    invoke-virtual {v4}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getFile()Ljava/io/File;

    move-result-object v7

    .line 298
    iput-boolean v2, p0, Linfo/flowersoft/theotown/online/RegionUploader$3;->done:Z

    .line 300
    iget-object v8, p0, Linfo/flowersoft/theotown/online/RegionUploader$3;->this$0:Linfo/flowersoft/theotown/online/RegionUploader;

    invoke-static {v8}, Linfo/flowersoft/theotown/online/RegionUploader;->access$000(Linfo/flowersoft/theotown/online/RegionUploader;)Linfo/flowersoft/theotown/backend/FileUploader;

    move-result-object v8

    new-instance v9, Linfo/flowersoft/theotown/online/RegionUploader$3$1;

    invoke-direct {v9, p0, v4}, Linfo/flowersoft/theotown/online/RegionUploader$3$1;-><init>(Linfo/flowersoft/theotown/online/RegionUploader$3;Linfo/flowersoft/theotown/cityloader/CityKeeper;)V

    new-instance v4, Linfo/flowersoft/theotown/online/RegionUploader$3$2;

    invoke-direct {v4, p0}, Linfo/flowersoft/theotown/online/RegionUploader$3$2;-><init>(Linfo/flowersoft/theotown/online/RegionUploader$3;)V

    const-string v10, "city"

    invoke-virtual {v8, v10, v7, v9, v4}, Linfo/flowersoft/theotown/backend/FileUploader;->addFile(Ljava/lang/String;Ljava/io/File;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;)Z

    .line 315
    :goto_37
    :try_start_37
    iget-boolean v4, p0, Linfo/flowersoft/theotown/online/RegionUploader$3;->done:Z

    if-nez v4, :cond_43

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3e
    .catch Ljava/lang/InterruptedException; {:try_start_37 .. :try_end_3e} :catch_3f

    goto :goto_37

    :catch_3f
    move-exception v4

    .line 317
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 320
    :cond_43
    iget-object v4, p0, Linfo/flowersoft/theotown/online/RegionUploader$3;->val$progress:Linfo/flowersoft/theotown/util/ProgressVariable;

    int-to-float v5, v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Linfo/flowersoft/theotown/util/ProgressVariable;->setProgress(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 323
    :cond_52
    iget-object v1, p0, Linfo/flowersoft/theotown/online/RegionUploader$3;->failedMessage:Ljava/lang/String;

    if-nez v1, :cond_10e

    .line 324
    iput-boolean v2, p0, Linfo/flowersoft/theotown/online/RegionUploader$3;->done:Z

    .line 327
    :try_start_58
    invoke-static {}, Linfo/flowersoft/theotown/online/RegionUploader;->access$100()Linfo/flowersoft/theotown/backend/Service;

    move-result-object v1

    const-string v2, "create"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/backend/Service;->buildRequest(Ljava/lang/String;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->build()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v1

    .line 329
    iget-object v2, p0, Linfo/flowersoft/theotown/online/RegionUploader$3;->val$name:Ljava/lang/String;

    if-eqz v2, :cond_74

    .line 330
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7e

    goto :goto_74

    :catch_71
    move-exception v0

    goto/16 :goto_f8

    :cond_74
    :goto_74
    iget-object v2, p0, Linfo/flowersoft/theotown/online/RegionUploader$3;->val$mapDirectory:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->getRegionInformation()Linfo/flowersoft/theotown/cityfile/RegionInformation;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/cityfile/RegionInformation;->getName()Ljava/lang/String;

    move-result-object v2

    .line 331
    :cond_7e
    invoke-virtual {v1, v0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 333
    iget-object v2, p0, Linfo/flowersoft/theotown/online/RegionUploader$3;->val$password:Ljava/lang/String;

    if-eqz v2, :cond_92

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_92

    .line 334
    const-string v2, "password"

    iget-object v3, p0, Linfo/flowersoft/theotown/online/RegionUploader$3;->val$password:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 337
    :cond_92
    const-string v2, "allow_plugins"

    iget-boolean v3, p0, Linfo/flowersoft/theotown/online/RegionUploader$3;->val$allowPlugins:Z

    if-eqz v3, :cond_9b

    const-string v3, "1"

    goto :goto_9d

    :cond_9b
    const-string v3, "0"

    :goto_9d
    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 339
    new-instance v2, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v2}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    .line 340
    iget-object v3, p0, Linfo/flowersoft/theotown/online/RegionUploader$3;->uploadedCities:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_af
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_de

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 341
    new-instance v7, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v7}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 342
    const-string v8, "id"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 343
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v0, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 344
    invoke-virtual {v2, v7}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    goto :goto_af

    .line 346
    :cond_de
    const-string v0, "files"

    invoke-virtual {v1, v0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 348
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-static {}, Linfo/flowersoft/theotown/online/RegionUploader;->access$100()Linfo/flowersoft/theotown/backend/Service;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/online/RegionUploader$3$3;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/online/RegionUploader$3$3;-><init>(Linfo/flowersoft/theotown/online/RegionUploader$3;)V

    invoke-virtual {v2, v1, v3}, Linfo/flowersoft/theotown/backend/Service;->buildTask(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Service$Handler;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V
    :try_end_f7
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_58 .. :try_end_f7} :catch_71

    goto :goto_fb

    .line 365
    :goto_f8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 369
    :goto_fb
    :try_start_fb
    iget-boolean v0, p0, Linfo/flowersoft/theotown/online/RegionUploader$3;->done:Z

    if-nez v0, :cond_107

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_102
    .catch Ljava/lang/InterruptedException; {:try_start_fb .. :try_end_102} :catch_103

    goto :goto_fb

    :catch_103
    move-exception v0

    .line 371
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 374
    :cond_107
    iget-object v0, p0, Linfo/flowersoft/theotown/online/RegionUploader$3;->val$progress:Linfo/flowersoft/theotown/util/ProgressVariable;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/ProgressVariable;->setProgress(F)V

    .line 377
    :cond_10e
    iget-object v0, p0, Linfo/flowersoft/theotown/online/RegionUploader$3;->failedMessage:Ljava/lang/String;

    return-object v0
.end method

###### Class info.flowersoft.theotown.online.RegionUploader.AnonymousClass3.AnonymousClass1 (info.flowersoft.theotown.online.RegionUploader$3$1)
.class public Linfo/flowersoft/theotown/online/RegionUploader$3$1;
.super Ljava/lang/Object;
.source "RegionUploader.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/online/RegionUploader$3;->get()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Setter<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/online/RegionUploader$3;

.field public final synthetic val$map:Linfo/flowersoft/theotown/cityloader/CityKeeper;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/online/RegionUploader$3;Linfo/flowersoft/theotown/cityloader/CityKeeper;)V
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

    .line 300
    iput-object p1, p0, Linfo/flowersoft/theotown/online/RegionUploader$3$1;->this$1:Linfo/flowersoft/theotown/online/RegionUploader$3;

    iput-object p2, p0, Linfo/flowersoft/theotown/online/RegionUploader$3$1;->val$map:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Ljava/lang/Integer;)V
    .registers 4

    .line 303
    iget-object v0, p0, Linfo/flowersoft/theotown/online/RegionUploader$3$1;->this$1:Linfo/flowersoft/theotown/online/RegionUploader$3;

    invoke-static {v0}, Linfo/flowersoft/theotown/online/RegionUploader$3;->access$200(Linfo/flowersoft/theotown/online/RegionUploader$3;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/online/RegionUploader$3$1;->val$map:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    iget-object p1, p0, Linfo/flowersoft/theotown/online/RegionUploader$3$1;->this$1:Linfo/flowersoft/theotown/online/RegionUploader$3;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/online/RegionUploader$3;->access$302(Linfo/flowersoft/theotown/online/RegionUploader$3;Z)Z

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 300
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/online/RegionUploader$3$1;->set(Ljava/lang/Integer;)V

    return-void
.end method

###### Class info.flowersoft.theotown.online.RegionUploader.AnonymousClass3.AnonymousClass2 (info.flowersoft.theotown.online.RegionUploader$3$2)
.class public Linfo/flowersoft/theotown/online/RegionUploader$3$2;
.super Ljava/lang/Object;
.source "RegionUploader.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/online/RegionUploader$3;->get()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Setter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/online/RegionUploader$3;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/online/RegionUploader$3;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 306
    iput-object p1, p0, Linfo/flowersoft/theotown/online/RegionUploader$3$2;->this$1:Linfo/flowersoft/theotown/online/RegionUploader$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 306
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/online/RegionUploader$3$2;->set(Ljava/lang/String;)V

    return-void
.end method

.method public set(Ljava/lang/String;)V
    .registers 4

    .line 309
    iget-object v0, p0, Linfo/flowersoft/theotown/online/RegionUploader$3$2;->this$1:Linfo/flowersoft/theotown/online/RegionUploader$3;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/online/RegionUploader$3;->access$302(Linfo/flowersoft/theotown/online/RegionUploader$3;Z)Z

    .line 310
    iget-object v0, p0, Linfo/flowersoft/theotown/online/RegionUploader$3$2;->this$1:Linfo/flowersoft/theotown/online/RegionUploader$3;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/online/RegionUploader$3;->access$402(Linfo/flowersoft/theotown/online/RegionUploader$3;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

###### Class info.flowersoft.theotown.online.RegionUploader.AnonymousClass3.C10783 (info.flowersoft.theotown.online.RegionUploader$3$3)
.class public Linfo/flowersoft/theotown/online/RegionUploader$3$3;
.super Ljava/lang/Object;
.source "RegionUploader.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Service$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/online/RegionUploader$3;->get()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/online/RegionUploader$3;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/online/RegionUploader$3;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 350
    iput-object p1, p0, Linfo/flowersoft/theotown/online/RegionUploader$3$3;->this$1:Linfo/flowersoft/theotown/online/RegionUploader$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 5

    .line 359
    iget-object v0, p0, Linfo/flowersoft/theotown/online/RegionUploader$3$3;->this$1:Linfo/flowersoft/theotown/online/RegionUploader$3;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {p1, v2, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hint"

    invoke-virtual {p1, v2, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/online/RegionUploader$3;->access$402(Linfo/flowersoft/theotown/online/RegionUploader$3;Ljava/lang/String;)Ljava/lang/String;

    .line 360
    iget-object p1, p0, Linfo/flowersoft/theotown/online/RegionUploader$3$3;->this$1:Linfo/flowersoft/theotown/online/RegionUploader$3;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/online/RegionUploader$3;->access$302(Linfo/flowersoft/theotown/online/RegionUploader$3;Z)Z

    return-void
.end method

.method public onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 3

    .line 353
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    const-string v0, "Successfully uploaded region"

    invoke-interface {p1, v0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    .line 354
    iget-object p1, p0, Linfo/flowersoft/theotown/online/RegionUploader$3$3;->this$1:Linfo/flowersoft/theotown/online/RegionUploader$3;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/online/RegionUploader$3;->access$302(Linfo/flowersoft/theotown/online/RegionUploader$3;Z)Z

    return-void
.end method
