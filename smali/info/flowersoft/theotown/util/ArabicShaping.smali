###### Class info.flowersoft.theotown.util.ArabicShaping (info.flowersoft.theotown.util.ArabicShaping)
.class public final Linfo/flowersoft/theotown/util/ArabicShaping;
.super Ljava/lang/Object;
.source "ArabicShaping.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;,
        Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;,
        Linfo/flowersoft/theotown/util/ArabicShaping$Rule;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nArabicShaping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArabicShaping.kt\ninfo/flowersoft/theotown/util/ArabicShaping\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,276:1\n2208#2,3:277\n2208#2,2:280\n2208#2,3:282\n2210#2:285\n*S KotlinDebug\n*F\n+ 1 ArabicShaping.kt\ninfo/flowersoft/theotown/util/ArabicShaping\n*L\n143#1:277,3\n164#1:280,2\n178#1:282,3\n164#1:285\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Linfo/flowersoft/theotown/util/ArabicShaping;

.field public static final charVariants:Lcom/badlogic/gdx/utils/IntIntMap;

.field public static final rules:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Linfo/flowersoft/theotown/util/ArabicShaping$Rule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Linfo/flowersoft/theotown/util/ArabicShaping;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/ArabicShaping;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/util/ArabicShaping;->INSTANCE:Linfo/flowersoft/theotown/util/ArabicShaping;

    .line 24
    new-instance v0, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/util/ArabicShaping;->rules:Lcom/badlogic/gdx/utils/IntMap;

    .line 30
    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/util/ArabicShaping;->charVariants:Lcom/badlogic/gdx/utils/IntIntMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final containsRules(Lcom/badlogic/gdx/utils/IntArray;)Z
    .registers 6

    const-string v0, "codePoints"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iget v0, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v2, v0, :cond_1a

    .line 111
    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v3

    .line 112
    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/util/ArabicShaping;->getRule(I)Linfo/flowersoft/theotown/util/ArabicShaping$Rule;

    move-result-object v3

    if-eqz v3, :cond_17

    const/4 p1, 0x1

    return p1

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1a
    return v1
.end method

.method public final containsRules(Ljava/lang/String;)Z
    .registers 6

    const-string v0, "str"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 98
    :goto_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 99
    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 100
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/util/ArabicShaping;->getRule(I)Linfo/flowersoft/theotown/util/ArabicShaping$Rule;

    move-result-object v3

    if-eqz v3, :cond_19

    const/4 p1, 0x1

    return p1

    .line 101
    :cond_19
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_7

    :cond_1f
    return v0
.end method

