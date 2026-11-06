###### Class io.bidmachine.media3.extractor.text.ttml.TtmlStyle (io.bidmachine.media3.extractor.text.ttml.TtmlStyle)
.class public final Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;
.super Ljava/lang/Object;
.source "TtmlStyle.java"


# instance fields
.field public backgroundColor:I

.field public bold:I

.field public extent:Ljava/lang/String;

.field public fontColor:I

.field public fontFamily:Ljava/lang/String;

.field public fontSize:F

.field public fontSizeUnit:I

.field public hasBackgroundColor:Z

.field public hasFontColor:Z

.field public id:Ljava/lang/String;

.field public italic:I

.field public linethrough:I

.field public multiRowAlign:Landroid/text/Layout$Alignment;

.field public origin:Ljava/lang/String;

.field public rubyPosition:I

.field public rubyType:I

.field public shearPercentage:F

.field public textAlign:Landroid/text/Layout$Alignment;

.field public textCombine:I

.field public textEmphasis:Lio/bidmachine/media3/extractor/text/ttml/TextEmphasis;

.field public underline:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 103
    iput v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->linethrough:I

    .line 104
    iput v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->underline:I

    .line 105
    iput v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->bold:I

    .line 106
    iput v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->italic:I

    .line 107
    iput v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->fontSizeUnit:I

    .line 108
    iput v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->rubyType:I

    .line 109
    iput v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->rubyPosition:I

    .line 110
    iput v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->textCombine:I

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 111
    iput v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->shearPercentage:F

    return-void
.end method


