###### Class j$.time.temporal.k (j$.time.temporal.k)
.class final enum Lj$/time/temporal/k;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/s;


# static fields
.field public static final enum JULIAN_DAY:Lj$/time/temporal/k;

.field public static final enum MODIFIED_JULIAN_DAY:Lj$/time/temporal/k;

.field public static final enum RATA_DIE:Lj$/time/temporal/k;

.field private static final synthetic d:[Lj$/time/temporal/k;

.field private static final serialVersionUID:J = -0x681b1f35efa83fd4L


# instance fields
.field private final transient a:Ljava/lang/String;

.field private final transient b:Lj$/time/temporal/x;

.field private final transient c:J


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 221
    new-instance v0, Lj$/time/temporal/k;

    sget-object v1, Lj$/time/temporal/b;->NANOS:Lj$/time/temporal/b;

    const/4 v2, 0x0

    const-string v3, "JulianDay"

    const-string v1, "JULIAN_DAY"

    const-wide/32 v4, 0x253d8c

    invoke-direct/range {v0 .. v5}, Lj$/time/temporal/k;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    sput-object v0, Lj$/time/temporal/k;->JULIAN_DAY:Lj$/time/temporal/k;

    .line 222
    new-instance v1, Lj$/time/temporal/k;

    const-string v2, "MODIFIED_JULIAN_DAY"

    const/4 v3, 0x1

    const-string v4, "ModifiedJulianDay"

    const-wide/32 v5, 0x9e8b

    invoke-direct/range {v1 .. v6}, Lj$/time/temporal/k;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    sput-object v1, Lj$/time/temporal/k;->MODIFIED_JULIAN_DAY:Lj$/time/temporal/k;

    .line 223
    new-instance v2, Lj$/time/temporal/k;

    const-string v3, "RATA_DIE"

    const/4 v4, 0x2

    const-string v5, "RataDie"

    const-wide/32 v6, 0xaf93b

    invoke-direct/range {v2 .. v7}, Lj$/time/temporal/k;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    sput-object v2, Lj$/time/temporal/k;->RATA_DIE:Lj$/time/temporal/k;

    .line 220
    filled-new-array {v0, v1, v2}, [Lj$/time/temporal/k;

    move-result-object v0

    sput-object v0, Lj$/time/temporal/k;->d:[Lj$/time/temporal/k;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;J)V
    .registers 8

    .line 233
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 234
    iput-object p3, p0, Lj$/time/temporal/k;->a:Ljava/lang/String;

    const-wide p1, -0x550a313cdaL

    add-long/2addr p1, p4

    const-wide v0, 0x550a1b48f7L

    add-long/2addr v0, p4

    .line 237
    invoke-static {p1, p2, v0, v1}, Lj$/time/temporal/x;->j(JJ)Lj$/time/temporal/x;

    move-result-object p1

    iput-object p1, p0, Lj$/time/temporal/k;->b:Lj$/time/temporal/x;

    .line 238
    iput-wide p4, p0, Lj$/time/temporal/k;->c:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/time/temporal/k;
    .registers 2

    .line 220
    const-class v0, Lj$/time/temporal/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/time/temporal/k;

    return-object p0
.end method

.method public static values()[Lj$/time/temporal/k;
    .registers 1

    .line 220
    sget-object v0, Lj$/time/temporal/k;->d:[Lj$/time/temporal/k;

    invoke-virtual {v0}, [Lj$/time/temporal/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/time/temporal/k;

    return-object v0
.end method


# virtual methods
.method public final C()Lj$/time/temporal/x;
    .registers 2

    .line 264
    iget-object v0, p0, Lj$/time/temporal/k;->b:Lj$/time/temporal/x;

    return-object v0
.end method

.method public final J(Lj$/time/temporal/n;)Lj$/time/temporal/x;
    .registers 4

    .line 270
    sget-object v0, Lj$/time/temporal/a;->EPOCH_DAY:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/n;->f(Lj$/time/temporal/s;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 264
    iget-object p1, p0, Lj$/time/temporal/k;->b:Lj$/time/temporal/x;

    return-object p1

    .line 276
    :cond_b
    new-instance p1, Lj$/time/c;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported field: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 276
    throw p1
.end method

.method public final S(Ljava/util/HashMap;Lj$/time/temporal/n;Lj$/time/format/x;)Lj$/time/temporal/n;
    .registers 8

    .line 299
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 300
    invoke-static {p2}, Lj$/time/chrono/l;->F(Lj$/time/temporal/n;)Lj$/time/chrono/l;

    move-result-object p1

    .line 301
    sget-object p2, Lj$/time/format/x;->LENIENT:Lj$/time/format/x;

    iget-wide v2, p0, Lj$/time/temporal/k;->c:J

    if-ne p3, p2, :cond_1d

    .line 302
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide p2

    invoke-interface {p1, p2, p3}, Lj$/time/chrono/l;->q(J)Lj$/time/chrono/b;

    move-result-object p1

    return-object p1

    .line 304
    :cond_1d
    iget-object p2, p0, Lj$/time/temporal/k;->b:Lj$/time/temporal/x;

    invoke-virtual {p2, v0, v1, p0}, Lj$/time/temporal/x;->b(JLj$/time/temporal/s;)V

    sub-long/2addr v0, v2

    .line 305
    invoke-interface {p1, v0, v1}, Lj$/time/chrono/l;->q(J)Lj$/time/chrono/b;

    move-result-object p1

    return-object p1
.end method

.method public final T()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final W(Lj$/time/temporal/n;)Z
    .registers 3

    .line 270
    sget-object v0, Lj$/time/temporal/a;->EPOCH_DAY:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/n;->f(Lj$/time/temporal/s;)Z

    move-result p1

    return p1
.end method

.method public final p(Lj$/time/temporal/m;J)Lj$/time/temporal/m;
    .registers 7

    .line 289
    iget-object v0, p0, Lj$/time/temporal/k;->b:Lj$/time/temporal/x;

    invoke-virtual {v0, p2, p3}, Lj$/time/temporal/x;->i(J)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 292
    sget-object v0, Lj$/time/temporal/a;->EPOCH_DAY:Lj$/time/temporal/a;

    iget-wide v1, p0, Lj$/time/temporal/k;->c:J

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide p2

    invoke-interface {p1, p2, p3, v0}, Lj$/time/temporal/m;->b(JLj$/time/temporal/s;)Lj$/time/temporal/m;

    move-result-object p1

    return-object p1

    .line 290
    :cond_15
    new-instance p1, Lj$/time/c;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lj$/time/temporal/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 88
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 290
    throw p1
.end method

.method public final r(Lj$/time/temporal/n;)J
    .registers 6

    .line 283
    sget-object v0, Lj$/time/temporal/a;->EPOCH_DAY:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/n;->g(Lj$/time/temporal/s;)J

    move-result-wide v0

    iget-wide v2, p0, Lj$/time/temporal/k;->c:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 311
    iget-object v0, p0, Lj$/time/temporal/k;->a:Ljava/lang/String;

    return-object v0
.end method
