###### Class j$.time.zone.a (j$.time.zone.a)
.class final Lj$/time/zone/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J = -0x7b4f011483e5ac42L


# instance fields
.field private a:B

.field private b:Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(BLjava/io/Serializable;)V
    .registers 3

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-byte p1, p0, Lj$/time/zone/a;->a:B

    .line 118
    iput-object p2, p0, Lj$/time/zone/a;->b:Ljava/io/Serializable;

    return-void
.end method

.method static a(Ljava/io/ObjectInput;)J
    .registers 5

    .line 277
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    const/16 v1, 0xff

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_e

    .line 279
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    return-wide v0

    .line 281
    :cond_e
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v2

    and-int/2addr v2, v1

    .line 282
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result p0

    and-int/2addr p0, v1

    shl-int/lit8 v0, v0, 0x10

    shl-int/lit8 v1, v2, 0x8

    add-int/2addr v0, v1

    add-int/2addr v0, p0

    int-to-long v0, v0

    const-wide/16 v2, 0x384

    mul-long/2addr v0, v2

    const-wide v2, 0x110bc5000L

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method static b(Ljava/io/ObjectInput;)Lj$/time/ZoneOffset;
    .registers 3

    .line 245
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_11

    .line 246
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result p0

    invoke-static {p0}, Lj$/time/ZoneOffset;->e0(I)Lj$/time/ZoneOffset;

    move-result-object p0

    return-object p0

    :cond_11
    mul-int/lit16 v0, v0, 0x384

    invoke-static {v0}, Lj$/time/ZoneOffset;->e0(I)Lj$/time/ZoneOffset;

    move-result-object p0

    return-object p0
.end method

.method static c(JLjava/io/ObjectOutput;)V
    .registers 11

    const-wide v0, -0x110bc5000L

    cmp-long v0, p0, v0

    const/16 v1, 0xff

    if-ltz v0, :cond_37

    const-wide v2, 0x26cb5db00L

    cmp-long v0, p0, v2

    if-gez v0, :cond_37

    const-wide/16 v2, 0x384

    .line 258
    rem-long v4, p0, v2

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_37

    const-wide v4, 0x110bc5000L

    add-long/2addr p0, v4

    .line 259
    div-long/2addr p0, v2

    long-to-int p0, p0

    ushr-int/lit8 p1, p0, 0x10

    and-int/2addr p1, v1

    .line 260
    invoke-interface {p2, p1}, Ljava/io/DataOutput;->writeByte(I)V

    ushr-int/lit8 p1, p0, 0x8

    and-int/2addr p1, v1

    .line 261
    invoke-interface {p2, p1}, Ljava/io/DataOutput;->writeByte(I)V

    and-int/2addr p0, v1

    .line 262
    invoke-interface {p2, p0}, Ljava/io/DataOutput;->writeByte(I)V

    return-void

    .line 264
    :cond_37
    invoke-interface {p2, v1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 265
    invoke-interface {p2, p0, p1}, Ljava/io/DataOutput;->writeLong(J)V

    return-void
.end method

.method static d(Lj$/time/ZoneOffset;Ljava/io/ObjectOutput;)V
    .registers 4

    .line 229
    invoke-virtual {p0}, Lj$/time/ZoneOffset;->b0()I

    move-result p0

    .line 230
    rem-int/lit16 v0, p0, 0x384

    const/16 v1, 0x7f

    if-nez v0, :cond_d

    div-int/lit16 v0, p0, 0x384

    goto :goto_e

    :cond_d
    move v0, v1

    .line 231
    :goto_e
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    if-ne v0, v1, :cond_16

    .line 233
    invoke-interface {p1, p0}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_16
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .line 217
    iget-object v0, p0, Lj$/time/zone/a;->b:Ljava/io/Serializable;

    return-object v0
.end method


# virtual methods
.method public final readExternal(Ljava/io/ObjectInput;)V
    .registers 6

    .line 187
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Lj$/time/zone/a;->a:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2e

    const/4 v1, 0x3

    if-eq v0, v1, :cond_29

    const/16 v1, 0x64

    if-ne v0, v1, :cond_21

    .line 496
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    .line 497
    new-instance v0, Lj$/time/zone/f;

    invoke-direct {v0, p1}, Lj$/time/zone/f;-><init>(Ljava/util/TimeZone;)V

    goto :goto_53

    .line 207
    :cond_21
    new-instance p1, Ljava/io/StreamCorruptedException;

    const-string v0, "Unknown serialized type"

    invoke-direct {p1, v0}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 203
    :cond_29
    invoke-static {p1}, Lj$/time/zone/e;->b(Ljava/io/ObjectInput;)Lj$/time/zone/e;

    move-result-object v0

    goto :goto_53

    .line 232
    :cond_2e
    invoke-static {p1}, Lj$/time/zone/a;->a(Ljava/io/ObjectInput;)J

    move-result-wide v0

    .line 233
    invoke-static {p1}, Lj$/time/zone/a;->b(Ljava/io/ObjectInput;)Lj$/time/ZoneOffset;

    move-result-object v2

    .line 234
    invoke-static {p1}, Lj$/time/zone/a;->b(Ljava/io/ObjectInput;)Lj$/time/ZoneOffset;

    move-result-object p1

    .line 235
    invoke-virtual {v2, p1}, Lj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    .line 238
    new-instance v3, Lj$/time/zone/b;

    invoke-direct {v3, v0, v1, v2, p1}, Lj$/time/zone/b;-><init>(JLj$/time/ZoneOffset;Lj$/time/ZoneOffset;)V

    move-object v0, v3

    goto :goto_53

    .line 236
    :cond_47
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Offsets must not be equal"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 199
    :cond_4f
    invoke-static {p1}, Lj$/time/zone/f;->j(Ljava/io/ObjectInput;)Lj$/time/zone/f;

    move-result-object v0

    .line 188
    :goto_53
    iput-object v0, p0, Lj$/time/zone/a;->b:Ljava/io/Serializable;

    return-void
.end method

.method public final writeExternal(Ljava/io/ObjectOutput;)V
    .registers 5

    .line 139
    iget-byte v0, p0, Lj$/time/zone/a;->a:B

    iget-object v1, p0, Lj$/time/zone/a;->b:Ljava/io/Serializable;

    .line 147
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2e

    const/4 v2, 0x2

    if-eq v0, v2, :cond_28

    const/4 v2, 0x3

    if-eq v0, v2, :cond_22

    const/16 v2, 0x64

    if-ne v0, v2, :cond_1a

    .line 159
    check-cast v1, Lj$/time/zone/f;

    invoke-virtual {v1, p1}, Lj$/time/zone/f;->k(Ljava/io/ObjectOutput;)V

    return-void

    .line 162
    :cond_1a
    new-instance p1, Ljava/io/InvalidClassException;

    const-string v0, "Unknown serialized type"

    invoke-direct {p1, v0}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 156
    :cond_22
    check-cast v1, Lj$/time/zone/e;

    invoke-virtual {v1, p1}, Lj$/time/zone/e;->writeExternal(Ljava/io/ObjectOutput;)V

    return-void

    .line 153
    :cond_28
    check-cast v1, Lj$/time/zone/b;

    invoke-virtual {v1, p1}, Lj$/time/zone/b;->writeExternal(Ljava/io/ObjectOutput;)V

    return-void

    .line 150
    :cond_2e
    check-cast v1, Lj$/time/zone/f;

    invoke-virtual {v1, p1}, Lj$/time/zone/f;->writeExternal(Ljava/io/ObjectOutput;)V

    return-void
.end method