.method public final getCodePoints()[I
    .registers 2

    .line 35
    sget-object v0, Linfo/flowersoft/theotown/util/ArabicShaping;->rules:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap;->keys()Lcom/badlogic/gdx/utils/IntMap$Keys;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap$Keys;->toArray()Lcom/badlogic/gdx/utils/IntArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntArray;->toArray()[I

    move-result-object v0

    return-object v0
.end method

.method public final getRule(I)Linfo/flowersoft/theotown/util/ArabicShaping$Rule;
    .registers 3

    .line 120
    sget-object v0, Linfo/flowersoft/theotown/util/ArabicShaping;->rules:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/util/ArabicShaping$Rule;

    return-object p1
.end method

.method public final getVariant(ILinfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;)I
    .registers 6

    const-string v0, "form"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/util/ArabicShaping;->getVariantKey(ILinfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;)I

    move-result v0

    .line 260
    sget-object v1, Linfo/flowersoft/theotown/util/ArabicShaping;->charVariants:Lcom/badlogic/gdx/utils/IntIntMap;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/badlogic/gdx/utils/IntIntMap;->get(II)I

    move-result v0

    if-eqz v0, :cond_13

    return v0

    .line 263
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find variant "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " for character "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " aka "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char p2, p1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return p1
.end method

.method public final getVariantKey(ILinfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;)I
    .registers 4

    const v0, 0x3fffffff    # 1.9999999f

    and-int/2addr p1, v0

    .line 273
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    shl-int/lit8 p2, p2, 0x1e

    or-int/2addr p1, p2

    return p1
.end method

.method public final init(Ljava/util/List;Ljava/util/List;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "shapingLines"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "mappingLines"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    sget-object v2, Linfo/flowersoft/theotown/util/ArabicShaping;->rules:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/IntMap;->clear()V

    .line 141
    sget-object v2, Linfo/flowersoft/theotown/util/ArabicShaping;->charVariants:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/IntIntMap;->clear()V

    .line 143
    check-cast v0, Ljava/lang/Iterable;

    .line 2209
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, ": "

    const-string v6, ";"

    const/16 v7, 0x23

    const/16 v8, 0x10

    if-eqz v4, :cond_be

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v9, v3, 0x1

    if-gez v3, :cond_39

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    :cond_39
    check-cast v4, Ljava/lang/String;

    .line 144
    sget-object v3, Linfo/flowersoft/theotown/util/ArabicShaping;->INSTANCE:Linfo/flowersoft/theotown/util/ArabicShaping;

    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/util/ArabicShaping;->stripCR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 146
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_48

    goto :goto_9b

    :cond_48
    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_4f

    goto :goto_9b

    .line 151
    :cond_4f
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x6

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 152
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_9d

    .line 157
    new-instance v4, Linfo/flowersoft/theotown/util/ArabicShaping$Rule;

    .line 158
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8}, Lkotlin/text/CharsKt__CharJVMKt;->checkRadix(I)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 159
    sget-object v6, Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;->Companion:Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType$Companion;

    const/4 v7, 0x2

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType$Companion;->parse(Ljava/lang/String;)Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;

    move-result-object v3

    .line 157
    invoke-direct {v4, v5, v3}, Linfo/flowersoft/theotown/util/ArabicShaping$Rule;-><init>(ILinfo/flowersoft/theotown/util/ArabicShaping$JoiningType;)V

    .line 161
    sget-object v3, Linfo/flowersoft/theotown/util/ArabicShaping;->rules:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/util/ArabicShaping$Rule;->getCode()I

    move-result v5

    invoke-virtual {v3, v5, v4}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_9b
    move v3, v9

    goto :goto_20

    .line 153
    :cond_9d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid shaping format in line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    :cond_be
    move-object v0, v1

    check-cast v0, Ljava/lang/Iterable;

    .line 2209
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v2

    :goto_c6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    if-gez v1, :cond_d7

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    :cond_d7
    check-cast v3, Ljava/lang/String;

    .line 165
    sget-object v1, Linfo/flowersoft/theotown/util/ArabicShaping;->INSTANCE:Linfo/flowersoft/theotown/util/ArabicShaping;

    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/util/ArabicShaping;->stripCR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 167
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_e7

    goto/16 :goto_15a

    :cond_e7
    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_ee

    goto :goto_15a

    .line 172
    :cond_ee
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x6

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 173
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v10, 0x5

    if-ne v3, v10, :cond_15d

    .line 177
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v8}, Lkotlin/text/CharsKt__CharJVMKt;->checkRadix(I)I

    move-result v9

    invoke-static {v3, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 178
    invoke-static {}, Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v9

    .line 2209
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v10, v2

    :goto_118
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_15a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v12, v10, 0x1

    if-gez v10, :cond_129

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    :cond_129
    check-cast v11, Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;

    .line 179
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v10}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_158

    .line 180
    sget-object v10, Linfo/flowersoft/theotown/util/ArabicShaping;->charVariants:Lcom/badlogic/gdx/utils/IntIntMap;

    .line 181
    sget-object v13, Linfo/flowersoft/theotown/util/ArabicShaping;->INSTANCE:Linfo/flowersoft/theotown/util/ArabicShaping;

    invoke-virtual {v13, v3, v11}, Linfo/flowersoft/theotown/util/ArabicShaping;->getVariantKey(ILinfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;)I

    move-result v11

    .line 182
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v8}, Lkotlin/text/CharsKt__CharJVMKt;->checkRadix(I)I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v13

    .line 180
    invoke-virtual {v10, v11, v13}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    :cond_158
    move v10, v12

    goto :goto_118

    :cond_15a
    :goto_15a
    move v1, v4

    goto/16 :goto_c6

    .line 174
    :cond_15d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid mapping format in line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_17e
    return-void
.end method

