###### Class info.flowersoft.theotown.draftloader.Generator (info.flowersoft.theotown.draftloader.Generator)
.class public Linfo/flowersoft/theotown/draftloader/Generator;
.super Ljava/lang/Object;
.source "Generator.java"


# static fields
.field public static instance:Linfo/flowersoft/theotown/draftloader/Generator;


# instance fields
.field public final LIGHT_DEFINITIONS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 10

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/draftloader/Generator;->LIGHT_DEFINITIONS:Ljava/util/Map;

    .line 22
    const-string v1, "[{\"id\":\"2x2l\", \"x\":7, \"y\":-7}, {\"id\":\"1x2l\", \"x\":10, \"y\":-6}, {\"id\":\"2x2l\", \"x\":13, \"y\":-4},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-2}, {\"id\":\"stair_nw\", \"x\":38, \"y\":1}, {\"id\":\"1x2l\", \"x\":41, \"y\":0},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-13}, {\"id\":\"1x2l\", \"x\":10, \"y\":-12}, {\"id\":\"2x2l\", \"x\":13, \"y\":-10},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-8}, {\"id\":\"2x2l\", \"x\":25, \"y\":-5}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-5},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-6},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-19}, {\"id\":\"1x2l\", \"x\":10, \"y\":-18}, {\"id\":\"2x2l\", \"x\":13, \"y\":-16},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-14}, {\"id\":\"2x2l\", \"x\":25, \"y\":-11}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-11},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-12},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-25}, {\"id\":\"1x2l\", \"x\":10, \"y\":-24}, {\"id\":\"2x2l\", \"x\":13, \"y\":-22},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-20}, {\"id\":\"2x2l\", \"x\":25, \"y\":-17}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-17},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-18}]"

    const-string v2, "$genres01variant3"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "$genres01variant2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v1, "[{\"id\":\"2x2l\", \"x\":7, \"y\":-7}, {\"id\":\"1x2l\", \"x\":10, \"y\":-6}, {\"id\":\"2x2l\", \"x\":13, \"y\":-4},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-2}, {\"id\":\"stair_nw\", \"x\":38, \"y\":1}, {\"id\":\"1x2l\", \"x\":41, \"y\":0},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-13}, {\"id\":\"1x2l\", \"x\":10, \"y\":-12}, {\"id\":\"2x2l\", \"x\":13, \"y\":-10},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-8}, {\"id\":\"2x2l\", \"x\":25, \"y\":-5}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-5},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-6},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-19}, {\"id\":\"1x2l\", \"x\":10, \"y\":-18}, {\"id\":\"2x2l\", \"x\":13, \"y\":-16},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-14}, {\"id\":\"2x2l\", \"x\":25, \"y\":-11}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-11},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-12},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-25}, {\"id\":\"1x2l\", \"x\":10, \"y\":-24}, {\"id\":\"2x2l\", \"x\":13, \"y\":-22},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-20}, {\"id\":\"2x2l\", \"x\":25, \"y\":-17}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-17},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-18},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-31}, {\"id\":\"1x2l\", \"x\":10, \"y\":-30}, {\"id\":\"2x2l\", \"x\":13, \"y\":-28},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-26}, {\"id\":\"2x2l\", \"x\":25, \"y\":-23}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-23},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-24},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-37}, {\"id\":\"1x2l\", \"x\":10, \"y\":-36}, {\"id\":\"2x2l\", \"x\":13, \"y\":-34},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-32}, {\"id\":\"2x2l\", \"x\":25, \"y\":-29}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-29},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-30},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-43}, {\"id\":\"1x2l\", \"x\":10, \"y\":-42}, {\"id\":\"2x2l\", \"x\":13, \"y\":-40},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-38}, {\"id\":\"2x2l\", \"x\":25, \"y\":-35}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-35},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-36}]"

    const-string v2, "$genres01variant5"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "$genres01variant4"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v1, "[{\"id\":\"2x2l\", \"x\":7, \"y\":-7}, {\"id\":\"1x2l\", \"x\":10, \"y\":-6}, {\"id\":\"2x2l\", \"x\":13, \"y\":-4},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-2}, {\"id\":\"stair_nw\", \"x\":38, \"y\":1}, {\"id\":\"1x2l\", \"x\":41, \"y\":0},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-13}, {\"id\":\"1x2l\", \"x\":10, \"y\":-12}, {\"id\":\"2x2l\", \"x\":13, \"y\":-10},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-8}, {\"id\":\"2x2l\", \"x\":25, \"y\":-5}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-5},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-6},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-19}, {\"id\":\"1x2l\", \"x\":10, \"y\":-18}, {\"id\":\"2x2l\", \"x\":13, \"y\":-16},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-14}, {\"id\":\"2x2l\", \"x\":25, \"y\":-11}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-11},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-12},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-25}, {\"id\":\"1x2l\", \"x\":10, \"y\":-24}, {\"id\":\"2x2l\", \"x\":13, \"y\":-22},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-20}, {\"id\":\"2x2l\", \"x\":25, \"y\":-17}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-17},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-18},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-31}, {\"id\":\"1x2l\", \"x\":10, \"y\":-30}, {\"id\":\"2x2l\", \"x\":13, \"y\":-28},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-26}, {\"id\":\"2x2l\", \"x\":25, \"y\":-23}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-23},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-24},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-37}, {\"id\":\"1x2l\", \"x\":10, \"y\":-36}, {\"id\":\"2x2l\", \"x\":13, \"y\":-34},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-32}, {\"id\":\"2x2l\", \"x\":25, \"y\":-29}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-29},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-30},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-43}, {\"id\":\"1x2l\", \"x\":10, \"y\":-42}, {\"id\":\"2x2l\", \"x\":13, \"y\":-40},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-38}, {\"id\":\"2x2l\", \"x\":25, \"y\":-35}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-35},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-36},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-49}, {\"id\":\"1x2l\", \"x\":10, \"y\":-48}, {\"id\":\"2x2l\", \"x\":13, \"y\":-46},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-44}, {\"id\":\"2x2l\", \"x\":25, \"y\":-41}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-41},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-42},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-55}, {\"id\":\"1x2l\", \"x\":10, \"y\":-54}, {\"id\":\"2x2l\", \"x\":13, \"y\":-52},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-50}, {\"id\":\"2x2l\", \"x\":25, \"y\":-47}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-47},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-48},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-61}, {\"id\":\"1x2l\", \"x\":10, \"y\":-60}, {\"id\":\"2x2l\", \"x\":13, \"y\":-58},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-56}, {\"id\":\"2x2l\", \"x\":25, \"y\":-53}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-53},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-54}]"

    const-string v2, "$genres01variant7"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "$genres01variant6"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v1, "[{\"id\":\"2x2l\", \"x\":7, \"y\":-7}, {\"id\":\"1x2l\", \"x\":10, \"y\":-6}, {\"id\":\"2x2l\", \"x\":13, \"y\":-4},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-2}, {\"id\":\"stair_nw\", \"x\":38, \"y\":1}, {\"id\":\"1x2l\", \"x\":41, \"y\":0},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-13}, {\"id\":\"1x2l\", \"x\":10, \"y\":-12}, {\"id\":\"2x2l\", \"x\":13, \"y\":-10},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-8}, {\"id\":\"2x2l\", \"x\":25, \"y\":-5}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-5},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-6},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-19}, {\"id\":\"1x2l\", \"x\":10, \"y\":-18}, {\"id\":\"2x2l\", \"x\":13, \"y\":-16},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-14}, {\"id\":\"2x2l\", \"x\":25, \"y\":-11}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-11},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-12},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-25}, {\"id\":\"1x2l\", \"x\":10, \"y\":-24}, {\"id\":\"2x2l\", \"x\":13, \"y\":-22},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-20}, {\"id\":\"2x2l\", \"x\":25, \"y\":-17}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-17},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-18},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-31}, {\"id\":\"1x2l\", \"x\":10, \"y\":-30}, {\"id\":\"2x2l\", \"x\":13, \"y\":-28},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-26}, {\"id\":\"2x2l\", \"x\":25, \"y\":-23}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-23},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-24},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-37}, {\"id\":\"1x2l\", \"x\":10, \"y\":-36}, {\"id\":\"2x2l\", \"x\":13, \"y\":-34},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-32}, {\"id\":\"2x2l\", \"x\":25, \"y\":-29}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-29},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-30},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-43}, {\"id\":\"1x2l\", \"x\":10, \"y\":-42}, {\"id\":\"2x2l\", \"x\":13, \"y\":-40},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-38}, {\"id\":\"2x2l\", \"x\":25, \"y\":-35}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-35},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-36},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-49}, {\"id\":\"1x2l\", \"x\":10, \"y\":-48}, {\"id\":\"2x2l\", \"x\":13, \"y\":-46},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-44}, {\"id\":\"2x2l\", \"x\":25, \"y\":-41}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-41},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-42},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-55}, {\"id\":\"1x2l\", \"x\":10, \"y\":-54}, {\"id\":\"2x2l\", \"x\":13, \"y\":-52},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-50}, {\"id\":\"2x2l\", \"x\":25, \"y\":-47}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-47},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-48},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-61}, {\"id\":\"1x2l\", \"x\":10, \"y\":-60}, {\"id\":\"2x2l\", \"x\":13, \"y\":-58},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-56}, {\"id\":\"2x2l\", \"x\":25, \"y\":-53}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-53},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-54},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-67}, {\"id\":\"1x2l\", \"x\":10, \"y\":-66}, {\"id\":\"2x2l\", \"x\":13, \"y\":-64},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-62}, {\"id\":\"2x2l\", \"x\":25, \"y\":-59}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-59},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-60},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-73}, {\"id\":\"1x2l\", \"x\":10, \"y\":-72}, {\"id\":\"2x2l\", \"x\":13, \"y\":-70},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-68}, {\"id\":\"2x2l\", \"x\":25, \"y\":-65}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-65},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-66},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-79}, {\"id\":\"1x2l\", \"x\":10, \"y\":-78}, {\"id\":\"2x2l\", \"x\":13, \"y\":-76},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-74}, {\"id\":\"2x2l\", \"x\":25, \"y\":-71}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-71},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-72}]"

    const-string v2, "$genres01variant9"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "$genres01variant8"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "{\"id\":\"cutelamp\", \"x\":2, \"y\":-8}, {\"id\":\"cutelamp\", \"x\":30, \"y\":5}, {\"id\":\"cutelamp\", \"x\":56, \"y\":-8}, {\"id\":\"1x2l\", \"x\":25, \"y\":-1}, {\"id\":\"1x1l\", \"x\":42, \"y\":-4}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "{\"id\":\"1x2l\", \"x\":13, \"y\":-13}, {\"id\":\"1x1l\", \"x\":19, \"y\":-16}, {\"id\":\"1x2l\", \"x\":27, \"y\":-12}, {\"id\":\"1x1l\", \"x\":42, \"y\":-10}, {\"id\":\"1x2l\", \"x\":48, \"y\":-19}"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "$genres02variant0"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "$genres02variant1"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "{\"id\":\"1x2l\", \"x\":13, \"y\":-25}, {\"id\":\"1x1l\", \"x\":19, \"y\":-40}, {\"id\":\"1x2l\", \"x\":27, \"y\":-24}, {\"id\":\"1x1l\", \"x\":42, \"y\":-22}, {\"id\":\"1x2l\", \"x\":48, \"y\":-31}"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v8, "$genres02variant2"

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "{\"id\":\"1x2l\", \"x\":13, \"y\":-37}, {\"id\":\"1x1l\", \"x\":19, \"y\":-52}, {\"id\":\"1x2l\", \"x\":27, \"y\":-36}, {\"id\":\"1x1l\", \"x\":42, \"y\":-34}, {\"id\":\"1x2l\", \"x\":48, \"y\":-43}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "$genres02variant3"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v1, "$gencom01variant0"

    const-string v2, "[{\"id\":\"4x3l_left_1\", \"x\":5, \"y\":-16}, {\"id\":\"4x3l_left_1\", \"x\":15, \"y\":-11}, \n  {\"id\":\"special_axiotower\", \"x\":25, \"y\":-6}, {\"id\":\"special_axiotower\", \"x\":25, \"y\":-15},\n  {\"id\":\"4x3l_right_1\", \"x\":52, \"y\":-16}, {\"id\":\"4x3l_right_1\", \"x\":52, \"y\":-25},\n  {\"id\":\"special7_com\", \"x\":2, \"y\":-28,\"night light probability\": 1}]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v1, "$gencom01variant2"

    const-string v2, "[{\"id\":\"4x3l_left_1\", \"x\":5, \"y\":-16}, {\"id\":\"4x3l_left_1\", \"x\":15, \"y\":-11}, \n  {\"id\":\"4x3l_left_1\", \"x\":5, \"y\":-25}, {\"id\":\"4x3l_left_1\", \"x\":15, \"y\":-20},\n  {\"id\":\"4x3l_left_1\", \"x\":5, \"y\":-34}, {\"id\":\"4x3l_left_1\", \"x\":15, \"y\":-29},  \n  {\"id\":\"special_axiotower\", \"x\":25, \"y\":-6}, {\"id\":\"special_axiotower\", \"x\":25, \"y\":-15},\n  {\"id\":\"special_axiotower\", \"x\":25, \"y\":-24}, {\"id\":\"special_axiotower\", \"x\":25, \"y\":-33},\n  {\"id\":\"4x3l_right_1\", \"x\":52, \"y\":-16}, {\"id\":\"4x3l_right_1\", \"x\":52, \"y\":-25},\n  {\"id\":\"4x3l_right_1\", \"x\":52, \"y\":-34}, {\"id\":\"4x3l_right_1\", \"x\":52, \"y\":-43},\n  {\"id\":\"special8_com\", \"x\":2, \"y\":-49,\"night light probability\": 1}]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v1, "$gencom01variant4"

    const-string v2, "[{\"id\":\"4x3l_left_1\", \"x\":5, \"y\":-16}, {\"id\":\"4x3l_left_1\", \"x\":15, \"y\":-11}, \n  {\"id\":\"4x3l_left_1\", \"x\":5, \"y\":-25}, {\"id\":\"4x3l_left_1\", \"x\":15, \"y\":-20},\n  {\"id\":\"4x3l_left_1\", \"x\":5, \"y\":-34}, {\"id\":\"4x3l_left_1\", \"x\":15, \"y\":-29},  \n  {\"id\":\"4x3l_left_1\", \"x\":5, \"y\":-43}, {\"id\":\"4x3l_left_1\", \"x\":15, \"y\":-38},  \n  {\"id\":\"4x3l_left_1\", \"x\":5, \"y\":-52}, {\"id\":\"4x3l_left_1\", \"x\":15, \"y\":-47},  \n  {\"id\":\"special_axiotower\", \"x\":25, \"y\":-6}, {\"id\":\"special_axiotower\", \"x\":25, \"y\":-15},\n  {\"id\":\"special_axiotower\", \"x\":25, \"y\":-24}, {\"id\":\"special_axiotower\", \"x\":25, \"y\":-33},\n  {\"id\":\"special_axiotower\", \"x\":25, \"y\":-42}, {\"id\":\"special_axiotower\", \"x\":25, \"y\":-51},\n  {\"id\":\"4x3l_right_1\", \"x\":52, \"y\":-16}, {\"id\":\"4x3l_right_1\", \"x\":52, \"y\":-25},\n  {\"id\":\"4x3l_right_1\", \"x\":52, \"y\":-34}, {\"id\":\"4x3l_right_1\", \"x\":52, \"y\":-43},\n  {\"id\":\"4x3l_right_1\", \"x\":52, \"y\":-52}, {\"id\":\"4x3l_right_1\", \"x\":52, \"y\":-61},\n  {\"id\":\"special7_com\", \"x\":2, \"y\":-64,\"night light probability\": 1}]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v1, "$gencom01variant6"

    const-string v2, "[{\"id\":\"4x3l_left_1\", \"x\":5, \"y\":-16}, {\"id\":\"4x3l_left_1\", \"x\":15, \"y\":-11}, \n  {\"id\":\"4x3l_left_1\", \"x\":5, \"y\":-25}, {\"id\":\"4x3l_left_1\", \"x\":15, \"y\":-20},\n  {\"id\":\"4x3l_left_1\", \"x\":5, \"y\":-34}, {\"id\":\"4x3l_left_1\", \"x\":15, \"y\":-29},  \n  {\"id\":\"4x3l_left_1\", \"x\":5, \"y\":-43}, {\"id\":\"4x3l_left_1\", \"x\":15, \"y\":-38},  \n  {\"id\":\"4x3l_left_1\", \"x\":5, \"y\":-52}, {\"id\":\"4x3l_left_1\", \"x\":15, \"y\":-47},  \n  {\"id\":\"4x3l_left_1\", \"x\":5, \"y\":-61}, {\"id\":\"4x3l_left_1\", \"x\":15, \"y\":-56},  \n  {\"id\":\"4x3l_left_1\", \"x\":5, \"y\":-70}, {\"id\":\"4x3l_left_1\", \"x\":15, \"y\":-65},  \n  {\"id\":\"special_axiotower\", \"x\":25, \"y\":-6}, {\"id\":\"special_axiotower\", \"x\":25, \"y\":-15},\n  {\"id\":\"special_axiotower\", \"x\":25, \"y\":-24}, {\"id\":\"special_axiotower\", \"x\":25, \"y\":-33},\n  {\"id\":\"special_axiotower\", \"x\":25, \"y\":-42}, {\"id\":\"special_axiotower\", \"x\":25, \"y\":-51},\n  {\"id\":\"special_axiotower\", \"x\":25, \"y\":-60}, {\"id\":\"special_axiotower\", \"x\":25, \"y\":-69},\n  {\"id\":\"4x3l_right_1\", \"x\":52, \"y\":-16}, {\"id\":\"4x3l_right_1\", \"x\":52, \"y\":-25},\n  {\"id\":\"4x3l_right_1\", \"x\":52, \"y\":-34}, {\"id\":\"4x3l_right_1\", \"x\":52, \"y\":-43},\n  {\"id\":\"4x3l_right_1\", \"x\":52, \"y\":-52}, {\"id\":\"4x3l_right_1\", \"x\":52, \"y\":-61},\n  {\"id\":\"4x3l_right_1\", \"x\":52, \"y\":-70}, {\"id\":\"4x3l_right_1\", \"x\":52, \"y\":-79},\n  {\"id\":\"special8_com\", \"x\":2, \"y\":-85,\"night light probability\": 1}]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static dispose()V
    .registers 1

    const/4 v0, 0x0

    .line 510
    sput-object v0, Linfo/flowersoft/theotown/draftloader/Generator;->instance:Linfo/flowersoft/theotown/draftloader/Generator;

    return-void
.end method

.method public static getInstance()Linfo/flowersoft/theotown/draftloader/Generator;
    .registers 1

    .line 503
    sget-object v0, Linfo/flowersoft/theotown/draftloader/Generator;->instance:Linfo/flowersoft/theotown/draftloader/Generator;

    if-nez v0, :cond_b

    .line 504
    new-instance v0, Linfo/flowersoft/theotown/draftloader/Generator;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draftloader/Generator;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/draftloader/Generator;->instance:Linfo/flowersoft/theotown/draftloader/Generator;

    .line 506
    :cond_b
    sget-object v0, Linfo/flowersoft/theotown/draftloader/Generator;->instance:Linfo/flowersoft/theotown/draftloader/Generator;

    return-object v0
.end method


# virtual methods
.method public final addAnimationToDraft(Linfo/flowersoft/theotown/util/json/JSONArray;Ljava/lang/String;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 495
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 496
    const-string v1, "id"

    invoke-virtual {v0, v1, p2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 497
    const-string p2, "x"

    invoke-virtual {v0, p2, p3}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 498
    const-string p2, "y"

    invoke-virtual {v0, p2, p4}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 499
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    return-void
.end method

.method public addLightDefinitions(Linfo/flowersoft/theotown/util/json/JSONArray;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 320
    :goto_2
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_64

    .line 321
    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->getJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v2

    .line 322
    const-string v3, "ids"

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v4

    if-nez v4, :cond_20

    .line 324
    new-instance v4, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v4}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    .line 325
    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    .line 327
    :cond_20
    const-string v3, "animation"

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    move v3, v0

    .line 328
    :goto_2b
    invoke-virtual {v4}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_61

    .line 329
    invoke-virtual {v4, v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 330
    iget-object v6, p0, Linfo/flowersoft/theotown/draftloader/Generator;->LIGHT_DEFINITIONS:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_45

    .line 333
    iget-object v6, p0, Linfo/flowersoft/theotown/draftloader/Generator;->LIGHT_DEFINITIONS:Ljava/util/Map;

    invoke-interface {v6, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 331
    :cond_45
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Generic building of id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has a light definition already, please remove one of the occurrences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_61
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_64
    return-void
.end method

.method public final applyLightDefinitions(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 339
    const-string v0, "id"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 340
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/Generator;->LIGHT_DEFINITIONS:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 341
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONArray;

    iget-object v2, p0, Linfo/flowersoft/theotown/draftloader/Generator;->LIGHT_DEFINITIONS:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 342
    const-string v0, "animation"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 343
    :goto_22
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_32

    .line 344
    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_32
    return-void
.end method

.method public generateCommercialContent()Ljava/lang/String;
    .registers 19

    .line 371
    :try_start_0
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    .line 372
    const-string v2, "$gencom00"

    const-string v5, "commercial"
    :try_end_9
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_0 .. :try_end_9} :catch_54

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x4

    const/4 v6, 0x3

    const/16 v7, 0x34

    const/4 v8, 0x5

    const/4 v9, 0x0

    const/16 v10, 0xd

    const/4 v11, 0x3

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object/from16 v1, p0

    :try_start_19
    invoke-virtual/range {v1 .. v15}, Linfo/flowersoft/theotown/draftloader/Generator;->generateCompBuildings(Ljava/lang/String;IILjava/lang/String;IIIIIIZIII)Ljava/util/List;

    move-result-object v2
    :try_end_1d
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_19 .. :try_end_1d} :catch_63

    .line 373
    :try_start_1d
    const-string v4, "$gencom01"

    const-string v7, "commercial"
    :try_end_21
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_1d .. :try_end_21} :catch_54

    const/16 v16, 0x1

    const/16 v17, 0x10

    const/4 v5, 0x2

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/16 v9, 0xb

    const/16 v10, 0x9

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x2

    move-object/from16 v3, p0

    :try_start_33
    invoke-virtual/range {v3 .. v17}, Linfo/flowersoft/theotown/draftloader/Generator;->generateCompBuildings(Ljava/lang/String;IILjava/lang/String;IIIIIIZIII)Ljava/util/List;

    move-result-object v1
    :try_end_37
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_33 .. :try_end_37} :catch_60

    :try_start_37
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    .line 375
    :goto_3b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_58

    .line 376
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/util/json/JSONObject;
    :try_end_47
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_37 .. :try_end_47} :catch_54

    move-object/from16 v4, p0

    .line 377
    :try_start_49
    invoke-virtual {v4, v3}, Linfo/flowersoft/theotown/draftloader/Generator;->applyLightDefinitions(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    .line 378
    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    :catch_52
    move-exception v0

    goto :goto_65

    :catch_54
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_65

    :cond_58
    move-object/from16 v4, p0

    const/4 v1, 0x4

    .line 381
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_5f
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_49 .. :try_end_5f} :catch_52

    return-object v0

    :catch_60
    move-exception v0

    move-object v4, v3

    goto :goto_65

    :catch_63
    move-exception v0

    move-object v4, v1

    .line 383
    :goto_65
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public generateCompBuildings(Ljava/lang/String;IILjava/lang/String;IIIIIIZIII)Ljava/util/List;
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "IIIIIIZIII)",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/util/json/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p13

    .line 426
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "baseplain00"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 427
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "basecolor0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 428
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "compplain00"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 429
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "compcolor0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 430
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "topplain00"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 431
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "topcolor0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 433
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_75
    move/from16 v12, p9

    if-ge v13, v12, :cond_184

    const/4 v15, 0x0

    :goto_7a
    if-ge v15, v3, :cond_173

    mul-int v16, p10, v13

    add-int v11, p8, v16

    .line 438
    new-instance v3, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v3}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 443
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "variant"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int v1, v11, p13

    add-int/2addr v1, v15

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v12, "id"

    invoke-virtual {v3, v12, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 444
    const-string v1, "type"

    move-object/from16 v12, p4

    invoke-virtual {v3, v1, v12}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 445
    const-string v1, "width"

    invoke-virtual {v3, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 446
    const-string v1, "height"

    move/from16 v2, p3

    invoke-virtual {v3, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 447
    const-string v1, "level"

    move/from16 v2, p5

    invoke-virtual {v3, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 449
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    .line 450
    new-instance v2, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v2}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 451
    const-string v12, "x"

    move/from16 v16, v13

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 452
    const-string v12, "y"

    invoke-virtual {v2, v12, v13}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 453
    const-string v12, "w"

    invoke-virtual {v2, v12, v13}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/util/json/JSONObject;

    mul-int v12, v11, p7

    mul-int/lit8 v13, p2, 0x10

    add-int/2addr v12, v13

    add-int v12, v12, p6

    add-int v12, v12, p14

    .line 454
    const-string v13, "h"

    invoke-virtual {v2, v13, v12}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 455
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    .line 456
    const-string v2, "frames"

    invoke-virtual {v3, v2, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 458
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    const/4 v13, 0x0

    if-eqz p11, :cond_f8

    .line 460
    invoke-virtual {v0, v1, v4, v13, v13}, Linfo/flowersoft/theotown/draftloader/Generator;->addAnimationToDraft(Linfo/flowersoft/theotown/util/json/JSONArray;Ljava/lang/String;II)V

    :cond_f8
    if-lez p12, :cond_10c

    .line 462
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v13, v13}, Linfo/flowersoft/theotown/draftloader/Generator;->addAnimationToDraft(Linfo/flowersoft/theotown/util/json/JSONArray;Ljava/lang/String;II)V

    :cond_10c
    rsub-int/lit8 v2, p6, 0x0

    const/4 v12, 0x1

    :goto_10f
    if-gt v12, v11, :cond_139

    if-eqz p11, :cond_116

    .line 467
    invoke-virtual {v0, v1, v6, v13, v2}, Linfo/flowersoft/theotown/draftloader/Generator;->addAnimationToDraft(Linfo/flowersoft/theotown/util/json/JSONArray;Ljava/lang/String;II)V

    :cond_116
    if-lez p12, :cond_12e

    .line 469
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v17, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v13, v4, v2}, Linfo/flowersoft/theotown/draftloader/Generator;->addAnimationToDraft(Linfo/flowersoft/theotown/util/json/JSONArray;Ljava/lang/String;II)V

    goto :goto_131

    :cond_12e
    move-object/from16 v17, v4

    move v4, v13

    :goto_131
    sub-int v2, v2, p7

    add-int/lit8 v12, v12, 0x1

    move v13, v4

    move-object/from16 v4, v17

    goto :goto_10f

    :cond_139
    move-object/from16 v17, v4

    move v4, v13

    if-eqz p11, :cond_141

    .line 475
    invoke-virtual {v0, v1, v8, v4, v2}, Linfo/flowersoft/theotown/draftloader/Generator;->addAnimationToDraft(Linfo/flowersoft/theotown/util/json/JSONArray;Ljava/lang/String;II)V

    :cond_141
    if-lez p12, :cond_155

    .line 477
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v1, v11, v4, v2}, Linfo/flowersoft/theotown/draftloader/Generator;->addAnimationToDraft(Linfo/flowersoft/theotown/util/json/JSONArray;Ljava/lang/String;II)V

    .line 481
    :cond_155
    const-string v2, "animation"

    invoke-virtual {v3, v2, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    if-lez p12, :cond_160

    add-int/lit8 v14, v14, 0x1

    .line 484
    rem-int v14, v14, p12

    .line 487
    :cond_160
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v12, p9

    move/from16 v3, p13

    move/from16 v13, v16

    move-object/from16 v4, v17

    goto/16 :goto_7a

    :cond_173
    move-object/from16 v17, v4

    move/from16 v16, v13

    const/4 v4, 0x0

    add-int/lit8 v13, v16, 0x1

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p13

    move-object/from16 v4, v17

    goto/16 :goto_75

    :cond_184
    return-object v10
.end method

.method public generateResidentialContent()Ljava/lang/String;
    .registers 19

    .line 351
    :try_start_0
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    .line 352
    const-string v2, "$genres00"

    const-string v5, "residential"
    :try_end_9
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_0 .. :try_end_9} :catch_70

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x3

    const/4 v6, 0x2

    const/16 v7, 0x16

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/16 v10, 0xd

    const/4 v11, 0x3

    const/4 v12, 0x1

    const/4 v13, 0x6

    move-object/from16 v1, p0

    :try_start_19
    invoke-virtual/range {v1 .. v15}, Linfo/flowersoft/theotown/draftloader/Generator;->generateCompBuildings(Ljava/lang/String;IILjava/lang/String;IIIIIIZIII)Ljava/util/List;

    move-result-object v2
    :try_end_1d
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_19 .. :try_end_1d} :catch_7f

    .line 353
    :try_start_1d
    const-string v4, "$genres01"

    const-string v7, "residential"
    :try_end_21
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_1d .. :try_end_21} :catch_70

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x6

    const/16 v10, 0x12

    const/4 v11, 0x1

    const/4 v12, 0x4

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x4

    move-object/from16 v3, p0

    :try_start_32
    invoke-virtual/range {v3 .. v17}, Linfo/flowersoft/theotown/draftloader/Generator;->generateCompBuildings(Ljava/lang/String;IILjava/lang/String;IIIIIIZIII)Ljava/util/List;

    move-result-object v1
    :try_end_36
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_32 .. :try_end_36} :catch_7c

    :try_start_36
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 354
    const-string v4, "$genres02"

    const-string v7, "residential"
    :try_end_3d
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_36 .. :try_end_3d} :catch_70

    const/16 v16, 0x1

    const/16 v17, 0x10

    const/4 v5, 0x2

    const/4 v6, 0x2

    const/4 v8, 0x2

    const/16 v9, 0x8

    const/16 v10, 0xc

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v3, p0

    :try_start_4f
    invoke-virtual/range {v3 .. v17}, Linfo/flowersoft/theotown/draftloader/Generator;->generateCompBuildings(Ljava/lang/String;IILjava/lang/String;IIIIIIZIII)Ljava/util/List;

    move-result-object v1
    :try_end_53
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_4f .. :try_end_53} :catch_7c

    :try_start_53
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    .line 356
    :goto_57
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_74

    .line 357
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/util/json/JSONObject;
    :try_end_63
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_53 .. :try_end_63} :catch_70

    move-object/from16 v4, p0

    .line 358
    :try_start_65
    invoke-virtual {v4, v3}, Linfo/flowersoft/theotown/draftloader/Generator;->applyLightDefinitions(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    .line 359
    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    :catch_6e
    move-exception v0

    goto :goto_81

    :catch_70
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_81

    :cond_74
    move-object/from16 v4, p0

    const/4 v1, 0x4

    .line 362
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_7b
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_65 .. :try_end_7b} :catch_6e

    return-object v0

    :catch_7c
    move-exception v0

    move-object v4, v3

    goto :goto_81

    :catch_7f
    move-exception v0

    move-object v4, v1

    .line 364
    :goto_81
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method
