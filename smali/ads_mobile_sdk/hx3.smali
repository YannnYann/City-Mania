###### Class ads_mobile_sdk.hx3 (ads_mobile_sdk.hx3)
.class abstract Lads_mobile_sdk/hx3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lads_mobile_sdk/hx3$b;,
        Lads_mobile_sdk/hx3$e;,
        Lads_mobile_sdk/hx3$d;,
        Lads_mobile_sdk/hx3$c;,
        Lads_mobile_sdk/hx3$f;,
        Lads_mobile_sdk/hx3$a;
    }
.end annotation


# static fields
.field private static final a:Lads_mobile_sdk/hx3$c;

.field static final b:Z


# direct methods
.method public static bridge synthetic -$$Nest$sma(Ljava/lang/String;I)I
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lads_mobile_sdk/hx3;->a(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Lads_mobile_sdk/hx3;->a()Lads_mobile_sdk/hx3$c;

    move-result-object v0

    sput-object v0, Lads_mobile_sdk/hx3;->a:Lads_mobile_sdk/hx3$c;

    .line 3
    invoke-virtual {v0}, Lads_mobile_sdk/hx3$c;->a()Z

    move-result v0

    sput-boolean v0, Lads_mobile_sdk/hx3;->b:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .registers 2

    .line 679
    sget-object v0, Lads_mobile_sdk/hx3;->a:Lads_mobile_sdk/hx3$c;

    invoke-virtual {v0, p0}, Lads_mobile_sdk/hx3$c;->a(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static a(Ljava/lang/String;I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/hx3$f;
        }
    .end annotation

    .line 549
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge p1, v0, :cond_35

    .line 552
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x800

    if-ge v2, v3, :cond_15

    rsub-int/lit8 v2, v2, 0x7f

    ushr-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    goto :goto_32

    :cond_15
    add-int/lit8 v1, v1, 0x2

    const v3, 0xd800

    if-gt v3, v2, :cond_32

    const v3, 0xdfff

    if-gt v2, v3, :cond_32

    .line 560
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    const/high16 v3, 0x10000

    if-lt v2, v3, :cond_2c

    add-int/lit8 p1, p1, 0x1

    goto :goto_32

    .line 562
    :cond_2c
    new-instance p0, Lads_mobile_sdk/hx3$f;

    invoke-direct {p0, p1, v0}, Lads_mobile_sdk/hx3$f;-><init>(II)V

    throw p0

    :cond_32
    :goto_32
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_35
    return v1
.end method

.method public static a(Ljava/lang/String;[BII)I
    .registers 5

    .line 680
    sget-object v0, Lads_mobile_sdk/hx3;->a:Lads_mobile_sdk/hx3$c;

    invoke-virtual {v0, p0, p1, p2, p3}, Lads_mobile_sdk/hx3$c;->a(Ljava/lang/String;[BII)I

    move-result p0

    return p0
.end method

.method private static a()Lads_mobile_sdk/hx3$c;
    .registers 1

    .line 662
    invoke-static {}, Lads_mobile_sdk/gi;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 663
    new-instance v0, Lads_mobile_sdk/hx3$b;

    invoke-direct {v0}, Lads_mobile_sdk/hx3$b;-><init>()V

    return-object v0

    .line 667
    :cond_c
    :try_start_c
    const-string v0, "PROTOBUF_FORCE_MOBILE_UTF8_PROCESSOR_FOR_TESTING"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 668
    new-instance v0, Lads_mobile_sdk/hx3$b;

    invoke-direct {v0}, Lads_mobile_sdk/hx3$b;-><init>()V
    :try_end_19
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_19} :catch_1a

    return-object v0

    .line 675
    :catch_1a
    :cond_1a
    invoke-static {}, Lads_mobile_sdk/hx3$e;->c()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 676
    new-instance v0, Lads_mobile_sdk/hx3$e;

    invoke-direct {v0}, Lads_mobile_sdk/hx3$e;-><init>()V

    return-object v0

    .line 678
    :cond_26
    new-instance v0, Lads_mobile_sdk/hx3$d;

    invoke-direct {v0}, Lads_mobile_sdk/hx3$d;-><init>()V

    return-object v0
.end method

.method public static a([BII)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    if-nez p2, :cond_5

    .line 298
    const-string p0, ""

    return-object p0

    .line 300
    :cond_5
    sget-object v0, Lads_mobile_sdk/hx3;->a:Lads_mobile_sdk/hx3$c;

    invoke-virtual {v0, p0, p1, p2}, Lads_mobile_sdk/hx3$c;->a([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a([B)Z
    .registers 3

    .line 661
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lads_mobile_sdk/hx3;->c([BII)Z

    move-result p0

    return p0
.end method

.method public static b([BII)Z
    .registers 3

    .line 108
    invoke-static {p0, p1, p2}, Lads_mobile_sdk/hx3;->c([BII)Z

    move-result p0

    return p0
.end method

.method private static c([BII)Z
    .registers 4

    :goto_0
    if-ge p1, p2, :cond_9

    .line 133
    aget-byte v0, p0, p1

    if-ltz v0, :cond_9

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_9
    if-lt p1, p2, :cond_d

    const/4 p0, 0x1

    return p0

    .line 139
    :cond_d
    invoke-static {p0, p1, p2}, Lads_mobile_sdk/hx3;->d([BII)Z

    move-result p0

    return p0
.end method

.method private static d([BII)Z
    .registers 10

    :cond_0
    :goto_0
    if-lt p1, p2, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    add-int/lit8 v0, p1, 0x1

    .line 150
    aget-byte v1, p0, p1

    if-gez v1, :cond_62

    const/16 v2, -0x20

    const/16 v3, -0x41

    const/4 v4, 0x0

    if-ge v1, v2, :cond_1f

    if-lt v0, p2, :cond_14

    return v4

    :cond_14
    const/16 v2, -0x3e

    if-lt v1, v2, :cond_1e

    add-int/lit8 p1, p1, 0x2

    .line 155
    aget-byte v0, p0, v0

    if-le v0, v3, :cond_0

    :cond_1e
    return v4

    :cond_1f
    const/16 v5, -0x10

    if-ge v1, v5, :cond_41

    add-int/lit8 v5, p2, -0x1

    if-lt v0, v5, :cond_28

    return v4

    :cond_28
    add-int/lit8 v5, p1, 0x2

    .line 162
    aget-byte v0, p0, v0

    if-gt v0, v3, :cond_40

    const/16 v6, -0x60

    if-ne v1, v2, :cond_34

    if-lt v0, v6, :cond_40

    :cond_34
    const/16 v2, -0x13

    if-ne v1, v2, :cond_3a

    if-ge v0, v6, :cond_40

    :cond_3a
    add-int/lit8 p1, p1, 0x3

    aget-byte v0, p0, v5

    if-le v0, v3, :cond_0

    :cond_40
    return v4

    :cond_41
    add-int/lit8 v2, p2, -0x2

    if-lt v0, v2, :cond_46

    return v4

    :cond_46
    add-int/lit8 v2, p1, 0x2

    .line 172
    aget-byte v0, p0, v0

    if-gt v0, v3, :cond_61

    shl-int/lit8 v1, v1, 0x1c

    add-int/lit8 v0, v0, 0x70

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1e

    if-nez v0, :cond_61

    add-int/lit8 v0, p1, 0x3

    aget-byte v1, p0, v2

    if-gt v1, v3, :cond_61

    add-int/lit8 p1, p1, 0x4

    aget-byte v0, p0, v0

    if-le v0, v3, :cond_0

    :cond_61
    return v4

    :cond_62
    move p1, v0

    goto :goto_0
.end method

###### Class ads_mobile_sdk.hx3.a (ads_mobile_sdk.hx3$a)
.class public abstract Lads_mobile_sdk/hx3$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/hx3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public static bridge synthetic -$$Nest$sma(BBBB[CI)V
    .registers 6

    .line 0
    invoke-static/range {p0 .. p5}, Lads_mobile_sdk/hx3$a;->a(BBBB[CI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sma(BBB[CI)V
    .registers 5

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lads_mobile_sdk/hx3$a;->a(BBB[CI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sma(BB[CI)V
    .registers 4

    .line 0
    invoke-static {p0, p1, p2, p3}, Lads_mobile_sdk/hx3$a;->a(BB[CI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sma(B[CI)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lads_mobile_sdk/hx3$a;->a(B[CI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smb(B)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lads_mobile_sdk/hx3$a;->b(B)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smc(B)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lads_mobile_sdk/hx3$a;->c(B)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smd(B)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lads_mobile_sdk/hx3$a;->d(B)Z

    move-result p0

    return p0
.end method

.method public static a(I)C
    .registers 2

    .line 0
    ushr-int/lit8 p0, p0, 0xa

    const v0, 0xd7c0

    add-int/2addr p0, v0

    int-to-char p0, p0

    return p0
.end method

.method public static a(BBBB[CI)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    .line 924
    invoke-static {p1}, Lads_mobile_sdk/hx3$a;->a(B)Z

    move-result v0

    if-nez v0, :cond_41

    shl-int/lit8 v0, p0, 0x1c

    add-int/lit8 v1, p1, 0x70

    add-int/2addr v1, v0

    shr-int/lit8 v0, v1, 0x1e

    if-nez v0, :cond_41

    .line 933
    invoke-static {p2}, Lads_mobile_sdk/hx3$a;->a(B)Z

    move-result v0

    if-nez v0, :cond_41

    .line 934
    invoke-static {p3}, Lads_mobile_sdk/hx3$a;->a(B)Z

    move-result v0

    if-nez v0, :cond_41

    and-int/lit8 p0, p0, 0x7

    shl-int/lit8 p0, p0, 0x12

    .line 939
    invoke-static {p1}, Lads_mobile_sdk/hx3$a;->e(B)I

    move-result p1

    shl-int/lit8 p1, p1, 0xc

    or-int/2addr p0, p1

    .line 940
    invoke-static {p2}, Lads_mobile_sdk/hx3$a;->e(B)I

    move-result p1

    shl-int/lit8 p1, p1, 0x6

    or-int/2addr p0, p1

    .line 941
    invoke-static {p3}, Lads_mobile_sdk/hx3$a;->e(B)I

    move-result p1

    or-int/2addr p0, p1

    .line 942
    invoke-static {p0}, Lads_mobile_sdk/hx3$a;->a(I)C

    move-result p1

    aput-char p1, p4, p5

    add-int/lit8 p5, p5, 0x1

    .line 943
    invoke-static {p0}, Lads_mobile_sdk/hx3$a;->b(I)C

    move-result p0

    aput-char p0, p4, p5

    return-void

    .line 944
    :cond_41
    invoke-static {}, Lads_mobile_sdk/np1;->d()Lads_mobile_sdk/np1;

    move-result-object p0

    throw p0
.end method

.method public static a(BBB[CI)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    .line 2744
    invoke-static {p1}, Lads_mobile_sdk/hx3$a;->a(B)Z

    move-result v0

    if-nez v0, :cond_2e

    const/16 v0, -0x20

    const/16 v1, -0x60

    if-ne p0, v0, :cond_e

    if-lt p1, v1, :cond_2e

    :cond_e
    const/16 v0, -0x13

    if-ne p0, v0, :cond_14

    if-ge p1, v1, :cond_2e

    .line 2749
    :cond_14
    invoke-static {p2}, Lads_mobile_sdk/hx3$a;->a(B)Z

    move-result v0

    if-nez v0, :cond_2e

    and-int/lit8 p0, p0, 0xf

    shl-int/lit8 p0, p0, 0xc

    .line 2754
    invoke-static {p1}, Lads_mobile_sdk/hx3$a;->e(B)I

    move-result p1

    shl-int/lit8 p1, p1, 0x6

    or-int/2addr p0, p1

    invoke-static {p2}, Lads_mobile_sdk/hx3$a;->e(B)I

    move-result p1

    or-int/2addr p0, p1

    int-to-char p0, p0

    aput-char p0, p3, p4

    return-void

    .line 2755
    :cond_2e
    invoke-static {}, Lads_mobile_sdk/np1;->d()Lads_mobile_sdk/np1;

    move-result-object p0

    throw p0
.end method

.method public static a(BB[CI)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    const/16 v0, -0x3e

    if-lt p0, v0, :cond_17

    .line 3654
    invoke-static {p1}, Lads_mobile_sdk/hx3$a;->a(B)Z

    move-result v0

    if-nez v0, :cond_17

    and-int/lit8 p0, p0, 0x1f

    shl-int/lit8 p0, p0, 0x6

    .line 3657
    invoke-static {p1}, Lads_mobile_sdk/hx3$a;->e(B)I

    move-result p1

    or-int/2addr p0, p1

    int-to-char p0, p0

    aput-char p0, p2, p3

    return-void

    .line 3658
    :cond_17
    invoke-static {}, Lads_mobile_sdk/np1;->d()Lads_mobile_sdk/np1;

    move-result-object p0

    throw p0
.end method

.method public static a(B[CI)V
    .registers 3

    int-to-char p0, p0

    .line 1836
    aput-char p0, p1, p2

    return-void
.end method

.method public static a(B)Z
    .registers 2

    .line 0
    const/16 v0, -0x41

    if-le p0, v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static b(I)C
    .registers 2

    .line 0
    and-int/lit16 p0, p0, 0x3ff

    const v0, 0xdc00

    add-int/2addr p0, v0

    int-to-char p0, p0

    return p0
.end method

.method public static b(B)Z
    .registers 1

    .line 0
    if-ltz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static c(B)Z
    .registers 2

    .line 0
    const/16 v0, -0x10

    if-ge p0, v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static d(B)Z
    .registers 2

    .line 0
    const/16 v0, -0x20

    if-ge p0, v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static e(B)I
    .registers 1

    .line 0
    and-int/lit8 p0, p0, 0x3f

    return p0
.end method

###### Class ads_mobile_sdk.hx3.b (ads_mobile_sdk.hx3$b)
.class public final Lads_mobile_sdk/hx3$b;
.super Lads_mobile_sdk/hx3$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/hx3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 565
    invoke-direct {p0}, Lads_mobile_sdk/hx3$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;[BII)I
    .registers 14

    .line 1297
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int v1, p3, p4

    const/4 v2, 0x0

    :goto_7
    const/16 v3, 0x80

    if-ge v2, v0, :cond_1b

    add-int v4, v2, p3

    if-ge v4, v1, :cond_1b

    .line 1303
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ge v5, v3, :cond_1b

    int-to-byte v3, v5

    .line 1304
    aput-byte v3, p2, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1b
    if-ne v2, v0, :cond_1f

    add-int/2addr p3, v0

    return p3

    :cond_1f
    add-int v4, p3, v2

    :goto_21
    if-ge v2, v0, :cond_e3

    .line 1311
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ge v5, v3, :cond_33

    if-ge v4, v1, :cond_33

    add-int/lit8 v6, v4, 0x1

    int-to-byte v5, v5

    .line 1313
    aput-byte v5, p2, v4

    move v4, v6

    goto/16 :goto_b7

    :cond_33
    const/16 v6, 0x800

    if-ge v5, v6, :cond_4d

    add-int/lit8 v6, v1, -0x2

    if-gt v4, v6, :cond_4d

    add-int/lit8 v6, v4, 0x1

    ushr-int/lit8 v7, v5, 0x6

    or-int/lit16 v7, v7, 0x3c0

    int-to-byte v7, v7

    .line 1315
    aput-byte v7, p2, v4

    add-int/lit8 v4, v4, 0x2

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v3

    int-to-byte v5, v5

    .line 1316
    aput-byte v5, p2, v6

    goto :goto_b7

    :cond_4d
    const v6, 0xdfff

    const v7, 0xd800

    if-lt v5, v7, :cond_57

    if-ge v6, v5, :cond_77

    :cond_57
    add-int/lit8 v8, v1, -0x3

    if-gt v4, v8, :cond_77

    add-int/lit8 v6, v4, 0x1

    ushr-int/lit8 v7, v5, 0xc

    or-int/lit16 v7, v7, 0x1e0

    int-to-byte v7, v7

    .line 1319
    aput-byte v7, p2, v4

    add-int/lit8 v7, v4, 0x2

    ushr-int/lit8 v8, v5, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v8, v3

    int-to-byte v8, v8

    .line 1320
    aput-byte v8, p2, v6

    add-int/lit8 v4, v4, 0x3

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v3

    int-to-byte v5, v5

    .line 1321
    aput-byte v5, p2, v7

    goto :goto_b7

    :cond_77
    add-int/lit8 v8, v1, -0x4

    if-gt v4, v8, :cond_c0

    add-int/lit8 v2, v2, 0x1

    .line 1326
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v2, v6, :cond_bb

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v7

    if-nez v7, :cond_8e

    goto :goto_bb

    .line 1329
    :cond_8e
    invoke-static {v5, v6}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v5

    add-int/lit8 v6, v4, 0x1

    ushr-int/lit8 v7, v5, 0x12

    or-int/lit16 v7, v7, 0xf0

    int-to-byte v7, v7

    .line 1330
    aput-byte v7, p2, v4

    add-int/lit8 v7, v4, 0x2

    ushr-int/lit8 v8, v5, 0xc

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v8, v3

    int-to-byte v8, v8

    .line 1331
    aput-byte v8, p2, v6

    add-int/lit8 v6, v4, 0x3

    ushr-int/lit8 v8, v5, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v8, v3

    int-to-byte v8, v8

    .line 1332
    aput-byte v8, p2, v7

    add-int/lit8 v4, v4, 0x4

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v3

    int-to-byte v5, v5

    .line 1333
    aput-byte v5, p2, v6

    :goto_b7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_21

    .line 1334
    :cond_bb
    :goto_bb
    invoke-virtual {p0, p1, p2, p3, p4}, Lads_mobile_sdk/hx3$c;->b(Ljava/lang/String;[BII)I

    move-result p1

    return p1

    :cond_c0
    if-gt v7, v5, :cond_db

    if-gt v5, v6, :cond_db

    add-int/lit8 v2, v2, 0x1

    .line 1345
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v2, v0, :cond_d6

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_db

    .line 1346
    :cond_d6
    invoke-virtual {p0, p1, p2, p3, p4}, Lads_mobile_sdk/hx3$c;->b(Ljava/lang/String;[BII)I

    move-result p1

    return p1

    .line 1348
    :cond_db
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Not enough space in output buffer to encode UTF-8 string"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e3
    return v4
.end method

.method public a([BII)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    or-int v0, p2, p3

    .line 569
    array-length v1, p1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_a2

    add-int v0, p2, p3

    .line 579
    new-array v5, p3, [C

    const/4 p3, 0x0

    move v1, p3

    :goto_e
    if-ge p2, v0, :cond_22

    .line 585
    aget-byte v2, p1, p2

    .line 586
    invoke-static {v2}, Lads_mobile_sdk/hx3$a;->-$$Nest$smb(B)Z

    move-result v3

    if-nez v3, :cond_19

    goto :goto_22

    :cond_19
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v3, v1, 0x1

    .line 590
    invoke-static {v2, v5, v1}, Lads_mobile_sdk/hx3$a;->-$$Nest$sma(B[CI)V

    move v1, v3

    goto :goto_e

    :cond_22
    :goto_22
    move v6, v1

    :cond_23
    :goto_23
    if-ge p2, v0, :cond_9c

    add-int/lit8 v1, p2, 0x1

    move v2, v1

    .line 594
    aget-byte v1, p1, p2

    .line 595
    invoke-static {v1}, Lads_mobile_sdk/hx3$a;->-$$Nest$smb(B)Z

    move-result v3

    if-eqz v3, :cond_4b

    add-int/lit8 p2, v6, 0x1

    .line 596
    invoke-static {v1, v5, v6}, Lads_mobile_sdk/hx3$a;->-$$Nest$sma(B[CI)V

    move v6, p2

    move p2, v2

    :goto_37
    if-ge p2, v0, :cond_23

    .line 600
    aget-byte v1, p1, p2

    .line 601
    invoke-static {v1}, Lads_mobile_sdk/hx3$a;->-$$Nest$smb(B)Z

    move-result v2

    if-nez v2, :cond_42

    goto :goto_23

    :cond_42
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v2, v6, 0x1

    .line 605
    invoke-static {v1, v5, v6}, Lads_mobile_sdk/hx3$a;->-$$Nest$sma(B[CI)V

    move v6, v2

    goto :goto_37

    .line 607
    :cond_4b
    invoke-static {v1}, Lads_mobile_sdk/hx3$a;->-$$Nest$smd(B)Z

    move-result v3

    if-eqz v3, :cond_63

    if-ge v2, v0, :cond_5e

    add-int/lit8 p2, p2, 0x2

    .line 611
    aget-byte v2, p1, v2

    add-int/lit8 v3, v6, 0x1

    invoke-static {v1, v2, v5, v6}, Lads_mobile_sdk/hx3$a;->-$$Nest$sma(BB[CI)V

    move v6, v3

    goto :goto_23

    .line 612
    :cond_5e
    invoke-static {}, Lads_mobile_sdk/np1;->d()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1

    .line 615
    :cond_63
    invoke-static {v1}, Lads_mobile_sdk/hx3$a;->-$$Nest$smc(B)Z

    move-result v3

    if-eqz v3, :cond_81

    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_7c

    add-int/lit8 v3, p2, 0x2

    .line 619
    aget-byte v2, p1, v2

    add-int/lit8 p2, p2, 0x3

    aget-byte v3, p1, v3

    add-int/lit8 v4, v6, 0x1

    invoke-static {v1, v2, v3, v5, v6}, Lads_mobile_sdk/hx3$a;->-$$Nest$sma(BBB[CI)V

    move v6, v4

    goto :goto_23

    .line 620
    :cond_7c
    invoke-static {}, Lads_mobile_sdk/np1;->d()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1

    :cond_81
    add-int/lit8 v3, v0, -0x2

    if-ge v2, v3, :cond_97

    add-int/lit8 v3, p2, 0x2

    .line 632
    aget-byte v2, p1, v2

    add-int/lit8 v4, p2, 0x3

    aget-byte v3, p1, v3

    add-int/lit8 p2, p2, 0x4

    aget-byte v4, p1, v4

    invoke-static/range {v1 .. v6}, Lads_mobile_sdk/hx3$a;->-$$Nest$sma(BBBB[CI)V

    add-int/lit8 v6, v6, 0x2

    goto :goto_23

    .line 633
    :cond_97
    invoke-static {}, Lads_mobile_sdk/np1;->d()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1

    .line 647
    :cond_9c
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v5, p3, v6}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 648
    :cond_a2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    array-length p1, p1

    .line 649
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "buffer length=%d, index=%d, size=%d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

###### Class ads_mobile_sdk.hx3.c (ads_mobile_sdk.hx3$c)
.class public abstract Lads_mobile_sdk/hx3$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/hx3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .registers 7

    .line 527
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_12

    .line 532
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_12

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_12
    move v2, v0

    :goto_13
    if-ge v1, v0, :cond_33

    .line 538
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x800

    if-ge v3, v4, :cond_25

    rsub-int/lit8 v3, v3, 0x7f

    ushr-int/lit8 v3, v3, 0x1f

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 543
    :cond_25
    :try_start_25
    invoke-static {p1, v1}, Lads_mobile_sdk/hx3;->-$$Nest$sma(Ljava/lang/String;I)I

    move-result p1
    :try_end_29
    .catch Lads_mobile_sdk/hx3$f; {:try_start_25 .. :try_end_29} :catch_2b

    add-int/2addr v2, p1

    goto :goto_33

    .line 549
    :catch_2b
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p1, p1

    return p1

    :cond_33
    :goto_33
    if-lt v2, v0, :cond_36

    return v2

    .line 557
    :cond_36
    new-instance p1, Ljava/lang/IllegalArgumentException;

    int-to-long v0, v2

    const-wide v2, 0x100000000L

    add-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UTF-8 length does not fit in int: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract a(Ljava/lang/String;[BII)I
.end method

.method public abstract a([BII)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation
.end method

.method public abstract a()Z
.end method

.method public b(Ljava/lang/String;[BII)I
    .registers 6

    .line 445
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 446
    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt v0, p4, :cond_12

    .line 450
    array-length p4, p1

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 451
    array-length p1, p1

    add-int/2addr p3, p1

    return p3

    .line 452
    :cond_12
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Not enough space in output buffer to encode UTF-8 string"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class ads_mobile_sdk.hx3.d (ads_mobile_sdk.hx3$d)
.class public Lads_mobile_sdk/hx3$d;
.super Lads_mobile_sdk/hx3$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/hx3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 772
    invoke-direct {p0}, Lads_mobile_sdk/hx3$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;[BII)I
    .registers 5

    .line 813
    invoke-virtual {p0, p1, p2, p3, p4}, Lads_mobile_sdk/hx3$c;->b(Ljava/lang/String;[BII)I

    move-result p1

    return p1
.end method

.method public a([BII)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    .line 815
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, p2, p3, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const v2, 0xfffd

    .line 819
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_11

    goto :goto_20

    .line 829
    :cond_11
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    add-int/2addr p3, p2

    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 830
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_21

    :goto_20
    return-object v0

    .line 835
    :cond_21
    invoke-static {}, Lads_mobile_sdk/np1;->d()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1
.end method

.method public a()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

###### Class ads_mobile_sdk.hx3.e (ads_mobile_sdk.hx3$e)
.class final Lads_mobile_sdk/hx3$e;
.super Lads_mobile_sdk/hx3$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/hx3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field private static final a:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Lads_mobile_sdk/hx3$e;->b()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lads_mobile_sdk/hx3$e;->a:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 830
    invoke-direct {p0}, Lads_mobile_sdk/hx3$d;-><init>()V

    return-void
.end method

.method private static b()Ljava/lang/reflect/Method;
    .registers 3

    .line 1
    :try_start_0
    const-class v0, Ljava/lang/String;

    const-string v1, "encodedLength"

    const-class v2, Ljava/nio/charset/Charset;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static c()Z
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/hx3$e;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .registers 4

    .line 1
    :try_start_0
    sget-object v0, Lads_mobile_sdk/hx3$e;->a:Ljava/lang/reflect/Method;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_12
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_12} :catch_13

    return p1

    :catch_13
    move-exception p1

    .line 3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

###### Class ads_mobile_sdk.hx3.f (ads_mobile_sdk.hx3$f)
.class public Lads_mobile_sdk/hx3$f;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/hx3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .registers 5

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unpaired surrogate at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " of "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
