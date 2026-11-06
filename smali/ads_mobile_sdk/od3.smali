###### Class ads_mobile_sdk.od3 (ads_mobile_sdk.od3)
.class public final Lads_mobile_sdk/od3;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/od3;

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4


# instance fields
.field private bitField0_:I

.field private eoidData_:Lads_mobile_sdk/xp0;

.field private isInstallReferrerReported_:Z

.field private isServingGdprApplicable_:Z

.field private totalInflightAdLimit_:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetbitField0_(Lads_mobile_sdk/od3;)I
    .registers 1

    .line 0
    iget p0, p0, Lads_mobile_sdk/od3;->bitField0_:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputbitField0_(Lads_mobile_sdk/od3;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/od3;->bitField0_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputeoidData_(Lads_mobile_sdk/od3;Lads_mobile_sdk/xp0;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lads_mobile_sdk/od3;->eoidData_:Lads_mobile_sdk/xp0;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputisInstallReferrerReported_(Lads_mobile_sdk/od3;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lads_mobile_sdk/od3;->isInstallReferrerReported_:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputisServingGdprApplicable_(Lads_mobile_sdk/od3;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lads_mobile_sdk/od3;->isServingGdprApplicable_:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputtotalInflightAdLimit_(Lads_mobile_sdk/od3;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/od3;->totalInflightAdLimit_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/od3;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/od3;->DEFAULT_INSTANCE:Lads_mobile_sdk/od3;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/od3;

    invoke-direct {v0}, Lads_mobile_sdk/od3;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/od3;->DEFAULT_INSTANCE:Lads_mobile_sdk/od3;

    .line 5
    const-class v1, Lads_mobile_sdk/od3;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lads_mobile_sdk/od3;
    .registers 2

    .line 5
    sget-object v0, Lads_mobile_sdk/od3;->DEFAULT_INSTANCE:Lads_mobile_sdk/od3;

    invoke-static {v0, p0}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/vz0;Ljava/io/InputStream;)Lads_mobile_sdk/vz0;

    move-result-object p0

    check-cast p0, Lads_mobile_sdk/od3;

    return-object p0
.end method

.method public static v()Lads_mobile_sdk/od3;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/od3;->DEFAULT_INSTANCE:Lads_mobile_sdk/od3;

    return-object v0
.end method


# virtual methods
.method public final A()Z
    .registers 2

    .line 113
    iget v0, p0, Lads_mobile_sdk/od3;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 6
    sget-object p2, Lads_mobile_sdk/md3;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_40

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3a

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
    const-class p1, Lads_mobile_sdk/od3;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 31
    :cond_20
    sget-object p1, Lads_mobile_sdk/od3;->DEFAULT_INSTANCE:Lads_mobile_sdk/od3;

    return-object p1

    .line 32
    :cond_23
    const-string p1, "eoidData_"

    const-string p2, "isServingGdprApplicable_"

    const-string p3, "bitField0_"

    const-string v0, "isInstallReferrerReported_"

    const-string v1, "totalInflightAdLimit_"

    filled-new-array {p3, v0, v1, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 42
    sget-object p2, Lads_mobile_sdk/od3;->DEFAULT_INSTANCE:Lads_mobile_sdk/od3;

    const-string p3, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1007\u0000\u0002\u1004\u0001\u0003\u1009\u0002\u0004\u1007\u0003"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 43
    :cond_3a
    new-instance p1, Lads_mobile_sdk/nd3;

    invoke-direct {p1}, Lads_mobile_sdk/nd3;-><init>()V

    return-object p1

    .line 44
    :cond_40
    new-instance p1, Lads_mobile_sdk/od3;

    invoke-direct {p1}, Lads_mobile_sdk/od3;-><init>()V

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/xp0;)V
    .registers 2

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lads_mobile_sdk/od3;->eoidData_:Lads_mobile_sdk/xp0;

    .line 4
    iget p1, p0, Lads_mobile_sdk/od3;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lads_mobile_sdk/od3;->bitField0_:I

    return-void
.end method

.method public final w()Lads_mobile_sdk/xp0;
    .registers 2

    .line 120
    iget-object v0, p0, Lads_mobile_sdk/od3;->eoidData_:Lads_mobile_sdk/xp0;

    if-nez v0, :cond_8

    invoke-static {}, Lads_mobile_sdk/xp0;->v()Lads_mobile_sdk/xp0;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final x()Z
    .registers 2

    .line 44
    iget-boolean v0, p0, Lads_mobile_sdk/od3;->isInstallReferrerReported_:Z

    return v0
.end method

.method public final y()Z
    .registers 2

    .line 174
    iget-boolean v0, p0, Lads_mobile_sdk/od3;->isServingGdprApplicable_:Z

    return v0
.end method

.method public final z()I
    .registers 2

    .line 83
    iget v0, p0, Lads_mobile_sdk/od3;->totalInflightAdLimit_:I

    return v0
.end method
