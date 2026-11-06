###### Class ads_mobile_sdk.s90 (ads_mobile_sdk.s90)
.class public final Lads_mobile_sdk/s90;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/s90;

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4


# instance fields
.field private bitField0_:I

.field private imageDigest_:Lads_mobile_sdk/du;

.field private image_:Lads_mobile_sdk/du;

.field private mimeType_:Ljava/lang/String;

.field private type_:I


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/s90;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/s90;->DEFAULT_INSTANCE:Lads_mobile_sdk/s90;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/s90;

    invoke-direct {v0}, Lads_mobile_sdk/s90;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/s90;->DEFAULT_INSTANCE:Lads_mobile_sdk/s90;

    .line 5
    const-class v1, Lads_mobile_sdk/s90;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 52570
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    .line 52571
    const-string v0, ""

    iput-object v0, p0, Lads_mobile_sdk/s90;->mimeType_:Ljava/lang/String;

    .line 52572
    sget-object v0, Lads_mobile_sdk/du;->b:Lads_mobile_sdk/du;

    iput-object v0, p0, Lads_mobile_sdk/s90;->image_:Lads_mobile_sdk/du;

    .line 52573
    iput-object v0, p0, Lads_mobile_sdk/s90;->imageDigest_:Lads_mobile_sdk/du;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .line 1
    sget-object p2, Lads_mobile_sdk/r70;->a:[I

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
    const-class p1, Lads_mobile_sdk/s90;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 27
    :cond_20
    sget-object p1, Lads_mobile_sdk/s90;->DEFAULT_INSTANCE:Lads_mobile_sdk/s90;

    return-object p1

    .line 28
    :cond_23
    sget-object v2, Lads_mobile_sdk/q90;->a:Lads_mobile_sdk/q90;

    const-string v4, "image_"

    const-string v5, "imageDigest_"

    const-string v0, "bitField0_"

    const-string v1, "type_"

    const-string v3, "mimeType_"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    .line 36
    sget-object p2, Lads_mobile_sdk/s90;->DEFAULT_INSTANCE:Lads_mobile_sdk/s90;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u1008\u0001\u0003\u100a\u0002\u0004\u100a\u0003"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 37
    :cond_3c
    new-instance p1, Lads_mobile_sdk/p90;

    invoke-direct {p1}, Lads_mobile_sdk/p90;-><init>()V

    return-object p1

    .line 38
    :cond_42
    new-instance p1, Lads_mobile_sdk/s90;

    invoke-direct {p1}, Lads_mobile_sdk/s90;-><init>()V

    return-object p1
.end method
