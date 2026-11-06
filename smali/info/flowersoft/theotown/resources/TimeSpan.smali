###### Class info.flowersoft.theotown.resources.TimeSpan (info.flowersoft.theotown.resources.TimeSpan)
.class public Linfo/flowersoft/theotown/resources/TimeSpan;
.super Ljava/lang/Object;
.source "TimeSpan.java"


# instance fields
.field public localization:Ljava/lang/String;

.field public ms:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Linfo/flowersoft/theotown/resources/TimeSpan;->ms:I

    return-void
.end method

.method public static localize(J)Ljava/lang/String;
    .registers 17

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_9

    .line 37
    const-string v0, ""

    goto :goto_b

    :cond_9
    const-string v0, "-"

    .line 38
    :goto_b
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    .line 39
    div-long/2addr v1, v3

    const-wide/16 v3, 0x3c

    div-long v5, v1, v3

    div-long v7, v5, v3

    const-wide/16 v9, 0x18

    div-long v11, v7, v9

    const-wide/16 v13, 0x16d

    move-wide p0, v3

    div-long v3, v11, v13

    long-to-int v3, v3

    .line 40
    rem-long/2addr v11, v13

    long-to-int v4, v11

    .line 41
    rem-long/2addr v7, v9

    long-to-int v7, v7

    .line 42
    rem-long/2addr v5, p0

    long-to-int v5, v5

    .line 43
    rem-long/2addr v1, p0

    long-to-int v1, v1

    if-lez v3, :cond_49

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "y "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "d"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_49
    if-lez v4, :cond_68

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "d "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "h"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_68
    if-lez v7, :cond_87

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "h "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "m"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 51
    :cond_87
    const-string v2, "s"

    if-lez v5, :cond_a6

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "m "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 54
    :cond_a6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getLocalization()Ljava/lang/String;
    .registers 3

    .line 29
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/TimeSpan;->localization:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 30
    iget v0, p0, Linfo/flowersoft/theotown/resources/TimeSpan;->ms:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/TimeSpan;->localize(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/TimeSpan;->localization:Ljava/lang/String;

    .line 33
    :cond_d
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/TimeSpan;->localization:Ljava/lang/String;

    return-object v0
.end method

.method public setMs(I)V
    .registers 3

    .line 18
    iget v0, p0, Linfo/flowersoft/theotown/resources/TimeSpan;->ms:I

    if-eq v0, p1, :cond_9

    .line 19
    iput p1, p0, Linfo/flowersoft/theotown/resources/TimeSpan;->ms:I

    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Linfo/flowersoft/theotown/resources/TimeSpan;->localization:Ljava/lang/String;

    :cond_9
    return-void
.end method
