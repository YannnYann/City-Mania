###### Class ads_mobile_sdk.wt (ads_mobile_sdk.wt)
.class public final Lads_mobile_sdk/wt;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/wt;

.field public static final c:I = 0x5

.field public static final d:I = 0x4

.field private static final dEPRECATEDAdapterBehavior_converter_:Lads_mobile_sdk/yh1$d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$d$a<",
            "Lads_mobile_sdk/qt;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:I = 0x2

.field public static final f:I = 0x3

.field public static final g:I = 0x6

.field public static final h:I = 0x7

.field public static final i:I = 0x8

.field public static final j:I = 0x9

.field public static final k:I = 0xa


# instance fields
.field private adapterBehaviorBitmap_:I

.field private adapterClassName_:Ljava/lang/String;

.field private adapterVersion_:Lads_mobile_sdk/vt;

.field private bitField0_:I

.field private buyerGeneratedRequestData_:Ljava/lang/String;

.field private dEPRECATEDAdapterBehaviorMemoizedSerializedSize:I

.field private dEPRECATEDAdapterBehavior_:Lads_mobile_sdk/yh1$c;

.field private error_:Lads_mobile_sdk/tt;

.field private isPublisherCreated_:Z

.field private latencyMs_:J

.field private sdkVersion_:Lads_mobile_sdk/vt;


# direct methods
.method public static bridge synthetic -$$Nest$fgetadapterClassName_(Lads_mobile_sdk/wt;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lads_mobile_sdk/wt;->adapterClassName_:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetbitField0_(Lads_mobile_sdk/wt;)I
    .registers 1

    .line 0
    iget p0, p0, Lads_mobile_sdk/wt;->bitField0_:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputadapterBehaviorBitmap_(Lads_mobile_sdk/wt;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/wt;->adapterBehaviorBitmap_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputbitField0_(Lads_mobile_sdk/wt;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/wt;->bitField0_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputlatencyMs_(Lads_mobile_sdk/wt;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/wt;->latencyMs_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/wt;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/wt;->DEFAULT_INSTANCE:Lads_mobile_sdk/wt;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/ot;

    invoke-direct {v0}, Lads_mobile_sdk/ot;-><init>()V

    sput-object v0, Lads_mobile_sdk/wt;->dEPRECATEDAdapterBehavior_converter_:Lads_mobile_sdk/yh1$d$a;

    .line 960
    new-instance v0, Lads_mobile_sdk/wt;

    invoke-direct {v0}, Lads_mobile_sdk/wt;-><init>()V

    .line 963
    sput-object v0, Lads_mobile_sdk/wt;->DEFAULT_INSTANCE:Lads_mobile_sdk/wt;

    .line 964
    const-class v1, Lads_mobile_sdk/wt;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 772
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    .line 773
    const-string v0, ""

    iput-object v0, p0, Lads_mobile_sdk/wt;->adapterClassName_:Ljava/lang/String;

    .line 774
    iput-object v0, p0, Lads_mobile_sdk/wt;->buyerGeneratedRequestData_:Ljava/lang/String;

    .line 775
    invoke-static {}, Lads_mobile_sdk/vz0;->i()Lads_mobile_sdk/yh1$c;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/wt;->dEPRECATEDAdapterBehavior_:Lads_mobile_sdk/yh1$c;

    return-void
.end method

.method public static v()Lads_mobile_sdk/rt;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/wt;->DEFAULT_INSTANCE:Lads_mobile_sdk/wt;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->h()Lads_mobile_sdk/vz0$a;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/rt;

    return-object v0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    .line 9
    sget-object p2, Lads_mobile_sdk/ft;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4c

    const/4 p2, 0x2

    if-eq p1, p2, :cond_46

    const/4 p2, 0x3

    if-eq p1, p2, :cond_23

    const/4 p2, 0x4

    if-eq p1, p2, :cond_20

    const/4 p2, 0x5

    if-eq p1, p2, :cond_19

    const/4 p1, 0x0

    return-object p1

    .line 40
    :cond_19
    const-class p1, Lads_mobile_sdk/wt;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 41
    :cond_20
    sget-object p1, Lads_mobile_sdk/wt;->DEFAULT_INSTANCE:Lads_mobile_sdk/wt;

    return-object p1

    .line 42
    :cond_23
    sget-object v9, Lads_mobile_sdk/pt;->a:Lads_mobile_sdk/pt;

    const-string v10, "adapterBehaviorBitmap_"

    const-string v0, "bitField0_"

    const-string v1, "sdkVersion_"

    const-string v2, "adapterVersion_"

    const-string v3, "buyerGeneratedRequestData_"

    const-string v4, "adapterClassName_"

    const-string v5, "isPublisherCreated_"

    const-string v6, "error_"

    const-string v7, "latencyMs_"

    const-string v8, "dEPRECATEDAdapterBehavior_"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    move-result-object p1

    .line 49
    sget-object p2, Lads_mobile_sdk/wt;->DEFAULT_INSTANCE:Lads_mobile_sdk/wt;

    const-string p3, "\u0001\t\u0000\u0001\u0002\n\t\u0000\u0001\u0000\u0002\u1009\u0002\u0003\u1009\u0003\u0004\u1008\u0001\u0005\u1008\u0000\u0006\u1007\u0004\u0007\u1009\u0005\u0008\u1002\u0006\t\u082c\n\u100b\u0007"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 50
    :cond_46
    new-instance p1, Lads_mobile_sdk/rt;

    invoke-direct {p1}, Lads_mobile_sdk/rt;-><init>()V

    return-object p1

    .line 51
    :cond_4c
    new-instance p1, Lads_mobile_sdk/wt;

    invoke-direct {p1}, Lads_mobile_sdk/wt;-><init>()V

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/tt;)V
    .registers 2

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iput-object p1, p0, Lads_mobile_sdk/wt;->error_:Lads_mobile_sdk/tt;

    .line 8
    iget p1, p0, Lads_mobile_sdk/wt;->bitField0_:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lads_mobile_sdk/wt;->bitField0_:I

    return-void
.end method

.method public final a(Lads_mobile_sdk/vt;)V
    .registers 2

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lads_mobile_sdk/wt;->adapterVersion_:Lads_mobile_sdk/vt;

    .line 4
    iget p1, p0, Lads_mobile_sdk/wt;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lads_mobile_sdk/wt;->bitField0_:I

    return-void
.end method

.method public final b(Lads_mobile_sdk/vt;)V
    .registers 2

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iput-object p1, p0, Lads_mobile_sdk/wt;->sdkVersion_:Lads_mobile_sdk/vt;

    .line 8
    iget p1, p0, Lads_mobile_sdk/wt;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lads_mobile_sdk/wt;->bitField0_:I

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lads_mobile_sdk/wt;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lads_mobile_sdk/wt;->bitField0_:I

    .line 4
    iput-object p1, p0, Lads_mobile_sdk/wt;->adapterClassName_:Ljava/lang/String;

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lads_mobile_sdk/wt;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lads_mobile_sdk/wt;->bitField0_:I

    .line 4
    iput-object p1, p0, Lads_mobile_sdk/wt;->buyerGeneratedRequestData_:Ljava/lang/String;

    return-void
.end method
