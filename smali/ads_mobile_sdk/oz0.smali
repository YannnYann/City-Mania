###### Class ads_mobile_sdk.oz0 (ads_mobile_sdk.oz0)
.class public final Lads_mobile_sdk/oz0;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/oz0;

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3


# instance fields
.field private bitField0_:I

.field private bytecode_:Lads_mobile_sdk/du;

.field private metadata_:Lads_mobile_sdk/jv2;

.field private vm_:Lads_mobile_sdk/du;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/oz0;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/oz0;->DEFAULT_INSTANCE:Lads_mobile_sdk/oz0;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/oz0;

    invoke-direct {v0}, Lads_mobile_sdk/oz0;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/oz0;->DEFAULT_INSTANCE:Lads_mobile_sdk/oz0;

    .line 5
    const-class v1, Lads_mobile_sdk/oz0;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    .line 25
    sget-object v0, Lads_mobile_sdk/du;->b:Lads_mobile_sdk/du;

    iput-object v0, p0, Lads_mobile_sdk/oz0;->vm_:Lads_mobile_sdk/du;

    .line 26
    iput-object v0, p0, Lads_mobile_sdk/oz0;->bytecode_:Lads_mobile_sdk/du;

    return-void
.end method

.method public static a([BLads_mobile_sdk/er0;)Lads_mobile_sdk/oz0;
    .registers 3

    .line 1
    sget-object v0, Lads_mobile_sdk/oz0;->DEFAULT_INSTANCE:Lads_mobile_sdk/oz0;

    invoke-static {v0, p0, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/vz0;[BLads_mobile_sdk/er0;)Lads_mobile_sdk/vz0;

    move-result-object p0

    check-cast p0, Lads_mobile_sdk/oz0;

    return-object p0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 2
    sget-object p2, Lads_mobile_sdk/mz0;->a:[I

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

    .line 25
    :cond_19
    const-class p1, Lads_mobile_sdk/oz0;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 26
    :cond_20
    sget-object p1, Lads_mobile_sdk/oz0;->DEFAULT_INSTANCE:Lads_mobile_sdk/oz0;

    return-object p1

    .line 27
    :cond_23
    const-string p1, "vm_"

    const-string p2, "bytecode_"

    const-string p3, "bitField0_"

    const-string v0, "metadata_"

    filled-new-array {p3, v0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 36
    sget-object p2, Lads_mobile_sdk/oz0;->DEFAULT_INSTANCE:Lads_mobile_sdk/oz0;

    const-string p3, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u100a\u0001\u0003\u100a\u0002"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 37
    :cond_38
    new-instance p1, Lads_mobile_sdk/nz0;

    invoke-direct {p1}, Lads_mobile_sdk/nz0;-><init>()V

    return-object p1

    .line 38
    :cond_3e
    new-instance p1, Lads_mobile_sdk/oz0;

    invoke-direct {p1}, Lads_mobile_sdk/oz0;-><init>()V

    return-object p1
.end method

.method public final v()Lads_mobile_sdk/du;
    .registers 2

    .line 187
    iget-object v0, p0, Lads_mobile_sdk/oz0;->bytecode_:Lads_mobile_sdk/du;

    return-object v0
.end method

.method public final w()Lads_mobile_sdk/jv2;
    .registers 2

    .line 57
    iget-object v0, p0, Lads_mobile_sdk/oz0;->metadata_:Lads_mobile_sdk/jv2;

    if-nez v0, :cond_8

    invoke-static {}, Lads_mobile_sdk/jv2;->w()Lads_mobile_sdk/jv2;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final x()Lads_mobile_sdk/du;
    .registers 2

    .line 131
    iget-object v0, p0, Lads_mobile_sdk/oz0;->vm_:Lads_mobile_sdk/du;

    return-object v0
.end method
