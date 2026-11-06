###### Class ads_mobile_sdk.ie (ads_mobile_sdk.ie)
.class public final Lads_mobile_sdk/ie;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/ie;

.field private static final allowedFormats_converter_:Lads_mobile_sdk/yh1$d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$d$a<",
            "Lads_mobile_sdk/t11;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4

.field public static final g:I = 0x5

.field public static final h:I = 0x6


# instance fields
.field private adapterInitializationTimeoutMs_:J

.field private allowedAdUnits_:Lads_mobile_sdk/yh1$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private allowedAdapterClasses_:Lads_mobile_sdk/yh1$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private allowedFormatsMemoizedSerializedSize:I

.field private allowedFormats_:Lads_mobile_sdk/yh1$c;

.field private excludedAdapterClasses_:Lads_mobile_sdk/yh1$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private initializedAdapterClasses_:Lads_mobile_sdk/yh1$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetallowedAdUnits_(Lads_mobile_sdk/ie;)Lads_mobile_sdk/yh1$f;
    .registers 1

    .line 0
    iget-object p0, p0, Lads_mobile_sdk/ie;->allowedAdUnits_:Lads_mobile_sdk/yh1$f;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetallowedAdapterClasses_(Lads_mobile_sdk/ie;)Lads_mobile_sdk/yh1$f;
    .registers 1

    .line 0
    iget-object p0, p0, Lads_mobile_sdk/ie;->allowedAdapterClasses_:Lads_mobile_sdk/yh1$f;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetallowedFormats_(Lads_mobile_sdk/ie;)Lads_mobile_sdk/yh1$c;
    .registers 1

    .line 0
    iget-object p0, p0, Lads_mobile_sdk/ie;->allowedFormats_:Lads_mobile_sdk/yh1$c;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetexcludedAdapterClasses_(Lads_mobile_sdk/ie;)Lads_mobile_sdk/yh1$f;
    .registers 1

    .line 0
    iget-object p0, p0, Lads_mobile_sdk/ie;->excludedAdapterClasses_:Lads_mobile_sdk/yh1$f;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetinitializedAdapterClasses_(Lads_mobile_sdk/ie;)Lads_mobile_sdk/yh1$f;
    .registers 1

    .line 0
    iget-object p0, p0, Lads_mobile_sdk/ie;->initializedAdapterClasses_:Lads_mobile_sdk/yh1$f;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputadapterInitializationTimeoutMs_(Lads_mobile_sdk/ie;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/ie;->adapterInitializationTimeoutMs_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputallowedAdUnits_(Lads_mobile_sdk/ie;Lads_mobile_sdk/yh1$f;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lads_mobile_sdk/ie;->allowedAdUnits_:Lads_mobile_sdk/yh1$f;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputallowedAdapterClasses_(Lads_mobile_sdk/ie;Lads_mobile_sdk/yh1$f;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lads_mobile_sdk/ie;->allowedAdapterClasses_:Lads_mobile_sdk/yh1$f;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputallowedFormats_(Lads_mobile_sdk/ie;Lads_mobile_sdk/yh1$c;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lads_mobile_sdk/ie;->allowedFormats_:Lads_mobile_sdk/yh1$c;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputexcludedAdapterClasses_(Lads_mobile_sdk/ie;Lads_mobile_sdk/yh1$f;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lads_mobile_sdk/ie;->excludedAdapterClasses_:Lads_mobile_sdk/yh1$f;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputinitializedAdapterClasses_(Lads_mobile_sdk/ie;Lads_mobile_sdk/yh1$f;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lads_mobile_sdk/ie;->initializedAdapterClasses_:Lads_mobile_sdk/yh1$f;

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/ie;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/ie;->DEFAULT_INSTANCE:Lads_mobile_sdk/ie;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetallowedFormats_converter_()Lads_mobile_sdk/yh1$d$a;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/ie;->allowedFormats_converter_:Lads_mobile_sdk/yh1$d$a;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/fe;

    invoke-direct {v0}, Lads_mobile_sdk/fe;-><init>()V

    sput-object v0, Lads_mobile_sdk/ie;->allowedFormats_converter_:Lads_mobile_sdk/yh1$d$a;

    .line 1159
    new-instance v0, Lads_mobile_sdk/ie;

    invoke-direct {v0}, Lads_mobile_sdk/ie;-><init>()V

    .line 1162
    sput-object v0, Lads_mobile_sdk/ie;->DEFAULT_INSTANCE:Lads_mobile_sdk/ie;

    .line 1163
    const-class v1, Lads_mobile_sdk/ie;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    .line 20
    invoke-static {}, Lads_mobile_sdk/vz0;->i()Lads_mobile_sdk/yh1$c;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/ie;->allowedFormats_:Lads_mobile_sdk/yh1$c;

    .line 21
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/ie;->allowedAdUnits_:Lads_mobile_sdk/yh1$f;

    .line 22
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/ie;->allowedAdapterClasses_:Lads_mobile_sdk/yh1$f;

    .line 23
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/ie;->excludedAdapterClasses_:Lads_mobile_sdk/yh1$f;

    .line 24
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/ie;->initializedAdapterClasses_:Lads_mobile_sdk/yh1$f;

    return-void
.end method

.method public static v()Lads_mobile_sdk/he;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/ie;->DEFAULT_INSTANCE:Lads_mobile_sdk/ie;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->h()Lads_mobile_sdk/vz0$a;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/he;

    return-object v0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .line 1
    sget-object p2, Lads_mobile_sdk/ge;->a:[I

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

    .line 26
    :cond_19
    const-class p1, Lads_mobile_sdk/ie;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 27
    :cond_20
    sget-object p1, Lads_mobile_sdk/ie;->DEFAULT_INSTANCE:Lads_mobile_sdk/ie;

    return-object p1

    .line 28
    :cond_23
    const-string v4, "excludedAdapterClasses_"

    const-string v5, "initializedAdapterClasses_"

    const-string v0, "adapterInitializationTimeoutMs_"

    const-string v1, "allowedFormats_"

    const-string v2, "allowedAdUnits_"

    const-string v3, "allowedAdapterClasses_"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    .line 39
    sget-object p2, Lads_mobile_sdk/ie;->DEFAULT_INSTANCE:Lads_mobile_sdk/ie;

    const-string p3, "\u0004\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0005\u0000\u0001\u0002\u0002,\u0003\u021a\u0004\u021a\u0005\u021a\u0006\u021a"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 40
    :cond_3c
    new-instance p1, Lads_mobile_sdk/he;

    invoke-direct {p1}, Lads_mobile_sdk/he;-><init>()V

    return-object p1

    .line 41
    :cond_42
    new-instance p1, Lads_mobile_sdk/ie;

    invoke-direct {p1}, Lads_mobile_sdk/ie;-><init>()V

    return-object p1
.end method
