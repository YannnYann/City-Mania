###### Class ads_mobile_sdk.ab (ads_mobile_sdk.ab)
.class public final Lads_mobile_sdk/ab;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/ab;

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4

.field public static final g:I = 0x5

.field public static final h:I = 0x6

.field public static final i:I = 0x7

.field public static final j:I = 0x8


# instance fields
.field private apiLevel_:J

.field private appId_:Ljava/lang/String;

.field private appVersionCode_:J

.field private bitField0_:I

.field private hostType_:I

.field private hostVersion_:Ljava/lang/String;

.field private model_:Ljava/lang/String;

.field private osType_:I

.field private vmVersion_:Lads_mobile_sdk/du;


# direct methods
.method public static bridge synthetic -$$Nest$fgetbitField0_(Lads_mobile_sdk/ab;)I
    .registers 1

    .line 0
    iget p0, p0, Lads_mobile_sdk/ab;->bitField0_:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputapiLevel_(Lads_mobile_sdk/ab;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/ab;->apiLevel_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputappVersionCode_(Lads_mobile_sdk/ab;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/ab;->appVersionCode_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputbitField0_(Lads_mobile_sdk/ab;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/ab;->bitField0_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputhostType_(Lads_mobile_sdk/ab;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/ab;->hostType_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputosType_(Lads_mobile_sdk/ab;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/ab;->osType_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/ab;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/ab;->DEFAULT_INSTANCE:Lads_mobile_sdk/ab;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/ab;

    invoke-direct {v0}, Lads_mobile_sdk/ab;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/ab;->DEFAULT_INSTANCE:Lads_mobile_sdk/ab;

    .line 5
    const-class v1, Lads_mobile_sdk/ab;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    .line 24
    sget-object v0, Lads_mobile_sdk/du;->b:Lads_mobile_sdk/du;

    iput-object v0, p0, Lads_mobile_sdk/ab;->vmVersion_:Lads_mobile_sdk/du;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lads_mobile_sdk/ab;->model_:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lads_mobile_sdk/ab;->appId_:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lads_mobile_sdk/ab;->hostVersion_:Ljava/lang/String;

    return-void
.end method

.method public static v()Lads_mobile_sdk/za;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/ab;->DEFAULT_INSTANCE:Lads_mobile_sdk/ab;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->h()Lads_mobile_sdk/vz0$a;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/za;

    return-object v0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    .line 74
    sget-object p2, Lads_mobile_sdk/ya;->a:[I

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

    .line 103
    :cond_19
    const-class p1, Lads_mobile_sdk/ab;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 104
    :cond_20
    sget-object p1, Lads_mobile_sdk/ab;->DEFAULT_INSTANCE:Lads_mobile_sdk/ab;

    return-object p1

    .line 105
    :cond_23
    const-string v7, "osType_"

    const-string v8, "hostType_"

    const-string v0, "bitField0_"

    const-string v1, "vmVersion_"

    const-string v2, "apiLevel_"

    const-string v3, "model_"

    const-string v4, "appId_"

    const-string v5, "appVersionCode_"

    const-string v6, "hostVersion_"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p1

    .line 120
    sget-object p2, Lads_mobile_sdk/ab;->DEFAULT_INSTANCE:Lads_mobile_sdk/ab;

    const-string p3, "\u0004\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0000\u0000\u0001\u100a\u0000\u0002\u1002\u0001\u0003\u1008\u0002\u0004\u1008\u0003\u0005\u1002\u0004\u0006\u1008\u0005\u0007\u100c\u0006\u0008\u100c\u0007"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 121
    :cond_42
    new-instance p1, Lads_mobile_sdk/za;

    invoke-direct {p1}, Lads_mobile_sdk/za;-><init>()V

    return-object p1

    .line 122
    :cond_48
    new-instance p1, Lads_mobile_sdk/ab;

    invoke-direct {p1}, Lads_mobile_sdk/ab;-><init>()V

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/du;)V
    .registers 3

    .line 71
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget v0, p0, Lads_mobile_sdk/ab;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lads_mobile_sdk/ab;->bitField0_:I

    .line 73
    iput-object p1, p0, Lads_mobile_sdk/ab;->vmVersion_:Lads_mobile_sdk/du;

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lads_mobile_sdk/ab;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lads_mobile_sdk/ab;->bitField0_:I

    .line 4
    iput-object p1, p0, Lads_mobile_sdk/ab;->appId_:Ljava/lang/String;

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lads_mobile_sdk/ab;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lads_mobile_sdk/ab;->bitField0_:I

    .line 4
    iput-object p1, p0, Lads_mobile_sdk/ab;->hostVersion_:Ljava/lang/String;

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lads_mobile_sdk/ab;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lads_mobile_sdk/ab;->bitField0_:I

    .line 4
    iput-object p1, p0, Lads_mobile_sdk/ab;->model_:Ljava/lang/String;

    return-void
.end method
