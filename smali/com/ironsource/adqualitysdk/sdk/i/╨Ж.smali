###### Class com.ironsource.adqualitysdk.sdk.i.AbstractC0215 (com.ironsource.adqualitysdk.sdk.i.І)
.class public abstract Lcom/ironsource/adqualitysdk/sdk/i/І;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﾒ:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "os/iVtk=\n"

    const-string v1, "95uke+ErdVw=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/І;->ﾒ:Ljava/nio/charset/Charset;

    return-void
.end method

.method public static ﾒ([BLcom/ironsource/adqualitysdk/sdk/i/і;Lcom/ironsource/adqualitysdk/sdk/i/ﺬ;)[B
    .registers 9

    .line 1
    array-length v0, p0

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_69

    const/4 v0, 0x0

    .line 6
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 9
    array-length v3, p0

    if-gt v1, v3, :cond_5b

    .line 12
    invoke-static {p0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 15
    array-length v4, p0

    invoke-static {p0, v1, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    .line 16
    array-length v1, p0

    const/16 v4, 0x10

    if-lt v1, v4, :cond_4d

    .line 21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ﺬ;->ﱡ:[B

    array-length v4, v1

    add-int/lit8 v4, v4, 0x3

    new-array v4, v4, [B

    .line 23
    array-length v5, v1

    invoke-static {v1, v0, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    array-length v5, v1

    int-to-byte v0, v0

    aput-byte v0, v4, v5

    .line 25
    array-length v0, v1

    add-int/2addr v0, v2

    int-to-byte v2, v2

    aput-byte v2, v4, v0

    .line 26
    array-length v0, v1

    const/4 v1, 0x2

    add-int/2addr v0, v1

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    .line 27
    iget-object v0, p1, Lcom/ironsource/adqualitysdk/sdk/i/і;->ﾇ:[B

    .line 28
    invoke-virtual {p2, v0, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ﺬ;->ﾒ([B[B[B)[B

    move-result-object v0

    .line 29
    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/і;->ﾒ:Ljava/lang/String;

    .line 30
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/І;->ﾒ:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 32
    invoke-virtual {p2, v0, v3, p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ﺬ;->ﾒ([B[B[B[B)[B

    move-result-object p0

    return-object p0

    .line 33
    :cond_4d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "zLYj8kc9L6O+pyL3RjA9svu3cONccz+v7rs18Fw2JLI=\n"

    const-string p2, "ntNQgihTXMY=\n"

    invoke-static {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 34
    :cond_5b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "/2J4STAEu8qNc3lMMQmp28hjK1grSqbAw2Ru\n"

    const-string p2, "rQcLOV9qyK8=\n"

    invoke-static {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 35
    :cond_69
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ZapsgcKZnicXu3CejYSFLUW7JdE=\n"

    const-string v1, "N88f8a337UI=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string p0, "noyQhSVN\n"

    const-string v0, "vu7p8UA+8C0=\n"

    invoke-static {p0, v0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ヾ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    .line 37
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
