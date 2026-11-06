###### Class ads_mobile_sdk.pr0 (ads_mobile_sdk.pr0)
.class public final Lads_mobile_sdk/pr0;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/pr0;

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4


# instance fields
.field private bitField0_:I

.field private bytecode_:Lads_mobile_sdk/du;

.field private metadata_:Lads_mobile_sdk/iv2;

.field private status_:I

.field private vm_:Lads_mobile_sdk/du;


# direct methods
.method public static bridge synthetic -$$Nest$fgetbitField0_(Lads_mobile_sdk/pr0;)I
    .registers 1

    .line 0
    iget p0, p0, Lads_mobile_sdk/pr0;->bitField0_:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputbitField0_(Lads_mobile_sdk/pr0;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/pr0;->bitField0_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputstatus_(Lads_mobile_sdk/pr0;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/pr0;->status_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/pr0;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/pr0;->DEFAULT_INSTANCE:Lads_mobile_sdk/pr0;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/pr0;

    invoke-direct {v0}, Lads_mobile_sdk/pr0;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/pr0;->DEFAULT_INSTANCE:Lads_mobile_sdk/pr0;

    .line 5
    const-class v1, Lads_mobile_sdk/pr0;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    .line 24
    sget-object v0, Lads_mobile_sdk/du;->b:Lads_mobile_sdk/du;

    iput-object v0, p0, Lads_mobile_sdk/pr0;->bytecode_:Lads_mobile_sdk/du;

    .line 25
    iput-object v0, p0, Lads_mobile_sdk/pr0;->vm_:Lads_mobile_sdk/du;

    return-void
.end method

.method public static z()Lads_mobile_sdk/or0;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/pr0;->DEFAULT_INSTANCE:Lads_mobile_sdk/pr0;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->h()Lads_mobile_sdk/vz0$a;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/or0;

    return-object v0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .line 212
    sget-object p2, Lads_mobile_sdk/nr0;->a:[I

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

    .line 237
    :cond_19
    const-class p1, Lads_mobile_sdk/pr0;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 238
    :cond_20
    sget-object p1, Lads_mobile_sdk/pr0;->DEFAULT_INSTANCE:Lads_mobile_sdk/pr0;

    return-object p1

    .line 239
    :cond_23
    const-string v4, "status_"

    sget-object v5, Lads_mobile_sdk/sl3;->a:Lads_mobile_sdk/sl3;

    const-string v0, "bitField0_"

    const-string v1, "metadata_"

    const-string v2, "bytecode_"

    const-string v3, "vm_"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    .line 244
    sget-object p2, Lads_mobile_sdk/pr0;->DEFAULT_INSTANCE:Lads_mobile_sdk/pr0;

    const-string p3, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u100a\u0001\u0003\u100a\u0002\u0004\u180c\u0003"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 245
    :cond_3c
    new-instance p1, Lads_mobile_sdk/or0;

    invoke-direct {p1}, Lads_mobile_sdk/or0;-><init>()V

    return-object p1

    .line 246
    :cond_42
    new-instance p1, Lads_mobile_sdk/pr0;

    invoke-direct {p1}, Lads_mobile_sdk/pr0;-><init>()V

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/du;)V
    .registers 3

    .line 141
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget v0, p0, Lads_mobile_sdk/pr0;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lads_mobile_sdk/pr0;->bitField0_:I

    .line 143
    iput-object p1, p0, Lads_mobile_sdk/pr0;->bytecode_:Lads_mobile_sdk/du;

    return-void
.end method

.method public final a(Lads_mobile_sdk/iv2;)V
    .registers 2

    .line 209
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iput-object p1, p0, Lads_mobile_sdk/pr0;->metadata_:Lads_mobile_sdk/iv2;

    .line 211
    iget p1, p0, Lads_mobile_sdk/pr0;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lads_mobile_sdk/pr0;->bitField0_:I

    return-void
.end method

.method public final b(Lads_mobile_sdk/du;)V
    .registers 3

    .line 197
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget v0, p0, Lads_mobile_sdk/pr0;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lads_mobile_sdk/pr0;->bitField0_:I

    .line 199
    iput-object p1, p0, Lads_mobile_sdk/pr0;->vm_:Lads_mobile_sdk/du;

    return-void
.end method

.method public final v()Lads_mobile_sdk/du;
    .registers 2

    .line 130
    iget-object v0, p0, Lads_mobile_sdk/pr0;->bytecode_:Lads_mobile_sdk/du;

    return-object v0
.end method

.method public final w()Lads_mobile_sdk/iv2;
    .registers 2

    .line 56
    iget-object v0, p0, Lads_mobile_sdk/pr0;->metadata_:Lads_mobile_sdk/iv2;

    if-nez v0, :cond_8

    invoke-static {}, Lads_mobile_sdk/iv2;->x()Lads_mobile_sdk/iv2;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final x()Lads_mobile_sdk/ul3;
    .registers 2

    .line 242
    iget v0, p0, Lads_mobile_sdk/pr0;->status_:I

    invoke-static {v0}, Lads_mobile_sdk/ul3;->a(I)Lads_mobile_sdk/ul3;

    move-result-object v0

    if-nez v0, :cond_a

    .line 243
    sget-object v0, Lads_mobile_sdk/ul3;->b:Lads_mobile_sdk/ul3;

    :cond_a
    return-object v0
.end method

.method public final y()Lads_mobile_sdk/du;
    .registers 2

    .line 186
    iget-object v0, p0, Lads_mobile_sdk/pr0;->vm_:Lads_mobile_sdk/du;

    return-object v0
.end method
