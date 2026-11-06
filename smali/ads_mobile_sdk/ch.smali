###### Class ads_mobile_sdk.ch (ads_mobile_sdk.ch)
.class public final Lads_mobile_sdk/ch;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/ch;

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

.field public static final p:I = 0xe

.field public static final q:I = 0xf

.field public static final r:I = 0x10

.field public static final s:I = 0x11

.field public static final t:I = 0x12

.field public static final u:I = 0x13

.field public static final v:I = 0x14

.field public static final w:I = 0x15


# instance fields
.field private avgMoveTcd_:J

.field private avgMoveTcp_:J

.field private bitField0_:I

.field private isPhysicalTouch_:I

.field private obscured_:I

.field private pathDistanceSignal_:J

.field private source_:J

.field private stkDepth_:J

.field private tcd_:J

.field private tcp_:J

.field private tctMs_:J

.field private tcxDownSignal_:J

.field private tcxSignal_:J

.field private tcxUpSignal_:J

.field private tcyDownSignal_:J

.field private tcySignal_:J

.field private tcyUpSignal_:J

.field private toolType_:J

.field private viewDxSignal_:J

.field private viewDySignal_:J

.field private viewXSignal_:J

.field private viewYSignal_:J


# direct methods
.method public static bridge synthetic -$$Nest$fgetbitField0_(Lads_mobile_sdk/ch;)I
    .registers 1

    .line 0
    iget p0, p0, Lads_mobile_sdk/ch;->bitField0_:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputbitField0_(Lads_mobile_sdk/ch;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/ch;->bitField0_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputisPhysicalTouch_(Lads_mobile_sdk/ch;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/ch;->isPhysicalTouch_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputobscured_(Lads_mobile_sdk/ch;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/ch;->obscured_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputpathDistanceSignal_(Lads_mobile_sdk/ch;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/ch;->pathDistanceSignal_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputsource_(Lads_mobile_sdk/ch;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/ch;->source_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputtcd_(Lads_mobile_sdk/ch;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/ch;->tcd_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputtcp_(Lads_mobile_sdk/ch;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/ch;->tcp_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputtctMs_(Lads_mobile_sdk/ch;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/ch;->tctMs_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputtcxDownSignal_(Lads_mobile_sdk/ch;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/ch;->tcxDownSignal_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputtcxSignal_(Lads_mobile_sdk/ch;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/ch;->tcxSignal_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputtcyDownSignal_(Lads_mobile_sdk/ch;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/ch;->tcyDownSignal_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputtcySignal_(Lads_mobile_sdk/ch;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/ch;->tcySignal_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputtoolType_(Lads_mobile_sdk/ch;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/ch;->toolType_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputviewDxSignal_(Lads_mobile_sdk/ch;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/ch;->viewDxSignal_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputviewDySignal_(Lads_mobile_sdk/ch;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/ch;->viewDySignal_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputviewXSignal_(Lads_mobile_sdk/ch;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/ch;->viewXSignal_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputviewYSignal_(Lads_mobile_sdk/ch;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/ch;->viewYSignal_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/ch;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/ch;->DEFAULT_INSTANCE:Lads_mobile_sdk/ch;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/ch;

    invoke-direct {v0}, Lads_mobile_sdk/ch;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/ch;->DEFAULT_INSTANCE:Lads_mobile_sdk/ch;

    .line 5
    const-class v1, Lads_mobile_sdk/ch;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 9447
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    const-wide/16 v0, -0x1

    .line 9448
    iput-wide v0, p0, Lads_mobile_sdk/ch;->tcxSignal_:J

    .line 9449
    iput-wide v0, p0, Lads_mobile_sdk/ch;->tcySignal_:J

    .line 9450
    iput-wide v0, p0, Lads_mobile_sdk/ch;->tcd_:J

    .line 9451
    iput-wide v0, p0, Lads_mobile_sdk/ch;->avgMoveTcd_:J

    .line 9452
    iput-wide v0, p0, Lads_mobile_sdk/ch;->tcp_:J

    .line 9453
    iput-wide v0, p0, Lads_mobile_sdk/ch;->avgMoveTcp_:J

    const/16 v2, 0x3e8

    .line 9454
    iput v2, p0, Lads_mobile_sdk/ch;->obscured_:I

    .line 9455
    iput-wide v0, p0, Lads_mobile_sdk/ch;->tctMs_:J

    .line 9456
    iput-wide v0, p0, Lads_mobile_sdk/ch;->toolType_:J

    .line 9457
    iput-wide v0, p0, Lads_mobile_sdk/ch;->source_:J

    .line 9458
    iput v2, p0, Lads_mobile_sdk/ch;->isPhysicalTouch_:I

    .line 9459
    iput-wide v0, p0, Lads_mobile_sdk/ch;->stkDepth_:J

    .line 9460
    iput-wide v0, p0, Lads_mobile_sdk/ch;->pathDistanceSignal_:J

    .line 9461
    iput-wide v0, p0, Lads_mobile_sdk/ch;->viewXSignal_:J

    .line 9462
    iput-wide v0, p0, Lads_mobile_sdk/ch;->viewYSignal_:J

    .line 9463
    iput-wide v0, p0, Lads_mobile_sdk/ch;->tcxDownSignal_:J

    .line 9464
    iput-wide v0, p0, Lads_mobile_sdk/ch;->tcyDownSignal_:J

    .line 9465
    iput-wide v0, p0, Lads_mobile_sdk/ch;->tcxUpSignal_:J

    .line 9466
    iput-wide v0, p0, Lads_mobile_sdk/ch;->tcyUpSignal_:J

    return-void
.end method

.method public static v()Lads_mobile_sdk/bh;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/ch;->DEFAULT_INSTANCE:Lads_mobile_sdk/ch;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->h()Lads_mobile_sdk/vz0$a;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/bh;

    return-object v0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 29

    .line 1
    sget-object v0, Lads_mobile_sdk/wf;->a:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_65

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5f

    const/4 v1, 0x3

    if-eq v0, v1, :cond_23

    const/4 v1, 0x4

    if-eq v0, v1, :cond_20

    const/4 v1, 0x5

    if-eq v0, v1, :cond_19

    const/4 v0, 0x0

    return-object v0

    .line 47
    :cond_19
    const-class v0, Lads_mobile_sdk/ch;

    invoke-static {v0}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object v0

    return-object v0

    .line 48
    :cond_20
    sget-object v0, Lads_mobile_sdk/ch;->DEFAULT_INSTANCE:Lads_mobile_sdk/ch;

    return-object v0

    .line 49
    :cond_23
    sget-object v9, Lads_mobile_sdk/qh;->a:Lads_mobile_sdk/qh;

    const-string v23, "tcxUpSignal_"

    const-string v24, "tcyUpSignal_"

    const-string v1, "bitField0_"

    const-string v2, "tcxSignal_"

    const-string v3, "tcySignal_"

    const-string v4, "tcd_"

    const-string v5, "avgMoveTcd_"

    const-string v6, "tcp_"

    const-string v7, "avgMoveTcp_"

    const-string v8, "obscured_"

    const-string v10, "tctMs_"

    const-string v11, "toolType_"

    const-string v12, "source_"

    const-string v13, "isPhysicalTouch_"

    const-string v15, "stkDepth_"

    const-string v16, "pathDistanceSignal_"

    const-string v17, "viewXSignal_"

    const-string v18, "viewYSignal_"

    const-string v19, "viewDxSignal_"

    const-string v20, "viewDySignal_"

    const-string v21, "tcxDownSignal_"

    const-string v22, "tcyDownSignal_"

    move-object v14, v9

    filled-new-array/range {v1 .. v24}, [Ljava/lang/Object;

    move-result-object v0

    .line 67
    sget-object v1, Lads_mobile_sdk/ch;->DEFAULT_INSTANCE:Lads_mobile_sdk/ch;

    const-string v2, "\u0001\u0015\u0000\u0001\u0001\u0015\u0015\u0000\u0000\u0000\u0001\u1002\u0000\u0002\u1002\u0001\u0003\u1002\u0002\u0004\u1002\u0003\u0005\u1002\u0004\u0006\u1002\u0005\u0007\u180c\u0006\u0008\u1002\u0007\t\u1002\u0008\n\u1002\t\u000b\u180c\n\u000c\u1002\u000b\r\u1002\u000c\u000e\u1002\r\u000f\u1002\u000e\u0010\u1002\u000f\u0011\u1002\u0010\u0012\u1002\u0011\u0013\u1002\u0012\u0014\u1002\u0013\u0015\u1002\u0014"

    invoke-static {v1, v2, v0}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 68
    :cond_5f
    new-instance v0, Lads_mobile_sdk/bh;

    invoke-direct {v0}, Lads_mobile_sdk/bh;-><init>()V

    return-object v0

    .line 69
    :cond_65
    new-instance v0, Lads_mobile_sdk/ch;

    invoke-direct {v0}, Lads_mobile_sdk/ch;-><init>()V

    return-object v0
.end method
