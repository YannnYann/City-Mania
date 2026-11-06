###### Class io.blueflower.stapel2d.gui.TextFrame (io.blueflower.stapel2d.gui.TextFrame)
.class public Lio/blueflower/stapel2d/gui/TextFrame;
.super Lio/blueflower/stapel2d/gui/Label;
.source "TextFrame.java"


# instance fields
.field public bold:Z

.field public lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public textHeight:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 7

    .line 22
    invoke-direct/range {p0 .. p6}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object p1, p0

    const/4 p2, -0x1

    .line 18
    iput p2, p1, Lio/blueflower/stapel2d/gui/TextFrame;->textHeight:I

    .line 24
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/TextFrame;->calculateTextHeight()I

    return-void
.end method

.method public static appendWrappedSegment(Ljava/lang/String;Ljava/util/List;Ljava/lang/StringBuilder;ILio/blueflower/stapel2d/drawing/Font;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            "I",
            "Lio/blueflower/stapel2d/drawing/Font;",
            ")V"
        }
    .end annotation

    .line 169
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v0

    int-to-float v2, p3

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2d

    .line 170
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 174
    :cond_2d
    invoke-virtual {p4, p0}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v0

    int-to-float p3, p3

    cmpg-float v0, v0, p3

    if-gtz v0, :cond_3a

    .line 175
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_3a
    move v0, v1

    .line 181
    :goto_3b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_79

    .line 182
    invoke-static {p0, v0}, Lio/blueflower/stapel2d/gui/TextFrame;->nextCharacterBoundary(Ljava/lang/String;I)I

    move-result v2

    .line 183
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_74

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v3

    cmpl-float v3, v3, p3

    if-lez v3, :cond_74

    .line 186
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 189
    :cond_74
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    goto :goto_3b

    :cond_79
    return-void
.end method

