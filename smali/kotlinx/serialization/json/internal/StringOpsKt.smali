###### Class kotlinx.serialization.json.internal.StringOpsKt (kotlinx.serialization.json.internal.StringOpsKt)
.class public final Lkotlinx/serialization/json/internal/StringOpsKt;
.super Ljava/lang/Object;
.source "StringOps.kt"


# static fields
.field public static final ESCAPE_MARKERS:[B

.field public static final ESCAPE_STRINGS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    const/16 v0, 0x5d

    .line 17
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    const/16 v4, 0x20

    if-ge v3, v4, :cond_3f

    shr-int/lit8 v4, v3, 0xc

    .line 19
    invoke-static {v4}, Lkotlinx/serialization/json/internal/StringOpsKt;->toHexChar(I)C

    move-result v4

    shr-int/lit8 v5, v3, 0x8

    .line 20
    invoke-static {v5}, Lkotlinx/serialization/json/internal/StringOpsKt;->toHexChar(I)C

    move-result v5

    shr-int/lit8 v6, v3, 0x4

    .line 21
    invoke-static {v6}, Lkotlinx/serialization/json/internal/StringOpsKt;->toHexChar(I)C

    move-result v6

    .line 22
    invoke-static {v3}, Lkotlinx/serialization/json/internal/StringOpsKt;->toHexChar(I)C

    move-result v7

    .line 23
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\\u"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 25
    :cond_3f
    const-string v3, "\\\""

    const/16 v5, 0x22

    aput-object v3, v1, v5

    .line 26
    const-string v3, "\\\\"

    const/16 v6, 0x5c

    aput-object v3, v1, v6

    .line 27
    const-string v3, "\\t"

    const/16 v7, 0x9

    aput-object v3, v1, v7

    .line 28
    const-string v3, "\\b"

    const/16 v8, 0x8

    aput-object v3, v1, v8

    .line 29
    const-string v3, "\\n"

    const/16 v9, 0xa

    aput-object v3, v1, v9

    .line 30
    const-string v3, "\\r"

    const/16 v10, 0xd

    aput-object v3, v1, v10

    .line 31
    const-string v3, "\\f"

    const/16 v11, 0xc

    aput-object v3, v1, v11

    .line 17
    sput-object v1, Lkotlinx/serialization/json/internal/StringOpsKt;->ESCAPE_STRINGS:[Ljava/lang/String;

    .line 35
    new-array v0, v0, [B

    :goto_6d
    if-ge v2, v4, :cond_75

    const/4 v1, 0x1

    .line 37
    aput-byte v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6d

    .line 39
    :cond_75
    aput-byte v5, v0, v5

    .line 40
    aput-byte v6, v0, v6

    const/16 v1, 0x74

    .line 41
    aput-byte v1, v0, v7

    const/16 v1, 0x62

    .line 42
    aput-byte v1, v0, v8

    const/16 v1, 0x6e

    .line 43
    aput-byte v1, v0, v9

    const/16 v1, 0x72

    .line 44
    aput-byte v1, v0, v10

    const/16 v1, 0x66

    .line 45
    aput-byte v1, v0, v11

    .line 35
    sput-object v0, Lkotlinx/serialization/json/internal/StringOpsKt;->ESCAPE_MARKERS:[B

    return-void
.end method

.method public static final getESCAPE_MARKERS()[B
    .registers 1

    .line 35
    sget-object v0, Lkotlinx/serialization/json/internal/StringOpsKt;->ESCAPE_MARKERS:[B

    return-object v0
.end method

.method public static final getESCAPE_STRINGS()[Ljava/lang/String;
    .registers 1

    .line 17
    sget-object v0, Lkotlinx/serialization/json/internal/StringOpsKt;->ESCAPE_STRINGS:[Ljava/lang/String;

    return-object v0
.end method

.method public static final printQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x22

    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_15
    if-ge v2, v1, :cond_31

    .line 52
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 53
    sget-object v5, Lkotlinx/serialization/json/internal/StringOpsKt;->ESCAPE_STRINGS:[Ljava/lang/String;

    array-length v6, v5

    if-ge v4, v6, :cond_2e

    aget-object v6, v5, v4

    if-eqz v6, :cond_2e

    .line 54
    invoke-virtual {p0, p1, v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 55
    aget-object v3, v5, v4

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v2, 0x1

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_31
    if-eqz v3, :cond_3b

    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_3e

    .line 61
    :cond_3b
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :goto_3e
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static final toBooleanStrictOrNull(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    const-string v0, "true"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 71
    :cond_11
    const-string v0, "false"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1c

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final toHexChar(I)C
    .registers 2

    .line 0
    and-int/lit8 p0, p0, 0xf

    const/16 v0, 0xa

    if-ge p0, v0, :cond_a

    add-int/lit8 p0, p0, 0x30

    :goto_8
    int-to-char p0, p0

    return p0

    :cond_a
    add-int/lit8 p0, p0, 0x57

    goto :goto_8
.end method
