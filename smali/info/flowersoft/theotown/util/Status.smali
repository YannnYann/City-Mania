###### Class info.flowersoft.theotown.util.Status (info.flowersoft.theotown.util.Status)
.class public Linfo/flowersoft/theotown/util/Status;
.super Ljava/lang/Object;
.source "Status.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Property;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Property<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public startStartMs:J

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Linfo/flowersoft/theotown/util/Status;->value:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Linfo/flowersoft/theotown/util/Status;->startStartMs:J

    .line 18
    iput-object p1, p0, Linfo/flowersoft/theotown/util/Status;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public done()V
    .registers 10

    .line 35
    iget-object v0, p0, Linfo/flowersoft/theotown/util/Status;->value:Ljava/lang/String;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    iget-wide v3, p0, Linfo/flowersoft/theotown/util/Status;->startStartMs:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_40

    .line 36
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    iget-object v3, p0, Linfo/flowersoft/theotown/util/Status;->name:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Task "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Linfo/flowersoft/theotown/util/Status;->value:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v5

    iget-wide v7, p0, Linfo/flowersoft/theotown/util/Status;->startStartMs:J

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 36
    invoke-interface {v0, v3, v4}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_40
    iput-wide v1, p0, Linfo/flowersoft/theotown/util/Status;->startStartMs:J

    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 11
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/Status;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Linfo/flowersoft/theotown/util/Status;->value:Ljava/lang/String;

    return-object v0
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

    .line 11
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/Status;->set(Ljava/lang/String;)V

    return-void
.end method

.method public set(Ljava/lang/String;)V
    .registers 4

    .line 28
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/Status;->done()V

    .line 30
    iput-object p1, p0, Linfo/flowersoft/theotown/util/Status;->value:Ljava/lang/String;

    .line 31
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/util/Status;->startStartMs:J

    return-void
.end method
