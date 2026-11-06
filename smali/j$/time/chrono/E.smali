###### Class j$.time.chrono.E (j$.time.chrono.E)
.class final Lj$/time/chrono/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J = -0x54b386e71d87ec81L


# instance fields
.field private a:B

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(BLjava/lang/Object;)V
    .registers 3

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-byte p1, p0, Lj$/time/chrono/E;->a:B

    .line 128
    iput-object p2, p0, Lj$/time/chrono/E;->b:Ljava/lang/Object;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .line 253
    iget-object v0, p0, Lj$/time/chrono/E;->b:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final readExternal(Ljava/io/ObjectInput;)V
    .registers 6

    .line 223
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Lj$/time/chrono/E;->a:B

    packed-switch v0, :pswitch_data_e6

    .line 243
    new-instance p1, Ljava/io/StreamCorruptedException;

    const-string v0, "Unknown serialized type"

    invoke-direct {p1, v0}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 242
    :pswitch_11
    sget v0, Lj$/time/chrono/h;->e:I

    .line 391
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-static {v0}, Lj$/time/chrono/a;->r(Ljava/lang/String;)Lj$/time/chrono/l;

    move-result-object v0

    .line 392
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 393
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 394
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result p1

    .line 395
    new-instance v3, Lj$/time/chrono/h;

    invoke-direct {v3, v0, v1, v2, p1}, Lj$/time/chrono/h;-><init>(Lj$/time/chrono/l;III)V

    goto/16 :goto_e2

    .line 513
    :pswitch_2e
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 514
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .line 515
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result p1

    .line 516
    sget-object v2, Lj$/time/chrono/G;->d:Lj$/time/chrono/G;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    new-instance v3, Lj$/time/chrono/I;

    add-int/lit16 v0, v0, -0x21f

    invoke-static {v0, v1, p1}, Lj$/time/h;->f0(III)Lj$/time/h;

    move-result-object p1

    invoke-direct {v3, p1}, Lj$/time/chrono/I;-><init>(Lj$/time/h;)V

    goto/16 :goto_e2

    .line 513
    :pswitch_4c
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 514
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .line 515
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result p1

    .line 516
    sget-object v2, Lj$/time/chrono/A;->d:Lj$/time/chrono/A;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    new-instance v3, Lj$/time/chrono/C;

    add-int/lit16 v0, v0, 0x777

    invoke-static {v0, v1, p1}, Lj$/time/h;->f0(III)Lj$/time/h;

    move-result-object p1

    invoke-direct {v3, p1}, Lj$/time/chrono/C;-><init>(Lj$/time/h;)V

    goto/16 :goto_e2

    .line 691
    :pswitch_6a
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/o;

    .line 692
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 693
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v2

    .line 694
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result p1

    .line 695
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 374
    invoke-static {v0, v1, v2, p1}, Lj$/time/chrono/q;->Z(Lj$/time/chrono/o;III)Lj$/time/chrono/q;

    move-result-object v3

    goto :goto_e2

    .line 238
    :pswitch_84
    sget-object v0, Lj$/time/chrono/y;->d:Lj$/time/chrono/y;

    .line 512
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result p1

    .line 513
    invoke-static {p1}, Lj$/time/chrono/y;->w(I)Lj$/time/chrono/y;

    move-result-object v3

    goto :goto_e2

    .line 237
    :pswitch_8f
    sget-object v0, Lj$/time/chrono/x;->d:Lj$/time/h;

    .line 802
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 803
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .line 804
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result p1

    .line 805
    sget-object v2, Lj$/time/chrono/v;->d:Lj$/time/chrono/v;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    new-instance v3, Lj$/time/chrono/x;

    invoke-static {v0, v1, p1}, Lj$/time/h;->f0(III)Lj$/time/h;

    move-result-object p1

    invoke-direct {v3, p1}, Lj$/time/chrono/x;-><init>(Lj$/time/h;)V

    goto :goto_e2

    .line 357
    :pswitch_ac
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/e;

    .line 358
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/time/ZoneOffset;

    .line 359
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/x;

    .line 360
    invoke-interface {v0, v1}, Lj$/time/chrono/e;->H(Lj$/time/x;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/time/chrono/ChronoZonedDateTime;->I(Lj$/time/x;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object v3

    goto :goto_e2

    .line 432
    :pswitch_c7
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/b;

    .line 433
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/k;

    .line 434
    invoke-interface {v0, p1}, Lj$/time/chrono/b;->K(Lj$/time/k;)Lj$/time/chrono/e;

    move-result-object v3

    goto :goto_e2

    .line 234
    :pswitch_d8
    sget v0, Lj$/time/chrono/a;->c:I

    .line 765
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object p1

    .line 255
    invoke-static {p1}, Lj$/time/chrono/a;->r(Ljava/lang/String;)Lj$/time/chrono/l;

    move-result-object v3

    .line 224
    :goto_e2
    iput-object v3, p0, Lj$/time/chrono/E;->b:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_e6
    .packed-switch 0x1
        :pswitch_d8
        :pswitch_c7
        :pswitch_ac
        :pswitch_8f
        :pswitch_84
        :pswitch_6a
        :pswitch_4c
        :pswitch_2e
        :pswitch_11
    .end packed-switch
.end method

.method public final writeExternal(Ljava/io/ObjectOutput;)V
    .registers 4

    .line 157
    iget-byte v0, p0, Lj$/time/chrono/E;->a:B

    iget-object v1, p0, Lj$/time/chrono/E;->b:Ljava/lang/Object;

    .line 161
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    packed-switch v0, :pswitch_data_9e

    .line 191
    new-instance p1, Ljava/io/InvalidClassException;

    const-string v0, "Unknown serialized type"

    invoke-direct {p1, v0}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 188
    :pswitch_12
    check-cast v1, Lj$/time/chrono/h;

    invoke-virtual {v1, p1}, Lj$/time/chrono/h;->writeExternal(Ljava/io/ObjectOutput;)V

    return-void

    .line 185
    :pswitch_18
    check-cast v1, Lj$/time/chrono/I;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 507
    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    invoke-interface {v1, v0}, Lj$/time/temporal/n;->i(Lj$/time/temporal/s;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 508
    sget-object v0, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {v1, v0}, Lj$/time/temporal/n;->i(Lj$/time/temporal/s;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 509
    sget-object v0, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    invoke-interface {v1, v0}, Lj$/time/temporal/n;->i(Lj$/time/temporal/s;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    return-void

    .line 182
    :pswitch_39
    check-cast v1, Lj$/time/chrono/C;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 507
    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    invoke-interface {v1, v0}, Lj$/time/temporal/n;->i(Lj$/time/temporal/s;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 508
    sget-object v0, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {v1, v0}, Lj$/time/temporal/n;->i(Lj$/time/temporal/s;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 509
    sget-object v0, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    invoke-interface {v1, v0}, Lj$/time/temporal/n;->i(Lj$/time/temporal/s;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    return-void

    .line 179
    :pswitch_5a
    check-cast v1, Lj$/time/chrono/q;

    invoke-virtual {v1, p1}, Lj$/time/chrono/q;->writeExternal(Ljava/io/ObjectOutput;)V

    return-void

    .line 176
    :pswitch_60
    check-cast v1, Lj$/time/chrono/y;

    invoke-virtual {v1, p1}, Lj$/time/chrono/y;->C(Ljava/io/DataOutput;)V

    return-void

    .line 173
    :pswitch_66
    check-cast v1, Lj$/time/chrono/x;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 796
    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    invoke-interface {v1, v0}, Lj$/time/temporal/n;->i(Lj$/time/temporal/s;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 797
    sget-object v0, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {v1, v0}, Lj$/time/temporal/n;->i(Lj$/time/temporal/s;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 798
    sget-object v0, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    invoke-interface {v1, v0}, Lj$/time/temporal/n;->i(Lj$/time/temporal/s;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    return-void

    .line 170
    :pswitch_87
    check-cast v1, Lj$/time/chrono/k;

    invoke-virtual {v1, p1}, Lj$/time/chrono/k;->writeExternal(Ljava/io/ObjectOutput;)V

    return-void

    .line 167
    :pswitch_8d
    check-cast v1, Lj$/time/chrono/g;

    invoke-virtual {v1, p1}, Lj$/time/chrono/g;->writeExternal(Ljava/io/ObjectOutput;)V

    return-void

    .line 164
    :pswitch_93
    check-cast v1, Lj$/time/chrono/a;

    .line 761
    invoke-interface {v1}, Lj$/time/chrono/l;->s()Ljava/lang/String;

    move-result-object v0

    .line 761
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_93
        :pswitch_8d
        :pswitch_87
        :pswitch_66
        :pswitch_60
        :pswitch_5a
        :pswitch_39
        :pswitch_18
        :pswitch_12
    .end packed-switch
.end method
