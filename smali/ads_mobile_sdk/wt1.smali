###### Class ads_mobile_sdk.wt1 (ads_mobile_sdk.wt1)
.class public final Lads_mobile_sdk/wt1;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/wt1;

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4


# instance fields
.field private bitField0_:I

.field private logBufferSize_:J

.field private logIntervalMs_:J

.field private logSampleRate_:F

.field private remoteCaptureServiceUrl_:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$fgetbitField0_(Lads_mobile_sdk/wt1;)I
    .registers 1

    .line 0
    iget p0, p0, Lads_mobile_sdk/wt1;->bitField0_:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputbitField0_(Lads_mobile_sdk/wt1;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/wt1;->bitField0_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputlogBufferSize_(Lads_mobile_sdk/wt1;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/wt1;->logBufferSize_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputlogIntervalMs_(Lads_mobile_sdk/wt1;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/wt1;->logIntervalMs_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputlogSampleRate_(Lads_mobile_sdk/wt1;F)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/wt1;->logSampleRate_:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/wt1;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/wt1;->DEFAULT_INSTANCE:Lads_mobile_sdk/wt1;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/wt1;

    invoke-direct {v0}, Lads_mobile_sdk/wt1;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/wt1;->DEFAULT_INSTANCE:Lads_mobile_sdk/wt1;

    .line 5
    const-class v1, Lads_mobile_sdk/wt1;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 23
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    .line 24
    const-string v0, "https://pagead2.googlesyndication.com/pagead/ping?e=2&f=1"

    iput-object v0, p0, Lads_mobile_sdk/wt1;->remoteCaptureServiceUrl_:Ljava/lang/String;

    const-wide/16 v0, 0x3e8

    .line 25
    iput-wide v0, p0, Lads_mobile_sdk/wt1;->logBufferSize_:J

    const-wide/32 v0, 0xea60

    .line 26
    iput-wide v0, p0, Lads_mobile_sdk/wt1;->logIntervalMs_:J

    return-void
.end method

.method public static A()Lads_mobile_sdk/vt1;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/wt1;->DEFAULT_INSTANCE:Lads_mobile_sdk/wt1;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->h()Lads_mobile_sdk/vz0$a;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/vt1;

    return-object v0
.end method

.method public static v()Lads_mobile_sdk/wt1;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/wt1;->DEFAULT_INSTANCE:Lads_mobile_sdk/wt1;

    return-object v0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    sget-object p2, Lads_mobile_sdk/ut1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_40

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3a

    const/4 p2, 0x3

    if-eq p1, p2, :cond_23

    const/4 p2, 0x4

    if-eq p1, p2, :cond_20

    const/4 p2, 0x5

    if-eq p1, p2, :cond_19

    const/4 p1, 0x0

    return-object p1

    .line 25
    :cond_19
    const-class p1, Lads_mobile_sdk/wt1;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 26
    :cond_20
    sget-object p1, Lads_mobile_sdk/wt1;->DEFAULT_INSTANCE:Lads_mobile_sdk/wt1;

    return-object p1

    .line 27
    :cond_23
    const-string p1, "logBufferSize_"

    const-string p2, "logIntervalMs_"

    const-string p3, "bitField0_"

    const-string v0, "remoteCaptureServiceUrl_"

    const-string v1, "logSampleRate_"

    filled-new-array {p3, v0, v1, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 37
    sget-object p2, Lads_mobile_sdk/wt1;->DEFAULT_INSTANCE:Lads_mobile_sdk/wt1;

    const-string p3, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1001\u0001\u0003\u1002\u0002\u0004\u1002\u0003"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 38
    :cond_3a
    new-instance p1, Lads_mobile_sdk/vt1;

    invoke-direct {p1}, Lads_mobile_sdk/vt1;-><init>()V

    return-object p1

    .line 39
    :cond_40
    new-instance p1, Lads_mobile_sdk/wt1;

    invoke-direct {p1}, Lads_mobile_sdk/wt1;-><init>()V

    return-object p1
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lads_mobile_sdk/wt1;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lads_mobile_sdk/wt1;->bitField0_:I

    .line 4
    iput-object p1, p0, Lads_mobile_sdk/wt1;->remoteCaptureServiceUrl_:Ljava/lang/String;

    return-void
.end method

.method public final w()J
    .registers 3

    .line 201
    iget-wide v0, p0, Lads_mobile_sdk/wt1;->logBufferSize_:J

    return-wide v0
.end method

.method public final x()J
    .registers 3

    .line 256
    iget-wide v0, p0, Lads_mobile_sdk/wt1;->logIntervalMs_:J

    return-wide v0
.end method

.method public final y()F
    .registers 2

    .line 144
    iget v0, p0, Lads_mobile_sdk/wt1;->logSampleRate_:F

    return v0
.end method

.method public final z()Ljava/lang/String;
    .registers 2

    .line 59
    iget-object v0, p0, Lads_mobile_sdk/wt1;->remoteCaptureServiceUrl_:Ljava/lang/String;

    return-object v0
.end method
