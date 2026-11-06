###### Class io.bidmachine.iab.mraid.MraidCalendarEvent (io.bidmachine.iab.mraid.MraidCalendarEvent)
.class public final Lio/bidmachine/iab/mraid/MraidCalendarEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/Date;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/util/Date;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->b:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->c:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Date;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->e:Ljava/util/Date;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->h:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->f:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->d:Ljava/lang/String;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->g:Ljava/lang/String;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lio/bidmachine/iab/mraid/MraidCalendarEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 4
    :cond_a
    check-cast p1, Lio/bidmachine/iab/mraid/MraidCalendarEvent;

    .line 5
    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->a:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->b:Ljava/util/Date;

    iget-object v3, p1, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->b:Ljava/util/Date;

    .line 6
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->c:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->c:Ljava/lang/String;

    .line 7
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->d:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->d:Ljava/lang/String;

    .line 8
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->e:Ljava/util/Date;

    iget-object v3, p1, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->e:Ljava/util/Date;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->f:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->f:Ljava/lang/String;

    .line 9
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->g:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->g:Ljava/lang/String;

    .line 10
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->h:Ljava/lang/String;

    iget-object p1, p1, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->h:Ljava/lang/String;

    .line 11
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5d

    return v0

    :cond_5d
    return v2
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getEnd()Ljava/util/Date;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->e:Ljava/util/Date;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getRecurrence()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getStart()Ljava/util/Date;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->b:Ljava/util/Date;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getTransparency()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->g:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 9

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->a:Ljava/lang/String;

    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->b:Ljava/util/Date;

    iget-object v2, p0, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->c:Ljava/lang/String;

    iget-object v3, p0, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->d:Ljava/lang/String;

    iget-object v4, p0, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->e:Ljava/util/Date;

    iget-object v5, p0, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->f:Ljava/lang/String;

    iget-object v6, p0, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->g:Ljava/lang/String;

    iget-object v7, p0, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->h:Ljava/lang/String;

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MraidCalendarEvent{description=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", start="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->b:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", location=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", summary=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", end="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->e:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", status=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", transparency=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", recurrence=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
