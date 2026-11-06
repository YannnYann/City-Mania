###### Class ads_mobile_sdk.uv2 (ads_mobile_sdk.uv2)
.class public final Lads_mobile_sdk/uv2;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/uv2;

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


# instance fields
.field private appStartProgramUpdateDelayMs_:J

.field private bitField0_:I

.field private enableRetryDownload_:Z

.field private maxRetryCount_:J

.field private minUpdateIntervalMs_:J

.field private programAlmostExpiredMs_:J

.field private programRequestUrl_:Ljava/lang/String;

.field private reinitializeAfterUpdate_:Z

.field private retryBaseIntervalMs_:J

.field private updateBeforeInitialization_:Z

.field private updateOnInitializationOnly_:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetbitField0_(Lads_mobile_sdk/uv2;)I
    .registers 1

    .line 0
    iget p0, p0, Lads_mobile_sdk/uv2;->bitField0_:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputappStartProgramUpdateDelayMs_(Lads_mobile_sdk/uv2;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/uv2;->appStartProgramUpdateDelayMs_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputbitField0_(Lads_mobile_sdk/uv2;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/uv2;->bitField0_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputenableRetryDownload_(Lads_mobile_sdk/uv2;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lads_mobile_sdk/uv2;->enableRetryDownload_:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmaxRetryCount_(Lads_mobile_sdk/uv2;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/uv2;->maxRetryCount_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputprogramAlmostExpiredMs_(Lads_mobile_sdk/uv2;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/uv2;->programAlmostExpiredMs_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputretryBaseIntervalMs_(Lads_mobile_sdk/uv2;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/uv2;->retryBaseIntervalMs_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputupdateBeforeInitialization_(Lads_mobile_sdk/uv2;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lads_mobile_sdk/uv2;->updateBeforeInitialization_:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/uv2;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/uv2;->DEFAULT_INSTANCE:Lads_mobile_sdk/uv2;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/uv2;

    invoke-direct {v0}, Lads_mobile_sdk/uv2;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/uv2;->DEFAULT_INSTANCE:Lads_mobile_sdk/uv2;

    .line 5
    const-class v1, Lads_mobile_sdk/uv2;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 23
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lads_mobile_sdk/uv2;->updateOnInitializationOnly_:Z

    const-wide/32 v0, 0x927c0

    .line 25
    iput-wide v0, p0, Lads_mobile_sdk/uv2;->minUpdateIntervalMs_:J

    const-wide/32 v0, 0x36ee80

    .line 26
    iput-wide v0, p0, Lads_mobile_sdk/uv2;->programAlmostExpiredMs_:J

    .line 27
    const-string v0, "https://pagead2.googlesyndication.com/mads/asp"

    iput-object v0, p0, Lads_mobile_sdk/uv2;->programRequestUrl_:Ljava/lang/String;

    const-wide/16 v0, 0x5

    .line 28
    iput-wide v0, p0, Lads_mobile_sdk/uv2;->maxRetryCount_:J

    const-wide/32 v0, 0xea60

    .line 29
    iput-wide v0, p0, Lads_mobile_sdk/uv2;->retryBaseIntervalMs_:J

    return-void
.end method

.method public static D()Lads_mobile_sdk/tv2;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/uv2;->DEFAULT_INSTANCE:Lads_mobile_sdk/uv2;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->h()Lads_mobile_sdk/vz0$a;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/tv2;

    return-object v0
.end method

.method public static w()Lads_mobile_sdk/uv2;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/uv2;->DEFAULT_INSTANCE:Lads_mobile_sdk/uv2;

    return-object v0
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .registers 2

    .line 369
    iget-object v0, p0, Lads_mobile_sdk/uv2;->programRequestUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public final B()J
    .registers 3

    .line 597
    iget-wide v0, p0, Lads_mobile_sdk/uv2;->retryBaseIntervalMs_:J

    return-wide v0
.end method

.method public final C()Z
    .registers 2

    .line 184
    iget-boolean v0, p0, Lads_mobile_sdk/uv2;->updateBeforeInitialization_:Z

    return v0
.end method

.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    .line 1
    sget-object p2, Lads_mobile_sdk/sv2;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4c

    const/4 p2, 0x2

    if-eq p1, p2, :cond_46

    const/4 p2, 0x3

    if-eq p1, p2, :cond_23

    const/4 p2, 0x4

    if-eq p1, p2, :cond_20

    const/4 p2, 0x5

    if-eq p1, p2, :cond_19

    const/4 p1, 0x0

    return-object p1

    .line 32
    :cond_19
    const-class p1, Lads_mobile_sdk/uv2;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 33
    :cond_20
    sget-object p1, Lads_mobile_sdk/uv2;->DEFAULT_INSTANCE:Lads_mobile_sdk/uv2;

    return-object p1

    .line 34
    :cond_23
    const-string v9, "maxRetryCount_"

    const-string v10, "retryBaseIntervalMs_"

    const-string v0, "bitField0_"

    const-string v1, "updateOnInitializationOnly_"

    const-string v2, "reinitializeAfterUpdate_"

    const-string v3, "updateBeforeInitialization_"

    const-string v4, "minUpdateIntervalMs_"

    const-string v5, "programAlmostExpiredMs_"

    const-string v6, "programRequestUrl_"

    const-string v7, "appStartProgramUpdateDelayMs_"

    const-string v8, "enableRetryDownload_"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    move-result-object p1

    .line 51
    sget-object p2, Lads_mobile_sdk/uv2;->DEFAULT_INSTANCE:Lads_mobile_sdk/uv2;

    const-string p3, "\u0004\n\u0000\u0001\u0001\n\n\u0000\u0000\u0000\u0001\u1007\u0000\u0002\u1007\u0001\u0003\u1007\u0002\u0004\u1002\u0003\u0005\u1002\u0004\u0006\u1008\u0005\u0007\u1002\u0006\u0008\u1007\u0007\t\u1002\u0008\n\u1002\t"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 52
    :cond_46
    new-instance p1, Lads_mobile_sdk/tv2;

    invoke-direct {p1}, Lads_mobile_sdk/tv2;-><init>()V

    return-object p1

    .line 53
    :cond_4c
    new-instance p1, Lads_mobile_sdk/uv2;

    invoke-direct {p1}, Lads_mobile_sdk/uv2;-><init>()V

    return-object p1
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lads_mobile_sdk/uv2;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lads_mobile_sdk/uv2;->bitField0_:I

    .line 4
    iput-object p1, p0, Lads_mobile_sdk/uv2;->programRequestUrl_:Ljava/lang/String;

    return-void
.end method

.method public final v()J
    .registers 3

    .line 456
    iget-wide v0, p0, Lads_mobile_sdk/uv2;->appStartProgramUpdateDelayMs_:J

    return-wide v0
.end method

.method public final x()Z
    .registers 2

    .line 507
    iget-boolean v0, p0, Lads_mobile_sdk/uv2;->enableRetryDownload_:Z

    return v0
.end method

.method public final y()J
    .registers 3

    .line 546
    iget-wide v0, p0, Lads_mobile_sdk/uv2;->maxRetryCount_:J

    return-wide v0
.end method

.method public final z()J
    .registers 3

    .line 310
    iget-wide v0, p0, Lads_mobile_sdk/uv2;->programAlmostExpiredMs_:J

    return-wide v0
.end method
