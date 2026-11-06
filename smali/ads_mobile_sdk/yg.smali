###### Class ads_mobile_sdk.yg (ads_mobile_sdk.yg)
.class public final Lads_mobile_sdk/yg;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/yg;

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3


# instance fields
.field private bitField0_:I

.field private screenBrightnessMode_:J

.field private screenBrightness_:J

.field private screenOffTimeout_:J


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/yg;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/yg;->DEFAULT_INSTANCE:Lads_mobile_sdk/yg;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/yg;

    invoke-direct {v0}, Lads_mobile_sdk/yg;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/yg;->DEFAULT_INSTANCE:Lads_mobile_sdk/yg;

    .line 5
    const-class v1, Lads_mobile_sdk/yg;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 13789
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    const-wide/16 v0, -0x1

    .line 13790
    iput-wide v0, p0, Lads_mobile_sdk/yg;->screenBrightness_:J

    .line 13791
    iput-wide v0, p0, Lads_mobile_sdk/yg;->screenBrightnessMode_:J

    .line 13792
    iput-wide v0, p0, Lads_mobile_sdk/yg;->screenOffTimeout_:J

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    sget-object p2, Lads_mobile_sdk/wf;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3e

    const/4 p2, 0x2

    if-eq p1, p2, :cond_38

    const/4 p2, 0x3

    if-eq p1, p2, :cond_23

    const/4 p2, 0x4

    if-eq p1, p2, :cond_20

    const/4 p2, 0x5

    if-eq p1, p2, :cond_19

    const/4 p1, 0x0

    return-object p1

    .line 24
    :cond_19
    const-class p1, Lads_mobile_sdk/yg;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 25
    :cond_20
    sget-object p1, Lads_mobile_sdk/yg;->DEFAULT_INSTANCE:Lads_mobile_sdk/yg;

    return-object p1

    .line 26
    :cond_23
    const-string p1, "screenBrightnessMode_"

    const-string p2, "screenOffTimeout_"

    const-string p3, "bitField0_"

    const-string v0, "screenBrightness_"

    filled-new-array {p3, v0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 35
    sget-object p2, Lads_mobile_sdk/yg;->DEFAULT_INSTANCE:Lads_mobile_sdk/yg;

    const-string p3, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1002\u0000\u0002\u1002\u0001\u0003\u1002\u0002"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 36
    :cond_38
    new-instance p1, Lads_mobile_sdk/xg;

    invoke-direct {p1}, Lads_mobile_sdk/xg;-><init>()V

    return-object p1

    .line 37
    :cond_3e
    new-instance p1, Lads_mobile_sdk/yg;

    invoke-direct {p1}, Lads_mobile_sdk/yg;-><init>()V

    return-object p1
.end method
