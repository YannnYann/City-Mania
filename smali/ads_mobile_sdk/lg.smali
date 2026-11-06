###### Class ads_mobile_sdk.lg (ads_mobile_sdk.lg)
.class public final Lads_mobile_sdk/lg;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/lg;

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3


# instance fields
.field private bitField0_:I

.field private isPhysicalInput_:I

.field private source_:J

.field private verified_:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetbitField0_(Lads_mobile_sdk/lg;)I
    .registers 1

    .line 0
    iget p0, p0, Lads_mobile_sdk/lg;->bitField0_:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputbitField0_(Lads_mobile_sdk/lg;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/lg;->bitField0_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputisPhysicalInput_(Lads_mobile_sdk/lg;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/lg;->isPhysicalInput_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputsource_(Lads_mobile_sdk/lg;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/lg;->source_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputverified_(Lads_mobile_sdk/lg;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/lg;->verified_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/lg;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/lg;->DEFAULT_INSTANCE:Lads_mobile_sdk/lg;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/lg;

    invoke-direct {v0}, Lads_mobile_sdk/lg;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/lg;->DEFAULT_INSTANCE:Lads_mobile_sdk/lg;

    .line 5
    const-class v1, Lads_mobile_sdk/lg;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 14463
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    const-wide/16 v0, -0x1

    .line 14464
    iput-wide v0, p0, Lads_mobile_sdk/lg;->source_:J

    const/16 v0, 0x3e8

    .line 14465
    iput v0, p0, Lads_mobile_sdk/lg;->isPhysicalInput_:I

    .line 14466
    iput v0, p0, Lads_mobile_sdk/lg;->verified_:I

    return-void
.end method

.method public static v()Lads_mobile_sdk/kg;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/lg;->DEFAULT_INSTANCE:Lads_mobile_sdk/lg;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->h()Lads_mobile_sdk/vz0$a;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/kg;

    return-object v0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .line 1
    sget-object p2, Lads_mobile_sdk/wf;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_41

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3b

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
    const-class p1, Lads_mobile_sdk/lg;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 27
    :cond_20
    sget-object p1, Lads_mobile_sdk/lg;->DEFAULT_INSTANCE:Lads_mobile_sdk/lg;

    return-object p1

    .line 28
    :cond_23
    sget-object v3, Lads_mobile_sdk/qh;->a:Lads_mobile_sdk/qh;

    const-string v4, "verified_"

    const-string v0, "bitField0_"

    const-string v1, "source_"

    const-string v2, "isPhysicalInput_"

    move-object v5, v3

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    .line 33
    sget-object p2, Lads_mobile_sdk/lg;->DEFAULT_INSTANCE:Lads_mobile_sdk/lg;

    const-string p3, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1002\u0000\u0002\u180c\u0001\u0003\u180c\u0002"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 34
    :cond_3b
    new-instance p1, Lads_mobile_sdk/kg;

    invoke-direct {p1}, Lads_mobile_sdk/kg;-><init>()V

    return-object p1

    .line 35
    :cond_41
    new-instance p1, Lads_mobile_sdk/lg;

    invoke-direct {p1}, Lads_mobile_sdk/lg;-><init>()V

    return-object p1
.end method
