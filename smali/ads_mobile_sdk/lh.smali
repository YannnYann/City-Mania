###### Class ads_mobile_sdk.lh (ads_mobile_sdk.lh)
.class public final Lads_mobile_sdk/lh;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/lh;

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4


# instance fields
.field private bitField0_:I

.field private data_:Lads_mobile_sdk/du;

.field private hash_:Lads_mobile_sdk/du;

.field private osVersion_:Lads_mobile_sdk/du;

.field private timestamp_:Lads_mobile_sdk/du;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/lh;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/lh;->DEFAULT_INSTANCE:Lads_mobile_sdk/lh;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/lh;

    invoke-direct {v0}, Lads_mobile_sdk/lh;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/lh;->DEFAULT_INSTANCE:Lads_mobile_sdk/lh;

    .line 5
    const-class v1, Lads_mobile_sdk/lh;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 33424
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    .line 33425
    sget-object v0, Lads_mobile_sdk/du;->b:Lads_mobile_sdk/du;

    iput-object v0, p0, Lads_mobile_sdk/lh;->data_:Lads_mobile_sdk/du;

    .line 33426
    iput-object v0, p0, Lads_mobile_sdk/lh;->hash_:Lads_mobile_sdk/du;

    .line 33427
    iput-object v0, p0, Lads_mobile_sdk/lh;->timestamp_:Lads_mobile_sdk/du;

    .line 33428
    iput-object v0, p0, Lads_mobile_sdk/lh;->osVersion_:Lads_mobile_sdk/du;

    return-void
.end method

.method public static a([BLads_mobile_sdk/er0;)Lads_mobile_sdk/lh;
    .registers 3

    .line 33650
    sget-object v0, Lads_mobile_sdk/lh;->DEFAULT_INSTANCE:Lads_mobile_sdk/lh;

    invoke-static {v0, p0, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/vz0;[BLads_mobile_sdk/er0;)Lads_mobile_sdk/vz0;

    move-result-object p0

    check-cast p0, Lads_mobile_sdk/lh;

    return-object p0
.end method

.method public static z()Lads_mobile_sdk/kh;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/lh;->DEFAULT_INSTANCE:Lads_mobile_sdk/lh;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->h()Lads_mobile_sdk/vz0$a;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/kh;

    return-object v0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 33651
    sget-object p2, Lads_mobile_sdk/wf;->a:[I

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

    .line 33675
    :cond_19
    const-class p1, Lads_mobile_sdk/lh;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 33676
    :cond_20
    sget-object p1, Lads_mobile_sdk/lh;->DEFAULT_INSTANCE:Lads_mobile_sdk/lh;

    return-object p1

    .line 33677
    :cond_23
    const-string p1, "timestamp_"

    const-string p2, "osVersion_"

    const-string p3, "bitField0_"

    const-string v0, "data_"

    const-string v1, "hash_"

    filled-new-array {p3, v0, v1, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 33687
    sget-object p2, Lads_mobile_sdk/lh;->DEFAULT_INSTANCE:Lads_mobile_sdk/lh;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u100a\u0000\u0002\u100a\u0001\u0003\u100a\u0002\u0004\u100a\u0003"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 33688
    :cond_3a
    new-instance p1, Lads_mobile_sdk/kh;

    invoke-direct {p1}, Lads_mobile_sdk/kh;-><init>()V

    return-object p1

    .line 33689
    :cond_40
    new-instance p1, Lads_mobile_sdk/lh;

    invoke-direct {p1}, Lads_mobile_sdk/lh;-><init>()V

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/du;)V
    .registers 3

    .line 33647
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33648
    iget v0, p0, Lads_mobile_sdk/lh;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lads_mobile_sdk/lh;->bitField0_:I

    .line 33649
    iput-object p1, p0, Lads_mobile_sdk/lh;->osVersion_:Lads_mobile_sdk/du;

    return-void
.end method

.method public final b(Lads_mobile_sdk/du;)V
    .registers 3

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lads_mobile_sdk/lh;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lads_mobile_sdk/lh;->bitField0_:I

    .line 4
    iput-object p1, p0, Lads_mobile_sdk/lh;->timestamp_:Lads_mobile_sdk/du;

    return-void
.end method

.method public final v()Lads_mobile_sdk/du;
    .registers 2

    .line 33461
    iget-object v0, p0, Lads_mobile_sdk/lh;->data_:Lads_mobile_sdk/du;

    return-object v0
.end method

.method public final w()Lads_mobile_sdk/du;
    .registers 2

    .line 33517
    iget-object v0, p0, Lads_mobile_sdk/lh;->hash_:Lads_mobile_sdk/du;

    return-object v0
.end method

.method public final x()Lads_mobile_sdk/du;
    .registers 2

    .line 33635
    iget-object v0, p0, Lads_mobile_sdk/lh;->osVersion_:Lads_mobile_sdk/du;

    return-object v0
.end method

.method public final y()Lads_mobile_sdk/du;
    .registers 2

    .line 33575
    iget-object v0, p0, Lads_mobile_sdk/lh;->timestamp_:Lads_mobile_sdk/du;

    return-object v0
.end method
