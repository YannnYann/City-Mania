###### Class ads_mobile_sdk.u00 (ads_mobile_sdk.u00)
.class public final Lads_mobile_sdk/u00;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/u00;

.field private static final allowedApis_converter_:Lads_mobile_sdk/yh1$d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$d$a<",
            "Lads_mobile_sdk/s00;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:I = 0x1


# instance fields
.field private allowedApisMemoizedSerializedSize:I

.field private allowedApis_:Lads_mobile_sdk/yh1$c;


# direct methods
.method public static bridge synthetic -$$Nest$fgetallowedApis_(Lads_mobile_sdk/u00;)Lads_mobile_sdk/yh1$c;
    .registers 1

    .line 0
    iget-object p0, p0, Lads_mobile_sdk/u00;->allowedApis_:Lads_mobile_sdk/yh1$c;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputallowedApis_(Lads_mobile_sdk/u00;Lads_mobile_sdk/yh1$c;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lads_mobile_sdk/u00;->allowedApis_:Lads_mobile_sdk/yh1$c;

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/u00;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/u00;->DEFAULT_INSTANCE:Lads_mobile_sdk/u00;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetallowedApis_converter_()Lads_mobile_sdk/yh1$d$a;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/u00;->allowedApis_converter_:Lads_mobile_sdk/yh1$d$a;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/q00;

    invoke-direct {v0}, Lads_mobile_sdk/q00;-><init>()V

    sput-object v0, Lads_mobile_sdk/u00;->allowedApis_converter_:Lads_mobile_sdk/yh1$d$a;

    .line 390
    new-instance v0, Lads_mobile_sdk/u00;

    invoke-direct {v0}, Lads_mobile_sdk/u00;-><init>()V

    .line 393
    sput-object v0, Lads_mobile_sdk/u00;->DEFAULT_INSTANCE:Lads_mobile_sdk/u00;

    .line 394
    const-class v1, Lads_mobile_sdk/u00;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    .line 25
    invoke-static {}, Lads_mobile_sdk/vz0;->i()Lads_mobile_sdk/yh1$c;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/u00;->allowedApis_:Lads_mobile_sdk/yh1$c;

    return-void
.end method

.method public static a([B)Lads_mobile_sdk/u00;
    .registers 2

    .line 7
    sget-object v0, Lads_mobile_sdk/u00;->DEFAULT_INSTANCE:Lads_mobile_sdk/u00;

    invoke-static {v0, p0}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/vz0;[B)Lads_mobile_sdk/vz0;

    move-result-object p0

    check-cast p0, Lads_mobile_sdk/u00;

    return-object p0
.end method

.method public static y()Lads_mobile_sdk/u00;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/u00;->DEFAULT_INSTANCE:Lads_mobile_sdk/u00;

    return-object v0
.end method

.method public static z()Lads_mobile_sdk/t00;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/u00;->DEFAULT_INSTANCE:Lads_mobile_sdk/u00;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->h()Lads_mobile_sdk/vz0$a;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/t00;

    return-object v0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 8
    sget-object p2, Lads_mobile_sdk/r00;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_38

    const/4 p2, 0x2

    if-eq p1, p2, :cond_32

    const/4 p2, 0x3

    if-eq p1, p2, :cond_23

    const/4 p2, 0x4

    if-eq p1, p2, :cond_20

    const/4 p2, 0x5

    if-eq p1, p2, :cond_19

    const/4 p1, 0x0

    return-object p1

    .line 27
    :cond_19
    const-class p1, Lads_mobile_sdk/u00;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 28
    :cond_20
    sget-object p1, Lads_mobile_sdk/u00;->DEFAULT_INSTANCE:Lads_mobile_sdk/u00;

    return-object p1

    .line 29
    :cond_23
    const-string p1, "allowedApis_"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 34
    sget-object p2, Lads_mobile_sdk/u00;->DEFAULT_INSTANCE:Lads_mobile_sdk/u00;

    const-string p3, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001,"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 35
    :cond_32
    new-instance p1, Lads_mobile_sdk/t00;

    invoke-direct {p1}, Lads_mobile_sdk/t00;-><init>()V

    return-object p1

    .line 36
    :cond_38
    new-instance p1, Lads_mobile_sdk/u00;

    invoke-direct {p1}, Lads_mobile_sdk/u00;-><init>()V

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/s00;)V
    .registers 4

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/u00;->allowedApis_:Lads_mobile_sdk/yh1$c;

    .line 3
    invoke-interface {v0}, Lads_mobile_sdk/yh1$f;->b()Z

    move-result v1

    if-nez v1, :cond_e

    .line 5
    invoke-static {v0}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/yh1$c;)Lads_mobile_sdk/yh1$c;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/u00;->allowedApis_:Lads_mobile_sdk/yh1$c;

    .line 6
    :cond_e
    iget-object v0, p0, Lads_mobile_sdk/u00;->allowedApis_:Lads_mobile_sdk/yh1$c;

    invoke-virtual {p1}, Lads_mobile_sdk/s00;->getNumber()I

    move-result p1

    invoke-interface {v0, p1}, Lads_mobile_sdk/yh1$c;->b(I)V

    return-void
.end method

.method public final v()I
    .registers 2

    .line 653
    iget-object v0, p0, Lads_mobile_sdk/u00;->allowedApis_:Lads_mobile_sdk/yh1$c;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final w()Lads_mobile_sdk/yh1$d;
    .registers 4

    .line 1
    new-instance v0, Lads_mobile_sdk/yh1$d;

    iget-object v1, p0, Lads_mobile_sdk/u00;->allowedApis_:Lads_mobile_sdk/yh1$c;

    sget-object v2, Lads_mobile_sdk/u00;->allowedApis_converter_:Lads_mobile_sdk/yh1$d$a;

    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/yh1$d;-><init>(Lads_mobile_sdk/yh1$c;Lads_mobile_sdk/yh1$d$a;)V

    return-object v0
.end method

.method public final x()Lads_mobile_sdk/yh1$c;
    .registers 2

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/u00;->allowedApis_:Lads_mobile_sdk/yh1$c;

    return-object v0
.end method
