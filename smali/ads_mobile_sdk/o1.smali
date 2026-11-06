###### Class ads_mobile_sdk.o1 (ads_mobile_sdk.o1)
.class public final Lads_mobile_sdk/o1;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/o1;

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4

.field public static final g:I = 0x5

.field public static final h:I = 0x6


# instance fields
.field private androidApiVersion_:I

.field private bitField0_:I

.field private consentStringHash_:Ljava/lang/String;

.field private deviceModel_:Ljava/lang/String;

.field private packageName_:Ljava/lang/String;

.field private pools_:Lads_mobile_sdk/ju1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/ju1<",
            "Ljava/lang/String;",
            "Lads_mobile_sdk/rx0;",
            ">;"
        }
    .end annotation
.end field

.field private versionCode_:J


# direct methods
.method public static bridge synthetic -$$Nest$fgetbitField0_(Lads_mobile_sdk/o1;)I
    .registers 1

    .line 0
    iget p0, p0, Lads_mobile_sdk/o1;->bitField0_:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetpools_(Lads_mobile_sdk/o1;)Lads_mobile_sdk/ju1;
    .registers 1

    .line 0
    iget-object p0, p0, Lads_mobile_sdk/o1;->pools_:Lads_mobile_sdk/ju1;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputandroidApiVersion_(Lads_mobile_sdk/o1;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/o1;->androidApiVersion_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputbitField0_(Lads_mobile_sdk/o1;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/o1;->bitField0_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputpools_(Lads_mobile_sdk/o1;Lads_mobile_sdk/ju1;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lads_mobile_sdk/o1;->pools_:Lads_mobile_sdk/ju1;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputversionCode_(Lads_mobile_sdk/o1;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/o1;->versionCode_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/o1;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/o1;->DEFAULT_INSTANCE:Lads_mobile_sdk/o1;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/o1;

    invoke-direct {v0}, Lads_mobile_sdk/o1;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/o1;->DEFAULT_INSTANCE:Lads_mobile_sdk/o1;

    .line 5
    const-class v1, Lads_mobile_sdk/o1;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    .line 33
    invoke-static {}, Lads_mobile_sdk/ju1;->b()Lads_mobile_sdk/ju1;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/o1;->pools_:Lads_mobile_sdk/ju1;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lads_mobile_sdk/o1;->packageName_:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lads_mobile_sdk/o1;->deviceModel_:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lads_mobile_sdk/o1;->consentStringHash_:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lads_mobile_sdk/o1;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/o1;->DEFAULT_INSTANCE:Lads_mobile_sdk/o1;

    invoke-static {v0, p0}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/vz0;Ljava/io/InputStream;)Lads_mobile_sdk/vz0;

    move-result-object p0

    check-cast p0, Lads_mobile_sdk/o1;

    return-object p0
.end method

.method public static x()Lads_mobile_sdk/o1;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/o1;->DEFAULT_INSTANCE:Lads_mobile_sdk/o1;

    return-object v0
.end method


# virtual methods
.method public final A()Ljava/util/Map;
    .registers 2

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/o1;->pools_:Lads_mobile_sdk/ju1;

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final B()J
    .registers 3

    .line 250
    iget-wide v0, p0, Lads_mobile_sdk/o1;->versionCode_:J

    return-wide v0
.end method

.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    .line 2
    sget-object p2, Lads_mobile_sdk/m1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_52

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4c

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
    const-class p1, Lads_mobile_sdk/o1;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 35
    :cond_20
    sget-object p1, Lads_mobile_sdk/o1;->DEFAULT_INSTANCE:Lads_mobile_sdk/o1;

    return-object p1

    .line 36
    :cond_23
    sget-object p1, Lads_mobile_sdk/u24$a;->k:Lads_mobile_sdk/u24$a;

    sget-object p2, Lads_mobile_sdk/u24$a;->m:Lads_mobile_sdk/u24$a;

    .line 44
    invoke-static {}, Lads_mobile_sdk/rx0;->w()Lads_mobile_sdk/rx0;

    move-result-object p3

    .line 45
    const-string v0, ""

    invoke-static {p1, v0, p2, p3}, Lads_mobile_sdk/gu1;->a(Lads_mobile_sdk/u24$a;Ljava/lang/Object;Lads_mobile_sdk/u24$a;Ljava/lang/Object;)Lads_mobile_sdk/gu1;

    move-result-object v3

    const-string v7, "androidApiVersion_"

    const-string v8, "consentStringHash_"

    const-string v1, "bitField0_"

    const-string v2, "pools_"

    const-string v4, "packageName_"

    const-string v5, "versionCode_"

    const-string v6, "deviceModel_"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object p1

    .line 59
    sget-object p2, Lads_mobile_sdk/o1;->DEFAULT_INSTANCE:Lads_mobile_sdk/o1;

    const-string p3, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0001\u0000\u0000\u00012\u0002\u1208\u0000\u0003\u1002\u0001\u0004\u1208\u0002\u0005\u1004\u0003\u0006\u1208\u0004"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 60
    :cond_4c
    new-instance p1, Lads_mobile_sdk/n1;

    invoke-direct {p1}, Lads_mobile_sdk/n1;-><init>()V

    return-object p1

    .line 61
    :cond_52
    new-instance p1, Lads_mobile_sdk/o1;

    invoke-direct {p1}, Lads_mobile_sdk/o1;-><init>()V

    return-object p1
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lads_mobile_sdk/o1;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lads_mobile_sdk/o1;->bitField0_:I

    .line 4
    iput-object p1, p0, Lads_mobile_sdk/o1;->consentStringHash_:Ljava/lang/String;

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lads_mobile_sdk/o1;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lads_mobile_sdk/o1;->bitField0_:I

    .line 4
    iput-object p1, p0, Lads_mobile_sdk/o1;->deviceModel_:Ljava/lang/String;

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lads_mobile_sdk/o1;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lads_mobile_sdk/o1;->bitField0_:I

    .line 4
    iput-object p1, p0, Lads_mobile_sdk/o1;->packageName_:Ljava/lang/String;

    return-void
.end method

.method public final v()I
    .registers 2

    .line 389
    iget v0, p0, Lads_mobile_sdk/o1;->androidApiVersion_:I

    return v0
.end method

.method public final w()Ljava/lang/String;
    .registers 2

    .line 444
    iget-object v0, p0, Lads_mobile_sdk/o1;->consentStringHash_:Ljava/lang/String;

    return-object v0
.end method

.method public final y()Ljava/lang/String;
    .registers 2

    .line 305
    iget-object v0, p0, Lads_mobile_sdk/o1;->deviceModel_:Ljava/lang/String;

    return-object v0
.end method

.method public final z()Ljava/lang/String;
    .registers 2

    .line 166
    iget-object v0, p0, Lads_mobile_sdk/o1;->packageName_:Ljava/lang/String;

    return-object v0
.end method
