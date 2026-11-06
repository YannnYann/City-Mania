###### Class vm2.lib.StringLib (vm2.lib.StringLib)
.class public Lvm2/lib/StringLib;
.super Lvm2/lib/TwoArgFunction;
.source "StringLib.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvm2/lib/StringLib$_byte;,
        Lvm2/lib/StringLib$_char;,
        Lvm2/lib/StringLib$dump;,
        Lvm2/lib/StringLib$find;,
        Lvm2/lib/StringLib$format;,
        Lvm2/lib/StringLib$gmatch;,
        Lvm2/lib/StringLib$gsub;,
        Lvm2/lib/StringLib$len;,
        Lvm2/lib/StringLib$lower;,
        Lvm2/lib/StringLib$match;,
        Lvm2/lib/StringLib$rep;,
        Lvm2/lib/StringLib$reverse;,
        Lvm2/lib/StringLib$sub;,
        Lvm2/lib/StringLib$upper;,
        Lvm2/lib/StringLib$MatchState;,
        Lvm2/lib/StringLib$GMatchAux;,
        Lvm2/lib/StringLib$FormatDesc;
    }
.end annotation


# static fields
.field private static final CAP_POSITION:I = -0x2

.field private static final CAP_UNFINISHED:I = -0x1

.field static final CHAR_TABLE:[B

.field private static final FLAGS:Ljava/lang/String; = "-+ #0"

.field private static final L_ESC:I = 0x25

.field private static final MASK_ALPHA:B = 0x1t

.field private static final MASK_CONTROL:B = 0x40t

.field private static final MASK_DIGIT:B = 0x8t

.field private static final MASK_HEXDIGIT:B = -0x80t

.field private static final MASK_LOWERCASE:B = 0x2t

.field private static final MASK_PUNCT:B = 0x10t

.field private static final MASK_SPACE:B = 0x20t

.field private static final MASK_UPPERCASE:B = 0x4t

.field private static final MAXCCALLS:I = 0xc8

.field private static final MAX_CAPTURES:I = 0x20

.field private static final SPECIALS:Lvm2/LuaString;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 804
    const-string v0, "^$*+?.([%-"

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    sput-object v0, Lvm2/lib/StringLib;->SPECIALS:Lvm2/LuaString;

    const/16 v0, 0x100

    .line 824
    new-array v0, v0, [B

    sput-object v0, Lvm2/lib/StringLib;->CHAR_TABLE:[B

    const/4 v0, 0x0

    move v1, v0

    :goto_10
    const/16 v2, 0x80

    const/16 v3, 0x20

    if-ge v1, v2, :cond_98

    int-to-char v2, v1

    .line 828
    sget-object v4, Lvm2/lib/StringLib;->CHAR_TABLE:[B

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_22

    const/16 v5, 0x8

    goto :goto_23

    :cond_22
    move v5, v0

    .line 829
    :goto_23
    invoke-static {v2}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v6

    if-eqz v6, :cond_2b

    const/4 v6, 0x2

    goto :goto_2c

    :cond_2b
    move v6, v0

    :goto_2c
    or-int/2addr v5, v6

    .line 830
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    if-eqz v6, :cond_35

    const/4 v6, 0x4

    goto :goto_36

    :cond_35
    move v6, v0

    :goto_36
    or-int/2addr v5, v6

    const/16 v6, 0x40

    if-lt v2, v3, :cond_42

    const/16 v3, 0x7f

    if-ne v2, v3, :cond_40

    goto :goto_42

    :cond_40
    move v3, v0

    goto :goto_43

    :cond_42
    :goto_42
    move v3, v6

    :goto_43
    or-int/2addr v3, v5

    int-to-byte v3, v3

    .line 831
    aput-byte v3, v4, v1

    const/16 v5, 0x61

    if-lt v2, v5, :cond_4f

    const/16 v5, 0x66

    if-le v2, v5, :cond_5f

    :cond_4f
    const/16 v5, 0x41

    if-lt v2, v5, :cond_57

    const/16 v5, 0x46

    if-le v2, v5, :cond_5f

    :cond_57
    const/16 v5, 0x30

    if-lt v2, v5, :cond_64

    const/16 v5, 0x39

    if-gt v2, v5, :cond_64

    :cond_5f
    or-int/lit8 v3, v3, -0x80

    int-to-byte v3, v3

    .line 833
    aput-byte v3, v4, v1

    :cond_64
    const/16 v3, 0x21

    if-lt v2, v3, :cond_6c

    const/16 v3, 0x2f

    if-le v2, v3, :cond_82

    :cond_6c
    const/16 v3, 0x3a

    if-lt v2, v3, :cond_72

    if-le v2, v6, :cond_82

    :cond_72
    const/16 v3, 0x5b

    if-lt v2, v3, :cond_7a

    const/16 v3, 0x60

    if-le v2, v3, :cond_82

    :cond_7a
    const/16 v3, 0x7b

    if-lt v2, v3, :cond_89

    const/16 v3, 0x7e

    if-gt v2, v3, :cond_89

    .line 836
    :cond_82
    aget-byte v2, v4, v1

    or-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v4, v1

    .line 838
    :cond_89
    aget-byte v2, v4, v1

    and-int/lit8 v3, v2, 0x6

    if-eqz v3, :cond_94

    or-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    .line 839
    aput-byte v2, v4, v1

    :cond_94
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_10

    .line 843
    :cond_98
    sget-object v0, Lvm2/lib/StringLib;->CHAR_TABLE:[B

    aput-byte v3, v0, v3

    const/16 v1, 0xd

    .line 844
    aget-byte v2, v0, v1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    .line 845
    aget-byte v2, v0, v1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    .line 846
    aget-byte v2, v0, v1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    .line 847
    aget-byte v2, v0, v1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    .line 848
    aget-byte v2, v0, v1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method

.method public static addquoted(Lvm2/Buffer;Lvm2/LuaString;)V
    .registers 9

    const/16 v0, 0x22

    .line 306
    invoke-virtual {p0, v0}, Lvm2/Buffer;->append(B)Lvm2/Buffer;

    .line 307
    invoke-virtual {p1}, Lvm2/LuaString;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_66

    .line 308
    invoke-virtual {p1, v2}, Lvm2/LuaString;->luaByte(I)I

    move-result v3

    const/16 v4, 0x5c

    const/16 v5, 0xa

    if-eq v3, v5, :cond_5c

    if-eq v3, v0, :cond_5c

    if-eq v3, v4, :cond_5c

    const/16 v5, 0x1f

    if-le v3, v5, :cond_28

    const/16 v5, 0x7f

    if-ne v3, v5, :cond_23

    goto :goto_28

    :cond_23
    int-to-byte v3, v3

    .line 324
    invoke-virtual {p0, v3}, Lvm2/Buffer;->append(B)Lvm2/Buffer;

    goto :goto_63

    .line 315
    :cond_28
    :goto_28
    invoke-virtual {p0, v4}, Lvm2/Buffer;->append(B)Lvm2/Buffer;

    add-int/lit8 v4, v2, 0x1

    if-eq v4, v1, :cond_54

    .line 316
    invoke-virtual {p1, v4}, Lvm2/LuaString;->luaByte(I)I

    move-result v5

    const/16 v6, 0x30

    if-lt v5, v6, :cond_54

    invoke-virtual {p1, v4}, Lvm2/LuaString;->luaByte(I)I

    move-result v4

    const/16 v5, 0x39

    if-le v4, v5, :cond_40

    goto :goto_54

    .line 319
    :cond_40
    invoke-virtual {p0, v6}, Lvm2/Buffer;->append(B)Lvm2/Buffer;

    .line 320
    div-int/lit8 v4, v3, 0xa

    add-int/2addr v4, v6

    int-to-char v4, v4

    int-to-byte v4, v4

    invoke-virtual {p0, v4}, Lvm2/Buffer;->append(B)Lvm2/Buffer;

    .line 321
    rem-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v6

    int-to-char v3, v3

    int-to-byte v3, v3

    invoke-virtual {p0, v3}, Lvm2/Buffer;->append(B)Lvm2/Buffer;

    goto :goto_63

    .line 317
    :cond_54
    :goto_54
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lvm2/Buffer;->append(Ljava/lang/String;)Lvm2/Buffer;

    goto :goto_63

    .line 310
    :cond_5c
    invoke-virtual {p0, v4}, Lvm2/Buffer;->append(B)Lvm2/Buffer;

    int-to-byte v3, v3

    .line 311
    invoke-virtual {p0, v3}, Lvm2/Buffer;->append(B)Lvm2/Buffer;

    :goto_63
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 329
    :cond_66
    invoke-virtual {p0, v0}, Lvm2/Buffer;->append(B)Lvm2/Buffer;

    return-void
.end method

.method public static posrelat(II)I
    .registers 2

    .line 0
    if-ltz p0, :cond_3

    return p0

    :cond_3
    add-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public static str_find_aux(Lvm2/Varargs;Z)Lvm2/Varargs;
    .registers 11

    const/4 v0, 0x1

    .line 754
    invoke-virtual {p0, v0}, Lvm2/Varargs;->checkstring(I)Lvm2/LuaString;

    move-result-object v1

    const/4 v2, 0x2

    .line 755
    invoke-virtual {p0, v2}, Lvm2/Varargs;->checkstring(I)Lvm2/LuaString;

    move-result-object v2

    const/4 v3, 0x3

    .line 756
    invoke-virtual {p0, v3, v0}, Lvm2/Varargs;->optint(II)I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_1d

    add-int/lit8 v3, v3, -0x1

    .line 759
    invoke-virtual {v1}, Lvm2/LuaString;->length()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_28

    :cond_1d
    if-gez v3, :cond_28

    .line 761
    invoke-virtual {v1}, Lvm2/LuaString;->length()I

    move-result v5

    add-int/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_28
    :goto_28
    const/4 v5, -0x1

    if-eqz p1, :cond_58

    const/4 v6, 0x4

    .line 764
    invoke-virtual {p0, v6}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v6

    invoke-virtual {v6}, Lvm2/LuaValue;->toboolean()Z

    move-result v6

    if-nez v6, :cond_3e

    sget-object v6, Lvm2/lib/StringLib;->SPECIALS:Lvm2/LuaString;

    invoke-virtual {v2, v6}, Lvm2/LuaString;->indexOfAny(Lvm2/LuaString;)I

    move-result v6

    if-ne v6, v5, :cond_58

    .line 767
    :cond_3e
    invoke-virtual {v1, v2, v3}, Lvm2/LuaString;->indexOf(Lvm2/LuaString;I)I

    move-result p0

    if-eq p0, v5, :cond_a0

    add-int/lit8 p1, p0, 0x1

    .line 769
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    invoke-virtual {v2}, Lvm2/LuaString;->length()I

    move-result v0

    add-int/2addr p0, v0

    invoke-static {p0}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p0

    invoke-static {p1, p0}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p0

    return-object p0

    .line 772
    :cond_58
    new-instance v6, Lvm2/lib/StringLib$MatchState;

    invoke-direct {v6, p0, v1, v2}, Lvm2/lib/StringLib$MatchState;-><init>(Lvm2/Varargs;Lvm2/LuaString;Lvm2/LuaString;)V

    .line 776
    invoke-virtual {v2}, Lvm2/LuaString;->length()I

    move-result p0

    if-lez p0, :cond_6e

    invoke-virtual {v2, v4}, Lvm2/LuaString;->luaByte(I)I

    move-result p0

    const/16 v2, 0x5e

    if-ne p0, v2, :cond_6e

    move p0, v0

    :goto_6c
    move v2, p0

    goto :goto_70

    :cond_6e
    move p0, v4

    goto :goto_6c

    .line 784
    :goto_70
    invoke-virtual {v6}, Lvm2/lib/StringLib$MatchState;->reset()V

    .line 785
    invoke-virtual {v6, v3, v2}, Lvm2/lib/StringLib$MatchState;->match(II)I

    move-result v7

    if-eq v7, v5, :cond_93

    if-eqz p1, :cond_8e

    add-int/lit8 p0, v3, 0x1

    .line 787
    invoke-static {p0}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p0

    invoke-static {v7}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    invoke-virtual {v6, v4, v3, v7}, Lvm2/lib/StringLib$MatchState;->push_captures(ZII)Lvm2/Varargs;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p0

    return-object p0

    .line 789
    :cond_8e
    invoke-virtual {v6, v0, v3, v7}, Lvm2/lib/StringLib$MatchState;->push_captures(ZII)Lvm2/Varargs;

    move-result-object p0

    return-object p0

    :cond_93
    add-int/lit8 v7, v3, 0x1

    .line 792
    invoke-virtual {v1}, Lvm2/LuaString;->length()I

    move-result v8

    if-ge v3, v8, :cond_a0

    if-eqz p0, :cond_9e

    goto :goto_a0

    :cond_9e
    move v3, v7

    goto :goto_70

    .line 794
    :cond_a0
    :goto_a0
    sget-object p0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p0
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    .line 86
    new-instance p1, Lvm2/LuaTable;

    invoke-direct {p1}, Lvm2/LuaTable;-><init>()V

    .line 87
    new-instance v0, Lvm2/lib/StringLib$_byte;

    invoke-direct {v0}, Lvm2/lib/StringLib$_byte;-><init>()V

    const-string v1, "byte"

    invoke-virtual {p1, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 88
    new-instance v0, Lvm2/lib/StringLib$_char;

    invoke-direct {v0}, Lvm2/lib/StringLib$_char;-><init>()V

    const-string v1, "char"

    invoke-virtual {p1, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 89
    new-instance v0, Lvm2/lib/StringLib$dump;

    invoke-direct {v0}, Lvm2/lib/StringLib$dump;-><init>()V

    const-string v1, "dump"

    invoke-virtual {p1, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 90
    new-instance v0, Lvm2/lib/StringLib$find;

    invoke-direct {v0}, Lvm2/lib/StringLib$find;-><init>()V

    const-string v1, "find"

    invoke-virtual {p1, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 91
    new-instance v0, Lvm2/lib/StringLib$format;

    invoke-direct {v0, p0}, Lvm2/lib/StringLib$format;-><init>(Lvm2/lib/StringLib;)V

    const-string v1, "format"

    invoke-virtual {p1, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 92
    new-instance v0, Lvm2/lib/StringLib$gmatch;

    invoke-direct {v0}, Lvm2/lib/StringLib$gmatch;-><init>()V

    const-string v1, "gmatch"

    invoke-virtual {p1, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 93
    new-instance v0, Lvm2/lib/StringLib$gsub;

    invoke-direct {v0}, Lvm2/lib/StringLib$gsub;-><init>()V

    const-string v1, "gsub"

    invoke-virtual {p1, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 94
    new-instance v0, Lvm2/lib/StringLib$len;

    invoke-direct {v0}, Lvm2/lib/StringLib$len;-><init>()V

    const-string v1, "len"

    invoke-virtual {p1, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 95
    new-instance v0, Lvm2/lib/StringLib$lower;

    invoke-direct {v0}, Lvm2/lib/StringLib$lower;-><init>()V

    const-string v1, "lower"

    invoke-virtual {p1, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 96
    new-instance v0, Lvm2/lib/StringLib$match;

    invoke-direct {v0}, Lvm2/lib/StringLib$match;-><init>()V

    const-string v1, "match"

    invoke-virtual {p1, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 97
    new-instance v0, Lvm2/lib/StringLib$rep;

    invoke-direct {v0}, Lvm2/lib/StringLib$rep;-><init>()V

    const-string v1, "rep"

    invoke-virtual {p1, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 98
    new-instance v0, Lvm2/lib/StringLib$reverse;

    invoke-direct {v0}, Lvm2/lib/StringLib$reverse;-><init>()V

    const-string v1, "reverse"

    invoke-virtual {p1, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 99
    new-instance v0, Lvm2/lib/StringLib$sub;

    invoke-direct {v0}, Lvm2/lib/StringLib$sub;-><init>()V

    const-string v1, "sub"

    invoke-virtual {p1, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 100
    new-instance v0, Lvm2/lib/StringLib$upper;

    invoke-direct {v0}, Lvm2/lib/StringLib$upper;-><init>()V

    const-string v1, "upper"

    invoke-virtual {p1, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 102
    const-string v0, "string"

    invoke-virtual {p2, v0, p1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 103
    const-string v1, "package"

    invoke-virtual {p2, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lvm2/LuaValue;->isnil()Z

    move-result v2

    if-nez v2, :cond_af

    invoke-virtual {p2, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p2

    const-string v1, "loaded"

    invoke-virtual {p2, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 104
    :cond_af
    sget-object p2, Lvm2/LuaString;->s_metatable:Lvm2/LuaValue;

    if-nez p2, :cond_c4

    const/4 p2, 0x2

    .line 105
    new-array p2, p2, [Lvm2/LuaValue;

    sget-object v0, Lvm2/LuaValue;->INDEX:Lvm2/LuaString;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const/4 v0, 0x1

    aput-object p1, p2, v0

    invoke-static {p2}, Lvm2/LuaValue;->tableOf([Lvm2/LuaValue;)Lvm2/LuaTable;

    move-result-object p2

    sput-object p2, Lvm2/LuaString;->s_metatable:Lvm2/LuaValue;

    :cond_c4
    return-object p1
.end method

.method public format(Ljava/lang/String;D)Ljava/lang/String;
    .registers 4

    .line 492
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.StringLib.FormatDesc (vm2.lib.StringLib$FormatDesc)
.class Lvm2/lib/StringLib$FormatDesc;
.super Ljava/lang/Object;
.source "StringLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/StringLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FormatDesc"
.end annotation


# static fields
.field private static final MAX_FLAGS:I = 0x5


# instance fields
.field private alternateForm:Z

.field public final conversion:I

.field private explicitPlus:Z

.field private leftAdjust:Z

.field public final length:I

.field precision:I

.field private space:Z

.field public final src:Ljava/lang/String;

.field final synthetic this$0:Lvm2/lib/StringLib;

.field private width:I

.field private zeroPad:Z


# direct methods
.method public constructor <init>(Lvm2/lib/StringLib;Lvm2/Varargs;Lvm2/LuaString;I)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x10
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 351
    iput-object p1, p0, Lvm2/lib/StringLib$FormatDesc;->this$0:Lvm2/lib/StringLib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    invoke-virtual {p3}, Lvm2/LuaString;->length()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    move v3, p2

    move v2, p4

    move v1, v0

    :goto_e
    if-eqz v1, :cond_42

    if-ge v2, p1, :cond_1c

    add-int/lit8 v3, v2, 0x1

    .line 357
    invoke-virtual {p3, v2}, Lvm2/LuaString;->luaByte(I)I

    move-result v2

    move v5, v3

    move v3, v2

    move v2, v5

    goto :goto_1d

    :cond_1c
    move v3, p2

    :goto_1d
    const/16 v4, 0x20

    if-eq v3, v4, :cond_3f

    const/16 v4, 0x23

    if-eq v3, v4, :cond_3c

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_39

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_36

    const/16 v4, 0x30

    if-eq v3, v4, :cond_33

    move v1, p2

    goto :goto_e

    .line 362
    :cond_33
    iput-boolean v0, p0, Lvm2/lib/StringLib$FormatDesc;->zeroPad:Z

    goto :goto_e

    .line 358
    :cond_36
    iput-boolean v0, p0, Lvm2/lib/StringLib$FormatDesc;->leftAdjust:Z

    goto :goto_e

    .line 359
    :cond_39
    iput-boolean v0, p0, Lvm2/lib/StringLib$FormatDesc;->explicitPlus:Z

    goto :goto_e

    .line 361
    :cond_3c
    iput-boolean v0, p0, Lvm2/lib/StringLib$FormatDesc;->alternateForm:Z

    goto :goto_e

    .line 360
    :cond_3f
    iput-boolean v0, p0, Lvm2/lib/StringLib$FormatDesc;->space:Z

    goto :goto_e

    :cond_42
    sub-int v1, v2, p4

    const/4 v4, 0x5

    if-le v1, v4, :cond_4c

    .line 367
    const-string v1, "invalid format (repeated flags)"

    invoke-static {v1}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    :cond_4c
    const/4 v1, -0x1

    .line 369
    iput v1, p0, Lvm2/lib/StringLib$FormatDesc;->width:I

    int-to-char v4, v3

    .line 370
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_84

    add-int/lit8 v3, v3, -0x30

    .line 371
    iput v3, p0, Lvm2/lib/StringLib$FormatDesc;->width:I

    if-ge v2, p1, :cond_66

    add-int/lit8 v3, v2, 0x1

    .line 372
    invoke-virtual {p3, v2}, Lvm2/LuaString;->luaByte(I)I

    move-result v2

    move v5, v3

    move v3, v2

    move v2, v5

    goto :goto_67

    :cond_66
    move v3, p2

    :goto_67
    int-to-char v4, v3

    .line 373
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_84

    .line 374
    iget v4, p0, Lvm2/lib/StringLib$FormatDesc;->width:I

    mul-int/lit8 v4, v4, 0xa

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v4, v3

    iput v4, p0, Lvm2/lib/StringLib$FormatDesc;->width:I

    if-ge v2, p1, :cond_83

    add-int/lit8 v3, v2, 0x1

    .line 375
    invoke-virtual {p3, v2}, Lvm2/LuaString;->luaByte(I)I

    move-result v2

    move v5, v3

    move v3, v2

    move v2, v5

    goto :goto_84

    :cond_83
    move v3, p2

    .line 379
    :cond_84
    :goto_84
    iput v1, p0, Lvm2/lib/StringLib$FormatDesc;->precision:I

    const/16 v1, 0x2e

    if-ne v3, v1, :cond_c7

    if-ge v2, p1, :cond_95

    add-int/lit8 v1, v2, 0x1

    .line 381
    invoke-virtual {p3, v2}, Lvm2/LuaString;->luaByte(I)I

    move-result v2

    move v3, v2

    move v2, v1

    goto :goto_96

    :cond_95
    move v3, p2

    :goto_96
    int-to-char v1, v3

    .line 382
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_c7

    add-int/lit8 v3, v3, -0x30

    .line 383
    iput v3, p0, Lvm2/lib/StringLib$FormatDesc;->precision:I

    if-ge v2, p1, :cond_ac

    add-int/lit8 v1, v2, 0x1

    .line 384
    invoke-virtual {p3, v2}, Lvm2/LuaString;->luaByte(I)I

    move-result v2

    move v3, v2

    move v2, v1

    goto :goto_ad

    :cond_ac
    move v3, p2

    :goto_ad
    int-to-char v1, v3

    .line 385
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_c7

    .line 386
    iget v1, p0, Lvm2/lib/StringLib$FormatDesc;->precision:I

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v1, v3

    iput v1, p0, Lvm2/lib/StringLib$FormatDesc;->precision:I

    if-ge v2, p1, :cond_c6

    add-int/lit8 p1, v2, 0x1

    .line 387
    invoke-virtual {p3, v2}, Lvm2/LuaString;->luaByte(I)I

    move-result p2

    move v2, p1

    :cond_c6
    move v3, p2

    :cond_c7
    int-to-char p1, v3

    .line 392
    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result p1

    if-eqz p1, :cond_d3

    .line 393
    const-string p1, "invalid format (width or precision too long)"

    invoke-static {p1}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    .line 395
    :cond_d3
    iget-boolean p1, p0, Lvm2/lib/StringLib$FormatDesc;->zeroPad:Z

    iget-boolean p2, p0, Lvm2/lib/StringLib$FormatDesc;->leftAdjust:Z

    xor-int/2addr p2, v0

    and-int/2addr p1, p2

    iput-boolean p1, p0, Lvm2/lib/StringLib$FormatDesc;->zeroPad:Z

    .line 396
    iput v3, p0, Lvm2/lib/StringLib$FormatDesc;->conversion:I

    sub-int p1, v2, p4

    .line 397
    iput p1, p0, Lvm2/lib/StringLib$FormatDesc;->length:I

    sub-int/2addr p4, v0

    .line 398
    invoke-virtual {p3, p4, v2}, Lvm2/LuaString;->substring(II)Lvm2/LuaString;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaString;->tojstring()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lvm2/lib/StringLib$FormatDesc;->src:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public format(Lvm2/Buffer;B)V
    .registers 3

    .line 403
    invoke-virtual {p1, p2}, Lvm2/Buffer;->append(B)Lvm2/Buffer;

    return-void
.end method

.method public format(Lvm2/Buffer;D)V
    .registers 6

    .line 474
    iget-object v0, p0, Lvm2/lib/StringLib$FormatDesc;->this$0:Lvm2/lib/StringLib;

    iget-object v1, p0, Lvm2/lib/StringLib$FormatDesc;->src:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, p3}, Lvm2/lib/StringLib;->format(Ljava/lang/String;D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lvm2/Buffer;->append(Ljava/lang/String;)Lvm2/Buffer;

    return-void
.end method

.method public format(Lvm2/Buffer;J)V
    .registers 9

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_d

    .line 409
    iget v1, p0, Lvm2/lib/StringLib$FormatDesc;->precision:I

    if-nez v1, :cond_d

    .line 410
    const-string p2, ""

    goto :goto_2f

    .line 413
    :cond_d
    iget v1, p0, Lvm2/lib/StringLib$FormatDesc;->conversion:I

    const/16 v2, 0x58

    if-eq v1, v2, :cond_21

    const/16 v3, 0x6f

    if-eq v1, v3, :cond_1e

    const/16 v3, 0x78

    if-eq v1, v3, :cond_21

    const/16 v1, 0xa

    goto :goto_23

    :cond_1e
    const/16 v1, 0x8

    goto :goto_23

    :cond_21
    const/16 v1, 0x10

    .line 425
    :goto_23
    invoke-static {p2, p3, v1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p2

    .line 426
    iget p3, p0, Lvm2/lib/StringLib$FormatDesc;->conversion:I

    if-ne p3, v2, :cond_2f

    .line 427
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    .line 430
    :cond_2f
    :goto_2f
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-gez v0, :cond_3b

    add-int/lit8 v1, p3, -0x1

    move v4, v1

    move v1, p3

    move p3, v4

    goto :goto_48

    .line 436
    :cond_3b
    iget-boolean v1, p0, Lvm2/lib/StringLib$FormatDesc;->explicitPlus:Z

    if-nez v1, :cond_46

    iget-boolean v1, p0, Lvm2/lib/StringLib$FormatDesc;->space:Z

    if-eqz v1, :cond_44

    goto :goto_46

    :cond_44
    move v1, p3

    goto :goto_48

    :cond_46
    :goto_46
    add-int/lit8 v1, p3, 0x1

    .line 440
    :goto_48
    iget v2, p0, Lvm2/lib/StringLib$FormatDesc;->precision:I

    const/4 v3, 0x0

    if-le v2, p3, :cond_4f

    sub-int/2addr v2, p3

    goto :goto_5e

    :cond_4f
    const/4 p3, -0x1

    if-ne v2, p3, :cond_5d

    .line 442
    iget-boolean p3, p0, Lvm2/lib/StringLib$FormatDesc;->zeroPad:Z

    if-eqz p3, :cond_5d

    iget p3, p0, Lvm2/lib/StringLib$FormatDesc;->width:I

    if-le p3, v1, :cond_5d

    sub-int v2, p3, v1

    goto :goto_5e

    :cond_5d
    move v2, v3

    :goto_5e
    add-int/2addr v1, v2

    .line 448
    iget p3, p0, Lvm2/lib/StringLib$FormatDesc;->width:I

    if-le p3, v1, :cond_65

    sub-int v3, p3, v1

    .line 450
    :cond_65
    iget-boolean p3, p0, Lvm2/lib/StringLib$FormatDesc;->leftAdjust:Z

    const/16 v1, 0x20

    if-nez p3, :cond_6e

    .line 451
    invoke-virtual {p0, p1, v1, v3}, Lvm2/lib/StringLib$FormatDesc;->pad(Lvm2/Buffer;CI)V

    :cond_6e
    if-gez v0, :cond_7d

    if-lez v2, :cond_8e

    const/16 p3, 0x2d

    .line 455
    invoke-virtual {p1, p3}, Lvm2/Buffer;->append(B)Lvm2/Buffer;

    const/4 p3, 0x1

    .line 456
    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_8e

    .line 458
    :cond_7d
    iget-boolean p3, p0, Lvm2/lib/StringLib$FormatDesc;->explicitPlus:Z

    if-eqz p3, :cond_87

    const/16 p3, 0x2b

    .line 459
    invoke-virtual {p1, p3}, Lvm2/Buffer;->append(B)Lvm2/Buffer;

    goto :goto_8e

    .line 460
    :cond_87
    iget-boolean p3, p0, Lvm2/lib/StringLib$FormatDesc;->space:Z

    if-eqz p3, :cond_8e

    .line 461
    invoke-virtual {p1, v1}, Lvm2/Buffer;->append(B)Lvm2/Buffer;

    :cond_8e
    :goto_8e
    if-lez v2, :cond_95

    const/16 p3, 0x30

    .line 465
    invoke-virtual {p0, p1, p3, v2}, Lvm2/lib/StringLib$FormatDesc;->pad(Lvm2/Buffer;CI)V

    .line 467
    :cond_95
    invoke-virtual {p1, p2}, Lvm2/Buffer;->append(Ljava/lang/String;)Lvm2/Buffer;

    .line 469
    iget-boolean p2, p0, Lvm2/lib/StringLib$FormatDesc;->leftAdjust:Z

    if-eqz p2, :cond_9f

    .line 470
    invoke-virtual {p0, p1, v1, v3}, Lvm2/lib/StringLib$FormatDesc;->pad(Lvm2/Buffer;CI)V

    :cond_9f
    return-void
.end method

.method public format(Lvm2/Buffer;Lvm2/LuaString;)V
    .registers 6

    const/4 v0, 0x0

    .line 478
    invoke-virtual {p2, v0, v0}, Lvm2/LuaString;->indexOf(BI)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_c

    .line 480
    invoke-virtual {p2, v0, v1}, Lvm2/LuaString;->substring(II)Lvm2/LuaString;

    move-result-object p2

    .line 481
    :cond_c
    invoke-virtual {p1, p2}, Lvm2/Buffer;->append(Lvm2/LuaString;)Lvm2/Buffer;

    return-void
.end method

.method public final pad(Lvm2/Buffer;CI)V
    .registers 5

    int-to-byte p2, p2

    :goto_1
    add-int/lit8 v0, p3, -0x1

    if-lez p3, :cond_a

    .line 487
    invoke-virtual {p1, p2}, Lvm2/Buffer;->append(B)Lvm2/Buffer;

    move p3, v0

    goto :goto_1

    :cond_a
    return-void
.end method

###### Class vm2.lib.StringLib.GMatchAux (vm2.lib.StringLib$GMatchAux)
.class Lvm2/lib/StringLib$GMatchAux;
.super Lvm2/lib/VarArgFunction;
.source "StringLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/StringLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GMatchAux"
.end annotation


# instance fields
.field private lastmatch:I

.field private final ms:Lvm2/lib/StringLib$MatchState;

.field private soffset:I

.field private final srclen:I


# direct methods
.method public constructor <init>(Lvm2/Varargs;Lvm2/LuaString;Lvm2/LuaString;)V
    .registers 5

    .line 532
    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    .line 533
    invoke-virtual {p2}, Lvm2/LuaString;->length()I

    move-result v0

    iput v0, p0, Lvm2/lib/StringLib$GMatchAux;->srclen:I

    .line 534
    new-instance v0, Lvm2/lib/StringLib$MatchState;

    invoke-direct {v0, p1, p2, p3}, Lvm2/lib/StringLib$MatchState;-><init>(Lvm2/Varargs;Lvm2/LuaString;Lvm2/LuaString;)V

    iput-object v0, p0, Lvm2/lib/StringLib$GMatchAux;->ms:Lvm2/lib/StringLib$MatchState;

    const/4 p1, 0x0

    .line 535
    iput p1, p0, Lvm2/lib/StringLib$GMatchAux;->soffset:I

    const/4 p1, -0x1

    .line 536
    iput p1, p0, Lvm2/lib/StringLib$GMatchAux;->lastmatch:I

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 5

    .line 539
    :goto_0
    iget p1, p0, Lvm2/lib/StringLib$GMatchAux;->soffset:I

    iget v0, p0, Lvm2/lib/StringLib$GMatchAux;->srclen:I

    if-gt p1, v0, :cond_2e

    .line 540
    iget-object p1, p0, Lvm2/lib/StringLib$GMatchAux;->ms:Lvm2/lib/StringLib$MatchState;

    invoke-virtual {p1}, Lvm2/lib/StringLib$MatchState;->reset()V

    .line 541
    iget-object p1, p0, Lvm2/lib/StringLib$GMatchAux;->ms:Lvm2/lib/StringLib$MatchState;

    iget v0, p0, Lvm2/lib/StringLib$GMatchAux;->soffset:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lvm2/lib/StringLib$MatchState;->match(II)I

    move-result p1

    const/4 v0, 0x1

    if-ltz p1, :cond_28

    .line 542
    iget v1, p0, Lvm2/lib/StringLib$GMatchAux;->lastmatch:I

    if-eq p1, v1, :cond_28

    .line 543
    iget v1, p0, Lvm2/lib/StringLib$GMatchAux;->soffset:I

    .line 544
    iput p1, p0, Lvm2/lib/StringLib$GMatchAux;->soffset:I

    iput p1, p0, Lvm2/lib/StringLib$GMatchAux;->lastmatch:I

    .line 545
    iget-object v2, p0, Lvm2/lib/StringLib$GMatchAux;->ms:Lvm2/lib/StringLib$MatchState;

    invoke-virtual {v2, v0, v1, p1}, Lvm2/lib/StringLib$MatchState;->push_captures(ZII)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 539
    :cond_28
    iget p1, p0, Lvm2/lib/StringLib$GMatchAux;->soffset:I

    add-int/2addr p1, v0

    iput p1, p0, Lvm2/lib/StringLib$GMatchAux;->soffset:I

    goto :goto_0

    .line 548
    :cond_2e
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class vm2.lib.StringLib.MatchState (vm2.lib.StringLib$MatchState)
.class Lvm2/lib/StringLib$MatchState;
.super Ljava/lang/Object;
.source "StringLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/StringLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MatchState"
.end annotation


# instance fields
.field final args:Lvm2/Varargs;

.field cinit:[I

.field clen:[I

.field level:I

.field matchdepth:I

.field final p:Lvm2/LuaString;

.field final s:Lvm2/LuaString;


# direct methods
.method public constructor <init>(Lvm2/Varargs;Lvm2/LuaString;Lvm2/LuaString;)V
    .registers 4

    .line 860
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 861
    iput-object p2, p0, Lvm2/lib/StringLib$MatchState;->s:Lvm2/LuaString;

    .line 862
    iput-object p3, p0, Lvm2/lib/StringLib$MatchState;->p:Lvm2/LuaString;

    .line 863
    iput-object p1, p0, Lvm2/lib/StringLib$MatchState;->args:Lvm2/Varargs;

    const/4 p1, 0x0

    .line 864
    iput p1, p0, Lvm2/lib/StringLib$MatchState;->level:I

    const/16 p1, 0x20

    .line 865
    new-array p2, p1, [I

    iput-object p2, p0, Lvm2/lib/StringLib$MatchState;->cinit:[I

    .line 866
    new-array p1, p1, [I

    iput-object p1, p0, Lvm2/lib/StringLib$MatchState;->clen:[I

    const/16 p1, 0xc8

    .line 867
    iput p1, p0, Lvm2/lib/StringLib$MatchState;->matchdepth:I

    return-void
.end method

.method private add_s(Lvm2/Buffer;Lvm2/LuaString;II)V
    .registers 14

    .line 876
    invoke-virtual {p2}, Lvm2/LuaString;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_8a

    .line 878
    invoke-virtual {p2, v2}, Lvm2/LuaString;->luaByte(I)I

    move-result v3

    int-to-byte v3, v3

    const/16 v4, 0x25

    if-eq v3, v4, :cond_16

    .line 880
    invoke-virtual {p1, v3}, Lvm2/Buffer;->append(B)Lvm2/Buffer;

    goto/16 :goto_86

    :cond_16
    add-int/lit8 v3, v2, 0x1

    if-ge v3, v0, :cond_1f

    .line 883
    invoke-virtual {p2, v3}, Lvm2/LuaString;->luaByte(I)I

    move-result v5

    goto :goto_20

    :cond_1f
    move v5, v1

    :goto_20
    int-to-byte v5, v5

    int-to-char v6, v5

    .line 884
    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_6a

    if-eq v5, v4, :cond_66

    .line 885
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid use of \'%\' in replacement string: after \'%\' must be \'0\'-\'9\' or \'%\', but found "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v3, v0, :cond_5a

    .line 889
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "symbol \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v6, "\' with code "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " at pos "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5c

    .line 890
    :cond_5a
    const-string v2, "end of string"

    :goto_5c
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 885
    invoke-static {v2}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    .line 891
    :cond_66
    invoke-virtual {p1, v5}, Lvm2/Buffer;->append(B)Lvm2/Buffer;

    goto :goto_85

    :cond_6a
    const/16 v2, 0x30

    if-ne v5, v2, :cond_78

    .line 893
    iget-object v2, p0, Lvm2/lib/StringLib$MatchState;->s:Lvm2/LuaString;

    invoke-virtual {v2, p3, p4}, Lvm2/LuaString;->substring(II)Lvm2/LuaString;

    move-result-object v2

    invoke-virtual {p1, v2}, Lvm2/Buffer;->append(Lvm2/LuaString;)Lvm2/Buffer;

    goto :goto_85

    :cond_78
    add-int/lit8 v5, v5, -0x31

    .line 895
    invoke-direct {p0, v5, p3, p4}, Lvm2/lib/StringLib$MatchState;->push_onecapture(III)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lvm2/LuaValue;->strvalue()Lvm2/LuaString;

    move-result-object v2

    invoke-virtual {p1, v2}, Lvm2/Buffer;->append(Lvm2/LuaString;)Lvm2/Buffer;

    :goto_85
    move v2, v3

    :goto_86
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    :cond_8a
    return-void
.end method

.method private capture_to_close()I
    .registers 4

    .line 972
    iget v0, p0, Lvm2/lib/StringLib$MatchState;->level:I

    const/4 v1, -0x1

    add-int/2addr v0, v1

    :goto_4
    if-ltz v0, :cond_10

    .line 974
    iget-object v2, p0, Lvm2/lib/StringLib$MatchState;->clen:[I

    aget v2, v2, v0

    if-ne v2, v1, :cond_d

    return v0

    :cond_d
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 976
    :cond_10
    const-string v0, "invalid pattern capture"

    invoke-static {v0}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    const/4 v0, 0x0

    return v0
.end method

.method private check_capture(I)I
    .registers 5

    add-int/lit8 v0, p1, -0x31

    if-ltz v0, :cond_11

    .line 965
    iget v1, p0, Lvm2/lib/StringLib$MatchState;->level:I

    if-ge v0, v1, :cond_11

    iget-object v1, p0, Lvm2/lib/StringLib$MatchState;->clen:[I

    aget v1, v1, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_10

    goto :goto_11

    :cond_10
    return v0

    .line 966
    :cond_11
    :goto_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid capture index %"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, -0x30

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    return v0
.end method

.method public static match_class(II)Z
    .registers 7

    int-to-char v0, p1

    .line 1004
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    .line 1005
    sget-object v1, Lvm2/lib/StringLib;->CHAR_TABLE:[B

    aget-byte v1, v1, p0

    const/16 v2, 0x61

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_6e

    const/16 v2, 0x67

    if-eq v0, v2, :cond_69

    const/16 v2, 0x6c

    if-eq v0, v2, :cond_64

    const/16 v2, 0x70

    if-eq v0, v2, :cond_5f

    const/16 v2, 0x73

    if-eq v0, v2, :cond_5a

    const/16 v2, 0x75

    if-eq v0, v2, :cond_55

    const/16 v2, 0x7a

    if-eq v0, v2, :cond_52

    const/16 v2, 0x63

    if-eq v0, v2, :cond_4d

    const/16 v2, 0x64

    if-eq v0, v2, :cond_48

    const/16 v2, 0x77

    if-eq v0, v2, :cond_43

    const/16 v2, 0x78

    if-eq v0, v2, :cond_3b

    if-ne p1, p0, :cond_3a

    return v4

    :cond_3a
    return v3

    :cond_3b
    and-int/lit8 p0, v1, -0x80

    if-eqz p0, :cond_41

    :goto_3f
    move p0, v4

    goto :goto_73

    :cond_41
    move p0, v3

    goto :goto_73

    :cond_43
    and-int/lit8 p0, v1, 0x9

    if-eqz p0, :cond_41

    goto :goto_3f

    :cond_48
    and-int/lit8 p0, v1, 0x8

    if-eqz p0, :cond_41

    goto :goto_3f

    :cond_4d
    and-int/lit8 p0, v1, 0x40

    if-eqz p0, :cond_41

    goto :goto_3f

    :cond_52
    if-nez p0, :cond_41

    goto :goto_3f

    :cond_55
    and-int/lit8 p0, v1, 0x4

    if-eqz p0, :cond_41

    goto :goto_3f

    :cond_5a
    and-int/lit8 p0, v1, 0x20

    if-eqz p0, :cond_41

    goto :goto_3f

    :cond_5f
    and-int/lit8 p0, v1, 0x10

    if-eqz p0, :cond_41

    goto :goto_3f

    :cond_64
    and-int/lit8 p0, v1, 0x2

    if-eqz p0, :cond_41

    goto :goto_3f

    :cond_69
    and-int/lit8 p0, v1, 0x19

    if-eqz p0, :cond_41

    goto :goto_3f

    :cond_6e
    and-int/lit8 p0, v1, 0x1

    if-eqz p0, :cond_41

    goto :goto_3f

    :goto_73
    if-ne v0, p1, :cond_76

    return p0

    :cond_76
    if-nez p0, :cond_79

    return v4

    :cond_79
    return v3
.end method

.method private push_onecapture(III)Lvm2/LuaValue;
    .registers 5

    .line 943
    iget v0, p0, Lvm2/lib/StringLib$MatchState;->level:I

    if-lt p1, v0, :cond_25

    if-nez p1, :cond_d

    .line 945
    iget-object p1, p0, Lvm2/lib/StringLib$MatchState;->s:Lvm2/LuaString;

    invoke-virtual {p1, p2, p3}, Lvm2/LuaString;->substring(II)Lvm2/LuaString;

    move-result-object p1

    return-object p1

    .line 947
    :cond_d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "invalid capture index %"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    .line 950
    :cond_25
    iget-object p2, p0, Lvm2/lib/StringLib$MatchState;->clen:[I

    aget p2, p2, p1

    const/4 p3, -0x1

    if-ne p2, p3, :cond_33

    .line 952
    const-string p1, "unfinished capture"

    invoke-static {p1}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    :cond_33
    const/4 p3, -0x2

    if-ne p2, p3, :cond_41

    .line 955
    iget-object p2, p0, Lvm2/lib/StringLib$MatchState;->cinit:[I

    aget p1, p2, p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1

    .line 957
    :cond_41
    iget-object p3, p0, Lvm2/lib/StringLib$MatchState;->cinit:[I

    aget p1, p3, p1

    .line 958
    iget-object p3, p0, Lvm2/lib/StringLib$MatchState;->s:Lvm2/LuaString;

    add-int/2addr p2, p1

    invoke-virtual {p3, p1, p2}, Lvm2/LuaString;->substring(II)Lvm2/LuaString;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public add_value(Lvm2/Buffer;IILvm2/LuaValue;)V
    .registers 7

    .line 902
    invoke-virtual {p4}, Lvm2/LuaValue;->type()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2c

    const/4 v1, 0x4

    if-eq v0, v1, :cond_24

    const/4 v1, 0x5

    if-eq v0, v1, :cond_24

    const/4 v1, 0x7

    if-eq v0, v1, :cond_16

    .line 918
    const-string p1, "bad argument: string/function/table expected"

    invoke-static {p1}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    return-void

    :cond_16
    const/4 v0, 0x1

    .line 909
    invoke-virtual {p0, v0, p2, p3}, Lvm2/lib/StringLib$MatchState;->push_captures(ZII)Lvm2/Varargs;

    move-result-object v0

    invoke-virtual {p4, v0}, Lvm2/LuaValue;->invoke(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p4

    invoke-virtual {p4}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object p4

    goto :goto_35

    .line 905
    :cond_24
    invoke-virtual {p4}, Lvm2/LuaValue;->strvalue()Lvm2/LuaString;

    move-result-object p4

    invoke-direct {p0, p1, p4, p2, p3}, Lvm2/lib/StringLib$MatchState;->add_s(Lvm2/Buffer;Lvm2/LuaString;II)V

    return-void

    :cond_2c
    const/4 v0, 0x0

    .line 914
    invoke-direct {p0, v0, p2, p3}, Lvm2/lib/StringLib$MatchState;->push_onecapture(III)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {p4, v0}, Lvm2/LuaValue;->get(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p4

    .line 922
    :goto_35
    invoke-virtual {p4}, Lvm2/LuaValue;->toboolean()Z

    move-result v0

    if-nez v0, :cond_42

    .line 923
    iget-object p4, p0, Lvm2/lib/StringLib$MatchState;->s:Lvm2/LuaString;

    invoke-virtual {p4, p2, p3}, Lvm2/LuaString;->substring(II)Lvm2/LuaString;

    move-result-object p4

    goto :goto_65

    .line 924
    :cond_42
    invoke-virtual {p4}, Lvm2/LuaValue;->isstring()Z

    move-result p2

    if-nez p2, :cond_65

    .line 925
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "invalid replacement value (a "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lvm2/LuaValue;->typename()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    .line 927
    :cond_65
    :goto_65
    invoke-virtual {p4}, Lvm2/LuaValue;->strvalue()Lvm2/LuaString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lvm2/Buffer;->append(Lvm2/LuaString;)Lvm2/Buffer;

    return-void
.end method

.method public classend(I)I
    .registers 6

    .line 981
    iget-object v0, p0, Lvm2/lib/StringLib$MatchState;->p:Lvm2/LuaString;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, p1}, Lvm2/LuaString;->luaByte(I)I

    move-result v0

    const/16 v2, 0x25

    if-eq v0, v2, :cond_5d

    const/16 v3, 0x5b

    if-eq v0, v3, :cond_11

    return v1

    .line 989
    :cond_11
    iget-object v0, p0, Lvm2/lib/StringLib$MatchState;->p:Lvm2/LuaString;

    invoke-virtual {v0}, Lvm2/LuaString;->length()I

    move-result v0

    if-eq v1, v0, :cond_25

    iget-object v0, p0, Lvm2/lib/StringLib$MatchState;->p:Lvm2/LuaString;

    invoke-virtual {v0, v1}, Lvm2/LuaString;->luaByte(I)I

    move-result v0

    const/16 v3, 0x5e

    if-ne v0, v3, :cond_25

    add-int/lit8 v1, p1, 0x2

    .line 991
    :cond_25
    iget-object p1, p0, Lvm2/lib/StringLib$MatchState;->p:Lvm2/LuaString;

    invoke-virtual {p1}, Lvm2/LuaString;->length()I

    move-result p1

    if-ne v1, p1, :cond_32

    .line 992
    const-string p1, "malformed pattern (missing \']\')"

    invoke-static {p1}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    .line 994
    :cond_32
    iget-object p1, p0, Lvm2/lib/StringLib$MatchState;->p:Lvm2/LuaString;

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v1}, Lvm2/LuaString;->luaByte(I)I

    move-result p1

    if-ne p1, v2, :cond_47

    iget-object p1, p0, Lvm2/lib/StringLib$MatchState;->p:Lvm2/LuaString;

    invoke-virtual {p1}, Lvm2/LuaString;->length()I

    move-result p1

    if-ge v0, p1, :cond_47

    add-int/lit8 v1, v1, 0x2

    goto :goto_48

    :cond_47
    move v1, v0

    .line 996
    :goto_48
    iget-object p1, p0, Lvm2/lib/StringLib$MatchState;->p:Lvm2/LuaString;

    invoke-virtual {p1}, Lvm2/LuaString;->length()I

    move-result p1

    if-eq v1, p1, :cond_25

    iget-object p1, p0, Lvm2/lib/StringLib$MatchState;->p:Lvm2/LuaString;

    invoke-virtual {p1, v1}, Lvm2/LuaString;->luaByte(I)I

    move-result p1

    const/16 v0, 0x5d

    if-ne p1, v0, :cond_25

    add-int/lit8 v1, v1, 0x1

    return v1

    .line 983
    :cond_5d
    iget-object v0, p0, Lvm2/lib/StringLib$MatchState;->p:Lvm2/LuaString;

    invoke-virtual {v0}, Lvm2/LuaString;->length()I

    move-result v0

    if-ne v1, v0, :cond_6a

    .line 984
    const-string v0, "malformed pattern (ends with \'%\')"

    invoke-static {v0}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    :cond_6a
    add-int/lit8 p1, p1, 0x2

    return p1
.end method

.method public end_capture(II)I
    .registers 6

    .line 1184
    invoke-direct {p0}, Lvm2/lib/StringLib$MatchState;->capture_to_close()I

    move-result v0

    .line 1186
    iget-object v1, p0, Lvm2/lib/StringLib$MatchState;->clen:[I

    iget-object v2, p0, Lvm2/lib/StringLib$MatchState;->cinit:[I

    aget v2, v2, v0

    sub-int v2, p1, v2

    aput v2, v1, v0

    .line 1187
    invoke-virtual {p0, p1, p2}, Lvm2/lib/StringLib$MatchState;->match(II)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_19

    .line 1188
    iget-object v1, p0, Lvm2/lib/StringLib$MatchState;->clen:[I

    aput p2, v1, v0

    :cond_19
    return p1
.end method

.method public match(II)I
    .registers 9

    .line 1061
    iget v0, p0, Lvm2/lib/StringLib$MatchState;->matchdepth:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lvm2/lib/StringLib$MatchState;->matchdepth:I

    if-nez v0, :cond_d

    const-string v0, "pattern too complex"

    invoke-static {v0}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 1067
    :try_start_e
    iget-object v1, p0, Lvm2/lib/StringLib$MatchState;->p:Lvm2/LuaString;

    invoke-virtual {v1}, Lvm2/LuaString;->length()I

    move-result v1
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_3c

    if-ne p2, v1, :cond_1c

    .line 1140
    :goto_16
    iget p2, p0, Lvm2/lib/StringLib$MatchState;->matchdepth:I

    add-int/2addr p2, v0

    iput p2, p0, Lvm2/lib/StringLib$MatchState;->matchdepth:I

    return p1

    .line 1069
    :cond_1c
    :try_start_1c
    iget-object v1, p0, Lvm2/lib/StringLib$MatchState;->p:Lvm2/LuaString;

    invoke-virtual {v1, p2}, Lvm2/LuaString;->luaByte(I)I

    move-result v1

    const/16 v2, 0x24

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v1, v2, :cond_f3

    const/16 v2, 0x25

    if-eq v1, v2, :cond_5e

    const/16 v2, 0x28

    const/16 v5, 0x29

    if-eq v1, v2, :cond_3f

    if-eq v1, v5, :cond_36

    goto/16 :goto_10a

    :cond_36
    add-int/2addr p2, v0

    .line 1076
    invoke-virtual {p0, p1, p2}, Lvm2/lib/StringLib$MatchState;->end_capture(II)I

    move-result p1

    goto :goto_16

    :catchall_3c
    move-exception p1

    goto/16 :goto_175

    :cond_3f
    add-int/lit8 v1, p2, 0x1

    .line 1071
    iget-object v2, p0, Lvm2/lib/StringLib$MatchState;->p:Lvm2/LuaString;

    invoke-virtual {v2}, Lvm2/LuaString;->length()I

    move-result v2

    if-ge v1, v2, :cond_59

    iget-object v2, p0, Lvm2/lib/StringLib$MatchState;->p:Lvm2/LuaString;

    invoke-virtual {v2, v1}, Lvm2/LuaString;->luaByte(I)I

    move-result v2

    if-ne v2, v5, :cond_59

    add-int/lit8 p2, p2, 0x2

    const/4 v1, -0x2

    .line 1072
    invoke-virtual {p0, p1, p2, v1}, Lvm2/lib/StringLib$MatchState;->start_capture(III)I

    move-result p1

    goto :goto_16

    .line 1074
    :cond_59
    invoke-virtual {p0, p1, v1, v4}, Lvm2/lib/StringLib$MatchState;->start_capture(III)I

    move-result p1

    goto :goto_16

    :cond_5e
    add-int/lit8 v1, p2, 0x1

    .line 1078
    iget-object v2, p0, Lvm2/lib/StringLib$MatchState;->p:Lvm2/LuaString;

    invoke-virtual {v2}, Lvm2/LuaString;->length()I

    move-result v2

    if-ne v1, v2, :cond_6d

    .line 1079
    const-string v2, "malformed pattern (ends with \'%\')"

    invoke-static {v2}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    .line 1080
    :cond_6d
    iget-object v2, p0, Lvm2/lib/StringLib$MatchState;->p:Lvm2/LuaString;

    invoke-virtual {v2, v1}, Lvm2/LuaString;->luaByte(I)I

    move-result v2

    const/16 v5, 0x62

    if-eq v2, v5, :cond_e6

    const/16 v5, 0x66

    if-eq v2, v5, :cond_9c

    .line 1101
    iget-object v2, p0, Lvm2/lib/StringLib$MatchState;->p:Lvm2/LuaString;

    invoke-virtual {v2, v1}, Lvm2/LuaString;->luaByte(I)I

    move-result v1

    int-to-char v2, v1

    .line 1102
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_f3

    .line 1103
    invoke-virtual {p0, p1, v1}, Lvm2/lib/StringLib$MatchState;->match_capture(II)I

    move-result p1
    :try_end_8c
    .catchall {:try_start_1c .. :try_end_8c} :catchall_3c

    if-ne p1, v4, :cond_94

    .line 1140
    :cond_8e
    :goto_8e
    iget p1, p0, Lvm2/lib/StringLib$MatchState;->matchdepth:I

    add-int/2addr p1, v0

    iput p1, p0, Lvm2/lib/StringLib$MatchState;->matchdepth:I

    return v4

    :cond_94
    add-int/lit8 p2, p2, 0x2

    .line 1106
    :try_start_96
    invoke-virtual {p0, p1, p2}, Lvm2/lib/StringLib$MatchState;->match(II)I

    move-result p1

    goto/16 :goto_16

    :cond_9c
    add-int/lit8 p2, p2, 0x2

    .line 1088
    iget-object v1, p0, Lvm2/lib/StringLib$MatchState;->p:Lvm2/LuaString;

    invoke-virtual {v1}, Lvm2/LuaString;->length()I

    move-result v1

    if-eq p2, v1, :cond_b0

    iget-object v1, p0, Lvm2/lib/StringLib$MatchState;->p:Lvm2/LuaString;

    invoke-virtual {v1, p2}, Lvm2/LuaString;->luaByte(I)I

    move-result v1

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_b5

    .line 1089
    :cond_b0
    const-string v1, "missing \'[\' after \'%f\' in pattern"

    invoke-static {v1}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    .line 1091
    :cond_b5
    invoke-virtual {p0, p2}, Lvm2/lib/StringLib$MatchState;->classend(I)I

    move-result v1

    if-nez p1, :cond_bd

    move v2, v3

    goto :goto_c5

    .line 1092
    :cond_bd
    iget-object v2, p0, Lvm2/lib/StringLib$MatchState;->s:Lvm2/LuaString;

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v2, v5}, Lvm2/LuaString;->luaByte(I)I

    move-result v2

    .line 1093
    :goto_c5
    iget-object v5, p0, Lvm2/lib/StringLib$MatchState;->s:Lvm2/LuaString;

    invoke-virtual {v5}, Lvm2/LuaString;->length()I

    move-result v5

    if-ne p1, v5, :cond_ce

    goto :goto_d4

    :cond_ce
    iget-object v3, p0, Lvm2/lib/StringLib$MatchState;->s:Lvm2/LuaString;

    invoke-virtual {v3, p1}, Lvm2/LuaString;->luaByte(I)I

    move-result v3

    :goto_d4
    add-int/lit8 v5, v1, -0x1

    .line 1094
    invoke-virtual {p0, v2, p2, v5}, Lvm2/lib/StringLib$MatchState;->matchbracketclass(III)Z

    move-result v2

    if-nez v2, :cond_8e

    .line 1095
    invoke-virtual {p0, v3, p2, v5}, Lvm2/lib/StringLib$MatchState;->matchbracketclass(III)Z

    move-result p2

    if-nez p2, :cond_e3

    goto :goto_8e

    :cond_e3
    :goto_e3
    move p2, v1

    goto/16 :goto_d

    :cond_e6
    add-int/lit8 v1, p2, 0x2

    .line 1082
    invoke-virtual {p0, p1, v1}, Lvm2/lib/StringLib$MatchState;->matchbalance(II)I

    move-result p1

    if-ne p1, v4, :cond_ef

    goto :goto_8e

    :cond_ef
    add-int/lit8 p2, p2, 0x4

    goto/16 :goto_d

    :cond_f3
    add-int/lit8 v1, p2, 0x1

    .line 1111
    iget-object v2, p0, Lvm2/lib/StringLib$MatchState;->p:Lvm2/LuaString;

    invoke-virtual {v2}, Lvm2/LuaString;->length()I

    move-result v2

    if-ne v1, v2, :cond_10a

    .line 1112
    iget-object p2, p0, Lvm2/lib/StringLib$MatchState;->s:Lvm2/LuaString;

    invoke-virtual {p2}, Lvm2/LuaString;->length()I

    move-result p2

    if-ne p1, p2, :cond_107

    goto/16 :goto_16

    :cond_107
    move p1, v4

    goto/16 :goto_16

    .line 1114
    :cond_10a
    :goto_10a
    invoke-virtual {p0, p2}, Lvm2/lib/StringLib$MatchState;->classend(I)I

    move-result v1

    .line 1115
    iget-object v2, p0, Lvm2/lib/StringLib$MatchState;->s:Lvm2/LuaString;

    invoke-virtual {v2}, Lvm2/LuaString;->length()I

    move-result v2

    if-ge p1, v2, :cond_124

    iget-object v2, p0, Lvm2/lib/StringLib$MatchState;->s:Lvm2/LuaString;

    invoke-virtual {v2, p1}, Lvm2/LuaString;->luaByte(I)I

    move-result v2

    invoke-virtual {p0, v2, p2, v1}, Lvm2/lib/StringLib$MatchState;->singlematch(III)Z

    move-result v2

    if-eqz v2, :cond_124

    move v2, v0

    goto :goto_125

    :cond_124
    move v2, v3

    .line 1116
    :goto_125
    iget-object v5, p0, Lvm2/lib/StringLib$MatchState;->p:Lvm2/LuaString;

    invoke-virtual {v5}, Lvm2/LuaString;->length()I

    move-result v5

    if-ge v1, v5, :cond_133

    iget-object v3, p0, Lvm2/lib/StringLib$MatchState;->p:Lvm2/LuaString;

    invoke-virtual {v3, v1}, Lvm2/LuaString;->luaByte(I)I

    move-result v3

    :cond_133
    const/16 v5, 0x2a

    if-eq v3, v5, :cond_16f

    const/16 v5, 0x2b

    if-eq v3, v5, :cond_166

    const/16 v5, 0x2d

    if-eq v3, v5, :cond_160

    const/16 p2, 0x3f

    if-eq v3, p2, :cond_14a

    if-nez v2, :cond_147

    goto/16 :goto_8e

    :cond_147
    add-int/lit8 p1, p1, 0x1

    goto :goto_e3

    :cond_14a
    if-eqz v2, :cond_15c

    add-int/lit8 p2, p1, 0x1

    add-int/lit8 v2, v1, 0x1

    .line 1121
    invoke-virtual {p0, p2, v2}, Lvm2/lib/StringLib$MatchState;->match(II)I

    move-result p2
    :try_end_154
    .catchall {:try_start_96 .. :try_end_154} :catchall_3c

    if-eq p2, v4, :cond_15c

    .line 1140
    iget p1, p0, Lvm2/lib/StringLib$MatchState;->matchdepth:I

    add-int/2addr p1, v0

    iput p1, p0, Lvm2/lib/StringLib$MatchState;->matchdepth:I

    return p2

    :cond_15c
    add-int/lit8 p2, v1, 0x1

    goto/16 :goto_d

    .line 1130
    :cond_160
    :try_start_160
    invoke-virtual {p0, p1, p2, v1}, Lvm2/lib/StringLib$MatchState;->min_expand(III)I

    move-result p1

    goto/16 :goto_16

    :cond_166
    if-eqz v2, :cond_8e

    add-int/2addr p1, v0

    .line 1128
    invoke-virtual {p0, p1, p2, v1}, Lvm2/lib/StringLib$MatchState;->max_expand(III)I

    move-result v4

    goto/16 :goto_8e

    .line 1126
    :cond_16f
    invoke-virtual {p0, p1, p2, v1}, Lvm2/lib/StringLib$MatchState;->max_expand(III)I

    move-result p1
    :try_end_173
    .catchall {:try_start_160 .. :try_end_173} :catchall_3c

    goto/16 :goto_16

    .line 1140
    :goto_175
    iget p2, p0, Lvm2/lib/StringLib$MatchState;->matchdepth:I

    add-int/2addr p2, v0

    iput p2, p0, Lvm2/lib/StringLib$MatchState;->matchdepth:I

    .line 1141
    throw p1
.end method

.method public match_capture(II)I
    .registers 6

    .line 1193
    invoke-direct {p0, p2}, Lvm2/lib/StringLib$MatchState;->check_capture(I)I

    move-result p2

    .line 1194
    iget-object v0, p0, Lvm2/lib/StringLib$MatchState;->clen:[I

    aget v0, v0, p2

    .line 1195
    iget-object v1, p0, Lvm2/lib/StringLib$MatchState;->s:Lvm2/LuaString;

    invoke-virtual {v1}, Lvm2/LuaString;->length()I

    move-result v1

    sub-int/2addr v1, p1

    if-lt v1, v0, :cond_1f

    iget-object v1, p0, Lvm2/lib/StringLib$MatchState;->s:Lvm2/LuaString;

    iget-object v2, p0, Lvm2/lib/StringLib$MatchState;->cinit:[I

    aget p2, v2, p2

    .line 1196
    invoke-static {v1, p2, v1, p1, v0}, Lvm2/LuaString;->equals(Lvm2/LuaString;ILvm2/LuaString;II)Z

    move-result p2

    if-eqz p2, :cond_1f

    add-int/2addr p1, v0

    return p1

    :cond_1f
    const/4 p1, -0x1

    return p1
.end method

.method public matchbalance(II)I
    .registers 9

    .line 1203
    iget-object v0, p0, Lvm2/lib/StringLib$MatchState;->p:Lvm2/LuaString;

    invoke-virtual {v0}, Lvm2/LuaString;->length()I

    move-result v0

    if-eq p2, v0, :cond_c

    add-int/lit8 v1, p2, 0x1

    if-ne v1, v0, :cond_11

    .line 1205
    :cond_c
    const-string v0, "malformed pattern (missing arguments to \'%b\')"

    invoke-static {v0}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    .line 1207
    :cond_11
    iget-object v0, p0, Lvm2/lib/StringLib$MatchState;->s:Lvm2/LuaString;

    invoke-virtual {v0}, Lvm2/LuaString;->length()I

    move-result v0

    const/4 v1, -0x1

    if-lt p1, v0, :cond_1b

    return v1

    .line 1210
    :cond_1b
    iget-object v2, p0, Lvm2/lib/StringLib$MatchState;->p:Lvm2/LuaString;

    invoke-virtual {v2, p2}, Lvm2/LuaString;->luaByte(I)I

    move-result v2

    .line 1211
    iget-object v3, p0, Lvm2/lib/StringLib$MatchState;->s:Lvm2/LuaString;

    invoke-virtual {v3, p1}, Lvm2/LuaString;->luaByte(I)I

    move-result v3

    if-eq v3, v2, :cond_2a

    return v1

    .line 1213
    :cond_2a
    iget-object v3, p0, Lvm2/lib/StringLib$MatchState;->p:Lvm2/LuaString;

    const/4 v4, 0x1

    add-int/2addr p2, v4

    invoke-virtual {v3, p2}, Lvm2/LuaString;->luaByte(I)I

    move-result p2

    :goto_32
    add-int/lit8 v3, p1, 0x1

    if-ge v3, v0, :cond_52

    .line 1216
    iget-object v5, p0, Lvm2/lib/StringLib$MatchState;->s:Lvm2/LuaString;

    invoke-virtual {v5, v3}, Lvm2/LuaString;->luaByte(I)I

    move-result v5

    if-ne v5, p2, :cond_47

    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_45

    add-int/lit8 p1, p1, 0x2

    return p1

    :cond_45
    :goto_45
    move p1, v3

    goto :goto_32

    .line 1219
    :cond_47
    iget-object p1, p0, Lvm2/lib/StringLib$MatchState;->s:Lvm2/LuaString;

    invoke-virtual {p1, v3}, Lvm2/LuaString;->luaByte(I)I

    move-result p1

    if-ne p1, v2, :cond_45

    add-int/lit8 v4, v4, 0x1

    goto :goto_45

    :cond_52
    return v1
.end method

.method public matchbracketclass(III)Z
    .registers 9

    .line 1027
    iget-object v0, p0, Lvm2/lib/StringLib$MatchState;->p:Lvm2/LuaString;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Lvm2/LuaString;->luaByte(I)I

    move-result v0

    const/16 v2, 0x5e

    const/4 v3, 0x1

    if-ne v0, v2, :cond_11

    const/4 p2, 0x0

    move v0, p2

    :cond_f
    move p2, v1

    goto :goto_12

    :cond_11
    move v0, v3

    :cond_12
    :goto_12
    add-int/lit8 v1, p2, 0x1

    if-ge v1, p3, :cond_5d

    .line 1032
    iget-object v2, p0, Lvm2/lib/StringLib$MatchState;->p:Lvm2/LuaString;

    invoke-virtual {v2, v1}, Lvm2/LuaString;->luaByte(I)I

    move-result v2

    const/16 v4, 0x25

    if-ne v2, v4, :cond_2f

    add-int/lit8 p2, p2, 0x2

    .line 1034
    iget-object v1, p0, Lvm2/lib/StringLib$MatchState;->p:Lvm2/LuaString;

    invoke-virtual {v1, p2}, Lvm2/LuaString;->luaByte(I)I

    move-result v1

    invoke-static {p1, v1}, Lvm2/lib/StringLib$MatchState;->match_class(II)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_5c

    .line 1037
    :cond_2f
    iget-object v2, p0, Lvm2/lib/StringLib$MatchState;->p:Lvm2/LuaString;

    add-int/lit8 v4, p2, 0x2

    invoke-virtual {v2, v4}, Lvm2/LuaString;->luaByte(I)I

    move-result v2

    const/16 v4, 0x2d

    if-ne v2, v4, :cond_54

    add-int/lit8 v2, p2, 0x3

    if-ge v2, p3, :cond_54

    .line 1039
    iget-object v1, p0, Lvm2/lib/StringLib$MatchState;->p:Lvm2/LuaString;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v1, p2}, Lvm2/LuaString;->luaByte(I)I

    move-result p2

    if-gt p2, p1, :cond_52

    iget-object p2, p0, Lvm2/lib/StringLib$MatchState;->p:Lvm2/LuaString;

    invoke-virtual {p2, v2}, Lvm2/LuaString;->luaByte(I)I

    move-result p2

    if-gt p1, p2, :cond_52

    goto :goto_5c

    :cond_52
    move p2, v2

    goto :goto_12

    .line 1042
    :cond_54
    iget-object p2, p0, Lvm2/lib/StringLib$MatchState;->p:Lvm2/LuaString;

    invoke-virtual {p2, v1}, Lvm2/LuaString;->luaByte(I)I

    move-result p2

    if-ne p2, p1, :cond_f

    :goto_5c
    return v0

    :cond_5d
    xor-int/lit8 p1, v0, 0x1

    return p1
.end method

.method public max_expand(III)I
    .registers 7

    const/4 v0, 0x0

    :goto_1
    add-int v1, p1, v0

    .line 1146
    iget-object v2, p0, Lvm2/lib/StringLib$MatchState;->s:Lvm2/LuaString;

    invoke-virtual {v2}, Lvm2/LuaString;->length()I

    move-result v2

    if-ge v1, v2, :cond_1a

    iget-object v2, p0, Lvm2/lib/StringLib$MatchState;->s:Lvm2/LuaString;

    .line 1147
    invoke-virtual {v2, v1}, Lvm2/LuaString;->luaByte(I)I

    move-result v1

    invoke-virtual {p0, v1, p2, p3}, Lvm2/lib/StringLib$MatchState;->singlematch(III)Z

    move-result v1

    if-eqz v1, :cond_1a

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1a
    :goto_1a
    const/4 p2, -0x1

    if-ltz v0, :cond_2b

    add-int v1, p1, v0

    add-int/lit8 v2, p3, 0x1

    .line 1150
    invoke-virtual {p0, v1, v2}, Lvm2/lib/StringLib$MatchState;->match(II)I

    move-result v1

    if-eq v1, p2, :cond_28

    return v1

    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_1a

    :cond_2b
    return p2
.end method

.method public min_expand(III)I
    .registers 6

    :goto_0
    add-int/lit8 v0, p3, 0x1

    .line 1160
    invoke-virtual {p0, p1, v0}, Lvm2/lib/StringLib$MatchState;->match(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    return v0

    .line 1163
    :cond_a
    iget-object v0, p0, Lvm2/lib/StringLib$MatchState;->s:Lvm2/LuaString;

    invoke-virtual {v0}, Lvm2/LuaString;->length()I

    move-result v0

    if-ge p1, v0, :cond_21

    iget-object v0, p0, Lvm2/lib/StringLib$MatchState;->s:Lvm2/LuaString;

    invoke-virtual {v0, p1}, Lvm2/LuaString;->luaByte(I)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lvm2/lib/StringLib$MatchState;->singlematch(III)Z

    move-result v0

    if-eqz v0, :cond_21

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_21
    return v1
.end method

.method public push_captures(ZII)Lvm2/Varargs;
    .registers 7

    .line 931
    iget v0, p0, Lvm2/lib/StringLib$MatchState;->level:I

    const/4 v1, 0x1

    if-nez v0, :cond_8

    if-eqz p1, :cond_8

    move v0, v1

    :cond_8
    if-eqz v0, :cond_24

    const/4 p1, 0x0

    if-eq v0, v1, :cond_1f

    .line 936
    new-array v1, v0, [Lvm2/LuaValue;

    :goto_f
    if-ge p1, v0, :cond_1a

    .line 938
    invoke-direct {p0, p1, p2, p3}, Lvm2/lib/StringLib$MatchState;->push_onecapture(III)Lvm2/LuaValue;

    move-result-object v2

    aput-object v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_f

    .line 939
    :cond_1a
    invoke-static {v1}, Lvm2/LuaValue;->varargsOf([Lvm2/LuaValue;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 934
    :cond_1f
    invoke-direct {p0, p1, p2, p3}, Lvm2/lib/StringLib$MatchState;->push_onecapture(III)Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    .line 933
    :cond_24
    sget-object p1, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    return-object p1
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 871
    iput v0, p0, Lvm2/lib/StringLib$MatchState;->level:I

    const/16 v0, 0xc8

    .line 872
    iput v0, p0, Lvm2/lib/StringLib$MatchState;->matchdepth:I

    return-void
.end method

.method public singlematch(III)Z
    .registers 7

    .line 1048
    iget-object v0, p0, Lvm2/lib/StringLib$MatchState;->p:Lvm2/LuaString;

    invoke-virtual {v0, p2}, Lvm2/LuaString;->luaByte(I)I

    move-result v0

    const/16 v1, 0x25

    const/4 v2, 0x1

    if-eq v0, v1, :cond_25

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_24

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_1e

    .line 1052
    iget-object p3, p0, Lvm2/lib/StringLib$MatchState;->p:Lvm2/LuaString;

    invoke-virtual {p3, p2}, Lvm2/LuaString;->luaByte(I)I

    move-result p2

    if-ne p2, p1, :cond_1c

    return v2

    :cond_1c
    const/4 p1, 0x0

    return p1

    :cond_1e
    sub-int/2addr p3, v2

    .line 1051
    invoke-virtual {p0, p1, p2, p3}, Lvm2/lib/StringLib$MatchState;->matchbracketclass(III)Z

    move-result p1

    return p1

    :cond_24
    return v2

    .line 1050
    :cond_25
    iget-object p3, p0, Lvm2/lib/StringLib$MatchState;->p:Lvm2/LuaString;

    add-int/2addr p2, v2

    invoke-virtual {p3, p2}, Lvm2/LuaString;->luaByte(I)I

    move-result p2

    invoke-static {p1, p2}, Lvm2/lib/StringLib$MatchState;->match_class(II)Z

    move-result p1

    return p1
.end method

.method public start_capture(III)I
    .registers 6

    .line 1171
    iget v0, p0, Lvm2/lib/StringLib$MatchState;->level:I

    const/16 v1, 0x20

    if-lt v0, v1, :cond_b

    .line 1173
    const-string v1, "too many captures"

    invoke-static {v1}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    .line 1175
    :cond_b
    iget-object v1, p0, Lvm2/lib/StringLib$MatchState;->cinit:[I

    aput p1, v1, v0

    .line 1176
    iget-object v1, p0, Lvm2/lib/StringLib$MatchState;->clen:[I

    aput p3, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 1177
    iput v0, p0, Lvm2/lib/StringLib$MatchState;->level:I

    .line 1178
    invoke-virtual {p0, p1, p2}, Lvm2/lib/StringLib$MatchState;->match(II)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_24

    .line 1179
    iget p2, p0, Lvm2/lib/StringLib$MatchState;->level:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lvm2/lib/StringLib$MatchState;->level:I

    :cond_24
    return p1
.end method

###### Class vm2.lib.StringLib._byte (vm2.lib.StringLib$_byte)
.class final Lvm2/lib/StringLib$_byte;
.super Lvm2/lib/VarArgFunction;
.source "StringLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/StringLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "_byte"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 121
    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 8

    const/4 v0, 0x1

    .line 123
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkstring(I)Lvm2/LuaString;

    move-result-object v1

    .line 124
    iget v2, v1, Lvm2/LuaString;->m_length:I

    const/4 v3, 0x2

    .line 125
    invoke-virtual {p1, v3, v0}, Lvm2/Varargs;->optint(II)I

    move-result v3

    invoke-static {v3, v2}, Lvm2/lib/StringLib;->posrelat(II)I

    move-result v3

    const/4 v4, 0x3

    .line 126
    invoke-virtual {p1, v4, v3}, Lvm2/Varargs;->optint(II)I

    move-result p1

    invoke-static {p1, v2}, Lvm2/lib/StringLib;->posrelat(II)I

    move-result p1

    if-gtz v3, :cond_1c

    move v3, v0

    :cond_1c
    if-le p1, v2, :cond_1f

    goto :goto_20

    :cond_1f
    move v2, p1

    :goto_20
    if-le v3, v2, :cond_25

    .line 130
    sget-object p1, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    return-object p1

    :cond_25
    sub-int p1, v2, v3

    add-int/2addr p1, v0

    add-int v4, v3, p1

    if-gt v4, v2, :cond_31

    .line 133
    const-string v2, "string slice too long"

    invoke-static {v2}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    .line 134
    :cond_31
    new-array v2, p1, [Lvm2/LuaValue;

    const/4 v4, 0x0

    :goto_34
    if-ge v4, p1, :cond_46

    add-int v5, v3, v4

    sub-int/2addr v5, v0

    .line 136
    invoke-virtual {v1, v5}, Lvm2/LuaString;->luaByte(I)I

    move-result v5

    invoke-static {v5}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    .line 137
    :cond_46
    invoke-static {v2}, Lvm2/LuaValue;->varargsOf([Lvm2/LuaValue;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.StringLib._char (vm2.lib.StringLib$_char)
.class final Lvm2/lib/StringLib$_char;
.super Lvm2/lib/VarArgFunction;
.source "StringLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/StringLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "_char"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 152
    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 9

    .line 154
    invoke-virtual {p1}, Lvm2/Varargs;->narg()I

    move-result v0

    .line 155
    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_8
    if-ge v2, v0, :cond_30

    .line 157
    invoke-virtual {p1, v3}, Lvm2/Varargs;->checkint(I)I

    move-result v4

    if-ltz v4, :cond_14

    const/16 v5, 0x100

    if-lt v4, v5, :cond_28

    .line 158
    :cond_14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid value for string.char [0; 255]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lvm2/LuaValue;->argerror(ILjava/lang/String;)Lvm2/LuaValue;

    :cond_28
    int-to-byte v4, v4

    .line 159
    aput-byte v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 161
    :cond_30
    invoke-static {v1}, Lvm2/LuaString;->valueUsing([B)Lvm2/LuaString;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.StringLib.dump (vm2.lib.StringLib$dump)
.class final Lvm2/lib/StringLib$dump;
.super Lvm2/lib/VarArgFunction;
.source "StringLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/StringLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dump"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 176
    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 6

    const/4 v0, 0x1

    .line 178
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkfunction(I)Lvm2/LuaFunction;

    move-result-object v1

    .line 179
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 181
    :try_start_a
    check-cast v1, Lvm2/LuaClosure;

    iget-object v1, v1, Lvm2/LuaClosure;->p:Lvm2/Prototype;

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v0}, Lvm2/Varargs;->optboolean(IZ)Z

    move-result p1

    invoke-static {v1, v2, p1}, Lvm2/compiler/DumpState;->dump(Lvm2/Prototype;Ljava/io/OutputStream;Z)I

    .line 182
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaString;->valueUsing([B)Lvm2/LuaString;

    move-result-object p1
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1e} :catch_1f

    return-object p1

    :catch_1f
    move-exception p1

    .line 184
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.StringLib.find (vm2.lib.StringLib$find)
.class final Lvm2/lib/StringLib$find;
.super Lvm2/lib/VarArgFunction;
.source "StringLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/StringLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "find"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 205
    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 3

    const/4 v0, 0x1

    .line 207
    invoke-static {p1, v0}, Lvm2/lib/StringLib;->str_find_aux(Lvm2/Varargs;Z)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.StringLib.format (vm2.lib.StringLib$format)
.class final Lvm2/lib/StringLib$format;
.super Lvm2/lib/VarArgFunction;
.source "StringLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/StringLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "format"
.end annotation


# instance fields
.field final synthetic this$0:Lvm2/lib/StringLib;


# direct methods
.method public constructor <init>(Lvm2/lib/StringLib;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 234
    iput-object p1, p0, Lvm2/lib/StringLib$format;->this$0:Lvm2/lib/StringLib;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 11

    const/4 v0, 0x1

    .line 236
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkstring(I)Lvm2/LuaString;

    move-result-object v1

    .line 237
    invoke-virtual {v1}, Lvm2/LuaString;->length()I

    move-result v2

    .line 238
    new-instance v3, Lvm2/Buffer;

    invoke-direct {v3, v2}, Lvm2/Buffer;-><init>(I)V

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v2, :cond_cf

    add-int/lit8 v5, v4, 0x1

    .line 243
    invoke-virtual {v1, v4}, Lvm2/LuaString;->luaByte(I)I

    move-result v6

    const/16 v7, 0xa

    if-eq v6, v7, :cond_c9

    const/16 v7, 0x25

    if-eq v6, v7, :cond_25

    int-to-byte v4, v6

    .line 248
    invoke-virtual {v3, v4}, Lvm2/Buffer;->append(B)Lvm2/Buffer;

    goto/16 :goto_c6

    :cond_25
    if-ge v5, v2, :cond_c6

    .line 252
    invoke-virtual {v1, v5}, Lvm2/LuaString;->luaByte(I)I

    move-result v6

    if-ne v6, v7, :cond_33

    add-int/lit8 v4, v4, 0x2

    .line 254
    invoke-virtual {v3, v7}, Lvm2/Buffer;->append(B)Lvm2/Buffer;

    goto :goto_f

    :cond_33
    add-int/lit8 v0, v0, 0x1

    .line 257
    new-instance v4, Lvm2/lib/StringLib$FormatDesc;

    iget-object v6, p0, Lvm2/lib/StringLib$format;->this$0:Lvm2/lib/StringLib;

    invoke-direct {v4, v6, p1, v1, v5}, Lvm2/lib/StringLib$FormatDesc;-><init>(Lvm2/lib/StringLib;Lvm2/Varargs;Lvm2/LuaString;I)V

    .line 258
    iget v6, v4, Lvm2/lib/StringLib$FormatDesc;->length:I

    add-int/2addr v5, v6

    .line 259
    iget v6, v4, Lvm2/lib/StringLib$FormatDesc;->conversion:I

    const/16 v7, 0x45

    if-eq v6, v7, :cond_bf

    const/16 v7, 0x47

    if-eq v6, v7, :cond_bf

    const/16 v7, 0x58

    if-eq v6, v7, :cond_b7

    const/16 v7, 0x69

    if-eq v6, v7, :cond_af

    const/16 v7, 0x6f

    if-eq v6, v7, :cond_b7

    const/16 v7, 0x71

    if-eq v6, v7, :cond_a7

    const/16 v7, 0x73

    if-eq v6, v7, :cond_8e

    const/16 v7, 0x75

    if-eq v6, v7, :cond_b7

    const/16 v7, 0x78

    if-eq v6, v7, :cond_b7

    packed-switch v6, :pswitch_data_d4

    .line 292
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid option \'%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Lvm2/lib/StringLib$FormatDesc;->conversion:I

    int-to-char v4, v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "\' to \'format\'"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    goto :goto_c6

    .line 261
    :pswitch_85
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkint(I)I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {v4, v3, v6}, Lvm2/lib/StringLib$FormatDesc;->format(Lvm2/Buffer;B)V

    goto :goto_c6

    .line 284
    :cond_8e
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkstring(I)Lvm2/LuaString;

    move-result-object v6

    .line 285
    iget v7, v4, Lvm2/lib/StringLib$FormatDesc;->precision:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_a3

    invoke-virtual {v6}, Lvm2/LuaString;->length()I

    move-result v7

    const/16 v8, 0x64

    if-lt v7, v8, :cond_a3

    .line 286
    invoke-virtual {v3, v6}, Lvm2/Buffer;->append(Lvm2/LuaString;)Lvm2/Buffer;

    goto :goto_c6

    .line 288
    :cond_a3
    invoke-virtual {v4, v3, v6}, Lvm2/lib/StringLib$FormatDesc;->format(Lvm2/Buffer;Lvm2/LuaString;)V

    goto :goto_c6

    .line 281
    :cond_a7
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkstring(I)Lvm2/LuaString;

    move-result-object v4

    invoke-static {v3, v4}, Lvm2/lib/StringLib;->addquoted(Lvm2/Buffer;Lvm2/LuaString;)V

    goto :goto_c6

    .line 265
    :cond_af
    :pswitch_af
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checklong(I)J

    move-result-wide v6

    invoke-virtual {v4, v3, v6, v7}, Lvm2/lib/StringLib$FormatDesc;->format(Lvm2/Buffer;J)V

    goto :goto_c6

    .line 271
    :cond_b7
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checklong(I)J

    move-result-wide v6

    invoke-virtual {v4, v3, v6, v7}, Lvm2/lib/StringLib$FormatDesc;->format(Lvm2/Buffer;J)V

    goto :goto_c6

    .line 278
    :cond_bf
    :pswitch_bf
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkdouble(I)D

    move-result-wide v6

    invoke-virtual {v4, v3, v6, v7}, Lvm2/lib/StringLib$FormatDesc;->format(Lvm2/Buffer;D)V

    :cond_c6
    :goto_c6
    move v4, v5

    goto/16 :goto_f

    .line 245
    :cond_c9
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Lvm2/Buffer;->append(Ljava/lang/String;)Lvm2/Buffer;

    goto :goto_c6

    .line 300
    :cond_cf
    invoke-virtual {v3}, Lvm2/Buffer;->tostring()Lvm2/LuaString;

    move-result-object p1

    return-object p1

    :pswitch_data_d4
    .packed-switch 0x63
        :pswitch_85
        :pswitch_af
        :pswitch_bf
        :pswitch_bf
        :pswitch_bf
    .end packed-switch
.end method

###### Class vm2.lib.StringLib.gmatch (vm2.lib.StringLib$gmatch)
.class final Lvm2/lib/StringLib$gmatch;
.super Lvm2/lib/VarArgFunction;
.source "StringLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/StringLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "gmatch"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 519
    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 5

    const/4 v0, 0x1

    .line 521
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkstring(I)Lvm2/LuaString;

    move-result-object v0

    const/4 v1, 0x2

    .line 522
    invoke-virtual {p1, v1}, Lvm2/Varargs;->checkstring(I)Lvm2/LuaString;

    move-result-object v1

    .line 523
    new-instance v2, Lvm2/lib/StringLib$GMatchAux;

    invoke-direct {v2, p1, v0, v1}, Lvm2/lib/StringLib$GMatchAux;-><init>(Lvm2/Varargs;Lvm2/LuaString;Lvm2/LuaString;)V

    return-object v2
.end method

###### Class vm2.lib.StringLib.gsub (vm2.lib.StringLib$gsub)
.class final Lvm2/lib/StringLib$gsub;
.super Lvm2/lib/VarArgFunction;
.source "StringLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/StringLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "gsub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 598
    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 13

    const/4 v0, 0x1

    .line 600
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkstring(I)Lvm2/LuaString;

    move-result-object v1

    .line 601
    invoke-virtual {v1}, Lvm2/LuaString;->length()I

    move-result v2

    const/4 v3, 0x2

    .line 602
    invoke-virtual {p1, v3}, Lvm2/Varargs;->checkstring(I)Lvm2/LuaString;

    move-result-object v3

    const/4 v4, 0x3

    .line 604
    invoke-virtual {p1, v4}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    const/4 v6, 0x4

    .line 605
    invoke-virtual {p1, v6, v5}, Lvm2/Varargs;->optint(II)I

    move-result v5

    .line 606
    invoke-virtual {v3}, Lvm2/LuaString;->length()I

    move-result v6

    const/4 v7, 0x0

    if-lez v6, :cond_2a

    invoke-virtual {v3, v7}, Lvm2/LuaString;->charAt(I)I

    move-result v6

    const/16 v8, 0x5e

    if-ne v6, v8, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v7

    .line 608
    :goto_2b
    new-instance v6, Lvm2/Buffer;

    invoke-direct {v6, v2}, Lvm2/Buffer;-><init>(I)V

    .line 609
    new-instance v8, Lvm2/lib/StringLib$MatchState;

    invoke-direct {v8, p1, v1, v3}, Lvm2/lib/StringLib$MatchState;-><init>(Lvm2/Varargs;Lvm2/LuaString;Lvm2/LuaString;)V

    const/4 p1, -0x1

    move v9, p1

    move v3, v7

    :cond_38
    if-ge v7, v5, :cond_5c

    .line 614
    invoke-virtual {v8}, Lvm2/lib/StringLib$MatchState;->reset()V

    .line 615
    invoke-virtual {v8, v3, v0}, Lvm2/lib/StringLib$MatchState;->match(II)I

    move-result v10

    if-eq v10, p1, :cond_4d

    if-eq v10, v9, :cond_4d

    add-int/lit8 v7, v7, 0x1

    .line 618
    invoke-virtual {v8, v6, v3, v10, v4}, Lvm2/lib/StringLib$MatchState;->add_value(Lvm2/Buffer;IILvm2/LuaValue;)V

    move v3, v10

    move v9, v3

    goto :goto_5a

    :cond_4d
    if-ge v3, v2, :cond_5c

    add-int/lit8 v10, v3, 0x1

    .line 622
    invoke-virtual {v1, v3}, Lvm2/LuaString;->luaByte(I)I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v6, v3}, Lvm2/Buffer;->append(B)Lvm2/Buffer;

    move v3, v10

    :goto_5a
    if-eqz v0, :cond_38

    .line 626
    :cond_5c
    invoke-virtual {v1, v3, v2}, Lvm2/LuaString;->substring(II)Lvm2/LuaString;

    move-result-object p1

    invoke-virtual {v6, p1}, Lvm2/Buffer;->append(Lvm2/LuaString;)Lvm2/Buffer;

    .line 627
    invoke-virtual {v6}, Lvm2/Buffer;->tostring()Lvm2/LuaString;

    move-result-object p1

    invoke-static {v7}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v0

    invoke-static {p1, v0}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.StringLib.len (vm2.lib.StringLib$len)
.class final Lvm2/lib/StringLib$len;
.super Lvm2/lib/OneArgFunction;
.source "StringLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/StringLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "len"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 637
    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 2

    .line 639
    invoke-virtual {p1}, Lvm2/LuaValue;->checkstring()Lvm2/LuaString;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaString;->len()Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.StringLib.lower (vm2.lib.StringLib$lower)
.class final Lvm2/lib/StringLib$lower;
.super Lvm2/lib/OneArgFunction;
.source "StringLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/StringLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "lower"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 650
    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 2

    .line 652
    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.StringLib.match (vm2.lib.StringLib$match)
.class final Lvm2/lib/StringLib$match;
.super Lvm2/lib/VarArgFunction;
.source "StringLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/StringLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "match"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 665
    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 3

    const/4 v0, 0x0

    .line 667
    invoke-static {p1, v0}, Lvm2/lib/StringLib;->str_find_aux(Lvm2/Varargs;Z)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.StringLib.rep (vm2.lib.StringLib$rep)
.class final Lvm2/lib/StringLib$rep;
.super Lvm2/lib/VarArgFunction;
.source "StringLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/StringLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "rep"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 676
    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 7

    const/4 v0, 0x1

    .line 678
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkstring(I)Lvm2/LuaString;

    move-result-object v0

    const/4 v1, 0x2

    .line 679
    invoke-virtual {p1, v1}, Lvm2/Varargs;->checkint(I)I

    move-result p1

    .line 680
    invoke-virtual {v0}, Lvm2/LuaString;->length()I

    move-result v1

    mul-int/2addr v1, p1

    new-array p1, v1, [B

    .line 681
    invoke-virtual {v0}, Lvm2/LuaString;->length()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_17
    if-ge v4, v1, :cond_1e

    .line 683
    invoke-virtual {v0, v3, p1, v4, v2}, Lvm2/LuaString;->copyInto(I[BII)V

    add-int/2addr v4, v2

    goto :goto_17

    .line 685
    :cond_1e
    invoke-static {p1}, Lvm2/LuaString;->valueUsing([B)Lvm2/LuaString;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.StringLib.reverse (vm2.lib.StringLib$reverse)
.class final Lvm2/lib/StringLib$reverse;
.super Lvm2/lib/OneArgFunction;
.source "StringLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/StringLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "reverse"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 694
    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 7

    .line 696
    invoke-virtual {p1}, Lvm2/LuaValue;->checkstring()Lvm2/LuaString;

    move-result-object p1

    .line 697
    invoke-virtual {p1}, Lvm2/LuaString;->length()I

    move-result v0

    .line 698
    new-array v1, v0, [B

    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v0, :cond_1b

    .line 700
    invoke-virtual {p1, v3}, Lvm2/LuaString;->luaByte(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    .line 701
    :cond_1b
    invoke-static {v1}, Lvm2/LuaString;->valueUsing([B)Lvm2/LuaString;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.StringLib.sub (vm2.lib.StringLib$sub)
.class final Lvm2/lib/StringLib$sub;
.super Lvm2/lib/VarArgFunction;
.source "StringLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/StringLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "sub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 716
    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 8

    const/4 v0, 0x1

    .line 718
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkstring(I)Lvm2/LuaString;

    move-result-object v1

    .line 719
    invoke-virtual {v1}, Lvm2/LuaString;->length()I

    move-result v2

    const/4 v3, 0x2

    .line 721
    invoke-virtual {p1, v3}, Lvm2/Varargs;->checkint(I)I

    move-result v3

    invoke-static {v3, v2}, Lvm2/lib/StringLib;->posrelat(II)I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, -0x1

    .line 722
    invoke-virtual {p1, v4, v5}, Lvm2/Varargs;->optint(II)I

    move-result p1

    invoke-static {p1, v2}, Lvm2/lib/StringLib;->posrelat(II)I

    move-result p1

    if-ge v3, v0, :cond_1f

    move v3, v0

    :cond_1f
    if-le p1, v2, :cond_22

    goto :goto_23

    :cond_22
    move v2, p1

    :goto_23
    if-gt v3, v2, :cond_2b

    sub-int/2addr v3, v0

    .line 730
    invoke-virtual {v1, v3, v2}, Lvm2/LuaString;->substring(II)Lvm2/LuaString;

    move-result-object p1

    return-object p1

    .line 732
    :cond_2b
    sget-object p1, Lvm2/LuaValue;->EMPTYSTRING:Lvm2/LuaString;

    return-object p1
.end method

###### Class vm2.lib.StringLib.upper (vm2.lib.StringLib$upper)
.class final Lvm2/lib/StringLib$upper;
.super Lvm2/lib/OneArgFunction;
.source "StringLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/StringLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "upper"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 744
    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 2

    .line 746
    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    return-object p1
.end method
