###### Class ads_mobile_sdk.bi (ads_mobile_sdk.bi)
.class public final Lads_mobile_sdk/bi;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/bi;

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4


# instance fields
.field private bitField0_:I

.field private encryptedBlobs_:Lads_mobile_sdk/yh1$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$f<",
            "Lads_mobile_sdk/du;",
            ">;"
        }
    .end annotation
.end field

.field private encryptionMethod_:I

.field private hash_:Lads_mobile_sdk/du;

.field private protoName_:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetbitField0_(Lads_mobile_sdk/bi;)I
    .registers 1

    .line 0
    iget p0, p0, Lads_mobile_sdk/bi;->bitField0_:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputbitField0_(Lads_mobile_sdk/bi;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/bi;->bitField0_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputencryptionMethod_(Lads_mobile_sdk/bi;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/bi;->encryptionMethod_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputprotoName_(Lads_mobile_sdk/bi;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/bi;->protoName_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/bi;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/bi;->DEFAULT_INSTANCE:Lads_mobile_sdk/bi;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/bi;

    invoke-direct {v0}, Lads_mobile_sdk/bi;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/bi;->DEFAULT_INSTANCE:Lads_mobile_sdk/bi;

    .line 5
    const-class v1, Lads_mobile_sdk/bi;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 34149
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    .line 34150
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/bi;->encryptedBlobs_:Lads_mobile_sdk/yh1$f;

    .line 34151
    sget-object v0, Lads_mobile_sdk/du;->b:Lads_mobile_sdk/du;

    iput-object v0, p0, Lads_mobile_sdk/bi;->hash_:Lads_mobile_sdk/du;

    const/4 v0, 0x1

    .line 34152
    iput v0, p0, Lads_mobile_sdk/bi;->protoName_:I

    .line 34153
    iput v0, p0, Lads_mobile_sdk/bi;->encryptionMethod_:I

    return-void
.end method

.method public static v()Lads_mobile_sdk/ai;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/bi;->DEFAULT_INSTANCE:Lads_mobile_sdk/bi;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->h()Lads_mobile_sdk/vz0$a;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/ai;

    return-object v0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    .line 34249
    sget-object p2, Lads_mobile_sdk/wf;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_44

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3e

    const/4 p2, 0x3

    if-eq p1, p2, :cond_23

    const/4 p2, 0x4

    if-eq p1, p2, :cond_20

    const/4 p2, 0x5

    if-eq p1, p2, :cond_19

    const/4 p1, 0x0

    return-object p1

    .line 34275
    :cond_19
    const-class p1, Lads_mobile_sdk/bi;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 34276
    :cond_20
    sget-object p1, Lads_mobile_sdk/bi;->DEFAULT_INSTANCE:Lads_mobile_sdk/bi;

    return-object p1

    .line 34277
    :cond_23
    sget-object v4, Lads_mobile_sdk/uh;->a:Lads_mobile_sdk/uh;

    const-string v5, "encryptionMethod_"

    sget-object v6, Lads_mobile_sdk/oh;->a:Lads_mobile_sdk/oh;

    const-string v0, "bitField0_"

    const-string v1, "encryptedBlobs_"

    const-string v2, "hash_"

    const-string v3, "protoName_"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    .line 34282
    sget-object p2, Lads_mobile_sdk/bi;->DEFAULT_INSTANCE:Lads_mobile_sdk/bi;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001c\u0002\u100a\u0000\u0003\u180c\u0001\u0004\u180c\u0002"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 34283
    :cond_3e
    new-instance p1, Lads_mobile_sdk/ai;

    invoke-direct {p1}, Lads_mobile_sdk/ai;-><init>()V

    return-object p1

    .line 34284
    :cond_44
    new-instance p1, Lads_mobile_sdk/bi;

    invoke-direct {p1}, Lads_mobile_sdk/bi;-><init>()V

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/du;)V
    .registers 4

    .line 34243
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34244
    iget-object v0, p0, Lads_mobile_sdk/bi;->encryptedBlobs_:Lads_mobile_sdk/yh1$f;

    .line 34245
    invoke-interface {v0}, Lads_mobile_sdk/yh1$f;->b()Z

    move-result v1

    if-nez v1, :cond_11

    .line 34247
    invoke-static {v0}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/yh1$f;)Lads_mobile_sdk/yh1$f;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/bi;->encryptedBlobs_:Lads_mobile_sdk/yh1$f;

    .line 34248
    :cond_11
    iget-object v0, p0, Lads_mobile_sdk/bi;->encryptedBlobs_:Lads_mobile_sdk/yh1$f;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Lads_mobile_sdk/du;)V
    .registers 3

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lads_mobile_sdk/bi;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lads_mobile_sdk/bi;->bitField0_:I

    .line 4
    iput-object p1, p0, Lads_mobile_sdk/bi;->hash_:Lads_mobile_sdk/du;

    return-void
.end method
