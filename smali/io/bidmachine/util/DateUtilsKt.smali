###### Class io.bidmachine.util.DateUtilsKt (io.bidmachine.util.DateUtilsKt)
.class public final Lio/bidmachine/util/DateUtilsKt;
.super Ljava/lang/Object;
.source "DateUtils.kt"


# static fields
.field public static final DAY_IN_MS:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 69
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lio/bidmachine/util/DateUtilsKt;->DAY_IN_MS:J

    return-void
.end method

.method public static final daysBetween(Ljava/util/Date;Ljava/util/Date;)I
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-static {p1}, Lio/bidmachine/util/DateUtilsKt;->getBeginOfDayMs(Ljava/util/Date;)J

    move-result-wide v0

    invoke-static {p0}, Lio/bidmachine/util/DateUtilsKt;->getBeginOfDayMs(Ljava/util/Date;)J

    move-result-wide p0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    sget-wide v0, Lio/bidmachine/util/DateUtilsKt;->DAY_IN_MS:J

    div-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static final getBeginOfDayMs(Ljava/util/Date;)J
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-static {p0}, Lio/bidmachine/util/DateUtilsKt;->toCalendar(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object p0

    .line 77
    invoke-static {p0}, Lio/bidmachine/util/DateUtilsKt;->setupCalendarStartOfDay(Ljava/util/Calendar;)V

    .line 78
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final setupCalendarStartOfDay(Ljava/util/Calendar;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xb

    const/4 v1, 0x0

    .line 88
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 89
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    .line 90
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    .line 91
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method public static final toCalendar(Ljava/util/Date;)Ljava/util/Calendar;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lio/bidmachine/util/DateUtils;->createCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 83
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    return-object v0
.end method
