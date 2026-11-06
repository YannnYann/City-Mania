###### Class j$.time.format.v (j$.time.format.v)
.class public final Lj$/time/format/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lj$/time/format/v;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 91
    new-instance v0, Lj$/time/format/v;

    .line 194
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 91
    sput-object v0, Lj$/time/format/v;->a:Lj$/time/format/v;

    .line 95
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    const/16 v2, 0x10

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    return-void
.end method


# virtual methods
.method final a(C)I
    .registers 3

    add-int/lit8 p1, p1, -0x30

    if-ltz p1, :cond_9

    const/16 v0, 0x9

    if-gt p1, v0, :cond_9

    return p1

    :cond_9
    const/4 p1, -0x1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 359
    :cond_4
    instance-of v1, p1, Lj$/time/format/v;

    if-eqz v1, :cond_e

    .line 360
    check-cast p1, Lj$/time/format/v;

    .line 361
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v0

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .registers 2

    const/16 v0, 0xb6

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 385
    const-string v0, "DecimalStyle[0+-.]"

    return-object v0
.end method
