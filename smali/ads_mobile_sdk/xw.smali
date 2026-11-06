###### Class ads_mobile_sdk.xw (ads_mobile_sdk.xw)
.class public final Lads_mobile_sdk/xw;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/xw;

.field public static final c:I = 0xd

.field public static final d:I = 0x1

.field public static final e:I = 0x2

.field public static final f:I = 0x3

.field public static final g:I = 0xa

.field public static final h:I = 0x7

.field public static final i:I = 0x4

.field public static final j:I = 0x5

.field public static final k:I = 0x9

.field public static final l:I = 0xf


# instance fields
.field private bitField0_:I

.field private configTimeUsec_:J

.field private deviceProperties_:Lads_mobile_sdk/bx;

.field private downloadedBlob_:Lads_mobile_sdk/yh1$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$f<",
            "Lads_mobile_sdk/jw;",
            ">;"
        }
    .end annotation
.end field

.field private experimentIdMemoizedSerializedSize:I

.field private experimentId_:Lads_mobile_sdk/yh1$c;

.field private externalClientExperimentIds_:Lads_mobile_sdk/xq0;

.field private gzipCompressed_:Lads_mobile_sdk/du;

.field private overrideZwiebackNid_:Ljava/lang/String;

.field private serverToken_:Lads_mobile_sdk/yh1$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private triggerExperimentIdMemoizedSerializedSize:I

.field private triggerExperimentId_:Lads_mobile_sdk/yh1$c;

.field private versionInfo_:Lads_mobile_sdk/zw;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/xw;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/xw;->DEFAULT_INSTANCE:Lads_mobile_sdk/xw;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/xw;

    invoke-direct {v0}, Lads_mobile_sdk/xw;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/xw;->DEFAULT_INSTANCE:Lads_mobile_sdk/xw;

    .line 5
    const-class v1, Lads_mobile_sdk/xw;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 10437
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    const/4 v0, -0x1

    .line 10571
    iput v0, p0, Lads_mobile_sdk/xw;->experimentIdMemoizedSerializedSize:I

    .line 10751
    iput v0, p0, Lads_mobile_sdk/xw;->triggerExperimentIdMemoizedSerializedSize:I

    .line 10752
    sget-object v0, Lads_mobile_sdk/du;->b:Lads_mobile_sdk/du;

    iput-object v0, p0, Lads_mobile_sdk/xw;->gzipCompressed_:Lads_mobile_sdk/du;

    .line 10753
    invoke-static {}, Lads_mobile_sdk/vz0;->i()Lads_mobile_sdk/yh1$c;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/xw;->experimentId_:Lads_mobile_sdk/yh1$c;

    .line 10754
    invoke-static {}, Lads_mobile_sdk/vz0;->i()Lads_mobile_sdk/yh1$c;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/xw;->triggerExperimentId_:Lads_mobile_sdk/yh1$c;

    .line 10755
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/xw;->serverToken_:Lads_mobile_sdk/yh1$f;

    .line 10756
    const-string v0, ""

    iput-object v0, p0, Lads_mobile_sdk/xw;->overrideZwiebackNid_:Ljava/lang/String;

    .line 10757
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/xw;->downloadedBlob_:Lads_mobile_sdk/yh1$f;

    return-void
.end method

.method public static a([BLads_mobile_sdk/er0;)Lads_mobile_sdk/xw;
    .registers 3

    .line 1
    sget-object v0, Lads_mobile_sdk/xw;->DEFAULT_INSTANCE:Lads_mobile_sdk/xw;

    invoke-static {v0, p0, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/vz0;[BLads_mobile_sdk/er0;)Lads_mobile_sdk/vz0;

    move-result-object p0

    check-cast p0, Lads_mobile_sdk/xw;

    return-object p0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16

    .line 2
    sget-object p2, Lads_mobile_sdk/fw;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4e

    const/4 p2, 0x2

    if-eq p1, p2, :cond_48

    const/4 p2, 0x3

    if-eq p1, p2, :cond_23

    const/4 p2, 0x4

    if-eq p1, p2, :cond_20

    const/4 p2, 0x5

    if-eq p1, p2, :cond_19

    const/4 p1, 0x0

    return-object p1

    .line 34
    :cond_19
    const-class p1, Lads_mobile_sdk/xw;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 35
    :cond_20
    sget-object p1, Lads_mobile_sdk/xw;->DEFAULT_INSTANCE:Lads_mobile_sdk/xw;

    return-object p1

    .line 36
    :cond_23
    const-string v10, "gzipCompressed_"

    const-string v11, "externalClientExperimentIds_"

    const-string v0, "bitField0_"

    const-string v1, "experimentId_"

    const-string v2, "configTimeUsec_"

    const-string v3, "triggerExperimentId_"

    const-string v4, "downloadedBlob_"

    const-class v5, Lads_mobile_sdk/jw;

    const-string v6, "versionInfo_"

    const-string v7, "overrideZwiebackNid_"

    const-string v8, "deviceProperties_"

    const-string v9, "serverToken_"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/Object;

    move-result-object p1

    .line 54
    sget-object p2, Lads_mobile_sdk/xw;->DEFAULT_INSTANCE:Lads_mobile_sdk/xw;

    const-string p3, "\u0001\n\u0000\u0001\u0001\u000f\n\u0000\u0004\u0000\u0001\'\u0002\u1002\u0001\u0003\'\u0004\u001b\u0005\u1009\u0003\u0007\u1008\u0002\t\u1009\u0004\n\u001a\r\u100a\u0000\u000f\u1009\u0005"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 55
    :cond_48
    new-instance p1, Lads_mobile_sdk/ww;

    invoke-direct {p1}, Lads_mobile_sdk/ww;-><init>()V

    return-object p1

    .line 56
    :cond_4e
    new-instance p1, Lads_mobile_sdk/xw;

    invoke-direct {p1}, Lads_mobile_sdk/xw;-><init>()V

    return-object p1
.end method
