###### Class ads_mobile_sdk.ee (ads_mobile_sdk.ee)
.class public final Lads_mobile_sdk/ee;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/ee;

.field public static final c:I = 0x1

.field public static final d:I = 0x2


# instance fields
.field private bitField0_:I

.field private extras_:Lads_mobile_sdk/ju1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/ju1<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private format_:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$fgetextras_(Lads_mobile_sdk/ee;)Lads_mobile_sdk/ju1;
    .registers 1

    .line 0
    iget-object p0, p0, Lads_mobile_sdk/ee;->extras_:Lads_mobile_sdk/ju1;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputextras_(Lads_mobile_sdk/ee;Lads_mobile_sdk/ju1;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lads_mobile_sdk/ee;->extras_:Lads_mobile_sdk/ju1;

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/ee;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/ee;->DEFAULT_INSTANCE:Lads_mobile_sdk/ee;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/ee;

    invoke-direct {v0}, Lads_mobile_sdk/ee;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/ee;->DEFAULT_INSTANCE:Lads_mobile_sdk/ee;

    .line 5
    const-class v1, Lads_mobile_sdk/ee;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    .line 115
    invoke-static {}, Lads_mobile_sdk/ju1;->b()Lads_mobile_sdk/ju1;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/ee;->extras_:Lads_mobile_sdk/ju1;

    .line 116
    const-string v0, ""

    iput-object v0, p0, Lads_mobile_sdk/ee;->format_:Ljava/lang/String;

    return-void
.end method

.method public static x()Lads_mobile_sdk/de;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/ee;->DEFAULT_INSTANCE:Lads_mobile_sdk/ee;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->h()Lads_mobile_sdk/vz0$a;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/de;

    return-object v0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    sget-object p2, Lads_mobile_sdk/ce;->a:[I

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

    .line 29
    :cond_19
    const-class p1, Lads_mobile_sdk/ee;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 30
    :cond_20
    sget-object p1, Lads_mobile_sdk/ee;->DEFAULT_INSTANCE:Lads_mobile_sdk/ee;

    return-object p1

    .line 31
    :cond_23
    sget-object p1, Lads_mobile_sdk/u24$a;->k:Lads_mobile_sdk/u24$a;

    .line 36
    const-string p2, ""

    invoke-static {p1, p2, p1, p2}, Lads_mobile_sdk/gu1;->a(Lads_mobile_sdk/u24$a;Ljava/lang/Object;Lads_mobile_sdk/u24$a;Ljava/lang/Object;)Lads_mobile_sdk/gu1;

    move-result-object p1

    const-string p2, "format_"

    const-string p3, "extras_"

    const-string v0, "bitField0_"

    filled-new-array {v0, p2, p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 45
    sget-object p2, Lads_mobile_sdk/ee;->DEFAULT_INSTANCE:Lads_mobile_sdk/ee;

    const-string p3, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0001\u0000\u0000\u0001\u1208\u0000\u00022"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 46
    :cond_3e
    new-instance p1, Lads_mobile_sdk/de;

    invoke-direct {p1}, Lads_mobile_sdk/de;-><init>()V

    return-object p1

    .line 47
    :cond_44
    new-instance p1, Lads_mobile_sdk/ee;

    invoke-direct {p1}, Lads_mobile_sdk/ee;-><init>()V

    return-object p1
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    .line 2
    iget v0, p0, Lads_mobile_sdk/ee;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lads_mobile_sdk/ee;->bitField0_:I

    .line 3
    iput-object p1, p0, Lads_mobile_sdk/ee;->format_:Ljava/lang/String;

    return-void
.end method

.method public final v()Ljava/util/Map;
    .registers 2

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/ee;->extras_:Lads_mobile_sdk/ju1;

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final w()Ljava/lang/String;
    .registers 2

    .line 57
    iget-object v0, p0, Lads_mobile_sdk/ee;->format_:Ljava/lang/String;

    return-object v0
.end method
