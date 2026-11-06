###### Class j$.time.r (j$.time.r)
.class public final Lj$/time/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/r;
.implements Ljava/io/Serializable;


# static fields
.field public static final d:Lj$/time/r;

.field private static final serialVersionUID:J = -0xcbe97ad039fbcL


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 139
    new-instance v0, Lj$/time/r;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lj$/time/r;-><init>(III)V

    sput-object v0, Lj$/time/r;->d:Lj$/time/r;

    .line 147
    const-string v0, "([-+]?)P(?:([-+]?[0-9]+)Y)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)W)?(?:([-+]?[0-9]+)D)?"

    const/4 v1, 0x2

    .line 148
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 153
    sget-object v0, Lj$/time/temporal/b;->YEARS:Lj$/time/temporal/b;

    sget-object v1, Lj$/time/temporal/b;->MONTHS:Lj$/time/temporal/b;

    sget-object v2, Lj$/time/temporal/b;->DAYS:Lj$/time/temporal/b;

    .line 0
    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lj$/time/b;->b([Ljava/lang/Object;)Ljava/util/List;

    return-void
.end method

.method private constructor <init>(III)V
    .registers 4

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    iput p1, p0, Lj$/time/r;->a:I

    .line 418
    iput p2, p0, Lj$/time/r;->b:I

    .line 419
    iput p3, p0, Lj$/time/r;->c:I

    return-void
.end method

.method public static b(I)Lj$/time/r;
    .registers 3

    if-nez p0, :cond_5

    .line 404
    sget-object p0, Lj$/time/r;->d:Lj$/time/r;

    return-object p0

    .line 406
    :cond_5
    new-instance v0, Lj$/time/r;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p0}, Lj$/time/r;-><init>(III)V

    return-object v0
.end method

.method static c(Ljava/io/ObjectInput;)Lj$/time/r;
    .registers 4

    .line 1080
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 1081
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 1082
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result p0

    or-int v2, v0, v1

    or-int/2addr v2, p0

    if-nez v2, :cond_14

    .line 404
    sget-object p0, Lj$/time/r;->d:Lj$/time/r;

    return-object p0

    .line 406
    :cond_14
    new-instance v2, Lj$/time/r;

    invoke-direct {v2, v0, v1, p0}, Lj$/time/r;-><init>(III)V

    return-object v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3

    .line 1070
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization via serialization delegate"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    .line 1060
    new-instance v0, Lj$/time/s;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p0}, Lj$/time/s;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    .line 543
    iget v0, p0, Lj$/time/r;->c:I

    return v0
.end method

.method public final d()J
    .registers 5

    .line 859
    iget v0, p0, Lj$/time/r;->a:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long/2addr v0, v2

    iget v2, p0, Lj$/time/r;->b:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 997
    :cond_4
    instance-of v1, p1, Lj$/time/r;

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    .line 998
    check-cast p1, Lj$/time/r;

    .line 999
    iget v1, p1, Lj$/time/r;->a:I

    iget v3, p0, Lj$/time/r;->a:I

    if-ne v3, v1, :cond_1e

    iget v1, p0, Lj$/time/r;->b:I

    iget v3, p1, Lj$/time/r;->b:I

    if-ne v1, v3, :cond_1e

    iget v1, p0, Lj$/time/r;->c:I

    iget p1, p1, Lj$/time/r;->c:I

    if-ne v1, p1, :cond_1e

    return v0

    :cond_1e
    return v2
.end method

.method public final hashCode()I
    .registers 4

    .line 1013
    iget v0, p0, Lj$/time/r;->b:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    iget v1, p0, Lj$/time/r;->a:I

    add-int/2addr v0, v1

    iget v1, p0, Lj$/time/r;->c:I

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final p(Lj$/time/temporal/m;)Lj$/time/temporal/m;
    .registers 6

    .line 974
    invoke-static {}, Lj$/time/temporal/t;->a()Lj$/time/temporal/u;

    move-result-object v0

    invoke-interface {p1, v0}, Lj$/time/temporal/n;->a(Lj$/time/temporal/u;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/l;

    if-eqz v0, :cond_2d

    .line 975
    sget-object v1, Lj$/time/chrono/s;->d:Lj$/time/chrono/s;

    invoke-virtual {v1, v0}, Lj$/time/chrono/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_2d

    .line 976
    :cond_15
    new-instance p1, Lj$/time/c;

    invoke-interface {v0}, Lj$/time/chrono/l;->s()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Chronology mismatch, expected: ISO, actual: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 976
    throw p1

    .line 900
    :cond_2d
    :goto_2d
    iget v0, p0, Lj$/time/r;->b:I

    if-nez v0, :cond_3d

    .line 901
    iget v0, p0, Lj$/time/r;->a:I

    if-eqz v0, :cond_4d

    int-to-long v0, v0

    .line 902
    sget-object v2, Lj$/time/temporal/b;->YEARS:Lj$/time/temporal/b;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/m;->d(JLj$/time/temporal/v;)Lj$/time/temporal/m;

    move-result-object p1

    goto :goto_4d

    .line 905
    :cond_3d
    invoke-virtual {p0}, Lj$/time/r;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_4d

    .line 907
    sget-object v2, Lj$/time/temporal/b;->MONTHS:Lj$/time/temporal/b;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/m;->d(JLj$/time/temporal/v;)Lj$/time/temporal/m;

    move-result-object p1

    .line 910
    :cond_4d
    :goto_4d
    iget v0, p0, Lj$/time/r;->c:I

    if-eqz v0, :cond_58

    int-to-long v0, v0

    .line 911
    sget-object v2, Lj$/time/temporal/b;->DAYS:Lj$/time/temporal/b;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/m;->d(JLj$/time/temporal/v;)Lj$/time/temporal/m;

    move-result-object p1

    :cond_58
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1027
    sget-object v0, Lj$/time/r;->d:Lj$/time/r;

    if-ne p0, v0, :cond_7

    .line 1028
    const-string v0, "P0D"

    return-object v0

    .line 1030
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "P"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1032
    iget v1, p0, Lj$/time/r;->a:I

    if-eqz v1, :cond_1a

    .line 1033
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1035
    :cond_1a
    iget v1, p0, Lj$/time/r;->b:I

    if-eqz v1, :cond_26

    .line 1036
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1038
    :cond_26
    iget v1, p0, Lj$/time/r;->c:I

    if-eqz v1, :cond_32

    .line 1039
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1041
    :cond_32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final writeExternal(Ljava/io/ObjectOutput;)V
    .registers 3

    .line 1074
    iget v0, p0, Lj$/time/r;->a:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1075
    iget v0, p0, Lj$/time/r;->b:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1076
    iget v0, p0, Lj$/time/r;->c:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    return-void
.end method
