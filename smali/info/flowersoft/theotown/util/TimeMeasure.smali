###### Class info.flowersoft.theotown.util.TimeMeasure (info.flowersoft.theotown.util.TimeMeasure)
.class public Linfo/flowersoft/theotown/util/TimeMeasure;
.super Ljava/lang/Object;
.source "TimeMeasure.java"


# instance fields
.field public ms:J

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Linfo/flowersoft/theotown/util/TimeMeasure;->name:Ljava/lang/String;

    .line 18
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/TimeMeasure;->start()V

    return-void
.end method


# virtual methods
.method public final getTime()J
    .registers 3

    .line 22
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final start()V
    .registers 3

    .line 26
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/TimeMeasure;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/util/TimeMeasure;->ms:J

    return-void
.end method

.method public stop()V
    .registers 4

    const-wide/16 v0, 0x0

    .line 37
    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Linfo/flowersoft/theotown/util/TimeMeasure;->stop(JLjava/lang/String;)V

    return-void
.end method

.method public stop(JLjava/lang/String;)V
    .registers 8

    .line 30
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/TimeMeasure;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Linfo/flowersoft/theotown/util/TimeMeasure;->ms:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Linfo/flowersoft/theotown/util/TimeMeasure;->ms:J

    cmp-long p1, v0, p1

    if-ltz p1, :cond_34

    .line 32
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Linfo/flowersoft/theotown/util/TimeMeasure;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Linfo/flowersoft/theotown/util/TimeMeasure;->ms:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "TimeMeasure"

    invoke-interface {p1, p3, p2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    return-void
.end method
