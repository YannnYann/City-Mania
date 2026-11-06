###### Class kotlin.text.StringsKt__StringNumberConversionsKt (kotlin.text.StringsKt__StringNumberConversionsKt)
.class public Lkotlin/text/StringsKt__StringNumberConversionsKt;
.super Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;
.source "StringNumberConversions.kt"


# direct methods
.method public static final numberFormatError(Ljava/lang/String;)Ljava/lang/Void;
    .registers 4

    const-string v0, "input"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid number format: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 72
    invoke-static {p0, v0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static final toIntOrNull(Ljava/lang/String;I)Ljava/lang/Integer;
    .registers 12

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-static {p1}, Lkotlin/text/CharsKt__CharJVMKt;->checkRadix(I)I

    .line 84
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return-object v1

    :cond_10
    const/4 v2, 0x0

    .line 91
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    const v5, -0x7fffffff

    if-ge v3, v4, :cond_2f

    const/4 v4, 0x1

    if-ne v0, v4, :cond_20

    return-object v1

    :cond_20
    const/16 v6, 0x2b

    if-eq v3, v6, :cond_2d

    const/16 v5, 0x2d

    if-eq v3, v5, :cond_29

    return-object v1

    :cond_29
    const/high16 v5, -0x80000000

    move v3, v4

    goto :goto_31

    :cond_2d
    move v3, v2

    goto :goto_31

    :cond_2f
    move v3, v2

    move v4, v3

    :goto_31
    const v6, -0x38e38e3

    move v7, v6

    :goto_35
    if-ge v4, v0, :cond_55

    .line 117
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8, p1}, Lkotlin/text/CharsKt__CharJVMKt;->digitOf(CI)I

    move-result v8

    if-gez v8, :cond_42

    return-object v1

    :cond_42
    if-ge v2, v7, :cond_4b

    if-ne v7, v6, :cond_4a

    .line 122
    div-int v7, v5, p1

    if-ge v2, v7, :cond_4b

    :cond_4a
    return-object v1

    :cond_4b
    mul-int/2addr v2, p1

    add-int v9, v5, v8

    if-ge v2, v9, :cond_51

    return-object v1

    :cond_51
    sub-int/2addr v2, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    :cond_55
    if-eqz v3, :cond_5c

    .line 139
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_5c
    neg-int p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 152
    invoke-static {p0, v0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toLongOrNull(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static final toLongOrNull(Ljava/lang/String;I)Ljava/lang/Long;
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-static {v1}, Lkotlin/text/CharsKt__CharJVMKt;->checkRadix(I)I

    .line 164
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_14

    return-object v3

    :cond_14
    const/4 v4, 0x0

    .line 171
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v5, v6, :cond_39

    const/4 v6, 0x1

    if-ne v2, v6, :cond_26

    return-object v3

    :cond_26
    const/16 v9, 0x2b

    if-eq v5, v9, :cond_33

    const/16 v4, 0x2d

    if-eq v5, v4, :cond_2f

    return-object v3

    :cond_2f
    const-wide/high16 v7, -0x8000000000000000L

    move v4, v6

    goto :goto_3a

    :cond_33
    move/from16 v19, v6

    move v6, v4

    move/from16 v4, v19

    goto :goto_3a

    :cond_39
    move v6, v4

    :goto_3a
    const-wide v9, -0x38e38e38e38e38eL    # -2.772000429909333E291

    const-wide/16 v11, 0x0

    move-wide v13, v9

    :goto_42
    if-ge v4, v2, :cond_73

    .line 197
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v1}, Lkotlin/text/CharsKt__CharJVMKt;->digitOf(CI)I

    move-result v5

    if-gez v5, :cond_4f

    return-object v3

    :cond_4f
    cmp-long v15, v11, v13

    if-gez v15, :cond_5f

    cmp-long v13, v13, v9

    if-nez v13, :cond_63

    int-to-long v13, v1

    .line 202
    div-long v13, v7, v13

    cmp-long v15, v11, v13

    if-gez v15, :cond_5f

    return-object v3

    :cond_5f
    move-object v15, v3

    move/from16 v16, v4

    goto :goto_64

    :cond_63
    return-object v3

    :goto_64
    int-to-long v3, v1

    mul-long/2addr v11, v3

    int-to-long v3, v5

    add-long v17, v7, v3

    cmp-long v5, v11, v17

    if-gez v5, :cond_6e

    return-object v15

    :cond_6e
    sub-long/2addr v11, v3

    add-int/lit8 v4, v16, 0x1

    move-object v3, v15

    goto :goto_42

    :cond_73
    if-eqz v6, :cond_7a

    .line 219
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_7a
    neg-long v0, v11

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