.method public final resolve(ILinfo/flowersoft/theotown/util/ArabicShaping$Rule;Linfo/flowersoft/theotown/util/ArabicShaping$Rule;Linfo/flowersoft/theotown/util/ArabicShaping$Rule;)I
    .registers 6

    const-string v0, "charRule"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    sget-object v0, Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;->Companion:Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm$Companion;

    .line 129
    invoke-virtual {p3, p2}, Linfo/flowersoft/theotown/util/ArabicShaping$Rule;->canJoinLeft(Linfo/flowersoft/theotown/util/ArabicShaping$Rule;)Z

    move-result p2

    .line 130
    invoke-virtual {p3, p4}, Linfo/flowersoft/theotown/util/ArabicShaping$Rule;->canJoinRight(Linfo/flowersoft/theotown/util/ArabicShaping$Rule;)Z

    move-result p3

    .line 128
    invoke-virtual {v0, p2, p3}, Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm$Companion;->fromJoin(ZZ)Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;

    move-result-object p2

    .line 126
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/util/ArabicShaping;->getVariant(ILinfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;)I

    move-result p1

    return p1
.end method

.method public final stripCR(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 193
    const-string v2, "\r"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3, v0, v1}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 194
    const-string v2, "\r"

    const-string v3, ""

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_18
    move-object v1, p1

    return-object v1
.end method

