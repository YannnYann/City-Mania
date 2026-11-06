###### Class ads_mobile_sdk.jv2 (ads_mobile_sdk.jv2)
.class public final Lads_mobile_sdk/jv2;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/jv2;

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4

.field public static final g:I = 0x5


# instance fields
.field private bitField0_:I

.field private bytecodeChecksum_:Ljava/lang/String;

.field private downloadTimestampSecs_:J

.field private expiredTimestampSecs_:J

.field private expiryPeriodSecs_:J

.field private vmChecksum_:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/jv2;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/jv2;->DEFAULT_INSTANCE:Lads_mobile_sdk/jv2;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/jv2;

    invoke-direct {v0}, Lads_mobile_sdk/jv2;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/jv2;->DEFAULT_INSTANCE:Lads_mobile_sdk/jv2;

    .line 5
    const-class v1, Lads_mobile_sdk/jv2;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lads_mobile_sdk/jv2;->vmChecksum_:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lads_mobile_sdk/jv2;->bytecodeChecksum_:Ljava/lang/String;

    return-void
.end method

.method public static w()Lads_mobile_sdk/jv2;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/jv2;->DEFAULT_INSTANCE:Lads_mobile_sdk/jv2;

    return-object v0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .line 1
    sget-object p2, Lads_mobile_sdk/fv2;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_42

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3c

    const/4 p2, 0x3

    if-eq p1, p2, :cond_23

    const/4 p2, 0x4

    if-eq p1, p2, :cond_20

    const/4 p2, 0x5

    if-eq p1, p2, :cond_19

    const/4 p1, 0x0

    return-object p1

    .line 26
    :cond_19
    const-class p1, Lads_mobile_sdk/jv2;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 27
    :cond_20
    sget-object p1, Lads_mobile_sdk/jv2;->DEFAULT_INSTANCE:Lads_mobile_sdk/jv2;

    return-object p1

    .line 28
    :cond_23
    const-string v4, "downloadTimestampSecs_"

    const-string v5, "expiryPeriodSecs_"

    const-string v0, "bitField0_"

    const-string v1, "vmChecksum_"

    const-string v2, "bytecodeChecksum_"

    const-string v3, "expiredTimestampSecs_"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    .line 39
    sget-object p2, Lads_mobile_sdk/jv2;->DEFAULT_INSTANCE:Lads_mobile_sdk/jv2;

    const-string p3, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1003\u0002\u0004\u1003\u0003\u0005\u1003\u0004"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 40
    :cond_3c
    new-instance p1, Lads_mobile_sdk/hv2;

    invoke-direct {p1}, Lads_mobile_sdk/hv2;-><init>()V

    return-object p1

    .line 41
    :cond_42
    new-instance p1, Lads_mobile_sdk/jv2;

    invoke-direct {p1}, Lads_mobile_sdk/jv2;-><init>()V

    return-object p1
.end method

.method public final v()Ljava/lang/String;
    .registers 2

    .line 143
    iget-object v0, p0, Lads_mobile_sdk/jv2;->bytecodeChecksum_:Ljava/lang/String;

    return-object v0
.end method

.method public final x()J
    .registers 3

    .line 226
    iget-wide v0, p0, Lads_mobile_sdk/jv2;->expiredTimestampSecs_:J

    return-wide v0
.end method

.method public final y()Ljava/lang/String;
    .registers 2

    .line 60
    iget-object v0, p0, Lads_mobile_sdk/jv2;->vmChecksum_:Ljava/lang/String;

    return-object v0
.end method
