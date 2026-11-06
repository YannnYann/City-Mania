###### Class io.bidmachine.core.TimeManager (io.bidmachine.core.TimeManager)
.class public final Lio/bidmachine/core/TimeManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lio/bidmachine/core/TimeManager;

.field public static instance:Lio/bidmachine/util/time/TimeManagerInstance;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/bidmachine/core/TimeManager;

    invoke-direct {v0}, Lio/bidmachine/core/TimeManager;-><init>()V

    sput-object v0, Lio/bidmachine/core/TimeManager;->INSTANCE:Lio/bidmachine/core/TimeManager;

    .line 1
    new-instance v0, Lio/bidmachine/util/time/SystemTimeManagerInstance;

    invoke-direct {v0}, Lio/bidmachine/util/time/SystemTimeManagerInstance;-><init>()V

    sput-object v0, Lio/bidmachine/core/TimeManager;->instance:Lio/bidmachine/util/time/TimeManagerInstance;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final currentTimeMillis()J
    .registers 2

    .line 1
    sget-object v0, Lio/bidmachine/core/TimeManager;->instance:Lio/bidmachine/util/time/TimeManagerInstance;

    invoke-interface {v0}, Lio/bidmachine/util/time/TimeManagerInstance;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final currentDate()Ljava/util/Date;
    .registers 4

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Lio/bidmachine/core/TimeManager;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public final getTimezoneId()Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lio/bidmachine/core/TimeManager;->instance:Lio/bidmachine/util/time/TimeManagerInstance;

    invoke-interface {v0}, Lio/bidmachine/util/time/TimeManagerInstance;->getTimeZoneId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
