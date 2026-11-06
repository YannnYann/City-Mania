###### Class ads_mobile_sdk.ev1 (ads_mobile_sdk.ev1)
.class public final Lads_mobile_sdk/ev1;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/ev1;

.field public static final c:I = 0x1

.field public static final d:I = 0x3

.field public static final e:I = 0x2


# instance fields
.field private adapters_:Lads_mobile_sdk/yh1$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private data_:Lads_mobile_sdk/ju1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/ju1<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private waterfallAdapters_:Lads_mobile_sdk/yh1$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetadapters_(Lads_mobile_sdk/ev1;)Lads_mobile_sdk/yh1$f;
    .registers 1

    .line 0
    iget-object p0, p0, Lads_mobile_sdk/ev1;->adapters_:Lads_mobile_sdk/yh1$f;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetdata_(Lads_mobile_sdk/ev1;)Lads_mobile_sdk/ju1;
    .registers 1

    .line 0
    iget-object p0, p0, Lads_mobile_sdk/ev1;->data_:Lads_mobile_sdk/ju1;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetwaterfallAdapters_(Lads_mobile_sdk/ev1;)Lads_mobile_sdk/yh1$f;
    .registers 1

    .line 0
    iget-object p0, p0, Lads_mobile_sdk/ev1;->waterfallAdapters_:Lads_mobile_sdk/yh1$f;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputadapters_(Lads_mobile_sdk/ev1;Lads_mobile_sdk/yh1$f;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lads_mobile_sdk/ev1;->adapters_:Lads_mobile_sdk/yh1$f;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputdata_(Lads_mobile_sdk/ev1;Lads_mobile_sdk/ju1;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lads_mobile_sdk/ev1;->data_:Lads_mobile_sdk/ju1;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputwaterfallAdapters_(Lads_mobile_sdk/ev1;Lads_mobile_sdk/yh1$f;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lads_mobile_sdk/ev1;->waterfallAdapters_:Lads_mobile_sdk/yh1$f;

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/ev1;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/ev1;->DEFAULT_INSTANCE:Lads_mobile_sdk/ev1;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/ev1;

    invoke-direct {v0}, Lads_mobile_sdk/ev1;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/ev1;->DEFAULT_INSTANCE:Lads_mobile_sdk/ev1;

    .line 5
    const-class v1, Lads_mobile_sdk/ev1;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    .line 288
    invoke-static {}, Lads_mobile_sdk/ju1;->b()Lads_mobile_sdk/ju1;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/ev1;->data_:Lads_mobile_sdk/ju1;

    .line 289
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/ev1;->adapters_:Lads_mobile_sdk/yh1$f;

    .line 290
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/ev1;->waterfallAdapters_:Lads_mobile_sdk/yh1$f;

    return-void
.end method

.method public static y()Lads_mobile_sdk/dv1;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/ev1;->DEFAULT_INSTANCE:Lads_mobile_sdk/ev1;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->h()Lads_mobile_sdk/vz0$a;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/dv1;

    return-object v0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    sget-object p2, Lads_mobile_sdk/cv1;->a:[I

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
    const-class p1, Lads_mobile_sdk/ev1;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 30
    :cond_20
    sget-object p1, Lads_mobile_sdk/ev1;->DEFAULT_INSTANCE:Lads_mobile_sdk/ev1;

    return-object p1

    .line 31
    :cond_23
    sget-object p1, Lads_mobile_sdk/u24$a;->k:Lads_mobile_sdk/u24$a;

    .line 35
    const-string p2, ""

    invoke-static {p1, p2, p1, p2}, Lads_mobile_sdk/gu1;->a(Lads_mobile_sdk/u24$a;Ljava/lang/Object;Lads_mobile_sdk/u24$a;Ljava/lang/Object;)Lads_mobile_sdk/gu1;

    move-result-object p1

    const-string p2, "data_"

    const-string p3, "waterfallAdapters_"

    const-string v0, "adapters_"

    filled-new-array {v0, p2, p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 45
    sget-object p2, Lads_mobile_sdk/ev1;->DEFAULT_INSTANCE:Lads_mobile_sdk/ev1;

    const-string p3, "\u0004\u0003\u0000\u0000\u0001\u0003\u0003\u0001\u0002\u0000\u0001\u021a\u00022\u0003\u021a"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 46
    :cond_3e
    new-instance p1, Lads_mobile_sdk/dv1;

    invoke-direct {p1}, Lads_mobile_sdk/dv1;-><init>()V

    return-object p1

    .line 47
    :cond_44
    new-instance p1, Lads_mobile_sdk/ev1;

    invoke-direct {p1}, Lads_mobile_sdk/ev1;-><init>()V

    return-object p1
.end method

.method public final v()Ljava/util/List;
    .registers 2

    .line 39
    iget-object v0, p0, Lads_mobile_sdk/ev1;->adapters_:Lads_mobile_sdk/yh1$f;

    return-object v0
.end method

.method public final w()Ljava/util/Map;
    .registers 2

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/ev1;->data_:Lads_mobile_sdk/ju1;

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final x()Ljava/util/List;
    .registers 2

    .line 168
    iget-object v0, p0, Lads_mobile_sdk/ev1;->waterfallAdapters_:Lads_mobile_sdk/yh1$f;

    return-object v0
.end method