.method public static calculateLines(Ljava/lang/String;ILio/blueflower/stapel2d/drawing/Font;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lio/blueflower/stapel2d/drawing/Font;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    const-string v1, "\\n"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 124
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_f
    if-ge v3, v1, :cond_4e

    aget-object v4, p0, v3

    .line 125
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v6, v2

    :goto_19
    move v7, v6

    .line 128
    :cond_1a
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v6, v8, :cond_37

    .line 129
    invoke-virtual {v4, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    .line 130
    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    add-int/2addr v6, v9

    .line 132
    invoke-static {v8}, Lio/blueflower/stapel2d/gui/TextFrame;->isLineBreakOpportunity(I)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 134
    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 133
    invoke-static {v7, v0, v5, p1, p2}, Lio/blueflower/stapel2d/gui/TextFrame;->appendWrappedSegment(Ljava/lang/String;Ljava/util/List;Ljava/lang/StringBuilder;ILio/blueflower/stapel2d/drawing/Font;)V

    goto :goto_19

    .line 141
    :cond_37
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v7, v6, :cond_44

    .line 143
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 142
    invoke-static {v4, v0, v5, p1, p2}, Lio/blueflower/stapel2d/gui/TextFrame;->appendWrappedSegment(Ljava/lang/String;Ljava/util/List;Ljava/lang/StringBuilder;ILio/blueflower/stapel2d/drawing/Font;)V

    .line 145
    :cond_44
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_4e
    return-object v0
.end method

.method public static isCjk(I)Z
    .registers 2

    .line 158
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object p0

    .line 159
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1f

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1f

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1f

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1f

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1f

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HANGUL_SYLLABLES:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    return p0

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    return p0
.end method

.method public static isEmojiModifier(I)Z
    .registers 2

    .line 0
    const v0, 0x1f3fb

    if-lt p0, v0, :cond_c

    const v0, 0x1f3ff

    if-gt p0, v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static isLineBreakOpportunity(I)Z
    .registers 2

    .line 154
    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Lio/blueflower/stapel2d/gui/TextFrame;->isCjk(I)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public static isRegionalIndicator(I)Z
    .registers 2

    .line 0
    const v0, 0x1f1e6

    if-lt p0, v0, :cond_c

    const v0, 0x1f1ff

    if-gt p0, v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static isVariationSelector(I)Z
    .registers 2

    .line 0
    const v0, 0xfe0e

    if-eq p0, v0, :cond_17

    const v0, 0xfe0f

    if-eq p0, v0, :cond_17

    const v0, 0xe0100

    if-lt p0, v0, :cond_15

    const v0, 0xe01ef

    if-gt p0, v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method

.method public static nextCharacterBoundary(Ljava/lang/String;I)I
    .registers 6

    .line 195
    invoke-virtual {p0, p1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 196
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr p1, v1

    .line 197
    invoke-static {v0}, Lio/blueflower/stapel2d/gui/TextFrame;->isRegionalIndicator(I)Z

    move-result v0

    .line 199
    :cond_d
    :goto_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_5f

    .line 200
    invoke-virtual {p0, p1}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 201
    invoke-static {v1}, Ljava/lang/Character;->getType(I)I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_5a

    const/16 v3, 0x8

    if-eq v2, v3, :cond_5a

    const/4 v3, 0x7

    if-eq v2, v3, :cond_5a

    .line 206
    invoke-static {v1}, Lio/blueflower/stapel2d/gui/TextFrame;->isVariationSelector(I)Z

    move-result v2

    if-nez v2, :cond_5a

    .line 207
    invoke-static {v1}, Lio/blueflower/stapel2d/gui/TextFrame;->isEmojiModifier(I)Z

    move-result v2

    if-eqz v2, :cond_32

    goto :goto_5a

    :cond_32
    const/16 v2, 0x200d

    if-ne v1, v2, :cond_4b

    .line 210
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr p1, v1

    .line 211
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_d

    .line 212
    invoke-virtual {p0, p1}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    :goto_49
    add-int/2addr p1, v1

    goto :goto_d

    :cond_4b
    if-eqz v0, :cond_5f

    .line 214
    invoke-static {v1}, Lio/blueflower/stapel2d/gui/TextFrame;->isRegionalIndicator(I)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 215
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr p1, v0

    const/4 v0, 0x0

    goto :goto_d

    .line 208
    :cond_5a
    :goto_5a
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    goto :goto_49

    :cond_5f
    return p1
.end method


# virtual methods
.method public calculateTextHeight()I
    .registers 5

    .line 105
    iget v0, p0, Lio/blueflower/stapel2d/gui/TextFrame;->textHeight:I

    if-ltz v0, :cond_5

    return v0

    .line 107
    :cond_5
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Label;->text:Ljava/lang/String;

    if-eqz v0, :cond_29

    .line 108
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Label;->font:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Font;->getHeight()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 109
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v1

    .line 111
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Label;->text:Ljava/lang/String;

    iget-object v3, p0, Lio/blueflower/stapel2d/gui/Label;->font:Lio/blueflower/stapel2d/drawing/Font;

    invoke-static {v2, v1, v3}, Lio/blueflower/stapel2d/gui/TextFrame;->calculateLines(Ljava/lang/String;ILio/blueflower/stapel2d/drawing/Font;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/blueflower/stapel2d/gui/TextFrame;->lines:Ljava/util/List;

    .line 112
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lio/blueflower/stapel2d/gui/TextFrame;->textHeight:I

    return v0

    :cond_29
    const/4 v0, 0x0

    return v0
.end method

.method public draw(II)V
    .registers 17

    .line 74
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Label;->text:Ljava/lang/String;

    if-eqz v0, :cond_96

    .line 75
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Label;->font:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Font;->getHeight()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 77
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Label;->getColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 79
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingLeft()I

    move-result v1

    .line 80
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v2

    const/4 v3, 0x0

    .line 81
    :goto_22
    iget-object v4, p0, Lio/blueflower/stapel2d/gui/TextFrame;->lines:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_8d

    .line 82
    iget-object v4, p0, Lio/blueflower/stapel2d/gui/TextFrame;->lines:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    .line 83
    iget-object v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v5, v4, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v6, p0, Lio/blueflower/stapel2d/gui/Label;->font:Lio/blueflower/stapel2d/drawing/Font;

    iget v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v4, p1

    add-int/2addr v4, v1

    int-to-float v8, v4

    iget v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int v4, v4, p2

    add-int/2addr v4, v2

    int-to-float v4, v4

    iget v9, p0, Lio/blueflower/stapel2d/gui/Label;->alignmentY:F

    .line 85
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v10

    iget v11, p0, Lio/blueflower/stapel2d/gui/TextFrame;->textHeight:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    mul-float/2addr v9, v10

    add-float/2addr v9, v4

    iget v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v10, v4

    iget v12, p0, Lio/blueflower/stapel2d/gui/Label;->alignmentX:F

    const/4 v13, 0x0

    const/4 v11, 0x0

    .line 83
    invoke-virtual/range {v5 .. v13}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    .line 88
    iget-boolean v4, p0, Lio/blueflower/stapel2d/gui/TextFrame;->bold:Z

    if-eqz v4, :cond_89

    .line 89
    iget-object v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v5, v4, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v6, p0, Lio/blueflower/stapel2d/gui/Label;->font:Lio/blueflower/stapel2d/drawing/Font;

    iget v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v4, p1

    add-int/2addr v4, v1

    int-to-float v4, v4

    const v8, 0x3e4ccccd    # 0.2f

    add-float/2addr v8, v4

    iget v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int v4, v4, p2

    add-int/2addr v4, v2

    int-to-float v4, v4

    iget v9, p0, Lio/blueflower/stapel2d/gui/Label;->alignmentY:F

    .line 91
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v10

    iget v11, p0, Lio/blueflower/stapel2d/gui/TextFrame;->textHeight:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    mul-float/2addr v9, v10

    add-float/2addr v9, v4

    iget v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v10, v4

    iget v12, p0, Lio/blueflower/stapel2d/gui/Label;->alignmentX:F

    const/4 v13, 0x0

    const/4 v11, 0x0

    .line 89
    invoke-virtual/range {v5 .. v13}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    :cond_89
    add-int/2addr v2, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 98
    :cond_8d
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 101
    :cond_96
    invoke-virtual/range {p0 .. p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public final invokeChange()V
    .registers 2

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Lio/blueflower/stapel2d/gui/TextFrame;->textHeight:I

    .line 69
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/TextFrame;->calculateTextHeight()I

    return-void
.end method

.method public isBold()Z
    .registers 2

    .line 60
    iget-boolean v0, p0, Lio/blueflower/stapel2d/gui/TextFrame;->bold:Z

    return v0
.end method

.method public setBold(Z)V
    .registers 2

    .line 64
    iput-boolean p1, p0, Lio/blueflower/stapel2d/gui/TextFrame;->bold:Z

    return-void
.end method

.method public setFont(Lio/blueflower/stapel2d/drawing/Font;)V
    .registers 2

    .line 37
    invoke-super {p0, p1}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    .line 38
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/TextFrame;->invokeChange()V

    return-void
.end method

.method public setPadding(I)V
    .registers 2

    .line 43
    invoke-super {p0, p1}, Lio/blueflower/stapel2d/gui/Gadget;->setPadding(I)V

    .line 44
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/TextFrame;->invokeChange()V

    return-void
.end method

.method public setPadding(II)V
    .registers 3

    .line 49
    invoke-super {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->setPadding(II)V

    .line 50
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/TextFrame;->invokeChange()V

    return-void
.end method

.method public setPadding(IIII)V
    .registers 5

    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Lio/blueflower/stapel2d/gui/Gadget;->setPadding(IIII)V

    .line 56
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/TextFrame;->invokeChange()V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3

    .line 29
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Label;->text:Ljava/lang/String;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_c

    :cond_b
    return-void

    .line 30
    :cond_c
    :goto_c
    invoke-super {p0, p1}, Lio/blueflower/stapel2d/gui/Label;->setText(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/TextFrame;->invokeChange()V

    return-void
.end method
