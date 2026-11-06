###### Class info.flowersoft.theotown.mechanics.LogEntry (info.flowersoft.theotown.mechanics.LogEntry)
.class public Linfo/flowersoft/theotown/mechanics/LogEntry;
.super Ljava/lang/Object;
.source "LogEntry.java"


# instance fields
.field public change:I

.field public newValue:I

.field public tag:Ljava/lang/String;

.field public time:J


# direct methods
.method public constructor <init>(IILjava/lang/String;J)V
    .registers 6

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Linfo/flowersoft/theotown/mechanics/LogEntry;->change:I

    .line 14
    iput p2, p0, Linfo/flowersoft/theotown/mechanics/LogEntry;->newValue:I

    .line 15
    iput-object p3, p0, Linfo/flowersoft/theotown/mechanics/LogEntry;->tag:Ljava/lang/String;

    .line 16
    iput-wide p4, p0, Linfo/flowersoft/theotown/mechanics/LogEntry;->time:J

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "change"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/mechanics/LogEntry;->change:I

    .line 21
    const-string v0, "new"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/mechanics/LogEntry;->newValue:I

    .line 22
    const-string v0, "tag"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/mechanics/LogEntry;->tag:Ljava/lang/String;

    .line 23
    const-string v0, "time"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/mechanics/LogEntry;->time:J

    return-void
.end method


# virtual methods
.method public save(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 28
    const-string v0, "change"

    iget v1, p0, Linfo/flowersoft/theotown/mechanics/LogEntry;->change:I

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 29
    const-string v0, "new"

    iget v1, p0, Linfo/flowersoft/theotown/mechanics/LogEntry;->newValue:I

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 30
    const-string v0, "tag"

    iget-object v1, p0, Linfo/flowersoft/theotown/mechanics/LogEntry;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 31
    const-string v0, "time"

    iget-wide v1, p0, Linfo/flowersoft/theotown/mechanics/LogEntry;->time:J

    invoke-virtual {p1, v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;J)Linfo/flowersoft/theotown/util/json/JSONObject;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Linfo/flowersoft/theotown/mechanics/LogEntry;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ":   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Linfo/flowersoft/theotown/mechanics/LogEntry;->newValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Linfo/flowersoft/theotown/mechanics/LogEntry;->change:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/mechanics/LogEntry;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
