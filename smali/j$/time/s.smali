###### Class j$.time.s (j$.time.s)
.class final Lj$/time/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J = -0x6aa27b45e4ddb74eL


# instance fields
.field private a:B

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(BLjava/lang/Object;)V
    .registers 3

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-byte p1, p0, Lj$/time/s;->a:B

    .line 130
    iput-object p2, p0, Lj$/time/s;->b:Ljava/lang/Object;

    return-void
.end method

.method static a(Ljava/io/ObjectInput;)Ljava/io/Serializable;
    .registers 2

    .line 250
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 251
    invoke-static {v0, p0}, Lj$/time/s;->b(BLjava/io/ObjectInput;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method

.method private static b(BLjava/io/ObjectInput;)Ljava/io/Serializable;
    .registers 4

    packed-switch p0, :pswitch_data_9a

    .line 271
    new-instance p0, Ljava/io/StreamCorruptedException;

    const-string p1, "Unknown serialized type"

    invoke-direct {p0, p1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 269
    :pswitch_b
    invoke-static {p1}, Lj$/time/r;->c(Ljava/io/ObjectInput;)Lj$/time/r;

    move-result-object p0

    return-object p0

    .line 268
    :pswitch_10
    invoke-static {p1}, Lj$/time/o;->r(Ljava/io/ObjectInput;)Lj$/time/o;

    move-result-object p0

    return-object p0

    .line 267
    :pswitch_15
    invoke-static {p1}, Lj$/time/w;->T(Ljava/io/ObjectInput;)Lj$/time/w;

    move-result-object p0

    return-object p0

    .line 266
    :pswitch_1a
    sget p0, Lj$/time/u;->b:I

    .line 1119
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result p0

    invoke-static {p0}, Lj$/time/u;->r(I)Lj$/time/u;

    move-result-object p0

    return-object p0

    .line 265
    :pswitch_25
    invoke-static {p1}, Lj$/time/OffsetDateTime;->S(Ljava/io/ObjectInput;)Lj$/time/OffsetDateTime;

    move-result-object p0

    return-object p0

    .line 264
    :pswitch_2a
    invoke-static {p1}, Lj$/time/q;->J(Ljava/io/ObjectInput;)Lj$/time/q;

    move-result-object p0

    return-object p0

    .line 262
    :pswitch_2f
    invoke-static {p1}, Lj$/time/ZoneOffset;->g0(Ljava/io/ObjectInput;)Lj$/time/ZoneOffset;

    move-result-object p0

    return-object p0

    .line 263
    :pswitch_34
    sget p0, Lj$/time/y;->d:I

    .line 217
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 218
    invoke-static {p0, p1}, Lj$/time/x;->S(Ljava/lang/String;Z)Lj$/time/x;

    move-result-object p0

    return-object p0

    .line 261
    :pswitch_40
    invoke-static {p1}, Lj$/time/ZonedDateTime;->W(Ljava/io/ObjectInput;)Lj$/time/ZonedDateTime;

    move-result-object p0

    return-object p0

    .line 259
    :pswitch_45
    sget-object p0, Lj$/time/LocalDateTime;->c:Lj$/time/LocalDateTime;

    .line 2008
    sget-object p0, Lj$/time/h;->d:Lj$/time/h;

    .line 2224
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result p0

    .line 2225
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 2226
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .line 2227
    invoke-static {p0, v0, v1}, Lj$/time/h;->f0(III)Lj$/time/h;

    move-result-object p0

    .line 2009
    invoke-static {p1}, Lj$/time/k;->j0(Ljava/io/ObjectInput;)Lj$/time/k;

    move-result-object p1

    .line 2010
    invoke-static {p0, p1}, Lj$/time/LocalDateTime;->c0(Lj$/time/h;Lj$/time/k;)Lj$/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 260
    :pswitch_62
    invoke-static {p1}, Lj$/time/k;->j0(Ljava/io/ObjectInput;)Lj$/time/k;

    move-result-object p0

    return-object p0

    .line 258
    :pswitch_67
    sget-object p0, Lj$/time/h;->d:Lj$/time/h;

    .line 2224
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result p0

    .line 2225
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 2226
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result p1

    .line 2227
    invoke-static {p0, v0, p1}, Lj$/time/h;->f0(III)Lj$/time/h;

    move-result-object p0

    return-object p0

    .line 257
    :pswitch_7a
    sget-object p0, Lj$/time/Instant;->c:Lj$/time/Instant;

    .line 1366
    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    .line 1367
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result p0

    int-to-long p0, p0

    .line 1368
    invoke-static {v0, v1, p0, p1}, Lj$/time/Instant;->W(JJ)Lj$/time/Instant;

    move-result-object p0

    return-object p0

    .line 256
    :pswitch_8a
    sget-object p0, Lj$/time/Duration;->c:Lj$/time/Duration;

    .line 1552
    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    .line 1553
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result p0

    int-to-long p0, p0

    .line 1554
    invoke-static {v0, v1, p0, p1}, Lj$/time/Duration;->S(JJ)Lj$/time/Duration;

    move-result-object p0

    return-object p0

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_8a
        :pswitch_7a
        :pswitch_67
        :pswitch_62
        :pswitch_45
        :pswitch_40
        :pswitch_34
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
        :pswitch_1a
        :pswitch_15
        :pswitch_10
        :pswitch_b
    .end packed-switch
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .line 281
    iget-object v0, p0, Lj$/time/s;->b:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final readExternal(Ljava/io/ObjectInput;)V
    .registers 3

    .line 245
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Lj$/time/s;->a:B

    .line 246
    invoke-static {v0, p1}, Lj$/time/s;->b(BLjava/io/ObjectInput;)Ljava/io/Serializable;

    move-result-object p1

    iput-object p1, p0, Lj$/time/s;->b:Ljava/lang/Object;

    return-void
.end method

.method public final writeExternal(Ljava/io/ObjectOutput;)V
    .registers 4

    .line 162
    iget-byte v0, p0, Lj$/time/s;->a:B

    iget-object v1, p0, Lj$/time/s;->b:Ljava/lang/Object;

    .line 166
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    packed-switch v0, :pswitch_data_66

    .line 211
    new-instance p1, Ljava/io/InvalidClassException;

    const-string v0, "Unknown serialized type"

    invoke-direct {p1, v0}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 208
    :pswitch_12
    check-cast v1, Lj$/time/r;

    invoke-virtual {v1, p1}, Lj$/time/r;->writeExternal(Ljava/io/ObjectOutput;)V

    return-void

    .line 205
    :pswitch_18
    check-cast v1, Lj$/time/o;

    invoke-virtual {v1, p1}, Lj$/time/o;->C(Ljava/io/DataOutput;)V

    return-void

    .line 202
    :pswitch_1e
    check-cast v1, Lj$/time/w;

    invoke-virtual {v1, p1}, Lj$/time/w;->a0(Ljava/io/DataOutput;)V

    return-void

    .line 199
    :pswitch_24
    check-cast v1, Lj$/time/u;

    invoke-virtual {v1, p1}, Lj$/time/u;->T(Ljava/io/DataOutput;)V

    return-void

    .line 196
    :pswitch_2a
    check-cast v1, Lj$/time/OffsetDateTime;

    invoke-virtual {v1, p1}, Lj$/time/OffsetDateTime;->writeExternal(Ljava/io/ObjectOutput;)V

    return-void

    .line 193
    :pswitch_30
    check-cast v1, Lj$/time/q;

    invoke-virtual {v1, p1}, Lj$/time/q;->writeExternal(Ljava/io/ObjectOutput;)V

    return-void

    .line 187
    :pswitch_36
    check-cast v1, Lj$/time/ZoneOffset;

    invoke-virtual {v1, p1}, Lj$/time/ZoneOffset;->h0(Ljava/io/DataOutput;)V

    return-void

    .line 184
    :pswitch_3c
    check-cast v1, Lj$/time/y;

    invoke-virtual {v1, p1}, Lj$/time/y;->b0(Ljava/io/DataOutput;)V

    return-void

    .line 190
    :pswitch_42
    check-cast v1, Lj$/time/ZonedDateTime;

    invoke-virtual {v1, p1}, Lj$/time/ZonedDateTime;->c0(Ljava/io/DataOutput;)V

    return-void

    .line 178
    :pswitch_48
    check-cast v1, Lj$/time/LocalDateTime;

    invoke-virtual {v1, p1}, Lj$/time/LocalDateTime;->m0(Ljava/io/DataOutput;)V

    return-void

    .line 181
    :pswitch_4e
    check-cast v1, Lj$/time/k;

    invoke-virtual {v1, p1}, Lj$/time/k;->o0(Ljava/io/DataOutput;)V

    return-void

    .line 175
    :pswitch_54
    check-cast v1, Lj$/time/h;

    invoke-virtual {v1, p1}, Lj$/time/h;->t0(Ljava/io/DataOutput;)V

    return-void

    .line 172
    :pswitch_5a
    check-cast v1, Lj$/time/Instant;

    invoke-virtual {v1, p1}, Lj$/time/Instant;->b0(Ljava/io/DataOutput;)V

    return-void

    .line 169
    :pswitch_60
    check-cast v1, Lj$/time/Duration;

    invoke-virtual {v1, p1}, Lj$/time/Duration;->writeExternal(Ljava/io/ObjectOutput;)V

    return-void

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_60
        :pswitch_5a
        :pswitch_54
        :pswitch_4e
        :pswitch_48
        :pswitch_42
        :pswitch_3c
        :pswitch_36
        :pswitch_30
        :pswitch_2a
        :pswitch_24
        :pswitch_1e
        :pswitch_18
        :pswitch_12
    .end packed-switch
.end method
