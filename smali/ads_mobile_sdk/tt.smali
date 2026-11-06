###### Class ads_mobile_sdk.tt (ads_mobile_sdk.tt)
.class public final Lads_mobile_sdk/tt;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/tt;

.field public static final c:I = 0x4

.field public static final d:I = 0x5


# instance fields
.field private bitField0_:I

.field private errorDescription_:Ljava/lang/String;

.field private errorType_:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetbitField0_(Lads_mobile_sdk/tt;)I
    .registers 1

    .line 0
    iget p0, p0, Lads_mobile_sdk/tt;->bitField0_:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputbitField0_(Lads_mobile_sdk/tt;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/tt;->bitField0_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputerrorType_(Lads_mobile_sdk/tt;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/tt;->errorType_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/tt;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/tt;->DEFAULT_INSTANCE:Lads_mobile_sdk/tt;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/tt;

    invoke-direct {v0}, Lads_mobile_sdk/tt;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/tt;->DEFAULT_INSTANCE:Lads_mobile_sdk/tt;

    .line 5
    const-class v1, Lads_mobile_sdk/tt;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1382
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    .line 1383
    const-string v0, ""

    iput-object v0, p0, Lads_mobile_sdk/tt;->errorDescription_:Ljava/lang/String;

    return-void
.end method

.method public static v()Lads_mobile_sdk/st;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/tt;->DEFAULT_INSTANCE:Lads_mobile_sdk/tt;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->h()Lads_mobile_sdk/vz0$a;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/st;

    return-object v0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    sget-object p2, Lads_mobile_sdk/ft;->a:[I

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

    .line 24
    :cond_19
    const-class p1, Lads_mobile_sdk/tt;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 25
    :cond_20
    sget-object p1, Lads_mobile_sdk/tt;->DEFAULT_INSTANCE:Lads_mobile_sdk/tt;

    return-object p1

    .line 26
    :cond_23
    sget-object p1, Lads_mobile_sdk/ht;->a:Lads_mobile_sdk/ht;

    const-string p2, "errorDescription_"

    const-string p3, "bitField0_"

    const-string v0, "errorType_"

    filled-new-array {p3, v0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 32
    sget-object p2, Lads_mobile_sdk/tt;->DEFAULT_INSTANCE:Lads_mobile_sdk/tt;

    const-string p3, "\u0001\u0002\u0000\u0001\u0004\u0005\u0002\u0000\u0000\u0000\u0004\u180c\u0000\u0005\u1008\u0001"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 33
    :cond_38
    new-instance p1, Lads_mobile_sdk/st;

    invoke-direct {p1}, Lads_mobile_sdk/st;-><init>()V

    return-object p1

    .line 34
    :cond_3e
    new-instance p1, Lads_mobile_sdk/tt;

    invoke-direct {p1}, Lads_mobile_sdk/tt;-><init>()V

    return-object p1
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lads_mobile_sdk/tt;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lads_mobile_sdk/tt;->bitField0_:I

    .line 4
    iput-object p1, p0, Lads_mobile_sdk/tt;->errorDescription_:Ljava/lang/String;

    return-void
.end method
