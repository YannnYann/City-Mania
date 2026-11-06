###### Class ads_mobile_sdk.xh (ads_mobile_sdk.xh)
.class public final Lads_mobile_sdk/xh;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/xh;

.field public static final c:I = 0x1

.field public static final d:I = 0x3

.field public static final e:I = 0x4


# instance fields
.field private bitField0_:I

.field private encryptedAdAttestationStatemement_:Lads_mobile_sdk/du;

.field private keyIdentifier_:Ljava/lang/String;

.field private timestampMs_:J


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/xh;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/xh;->DEFAULT_INSTANCE:Lads_mobile_sdk/xh;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/xh;

    invoke-direct {v0}, Lads_mobile_sdk/xh;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/xh;->DEFAULT_INSTANCE:Lads_mobile_sdk/xh;

    .line 5
    const-class v1, Lads_mobile_sdk/xh;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 599
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    .line 600
    const-string v0, ""

    iput-object v0, p0, Lads_mobile_sdk/xh;->keyIdentifier_:Ljava/lang/String;

    .line 601
    sget-object v0, Lads_mobile_sdk/du;->b:Lads_mobile_sdk/du;

    iput-object v0, p0, Lads_mobile_sdk/xh;->encryptedAdAttestationStatemement_:Lads_mobile_sdk/du;

    return-void
.end method


# virtual methods
.method public final A()Z
    .registers 3

    .line 622
    iget v0, p0, Lads_mobile_sdk/xh;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

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
    const-class p1, Lads_mobile_sdk/xh;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 25
    :cond_20
    sget-object p1, Lads_mobile_sdk/xh;->DEFAULT_INSTANCE:Lads_mobile_sdk/xh;

    return-object p1

    .line 26
    :cond_23
    const-string p1, "keyIdentifier_"

    const-string p2, "encryptedAdAttestationStatemement_"

    const-string p3, "bitField0_"

    const-string v0, "timestampMs_"

    filled-new-array {p3, v0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 35
    sget-object p2, Lads_mobile_sdk/xh;->DEFAULT_INSTANCE:Lads_mobile_sdk/xh;

    const-string p3, "\u0001\u0003\u0000\u0001\u0001\u0004\u0003\u0000\u0000\u0000\u0001\u1002\u0000\u0003\u1008\u0001\u0004\u100a\u0002"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 36
    :cond_38
    new-instance p1, Lads_mobile_sdk/wh;

    invoke-direct {p1}, Lads_mobile_sdk/wh;-><init>()V

    return-object p1

    .line 37
    :cond_3e
    new-instance p1, Lads_mobile_sdk/xh;

    invoke-direct {p1}, Lads_mobile_sdk/xh;-><init>()V

    return-object p1
.end method

.method public final v()Lads_mobile_sdk/du;
    .registers 2

    .line 784
    iget-object v0, p0, Lads_mobile_sdk/xh;->encryptedAdAttestationStatemement_:Lads_mobile_sdk/du;

    return-object v0
.end method

.method public final w()Ljava/lang/String;
    .registers 2

    .line 693
    iget-object v0, p0, Lads_mobile_sdk/xh;->keyIdentifier_:Ljava/lang/String;

    return-object v0
.end method

.method public final x()J
    .registers 3

    .line 634
    iget-wide v0, p0, Lads_mobile_sdk/xh;->timestampMs_:J

    return-wide v0
.end method

.method public final y()Z
    .registers 2

    .line 772
    iget v0, p0, Lads_mobile_sdk/xh;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final z()Z
    .registers 2

    .line 679
    iget v0, p0, Lads_mobile_sdk/xh;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method
