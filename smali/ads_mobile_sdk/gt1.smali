###### Class ads_mobile_sdk.gt1 (ads_mobile_sdk.gt1)
.class public final Lads_mobile_sdk/gt1;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/gt1;

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4

.field public static final g:I = 0x5

.field public static final h:I = 0x6

.field public static final i:I = 0x7


# instance fields
.field private bitField0_:I

.field private debugInfo_:Ljava/lang/String;

.field private eventCount_:J

.field private eventId_:J

.field private exceptionName_:Ljava/lang/String;

.field private runtimeMs_:J

.field private stackTrace_:Ljava/lang/String;

.field private status_:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetbitField0_(Lads_mobile_sdk/gt1;)I
    .registers 1

    .line 0
    iget p0, p0, Lads_mobile_sdk/gt1;->bitField0_:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputbitField0_(Lads_mobile_sdk/gt1;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/gt1;->bitField0_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputeventCount_(Lads_mobile_sdk/gt1;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/gt1;->eventCount_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputeventId_(Lads_mobile_sdk/gt1;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/gt1;->eventId_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputruntimeMs_(Lads_mobile_sdk/gt1;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/gt1;->runtimeMs_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputstatus_(Lads_mobile_sdk/gt1;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/gt1;->status_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/gt1;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/gt1;->DEFAULT_INSTANCE:Lads_mobile_sdk/gt1;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/gt1;

    invoke-direct {v0}, Lads_mobile_sdk/gt1;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/gt1;->DEFAULT_INSTANCE:Lads_mobile_sdk/gt1;

    .line 5
    const-class v1, Lads_mobile_sdk/gt1;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lads_mobile_sdk/gt1;->exceptionName_:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lads_mobile_sdk/gt1;->stackTrace_:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lads_mobile_sdk/gt1;->debugInfo_:Ljava/lang/String;

    return-void
.end method

.method public static v()Lads_mobile_sdk/ft1;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/gt1;->DEFAULT_INSTANCE:Lads_mobile_sdk/gt1;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->h()Lads_mobile_sdk/vz0$a;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/ft1;

    return-object v0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    .line 1
    sget-object p2, Lads_mobile_sdk/et1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_48

    const/4 p2, 0x2

    if-eq p1, p2, :cond_42

    const/4 p2, 0x3

    if-eq p1, p2, :cond_23

    const/4 p2, 0x4

    if-eq p1, p2, :cond_20

    const/4 p2, 0x5

    if-eq p1, p2, :cond_19

    const/4 p1, 0x0

    return-object p1

    .line 30
    :cond_19
    const-class p1, Lads_mobile_sdk/gt1;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 31
    :cond_20
    sget-object p1, Lads_mobile_sdk/gt1;->DEFAULT_INSTANCE:Lads_mobile_sdk/gt1;

    return-object p1

    .line 32
    :cond_23
    sget-object v4, Lads_mobile_sdk/tl3;->a:Lads_mobile_sdk/tl3;

    const-string v7, "eventCount_"

    const-string v8, "debugInfo_"

    const-string v0, "bitField0_"

    const-string v1, "eventId_"

    const-string v2, "runtimeMs_"

    const-string v3, "status_"

    const-string v5, "exceptionName_"

    const-string v6, "stackTrace_"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p1

    .line 42
    sget-object p2, Lads_mobile_sdk/gt1;->DEFAULT_INSTANCE:Lads_mobile_sdk/gt1;

    const-string p3, "\u0004\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u1002\u0000\u0002\u1002\u0001\u0003\u180c\u0002\u0004\u1008\u0003\u0005\u1008\u0004\u0006\u1002\u0005\u0007\u1008\u0006"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 43
    :cond_42
    new-instance p1, Lads_mobile_sdk/ft1;

    invoke-direct {p1}, Lads_mobile_sdk/ft1;-><init>()V

    return-object p1

    .line 44
    :cond_48
    new-instance p1, Lads_mobile_sdk/gt1;

    invoke-direct {p1}, Lads_mobile_sdk/gt1;-><init>()V

    return-object p1
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lads_mobile_sdk/gt1;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lads_mobile_sdk/gt1;->bitField0_:I

    .line 4
    iput-object p1, p0, Lads_mobile_sdk/gt1;->debugInfo_:Ljava/lang/String;

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 3

    .line 219
    iget v0, p0, Lads_mobile_sdk/gt1;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lads_mobile_sdk/gt1;->bitField0_:I

    .line 220
    iput-object p1, p0, Lads_mobile_sdk/gt1;->exceptionName_:Ljava/lang/String;

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lads_mobile_sdk/gt1;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lads_mobile_sdk/gt1;->bitField0_:I

    .line 4
    iput-object p1, p0, Lads_mobile_sdk/gt1;->stackTrace_:Ljava/lang/String;

    return-void
.end method
