###### Class ads_mobile_sdk.o6 (ads_mobile_sdk.o6)
.class public final Lads_mobile_sdk/o6;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/o6;

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4

.field public static final g:I = 0x5

.field public static final h:I = 0x6

.field public static final i:I = 0x7

.field public static final j:I = 0x8

.field public static final k:I = 0x9

.field public static final l:I = 0xa

.field public static final m:I = 0xb

.field public static final n:I = 0xc

.field public static final o:I = 0xd


# instance fields
.field private adBounceCount_:I

.field private adClickTimestampsMsMemoizedSerializedSize:I

.field private adClickTimestampsMs_:Lads_mobile_sdk/yh1$e;

.field private adClosedTimestampMs_:J

.field private adDurationInMs_:J

.field private adQualityUrls_:Lads_mobile_sdk/yh1$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private adStartTimestampMs_:J

.field private appBackgroundTimestampsMsMemoizedSerializedSize:I

.field private appBackgroundTimestampsMs_:Lads_mobile_sdk/yh1$e;

.field private appForegroundTimestampsMsMemoizedSerializedSize:I

.field private appForegroundTimestampsMs_:Lads_mobile_sdk/yh1$e;

.field private appKillTimestampMs_:J

.field private bitField0_:I

.field private gwsQueryId_:Ljava/lang/String;

.field private isAdQuit_:Z

.field private isOsKill_:Z

.field private totalDurationSpentOutsideAppInMs_:J


