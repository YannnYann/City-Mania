###### Class ads_mobile_sdk.eh (ads_mobile_sdk.eh)
.class public final Lads_mobile_sdk/eh;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/eh;

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4

.field public static final g:I = 0x5

.field public static final h:I = 0x6

.field public static final i:I = 0x7

.field public static final j:I = 0x8


# instance fields
.field private bitField0_:I

.field private displayDensity_:J

.field private estimatedOccludedSurface_:J

.field private minAlphaSignal_:J

.field private percentAdOnScreen_:J

.field private percentScreenCoveredByAd_:J

.field private scaleFactor_:J

.field private viewHeight_:J

.field private viewWidth_:J


# direct methods
.method public static bridge synthetic -$$Nest$fgetbitField0_(Lads_mobile_sdk/eh;)I
    .registers 1

    .line 0
    iget p0, p0, Lads_mobile_sdk/eh;->bitField0_:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputbitField0_(Lads_mobile_sdk/eh;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/eh;->bitField0_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputdisplayDensity_(Lads_mobile_sdk/eh;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/eh;->displayDensity_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputminAlphaSignal_(Lads_mobile_sdk/eh;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/eh;->minAlphaSignal_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputpercentAdOnScreen_(Lads_mobile_sdk/eh;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/eh;->percentAdOnScreen_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputviewHeight_(Lads_mobile_sdk/eh;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/eh;->viewHeight_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputviewWidth_(Lads_mobile_sdk/eh;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/eh;->viewWidth_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/eh;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/eh;->DEFAULT_INSTANCE:Lads_mobile_sdk/eh;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/eh;

    invoke-direct {v0}, Lads_mobile_sdk/eh;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/eh;->DEFAULT_INSTANCE:Lads_mobile_sdk/eh;

    .line 5
    const-class v1, Lads_mobile_sdk/eh;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 12124
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    const-wide/16 v0, -0x1

    .line 12125
    iput-wide v0, p0, Lads_mobile_sdk/eh;->percentAdOnScreen_:J

    .line 12126
    iput-wide v0, p0, Lads_mobile_sdk/eh;->percentScreenCoveredByAd_:J

    .line 12127
    iput-wide v0, p0, Lads_mobile_sdk/eh;->minAlphaSignal_:J

    .line 12128
    iput-wide v0, p0, Lads_mobile_sdk/eh;->viewHeight_:J

    .line 12129
    iput-wide v0, p0, Lads_mobile_sdk/eh;->viewWidth_:J

    .line 12130
    iput-wide v0, p0, Lads_mobile_sdk/eh;->displayDensity_:J

    .line 12131
    iput-wide v0, p0, Lads_mobile_sdk/eh;->estimatedOccludedSurface_:J

    .line 12132
    iput-wide v0, p0, Lads_mobile_sdk/eh;->scaleFactor_:J

    return-void
.end method

.method public static v()Lads_mobile_sdk/dh;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/eh;->DEFAULT_INSTANCE:Lads_mobile_sdk/eh;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->h()Lads_mobile_sdk/vz0$a;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/dh;

    return-object v0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    .line 1
    sget-object p2, Lads_mobile_sdk/wf;->a:[I

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
    const-class p1, Lads_mobile_sdk/eh;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 31
    :cond_20
    sget-object p1, Lads_mobile_sdk/eh;->DEFAULT_INSTANCE:Lads_mobile_sdk/eh;

    return-object p1

    .line 32
    :cond_23
    const-string v7, "estimatedOccludedSurface_"

    const-string v8, "scaleFactor_"

    const-string v0, "bitField0_"

    const-string v1, "percentAdOnScreen_"

    const-string v2, "percentScreenCoveredByAd_"

    const-string v3, "minAlphaSignal_"

    const-string v4, "viewHeight_"

    const-string v5, "viewWidth_"

    const-string v6, "displayDensity_"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p1

    .line 47
    sget-object p2, Lads_mobile_sdk/eh;->DEFAULT_INSTANCE:Lads_mobile_sdk/eh;

    const-string p3, "\u0001\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0000\u0000\u0001\u1002\u0000\u0002\u1002\u0001\u0003\u1002\u0002\u0004\u1002\u0003\u0005\u1002\u0004\u0006\u1002\u0005\u0007\u1002\u0006\u0008\u1002\u0007"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 48
    :cond_42
    new-instance p1, Lads_mobile_sdk/dh;

    invoke-direct {p1}, Lads_mobile_sdk/dh;-><init>()V

    return-object p1

    .line 49
    :cond_48
    new-instance p1, Lads_mobile_sdk/eh;

    invoke-direct {p1}, Lads_mobile_sdk/eh;-><init>()V

    return-object p1
.end method