# virtual methods
.method public chain(Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;
    .registers 3

    const/4 v0, 0x1

    .line 224
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->inherit(Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;Z)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    move-result-object p1

    return-object p1
.end method

.method public getBackgroundColor()I
    .registers 3

    .line 189
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->hasBackgroundColor:Z

    if-eqz v0, :cond_7

    .line 192
    iget v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->backgroundColor:I

    return v0

    .line 190
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Background color has not been defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getExtent()Ljava/lang/String;
    .registers 2

    .line 413
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->extent:Ljava/lang/String;

    return-object v0
.end method

.method public getFontColor()I
    .registers 3

    .line 171
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->hasFontColor:Z

    if-eqz v0, :cond_7

    .line 174
    iget v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->fontColor:I

    return v0

    .line 172
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Font color has not been defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFontFamily()Ljava/lang/String;
    .registers 2

    .line 161
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->fontFamily:Ljava/lang/String;

    return-object v0
.end method

.method public getFontSize()F
    .registers 2

    .line 391
    iget v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->fontSize:F

    return v0
.end method

.method public getFontSizeUnit()I
    .registers 2

    .line 387
    iget v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->fontSizeUnit:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 307
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMultiRowAlign()Landroid/text/Layout$Alignment;
    .registers 2

    .line 343
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->multiRowAlign:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public getOrigin()Ljava/lang/String;
    .registers 2

    .line 402
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->origin:Ljava/lang/String;

    return-object v0
.end method

.method public getRubyPosition()I
    .registers 2

    .line 327
    iget v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->rubyPosition:I

    return v0
.end method

.method public getRubyType()I
    .registers 2

    .line 317
    iget v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->rubyType:I

    return v0
.end method

.method public getShearPercentage()F
    .registers 2

    .line 213
    iget v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->shearPercentage:F

    return v0
.end method

.method public getStyle()I
    .registers 5

    .line 121
    iget v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->bold:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    iget v2, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->italic:I

    if-ne v2, v1, :cond_a

    return v1

    :cond_a
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_10

    move v0, v2

    goto :goto_11

    :cond_10
    move v0, v1

    .line 124
    :goto_11
    iget v3, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->italic:I

    if-ne v3, v2, :cond_16

    const/4 v1, 0x2

    :cond_16
    or-int/2addr v0, v1

    return v0
.end method

.method public getTextAlign()Landroid/text/Layout$Alignment;
    .registers 2

    .line 332
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->textAlign:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public getTextCombine()Z
    .registers 3

    .line 354
    iget v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->textCombine:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public getTextEmphasis()Lio/bidmachine/media3/extractor/text/ttml/TextEmphasis;
    .registers 2

    .line 365
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->textEmphasis:Lio/bidmachine/media3/extractor/text/ttml/TextEmphasis;

    return-object v0
.end method

.method public hasBackgroundColor()Z
    .registers 2

    .line 203
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->hasBackgroundColor:Z

    return v0
.end method

.method public hasFontColor()Z
    .registers 2

    .line 185
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->hasFontColor:Z

    return v0
.end method

.method public final inherit(Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;Z)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;
    .registers 6

    if-eqz p1, :cond_aa

    .line 242
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->hasFontColor:Z

    if-nez v0, :cond_f

    iget-boolean v0, p1, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->hasFontColor:Z

    if-eqz v0, :cond_f

    .line 243
    iget v0, p1, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->fontColor:I

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->setFontColor(I)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    .line 245
    :cond_f
    iget v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->bold:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_18

    .line 246
    iget v0, p1, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->bold:I

    iput v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->bold:I

    .line 248
    :cond_18
    iget v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->italic:I

    if-ne v0, v1, :cond_20

    .line 249
    iget v0, p1, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->italic:I

    iput v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->italic:I

    .line 251
    :cond_20
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->fontFamily:Ljava/lang/String;

    if-nez v0, :cond_2a

    iget-object v0, p1, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->fontFamily:Ljava/lang/String;

    if-eqz v0, :cond_2a

    .line 252
    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->fontFamily:Ljava/lang/String;

    .line 254
    :cond_2a
    iget v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->linethrough:I

    if-ne v0, v1, :cond_32

    .line 255
    iget v0, p1, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->linethrough:I

    iput v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->linethrough:I

    .line 257
    :cond_32
    iget v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->underline:I

    if-ne v0, v1, :cond_3a

    .line 258
    iget v0, p1, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->underline:I

    iput v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->underline:I

    .line 260
    :cond_3a
    iget v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->rubyPosition:I

    if-ne v0, v1, :cond_42

    .line 261
    iget v0, p1, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->rubyPosition:I

    iput v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->rubyPosition:I

    .line 263
    :cond_42
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->textAlign:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_4c

    iget-object v0, p1, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->textAlign:Landroid/text/Layout$Alignment;

    if-eqz v0, :cond_4c

    .line 264
    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->textAlign:Landroid/text/Layout$Alignment;

    .line 266
    :cond_4c
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->multiRowAlign:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_56

    iget-object v0, p1, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->multiRowAlign:Landroid/text/Layout$Alignment;

    if-eqz v0, :cond_56

    .line 267
    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->multiRowAlign:Landroid/text/Layout$Alignment;

    .line 269
    :cond_56
    iget v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->textCombine:I

    if-ne v0, v1, :cond_5e

    .line 270
    iget v0, p1, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->textCombine:I

    iput v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->textCombine:I

    .line 272
    :cond_5e
    iget v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->fontSizeUnit:I

    if-ne v0, v1, :cond_6a

    .line 273
    iget v0, p1, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->fontSizeUnit:I

    iput v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->fontSizeUnit:I

    .line 274
    iget v0, p1, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->fontSize:F

    iput v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->fontSize:F

    .line 276
    :cond_6a
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->textEmphasis:Lio/bidmachine/media3/extractor/text/ttml/TextEmphasis;

    if-nez v0, :cond_72

    .line 277
    iget-object v0, p1, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->textEmphasis:Lio/bidmachine/media3/extractor/text/ttml/TextEmphasis;

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->textEmphasis:Lio/bidmachine/media3/extractor/text/ttml/TextEmphasis;

    .line 279
    :cond_72
    iget v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->shearPercentage:F

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v0, v2

    if-nez v0, :cond_7f

    .line 280
    iget v0, p1, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->shearPercentage:F

    iput v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->shearPercentage:F

    .line 282
    :cond_7f
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->origin:Ljava/lang/String;

    if-nez v0, :cond_87

    .line 283
    iget-object v0, p1, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->origin:Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->origin:Ljava/lang/String;

    .line 285
    :cond_87
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->extent:Ljava/lang/String;

    if-nez v0, :cond_8f

    .line 286
    iget-object v0, p1, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->extent:Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->extent:Ljava/lang/String;

    :cond_8f
    if-eqz p2, :cond_9e

    .line 289
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->hasBackgroundColor:Z

    if-nez v0, :cond_9e

    iget-boolean v0, p1, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->hasBackgroundColor:Z

    if-eqz v0, :cond_9e

    .line 290
    iget v0, p1, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->backgroundColor:I

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->setBackgroundColor(I)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    :cond_9e
    if-eqz p2, :cond_aa

    .line 292
    iget p2, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->rubyType:I

    if-ne p2, v1, :cond_aa

    iget p1, p1, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->rubyType:I

    if-eq p1, v1, :cond_aa

    .line 293
    iput p1, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->rubyType:I

    :cond_aa
    return-object p0
.end method

.method public isLinethrough()Z
    .registers 3

    .line 128
    iget v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->linethrough:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public isUnderline()Z
    .registers 3

    .line 138
    iget v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->underline:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public setBackgroundColor(I)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;
    .registers 2

    .line 197
    iput p1, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->backgroundColor:I

    const/4 p1, 0x1

    .line 198
    iput-boolean p1, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->hasBackgroundColor:Z

    return-object p0
.end method

.method public setBold(Z)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;
    .registers 2

    .line 149
    iput p1, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->bold:I

    return-object p0
.end method

.method public setExtent(Ljava/lang/String;)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;
    .registers 2

    .line 407
    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->extent:Ljava/lang/String;

    return-object p0
.end method

.method public setFontColor(I)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;
    .registers 2

    .line 179
    iput p1, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->fontColor:I

    const/4 p1, 0x1

    .line 180
    iput-boolean p1, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->hasFontColor:Z

    return-object p0
.end method

.method public setFontFamily(Ljava/lang/String;)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;
    .registers 2

    .line 166
    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->fontFamily:Ljava/lang/String;

    return-object p0
.end method

.method public setFontSize(F)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;
    .registers 2

    .line 376
    iput p1, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->fontSize:F

    return-object p0
.end method

.method public setFontSizeUnit(I)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;
    .registers 2

    .line 382
    iput p1, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->fontSizeUnit:I

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;
    .registers 2

    .line 301
    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->id:Ljava/lang/String;

    return-object p0
.end method

.method public setItalic(Z)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;
    .registers 2

    .line 155
    iput p1, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->italic:I

    return-object p0
.end method

.method public setLinethrough(Z)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;
    .registers 2

    .line 133
    iput p1, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->linethrough:I

    return-object p0
.end method

.method public setMultiRowAlign(Landroid/text/Layout$Alignment;)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;
    .registers 2

    .line 348
    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->multiRowAlign:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public setOrigin(Ljava/lang/String;)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;
    .registers 2

    .line 396
    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->origin:Ljava/lang/String;

    return-object p0
.end method

.method public setRubyPosition(I)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;
    .registers 2

    .line 322
    iput p1, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->rubyPosition:I

    return-object p0
.end method

.method public setRubyType(I)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;
    .registers 2

    .line 312
    iput p1, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->rubyType:I

    return-object p0
.end method

.method public setShearPercentage(F)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;
    .registers 2

    .line 208
    iput p1, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->shearPercentage:F

    return-object p0
.end method

.method public setTextAlign(Landroid/text/Layout$Alignment;)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;
    .registers 2

    .line 337
    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->textAlign:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public setTextCombine(Z)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;
    .registers 2

    .line 359
    iput p1, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->textCombine:I

    return-object p0
.end method

.method public setTextEmphasis(Lio/bidmachine/media3/extractor/text/ttml/TextEmphasis;)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;
    .registers 2

    .line 370
    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->textEmphasis:Lio/bidmachine/media3/extractor/text/ttml/TextEmphasis;

    return-object p0
.end method

.method public setUnderline(Z)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;
    .registers 2

    .line 143
    iput p1, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->underline:I

    return-object p0
.end method