# direct methods
.method public static bridge synthetic -$$Nest$fgetadBounceCount_(Lads_mobile_sdk/o6;)I
    .registers 1

    .line 0
    iget p0, p0, Lads_mobile_sdk/o6;->adBounceCount_:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetadClickTimestampsMs_(Lads_mobile_sdk/o6;)Lads_mobile_sdk/yh1$e;
    .registers 1

    .line 0
    iget-object p0, p0, Lads_mobile_sdk/o6;->adClickTimestampsMs_:Lads_mobile_sdk/yh1$e;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetadQualityUrls_(Lads_mobile_sdk/o6;)Lads_mobile_sdk/yh1$f;
    .registers 1

    .line 0
    iget-object p0, p0, Lads_mobile_sdk/o6;->adQualityUrls_:Lads_mobile_sdk/yh1$f;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetadStartTimestampMs_(Lads_mobile_sdk/o6;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lads_mobile_sdk/o6;->adStartTimestampMs_:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetappBackgroundTimestampsMs_(Lads_mobile_sdk/o6;)Lads_mobile_sdk/yh1$e;
    .registers 1

    .line 0
    iget-object p0, p0, Lads_mobile_sdk/o6;->appBackgroundTimestampsMs_:Lads_mobile_sdk/yh1$e;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetappForegroundTimestampsMs_(Lads_mobile_sdk/o6;)Lads_mobile_sdk/yh1$e;
    .registers 1

    .line 0
    iget-object p0, p0, Lads_mobile_sdk/o6;->appForegroundTimestampsMs_:Lads_mobile_sdk/yh1$e;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetbitField0_(Lads_mobile_sdk/o6;)I
    .registers 1

    .line 0
    iget p0, p0, Lads_mobile_sdk/o6;->bitField0_:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgettotalDurationSpentOutsideAppInMs_(Lads_mobile_sdk/o6;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lads_mobile_sdk/o6;->totalDurationSpentOutsideAppInMs_:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fputadBounceCount_(Lads_mobile_sdk/o6;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/o6;->adBounceCount_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputadClickTimestampsMs_(Lads_mobile_sdk/o6;Lads_mobile_sdk/yh1$e;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lads_mobile_sdk/o6;->adClickTimestampsMs_:Lads_mobile_sdk/yh1$e;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputadClosedTimestampMs_(Lads_mobile_sdk/o6;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/o6;->adClosedTimestampMs_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputadDurationInMs_(Lads_mobile_sdk/o6;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/o6;->adDurationInMs_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputadQualityUrls_(Lads_mobile_sdk/o6;Lads_mobile_sdk/yh1$f;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lads_mobile_sdk/o6;->adQualityUrls_:Lads_mobile_sdk/yh1$f;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputadStartTimestampMs_(Lads_mobile_sdk/o6;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/o6;->adStartTimestampMs_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputappBackgroundTimestampsMs_(Lads_mobile_sdk/o6;Lads_mobile_sdk/yh1$e;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lads_mobile_sdk/o6;->appBackgroundTimestampsMs_:Lads_mobile_sdk/yh1$e;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputappForegroundTimestampsMs_(Lads_mobile_sdk/o6;Lads_mobile_sdk/yh1$e;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lads_mobile_sdk/o6;->appForegroundTimestampsMs_:Lads_mobile_sdk/yh1$e;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputappKillTimestampMs_(Lads_mobile_sdk/o6;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/o6;->appKillTimestampMs_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputbitField0_(Lads_mobile_sdk/o6;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/o6;->bitField0_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputisAdQuit_(Lads_mobile_sdk/o6;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lads_mobile_sdk/o6;->isAdQuit_:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputisOsKill_(Lads_mobile_sdk/o6;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lads_mobile_sdk/o6;->isOsKill_:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputtotalDurationSpentOutsideAppInMs_(Lads_mobile_sdk/o6;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/o6;->totalDurationSpentOutsideAppInMs_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/o6;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/o6;->DEFAULT_INSTANCE:Lads_mobile_sdk/o6;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/o6;

    invoke-direct {v0}, Lads_mobile_sdk/o6;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/o6;->DEFAULT_INSTANCE:Lads_mobile_sdk/o6;

    .line 5
    const-class v1, Lads_mobile_sdk/o6;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    const/4 v0, -0x1

    .line 578
    iput v0, p0, Lads_mobile_sdk/o6;->appBackgroundTimestampsMsMemoizedSerializedSize:I

    .line 677
    iput v0, p0, Lads_mobile_sdk/o6;->appForegroundTimestampsMsMemoizedSerializedSize:I

    .line 776
    iput v0, p0, Lads_mobile_sdk/o6;->adClickTimestampsMsMemoizedSerializedSize:I

    .line 777
    const-string v0, ""

    iput-object v0, p0, Lads_mobile_sdk/o6;->gwsQueryId_:Ljava/lang/String;

    .line 778
    invoke-static {}, Lads_mobile_sdk/vz0;->j()Lads_mobile_sdk/yh1$e;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/o6;->appBackgroundTimestampsMs_:Lads_mobile_sdk/yh1$e;

    .line 779
    invoke-static {}, Lads_mobile_sdk/vz0;->j()Lads_mobile_sdk/yh1$e;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/o6;->appForegroundTimestampsMs_:Lads_mobile_sdk/yh1$e;

    .line 780
    invoke-static {}, Lads_mobile_sdk/vz0;->j()Lads_mobile_sdk/yh1$e;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/o6;->adClickTimestampsMs_:Lads_mobile_sdk/yh1$e;

    .line 781
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/o6;->adQualityUrls_:Lads_mobile_sdk/yh1$f;

    return-void
.end method

.method public static A()Lads_mobile_sdk/o6;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/o6;->DEFAULT_INSTANCE:Lads_mobile_sdk/o6;

    return-object v0
.end method


# virtual methods
.method public final B()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lads_mobile_sdk/o6;->gwsQueryId_:Ljava/lang/String;

    return-object v0
.end method

.method public final C()Z
    .registers 2

    .line 248
    iget-boolean v0, p0, Lads_mobile_sdk/o6;->isAdQuit_:Z

    return v0
.end method

.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 19

    .line 1
    sget-object v0, Lads_mobile_sdk/m6;->a:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_52

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_23

    const/4 v1, 0x4

    if-eq v0, v1, :cond_20

    const/4 v1, 0x5

    if-eq v0, v1, :cond_19

    const/4 v0, 0x0

    return-object v0

    .line 35
    :cond_19
    const-class v0, Lads_mobile_sdk/o6;

    invoke-static {v0}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object v0

    return-object v0

    .line 36
    :cond_20
    sget-object v0, Lads_mobile_sdk/o6;->DEFAULT_INSTANCE:Lads_mobile_sdk/o6;

    return-object v0

    .line 37
    :cond_23
    const-string v13, "adClickTimestampsMs_"

    const-string v14, "adQualityUrls_"

    const-string v1, "bitField0_"

    const-string v2, "gwsQueryId_"

    const-string v3, "adDurationInMs_"

    const-string v4, "adBounceCount_"

    const-string v5, "isAdQuit_"

    const-string v6, "isOsKill_"

    const-string v7, "totalDurationSpentOutsideAppInMs_"

    const-string v8, "adStartTimestampMs_"

    const-string v9, "appKillTimestampMs_"

    const-string v10, "adClosedTimestampMs_"

    const-string v11, "appBackgroundTimestampsMs_"

    const-string v12, "appForegroundTimestampsMs_"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/Object;

    move-result-object v0

    .line 57
    sget-object v1, Lads_mobile_sdk/o6;->DEFAULT_INSTANCE:Lads_mobile_sdk/o6;

    const-string v2, "\u0004\r\u0000\u0001\u0001\r\r\u0000\u0004\u0000\u0001\u0208\u0002\u1002\u0000\u0003\u1004\u0001\u0004\u1007\u0002\u0005\u1007\u0003\u0006\u1002\u0004\u0007\u0002\u0008\u1002\u0005\t\u1002\u0006\n%\u000b%\u000c%\r\u021a"

    invoke-static {v1, v2, v0}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 58
    :cond_4c
    new-instance v0, Lads_mobile_sdk/n6;

    invoke-direct {v0}, Lads_mobile_sdk/n6;-><init>()V

    return-object v0

    .line 59
    :cond_52
    new-instance v0, Lads_mobile_sdk/o6;

    invoke-direct {v0}, Lads_mobile_sdk/o6;-><init>()V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lads_mobile_sdk/o6;->gwsQueryId_:Ljava/lang/String;

    return-void
.end method

.method public final v()Lads_mobile_sdk/yh1$f;
    .registers 2

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/o6;->adQualityUrls_:Lads_mobile_sdk/yh1$f;

    return-object v0
.end method

.method public final w()I
    .registers 2

    .line 563
    iget-object v0, p0, Lads_mobile_sdk/o6;->appBackgroundTimestampsMs_:Lads_mobile_sdk/yh1$e;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final x()Ljava/util/List;
    .registers 2

    .line 551
    iget-object v0, p0, Lads_mobile_sdk/o6;->appBackgroundTimestampsMs_:Lads_mobile_sdk/yh1$e;

    return-object v0
.end method

.method public final y()I
    .registers 2

    .line 662
    iget-object v0, p0, Lads_mobile_sdk/o6;->appForegroundTimestampsMs_:Lads_mobile_sdk/yh1$e;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final z()J
    .registers 3

    .line 457
    iget-wide v0, p0, Lads_mobile_sdk/o6;->appKillTimestampMs_:J

    return-wide v0
.end method
