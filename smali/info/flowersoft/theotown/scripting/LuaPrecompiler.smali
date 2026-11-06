###### Class info.flowersoft.theotown.scripting.LuaPrecompiler (info.flowersoft.theotown.scripting.LuaPrecompiler)
.class public Linfo/flowersoft/theotown/scripting/LuaPrecompiler;
.super Ljava/lang/Object;
.source "LuaPrecompiler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public precompile(Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    .line 15
    :goto_12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xa

    if-ge v4, v6, :cond_1a6

    .line 16
    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    const/4 v7, -0x1

    .line 18
    const-string v8, ""

    if-ne v6, v7, :cond_2c

    .line 19
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    goto :goto_4a

    :cond_2c
    if-ne v6, v4, :cond_33

    add-int/lit8 v4, v4, 0x1

    move v6, v4

    move-object v4, v8

    goto :goto_4a

    :cond_33
    if-lez v6, :cond_44

    add-int/lit8 v7, v6, -0x1

    .line 25
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0xd

    if-ne v9, v10, :cond_44

    .line 26
    invoke-virtual {p1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_48

    .line 28
    :cond_44
    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :goto_48
    add-int/lit8 v6, v6, 0x1

    .line 32
    :goto_4a
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1a0

    if-nez v5, :cond_b4

    .line 33
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "#define "

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b4

    const/16 v7, 0x8

    .line 35
    :goto_62
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v7, v9, :cond_75

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_75

    add-int/lit8 v7, v7, 0x1

    goto :goto_62

    :cond_75
    move v9, v7

    .line 37
    :goto_76
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_89

    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v10

    if-eqz v10, :cond_89

    add-int/lit8 v9, v9, 0x1

    goto :goto_76

    :cond_89
    if-le v9, v7, :cond_af

    .line 39
    invoke-virtual {v4, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 42
    :goto_8f
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_a2

    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v10

    if-eqz v10, :cond_a2

    add-int/lit8 v9, v9, 0x1

    goto :goto_8f

    .line 44
    :cond_a2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_af

    .line 45
    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 47
    invoke-interface {v2, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_af
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1a3

    :cond_b4
    move v7, v3

    .line 53
    :goto_b5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_195

    .line 54
    :goto_bb
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_163

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v8

    if-eqz v8, :cond_cd

    if-eqz v5, :cond_163

    .line 55
    :cond_cd
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/4 v9, 0x1

    if-eqz v5, :cond_ea

    const/16 v10, 0x5d

    if-ne v8, v10, :cond_160

    add-int/lit8 v8, v7, 0x1

    .line 57
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v8, v11, :cond_160

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v10, :cond_160

    move v5, v3

    move v7, v8

    goto/16 :goto_160

    .line 62
    :cond_ea
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v10, 0x22

    if-eq v8, v10, :cond_12e

    const/16 v10, 0x27

    if-ne v8, v10, :cond_f6

    goto :goto_12e

    :cond_f6
    const/16 v10, 0x2d

    if-ne v8, v10, :cond_160

    add-int/lit8 v8, v7, 0x1

    .line 74
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v8, v11, :cond_160

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_160

    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    sub-int/2addr v8, v9

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/lit8 v8, v7, 0x3

    .line 76
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v8, v10, :cond_129

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v10, 0x5b

    if-ne v7, v10, :cond_129

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_129

    move v5, v9

    .line 79
    :cond_129
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    goto :goto_160

    :cond_12e
    :goto_12e
    add-int/lit8 v7, v7, 0x1

    .line 65
    :goto_130
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v7, v10, :cond_15d

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v8, :cond_15d

    .line 66
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x5c

    if-ne v10, v11, :cond_15b

    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v10, v11, :cond_15b

    .line 68
    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v7, v10

    :cond_15b
    add-int/2addr v7, v9

    goto :goto_130

    .line 73
    :cond_15d
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_160
    :goto_160
    add-int/2addr v7, v9

    goto/16 :goto_bb

    :cond_163
    move v8, v7

    .line 85
    :goto_164
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_177

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v9

    if-eqz v9, :cond_177

    add-int/lit8 v8, v8, 0x1

    goto :goto_164

    :cond_177
    if-ge v7, v8, :cond_192

    .line 87
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v7, v9, :cond_192

    .line 88
    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 89
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_18f

    .line 91
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_192

    .line 93
    :cond_18f
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_192
    :goto_192
    move v7, v8

    goto/16 :goto_b5

    .line 99
    :cond_195
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1a3

    .line 103
    :cond_1a0
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1a3
    move v4, v6

    goto/16 :goto_12

    .line 107
    :cond_1a6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    :goto_1ab
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_1c2

    if-lez v3, :cond_1b6

    .line 110
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    :cond_1b6
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1ab

    .line 114
    :cond_1c2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
