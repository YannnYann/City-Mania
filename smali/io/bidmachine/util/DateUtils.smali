###### Class io.bidmachine.util.DateUtils (io.bidmachine.util.DateUtils)
.class public final Lio/bidmachine/util/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.kt"


# static fields
.field public static final INSTANCE:Lio/bidmachine/util/DateUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/util/DateUtils;

    invoke-direct {v0}, Lio/bidmachine/util/DateUtils;-><init>()V

    sput-object v0, Lio/bidmachine/util/DateUtils;->INSTANCE:Lio/bidmachine/util/DateUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createCalendar()Ljava/util/Calendar;
    .registers 2

    .line 13
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
