###### Class j$.time.TimeConversions (j$.time.TimeConversions)
.class public Lj$/time/TimeConversions;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static convert(Lj$/time/Duration;)Ljava/time/Duration;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 178
    :cond_4
    invoke-virtual {p0}, Lj$/time/Duration;->J()J

    move-result-wide v0

    invoke-virtual {p0}, Lj$/time/Duration;->C()I

    move-result p0

    int-to-long v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/time/Duration;->ofSeconds(JJ)Ljava/time/Duration;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Lj$/time/Instant;)Ljava/time/Instant;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 148
    :cond_4
    invoke-virtual {p0}, Lj$/time/Instant;->C()J

    move-result-wide v0

    invoke-virtual {p0}, Lj$/time/Instant;->J()I

    move-result p0

    int-to-long v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object p0

    return-object p0
.end method
