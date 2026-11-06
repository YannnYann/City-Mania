###### Class ads_mobile_sdk.th (ads_mobile_sdk.th)
.class public final Lads_mobile_sdk/th;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/th;

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4

.field public static final g:I = 0x5

.field public static final h:I = 0x6

.field public static final i:I = 0x7


# instance fields
.field private adshieldVersion_:Ljava/lang/String;

.field private afmaVersion_:Ljava/lang/String;

.field private appIdSignal_:Ljava/lang/String;

.field private bitField0_:I

.field private cerSignal_:Ljava/lang/String;

.field private evtTime_:J

.field private uptSignal_:J

.field private vcdSignal_:J


# direct methods
.method public static bridge synthetic -$$Nest$fgetbitField0_(Lads_mobile_sdk/th;)I
    .registers 1

    .line 0
    iget p0, p0, Lads_mobile_sdk/th;->bitField0_:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputbitField0_(Lads_mobile_sdk/th;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/th;->bitField0_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputevtTime_(Lads_mobile_sdk/th;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/th;->evtTime_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputuptSignal_(Lads_mobile_sdk/th;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/th;->uptSignal_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputvcdSignal_(Lads_mobile_sdk/th;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/th;->vcdSignal_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/th;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/th;->DEFAULT_INSTANCE:Lads_mobile_sdk/th;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/th;

    invoke-direct {v0}, Lads_mobile_sdk/th;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/th;->DEFAULT_INSTANCE:Lads_mobile_sdk/th;

    .line 5
    const-class v1, Lads_mobile_sdk/th;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 31303
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    .line 31304
    const-string v0, ""

    iput-object v0, p0, Lads_mobile_sdk/th;->adshieldVersion_:Ljava/lang/String;

    .line 31305
    iput-object v0, p0, Lads_mobile_sdk/th;->afmaVersion_:Ljava/lang/String;

    .line 31306
    const-string v1, "D"

    iput-object v1, p0, Lads_mobile_sdk/th;->appIdSignal_:Ljava/lang/String;

    .line 31307
    iput-object v0, p0, Lads_mobile_sdk/th;->cerSignal_:Ljava/lang/String;

    return-void
.end method

.method public static v()Lads_mobile_sdk/sh;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/th;->DEFAULT_INSTANCE:Lads_mobile_sdk/th;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->h()Lads_mobile_sdk/vz0$a;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/sh;

    return-object v0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    .line 1
    sget-object p2, Lads_mobile_sdk/wf;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_46

    const/4 p2, 0x2

    if-eq p1, p2, :cond_40

    const/4 p2, 0x3

    if-eq p1, p2, :cond_23

    const/4 p2, 0x4

    if-eq p1, p2, :cond_20

    const/4 p2, 0x5

    if-eq p1, p2, :cond_19

    const/4 p1, 0x0

    return-object p1

    .line 29
    :cond_19
    const-class p1, Lads_mobile_sdk/th;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 30
    :cond_20
    sget-object p1, Lads_mobile_sdk/th;->DEFAULT_INSTANCE:Lads_mobile_sdk/th;

    return-object p1

    .line 31
    :cond_23
    const-string v6, "uptSignal_"

    const-string v7, "cerSignal_"

    const-string v0, "bitField0_"

    const-string v1, "adshieldVersion_"

    const-string v2, "afmaVersion_"

    const-string v3, "evtTime_"

    const-string v4, "appIdSignal_"

    const-string v5, "vcdSignal_"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    .line 45
    sget-object p2, Lads_mobile_sdk/th;->DEFAULT_INSTANCE:Lads_mobile_sdk/th;

    const-string p3, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1002\u0002\u0004\u1008\u0003\u0005\u1002\u0004\u0006\u1002\u0005\u0007\u1008\u0006"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 46
    :cond_40
    new-instance p1, Lads_mobile_sdk/sh;

    invoke-direct {p1}, Lads_mobile_sdk/sh;-><init>()V

    return-object p1

    .line 47
    :cond_46
    new-instance p1, Lads_mobile_sdk/th;

    invoke-direct {p1}, Lads_mobile_sdk/th;-><init>()V

    return-object p1
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lads_mobile_sdk/th;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lads_mobile_sdk/th;->bitField0_:I

    .line 4
    iput-object p1, p0, Lads_mobile_sdk/th;->afmaVersion_:Ljava/lang/String;

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lads_mobile_sdk/th;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lads_mobile_sdk/th;->bitField0_:I

    .line 4
    iput-object p1, p0, Lads_mobile_sdk/th;->appIdSignal_:Ljava/lang/String;

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lads_mobile_sdk/th;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lads_mobile_sdk/th;->bitField0_:I

    .line 4
    iput-object p1, p0, Lads_mobile_sdk/th;->cerSignal_:Ljava/lang/String;

    return-void
.end method

.method public final w()V
    .registers 2

    .line 2
    iget v0, p0, Lads_mobile_sdk/th;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lads_mobile_sdk/th;->bitField0_:I

    .line 3
    const-string v0, "0.975916745"

    iput-object v0, p0, Lads_mobile_sdk/th;->adshieldVersion_:Ljava/lang/String;

    return-void
.end method