.method public final transform(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const-string v0, "str"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/ArabicShaping;->containsRules(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    return-object p1

    .line 69
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 72
    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    move v3, v1

    move v4, v3

    .line 75
    :goto_18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_4b

    .line 76
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v3, v5

    .line 79
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    goto :goto_2f

    :cond_2e
    move v5, v1

    .line 81
    :goto_2f
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/util/ArabicShaping;->getRule(I)Linfo/flowersoft/theotown/util/ArabicShaping$Rule;

    move-result-object v6

    if-eqz v6, :cond_45

    .line 83
    invoke-virtual {p0, v4}, Linfo/flowersoft/theotown/util/ArabicShaping;->getRule(I)Linfo/flowersoft/theotown/util/ArabicShaping$Rule;

    move-result-object v4

    .line 84
    invoke-virtual {p0, v5}, Linfo/flowersoft/theotown/util/ArabicShaping;->getRule(I)Linfo/flowersoft/theotown/util/ArabicShaping$Rule;

    move-result-object v7

    .line 85
    invoke-virtual {p0, v2, v4, v6, v7}, Linfo/flowersoft/theotown/util/ArabicShaping;->resolve(ILinfo/flowersoft/theotown/util/ArabicShaping$Rule;Linfo/flowersoft/theotown/util/ArabicShaping$Rule;Linfo/flowersoft/theotown/util/ArabicShaping$Rule;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_48

    .line 87
    :cond_45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    :goto_48
    move v4, v2

    move v2, v5

    goto :goto_18

    .line 90
    :cond_4b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "toString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final transformInplace(Lcom/badlogic/gdx/utils/IntArray;)V
    .registers 8

    const-string v0, "codePoints"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget v0, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-nez v0, :cond_a

    goto :goto_39

    :cond_a
    const/4 v1, 0x0

    move v2, v1

    :goto_c
    if-ge v1, v0, :cond_39

    .line 50
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v3

    .line 52
    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/util/ArabicShaping;->getRule(I)Linfo/flowersoft/theotown/util/ArabicShaping$Rule;

    move-result-object v4

    if-eqz v4, :cond_35

    .line 54
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/util/ArabicShaping;->getRule(I)Linfo/flowersoft/theotown/util/ArabicShaping$Rule;

    move-result-object v2

    .line 55
    iget v5, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_2d

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v5

    invoke-virtual {p0, v5}, Linfo/flowersoft/theotown/util/ArabicShaping;->getRule(I)Linfo/flowersoft/theotown/util/ArabicShaping$Rule;

    move-result-object v5

    goto :goto_2e

    :cond_2d
    const/4 v5, 0x0

    .line 56
    :goto_2e
    invoke-virtual {p0, v3, v2, v4, v5}, Linfo/flowersoft/theotown/util/ArabicShaping;->resolve(ILinfo/flowersoft/theotown/util/ArabicShaping$Rule;Linfo/flowersoft/theotown/util/ArabicShaping$Rule;Linfo/flowersoft/theotown/util/ArabicShaping$Rule;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/badlogic/gdx/utils/IntArray;->set(II)V

    :cond_35
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_c

    :cond_39
    :goto_39
    return-void
.end method

###### Class info.flowersoft.theotown.util.ArabicShaping.CharacterForm (info.flowersoft.theotown.util.ArabicShaping$CharacterForm)
.class public final enum Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;
.super Ljava/lang/Enum;
.source "ArabicShaping.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/util/ArabicShaping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CharacterForm"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field public static final synthetic $VALUES:[Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;

.field public static final Companion:Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm$Companion;

.field public static final enum Final:Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;

.field public static final enum Initial:Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;

.field public static final enum Isolated:Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;

.field public static final enum Medial:Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;


# instance fields
.field public final tag:Ljava/lang/String;


# direct methods
.method public static final synthetic $values()[Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;
    .registers 4

    .line 0
    sget-object v0, Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;->Isolated:Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;

    sget-object v1, Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;->Initial:Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;

    sget-object v2, Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;->Medial:Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;

    sget-object v3, Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;->Final:Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;

    filled-new-array {v0, v1, v2, v3}, [Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 240
    new-instance v0, Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;

    const/4 v1, 0x0

    const-string v2, "ISOLATED FORM"

    const-string v3, "Isolated"

    invoke-direct {v0, v3, v1, v2}, Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;->Isolated:Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;

    .line 241
    new-instance v0, Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;

    const/4 v1, 0x1

    const-string v2, "INITIAL FORM"

    const-string v3, "Initial"

    invoke-direct {v0, v3, v1, v2}, Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;->Initial:Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;

    .line 242
    new-instance v0, Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;

    const/4 v1, 0x2

    const-string v2, "MEDIAL FORM"

    const-string v3, "Medial"

    invoke-direct {v0, v3, v1, v2}, Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;->Medial:Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;

    .line 243
    new-instance v0, Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;

    const/4 v1, 0x3

    const-string v2, "FINAL FORM"

    const-string v3, "Final"

    invoke-direct {v0, v3, v1, v2}, Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;->Final:Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;

    invoke-static {}, Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;->$values()[Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;->$VALUES:[Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;->Companion:Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 239
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;->tag:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;
    .registers 2

    .line 0
    const-class v0, Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;

    return-object p0
.end method

.method public static values()[Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;
    .registers 1

    .line 0
    sget-object v0, Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;->$VALUES:[Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;

    return-object v0
.end method


# virtual methods
.method public final getTag()Ljava/lang/String;
    .registers 2

    .line 239
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;->tag:Ljava/lang/String;

    return-object v0
.end method

###### Class info.flowersoft.theotown.util.ArabicShaping.CharacterForm.Companion (info.flowersoft.theotown.util.ArabicShaping$CharacterForm$Companion)
.class public final Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm$Companion;
.super Ljava/lang/Object;
.source "ArabicShaping.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromJoin(ZZ)Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;
    .registers 3

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    .line 247
    sget-object p1, Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;->Medial:Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;

    return-object p1

    :cond_7
    if-eqz p1, :cond_e

    if-nez p2, :cond_e

    .line 248
    sget-object p1, Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;->Initial:Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;

    return-object p1

    :cond_e
    if-nez p1, :cond_15

    if-eqz p2, :cond_15

    .line 249
    sget-object p1, Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;->Final:Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;

    return-object p1

    .line 250
    :cond_15
    sget-object p1, Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;->Isolated:Linfo/flowersoft/theotown/util/ArabicShaping$CharacterForm;

    return-object p1
.end method

###### Class info.flowersoft.theotown.util.ArabicShaping.JoiningType (info.flowersoft.theotown.util.ArabicShaping$JoiningType)
.class public final enum Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;
.super Ljava/lang/Enum;
.source "ArabicShaping.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/util/ArabicShaping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JoiningType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field public static final synthetic $VALUES:[Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;

.field public static final Companion:Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType$Companion;

.field public static final enum DualJoining:Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;

.field public static final enum JoinCausing:Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;

.field public static final enum LeftJoining:Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;

.field public static final enum NonJoining:Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;

.field public static final enum RightJoining:Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;

.field public static final enum Transparent:Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;


# instance fields
.field public final joinsLeft:Z

.field public final joinsRight:Z

.field public final tag:Ljava/lang/String;


# direct methods
.method public static final synthetic $values()[Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;
    .registers 6

    .line 0
    sget-object v0, Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;->RightJoining:Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;

    sget-object v1, Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;->LeftJoining:Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;

    sget-object v2, Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;->DualJoining:Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;

    sget-object v3, Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;->JoinCausing:Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;

    sget-object v4, Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;->NonJoining:Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;

    sget-object v5, Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;->Transparent:Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;

    filled-new-array/range {v0 .. v5}, [Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 11

    .line 207
    new-instance v0, Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v1, "RightJoining"

    const/4 v2, 0x0

    const-string v3, "R"

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v0, Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;->RightJoining:Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;

    .line 208
    new-instance v1, Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;

    const/4 v6, 0x0

    const-string v2, "LeftJoining"

    const/4 v3, 0x1

    const-string v4, "L"

    invoke-direct/range {v1 .. v6}, Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v1, Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;->LeftJoining:Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;

    .line 209
    new-instance v2, Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-string v3, "DualJoining"

    const/4 v4, 0x2

    const-string v5, "D"

    invoke-direct/range {v2 .. v7}, Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v2, Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;->DualJoining:Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;

    .line 210
    new-instance v3, Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;

    const/4 v8, 0x1

    const-string v4, "JoinCausing"

    const/4 v5, 0x3

    const-string v6, "C"

    invoke-direct/range {v3 .. v8}, Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v3, Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;->JoinCausing:Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;

    .line 211
    new-instance v4, Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v5, "NonJoining"

    const/4 v6, 0x4

    const-string v7, "U"

    invoke-direct/range {v4 .. v9}, Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v4, Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;->NonJoining:Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;

    .line 212
    new-instance v5, Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;

    const/4 v10, 0x0

    const-string v6, "Transparent"

    const/4 v7, 0x5

    const-string v8, "T"

    invoke-direct/range {v5 .. v10}, Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v5, Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;->Transparent:Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;

    invoke-static {}, Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;->$values()[Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;->$VALUES:[Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;->Companion:Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;ZZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .line 202
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 203
    iput-object p3, p0, Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;->tag:Ljava/lang/String;

    .line 204
    iput-boolean p4, p0, Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;->joinsLeft:Z

    .line 205
    iput-boolean p5, p0, Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;->joinsRight:Z

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;
    .registers 2

    .line 0
    const-class v0, Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;

    return-object p0
.end method

.method public static values()[Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;
    .registers 1

    .line 0
    sget-object v0, Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;->$VALUES:[Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;

    return-object v0
.end method


# virtual methods
.method public final getJoinsLeft()Z
    .registers 2

    .line 204
    iget-boolean v0, p0, Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;->joinsLeft:Z

    return v0
.end method

.method public final getJoinsRight()Z
    .registers 2

    .line 205
    iget-boolean v0, p0, Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;->joinsRight:Z

    return v0
.end method

.method public final getTag()Ljava/lang/String;
    .registers 2

    .line 203
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;->tag:Ljava/lang/String;

    return-object v0
.end method

###### Class info.flowersoft.theotown.util.ArabicShaping.JoiningType.Companion (info.flowersoft.theotown.util.ArabicShaping$JoiningType$Companion)
.class public final Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType$Companion;
.super Ljava/lang/Object;
.source "ArabicShaping.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nArabicShaping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArabicShaping.kt\ninfo/flowersoft/theotown/util/ArabicShaping$JoiningType$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,276:1\n231#2,2:277\n*S KotlinDebug\n*F\n+ 1 ArabicShaping.kt\ninfo/flowersoft/theotown/util/ArabicShaping$JoiningType$Companion\n*L\n215#1:277,2\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse(Ljava/lang/String;)Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;
    .registers 5

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    invoke-static {}, Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v0

    .line 231
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;

    .line 215
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    return-object v1

    .line 232
    :cond_24
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v0, "Collection contains no element matching the predicate."

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class info.flowersoft.theotown.util.ArabicShaping.Rule (info.flowersoft.theotown.util.ArabicShaping$Rule)
.class public final Linfo/flowersoft/theotown/util/ArabicShaping$Rule;
.super Ljava/lang/Object;
.source "ArabicShaping.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/util/ArabicShaping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Rule"
.end annotation


# instance fields
.field public final code:I

.field public final joiningType:Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;


# direct methods
.method public constructor <init>(ILinfo/flowersoft/theotown/util/ArabicShaping$JoiningType;)V
    .registers 4

    const-string v0, "joiningType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput p1, p0, Linfo/flowersoft/theotown/util/ArabicShaping$Rule;->code:I

    .line 224
    iput-object p2, p0, Linfo/flowersoft/theotown/util/ArabicShaping$Rule;->joiningType:Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;

    return-void
.end method

.method public static synthetic copy$default(Linfo/flowersoft/theotown/util/ArabicShaping$Rule;ILinfo/flowersoft/theotown/util/ArabicShaping$JoiningType;ILjava/lang/Object;)Linfo/flowersoft/theotown/util/ArabicShaping$Rule;
    .registers 5

    .line 0
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget p1, p0, Linfo/flowersoft/theotown/util/ArabicShaping$Rule;->code:I

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Linfo/flowersoft/theotown/util/ArabicShaping$Rule;->joiningType:Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;

    :cond_c
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/util/ArabicShaping$Rule;->copy(ILinfo/flowersoft/theotown/util/ArabicShaping$JoiningType;)Linfo/flowersoft/theotown/util/ArabicShaping$Rule;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final canJoinLeft(Linfo/flowersoft/theotown/util/ArabicShaping$Rule;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 228
    :cond_4
    iget-object v1, p0, Linfo/flowersoft/theotown/util/ArabicShaping$Rule;->joiningType:Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;->getJoinsLeft()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object p1, p1, Linfo/flowersoft/theotown/util/ArabicShaping$Rule;->joiningType:Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;->getJoinsRight()Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    return p1

    :cond_16
    return v0
.end method

.method public final canJoinRight(Linfo/flowersoft/theotown/util/ArabicShaping$Rule;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 232
    :cond_4
    iget-object v1, p0, Linfo/flowersoft/theotown/util/ArabicShaping$Rule;->joiningType:Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;->getJoinsRight()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object p1, p1, Linfo/flowersoft/theotown/util/ArabicShaping$Rule;->joiningType:Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;->getJoinsLeft()Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    return p1

    :cond_16
    return v0
.end method

.method public final component1()I
    .registers 2

    .line 0
    iget v0, p0, Linfo/flowersoft/theotown/util/ArabicShaping$Rule;->code:I

    return v0
.end method

.method public final component2()Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ArabicShaping$Rule;->joiningType:Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;

    return-object v0
.end method

.method public final copy(ILinfo/flowersoft/theotown/util/ArabicShaping$JoiningType;)Linfo/flowersoft/theotown/util/ArabicShaping$Rule;
    .registers 4

    .line 0
    const-string v0, "joiningType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Linfo/flowersoft/theotown/util/ArabicShaping$Rule;

    invoke-direct {v0, p1, p2}, Linfo/flowersoft/theotown/util/ArabicShaping$Rule;-><init>(ILinfo/flowersoft/theotown/util/ArabicShaping$JoiningType;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Linfo/flowersoft/theotown/util/ArabicShaping$Rule;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Linfo/flowersoft/theotown/util/ArabicShaping$Rule;

    iget v1, p0, Linfo/flowersoft/theotown/util/ArabicShaping$Rule;->code:I

    iget v3, p1, Linfo/flowersoft/theotown/util/ArabicShaping$Rule;->code:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Linfo/flowersoft/theotown/util/ArabicShaping$Rule;->joiningType:Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;

    iget-object p1, p1, Linfo/flowersoft/theotown/util/ArabicShaping$Rule;->joiningType:Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;

    if-eq v1, p1, :cond_1a

    return v2

    :cond_1a
    return v0
.end method

.method public final getCode()I
    .registers 2

    .line 223
    iget v0, p0, Linfo/flowersoft/theotown/util/ArabicShaping$Rule;->code:I

    return v0
.end method

.method public final getJoiningType()Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;
    .registers 2

    .line 224
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ArabicShaping$Rule;->joiningType:Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget v0, p0, Linfo/flowersoft/theotown/util/ArabicShaping$Rule;->code:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Linfo/flowersoft/theotown/util/ArabicShaping$Rule;->joiningType:Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rule(code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Linfo/flowersoft/theotown/util/ArabicShaping$Rule;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", joiningType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/util/ArabicShaping$Rule;->joiningType:Linfo/flowersoft/theotown/util/ArabicShaping$JoiningType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
