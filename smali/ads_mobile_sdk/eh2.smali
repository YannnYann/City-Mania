###### Class ads_mobile_sdk.eh2 (ads_mobile_sdk.eh2)
.class public final Lads_mobile_sdk/eh2;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/eh2;

.field public static final c:I = 0x1

.field public static final d:I = 0x2


# instance fields
.field private bitField0_:I

.field private encryptedProgram_:Lads_mobile_sdk/du;

.field private metadata_:Lads_mobile_sdk/hh2;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/eh2;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/eh2;->DEFAULT_INSTANCE:Lads_mobile_sdk/eh2;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/eh2;

    invoke-direct {v0}, Lads_mobile_sdk/eh2;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/eh2;->DEFAULT_INSTANCE:Lads_mobile_sdk/eh2;

    .line 5
    const-class v1, Lads_mobile_sdk/eh2;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    .line 24
    sget-object v0, Lads_mobile_sdk/du;->b:Lads_mobile_sdk/du;

    iput-object v0, p0, Lads_mobile_sdk/eh2;->encryptedProgram_:Lads_mobile_sdk/du;

    return-void
.end method

.method public static v()Lads_mobile_sdk/eh2;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/eh2;->DEFAULT_INSTANCE:Lads_mobile_sdk/eh2;

    return-object v0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    sget-object p2, Lads_mobile_sdk/ch2;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3c

    const/4 p2, 0x2

    if-eq p1, p2, :cond_36

    const/4 p2, 0x3

    if-eq p1, p2, :cond_23

    const/4 p2, 0x4

    if-eq p1, p2, :cond_20

    const/4 p2, 0x5

    if-eq p1, p2, :cond_19

    const/4 p1, 0x0

    return-object p1

    .line 23
    :cond_19
    const-class p1, Lads_mobile_sdk/eh2;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 24
    :cond_20
    sget-object p1, Lads_mobile_sdk/eh2;->DEFAULT_INSTANCE:Lads_mobile_sdk/eh2;

    return-object p1

    .line 25
    :cond_23
    const-string p1, "metadata_"

    const-string p2, "encryptedProgram_"

    const-string p3, "bitField0_"

    filled-new-array {p3, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 33
    sget-object p2, Lads_mobile_sdk/eh2;->DEFAULT_INSTANCE:Lads_mobile_sdk/eh2;

    const-string p3, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u100a\u0001"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 34
    :cond_36
    new-instance p1, Lads_mobile_sdk/dh2;

    invoke-direct {p1}, Lads_mobile_sdk/dh2;-><init>()V

    return-object p1

    .line 35
    :cond_3c
    new-instance p1, Lads_mobile_sdk/eh2;

    invoke-direct {p1}, Lads_mobile_sdk/eh2;-><init>()V

    return-object p1
.end method

.method public final w()Lads_mobile_sdk/du;
    .registers 2

    .line 133
    iget-object v0, p0, Lads_mobile_sdk/eh2;->encryptedProgram_:Lads_mobile_sdk/du;

    return-object v0
.end method

.method public final x()Lads_mobile_sdk/hh2;
    .registers 2

    .line 55
    iget-object v0, p0, Lads_mobile_sdk/eh2;->metadata_:Lads_mobile_sdk/hh2;

    if-nez v0, :cond_8

    invoke-static {}, Lads_mobile_sdk/hh2;->v()Lads_mobile_sdk/hh2;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final y()Z
    .registers 2

    .line 119
    iget v0, p0, Lads_mobile_sdk/eh2;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final z()Z
    .registers 3

    .line 44
    iget v0, p0, Lads_mobile_sdk/eh2;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method
