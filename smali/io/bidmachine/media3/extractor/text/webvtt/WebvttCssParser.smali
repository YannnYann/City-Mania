###### Class io.bidmachine.media3.extractor.text.webvtt.WebvttCssParser (io.bidmachine.media3.extractor.text.webvtt.WebvttCssParser)
.class public final Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssParser;
.super Ljava/lang/Object;
.source "WebvttCssParser.java"


# static fields
.field public static final FONT_SIZE_PATTERN:Ljava/util/regex/Pattern;

.field public static final VOICE_NAME_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public final stringBuilder:Ljava/lang/StringBuilder;

.field public final styleInput:Lio/bidmachine/media3/common/util/ParsableByteArray;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 59
    const-string v0, "\\[voice=\"([^\"]*)\"\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssParser;->VOICE_NAME_PATTERN:Ljava/util/regex/Pattern;

    .line 60
    const-string v0, "^((?:[0-9]*\\.)?[0-9]+)(px|em|%)$"

    .line 61
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssParser;->FONT_SIZE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssParser;->styleInput:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssParser;->stringBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method public static maybeSkipComment(Lio/bidmachine/media3/common/util/ParsableByteArray;)Z
    .registers 8

    .line 303
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 304
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result v1

    .line 305
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    add-int/lit8 v3, v0, 0x2

    if-gt v3, v1, :cond_3e

    add-int/lit8 v3, v0, 0x1

    .line 306
    aget-byte v4, v2, v0

    const/16 v5, 0x2f

    if-ne v4, v5, :cond_3e

    add-int/lit8 v0, v0, 0x2

    aget-byte v3, v2, v3

    const/16 v4, 0x2a

    if-ne v3, v4, :cond_3e

    :goto_20
    add-int/lit8 v3, v0, 0x1

    if-ge v3, v1, :cond_34

    .line 308
    aget-byte v6, v2, v0

    int-to-char v6, v6

    if-ne v6, v4, :cond_32

    .line 310
    aget-byte v6, v2, v3

    int-to-char v6, v6

    if-ne v6, v5, :cond_32

    add-int/lit8 v0, v0, 0x2

    move v1, v0

    goto :goto_20

    :cond_32
    move v0, v3

    goto :goto_20

    .line 316
    :cond_34
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    const/4 p0, 0x1

    return p0

    :cond_3e
    const/4 p0, 0x0

    return p0
.end method

.method public static maybeSkipWhitespace(Lio/bidmachine/media3/common/util/ParsableByteArray;)Z
    .registers 3

    .line 251
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    invoke-static {p0, v0}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssParser;->peekCharAtPosition(Lio/bidmachine/media3/common/util/ParsableByteArray;I)C

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1e

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1e

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1e

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1e

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1e

    const/4 p0, 0x0

    return p0

    :cond_1e
    const/4 v0, 0x1

    .line 257
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    return v0
.end method

.method public static parseFontSize(Ljava/lang/String;Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 347
    sget-object v2, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssParser;->FONT_SIZE_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 348
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_2e

    .line 349
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid font-size: \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WebvttCssParser"

    invoke-static {p1, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 352
    :cond_2e
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 353
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_8c

    goto :goto_64

    :sswitch_44
    const-string v4, "px"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4d

    goto :goto_64

    :cond_4d
    move v3, v1

    goto :goto_64

    :sswitch_4f
    const-string v4, "em"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_58

    goto :goto_64

    :cond_58
    move v3, v0

    goto :goto_64

    :sswitch_5a
    const-string v4, "%"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_63

    goto :goto_64

    :cond_63
    const/4 v3, 0x0

    :goto_64
    packed-switch v3, :pswitch_data_9a

    .line 366
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 355
    :pswitch_6d
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;->setFontSizeUnit(I)Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;

    goto :goto_79

    .line 358
    :pswitch_71
    invoke-virtual {p1, v1}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;->setFontSizeUnit(I)Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;

    goto :goto_79

    :pswitch_75
    const/4 p0, 0x3

    .line 361
    invoke-virtual {p1, p0}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;->setFontSizeUnit(I)Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;

    .line 368
    :goto_79
    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-virtual {p1, p0}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;->setFontSize(F)Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;

    return-void

    nop

    :sswitch_data_8c
    .sparse-switch
        0x25 -> :sswitch_5a
        0xca8 -> :sswitch_4f
        0xe08 -> :sswitch_44
    .end sparse-switch

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_75
        :pswitch_71
        :pswitch_6d
    .end packed-switch
.end method

.method public static parseIdentifier(Lio/bidmachine/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    .line 323
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 324
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 325
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result v2

    :goto_c
    if-ge v1, v2, :cond_48

    if-nez v0, :cond_48

    .line 328
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v3

    aget-byte v3, v3, v1

    int-to-char v3, v3

    const/16 v4, 0x41

    if-lt v3, v4, :cond_1f

    const/16 v4, 0x5a

    if-le v3, v4, :cond_42

    :cond_1f
    const/16 v4, 0x61

    if-lt v3, v4, :cond_27

    const/16 v4, 0x7a

    if-le v3, v4, :cond_42

    :cond_27
    const/16 v4, 0x30

    if-lt v3, v4, :cond_2f

    const/16 v4, 0x39

    if-le v3, v4, :cond_42

    :cond_2f
    const/16 v4, 0x23

    if-eq v3, v4, :cond_42

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_42

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_42

    const/16 v4, 0x5f

    if-ne v3, v4, :cond_40

    goto :goto_42

    :cond_40
    const/4 v0, 0x1

    goto :goto_c

    :cond_42
    :goto_42
    add-int/lit8 v1, v1, 0x1

    .line 337
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 342
    :cond_48
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 343
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseNextToken(Lio/bidmachine/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 4

    .line 238
    invoke-static {p0}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssParser;->skipWhitespaceAndComments(Lio/bidmachine/media3/common/util/ParsableByteArray;)V

    .line 239
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-nez v0, :cond_b

    const/4 p0, 0x0

    return-object p0

    .line 242
    :cond_b
    invoke-static {p0, p1}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssParser;->parseIdentifier(Lio/bidmachine/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 243
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return-object p1

    .line 247
    :cond_18
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    int-to-char p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parsePropertyValue(Lio/bidmachine/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 7

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_6
    if-nez v1, :cond_2e

    .line 286
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v2

    .line 287
    invoke-static {p0, p1}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssParser;->parseNextToken(Lio/bidmachine/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_14

    const/4 p0, 0x0

    return-object p0

    .line 292
    :cond_14
    const-string v4, "}"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    const-string v4, ";"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    goto :goto_29

    .line 296
    :cond_25
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 293
    :cond_29
    :goto_29
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 v1, 0x1

    goto :goto_6

    .line 299
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseSelector(Lio/bidmachine/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 6

    .line 126
    invoke-static {p0}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssParser;->skipWhitespaceAndComments(Lio/bidmachine/media3/common/util/ParsableByteArray;)V

    .line 127
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_c

    return-object v1

    .line 130
    :cond_c
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v0

    .line 131
    const-string v2, "::cue"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    return-object v1

    .line 134
    :cond_19
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 135
    invoke-static {p0, p1}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssParser;->parseNextToken(Lio/bidmachine/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_24

    return-object v1

    .line 139
    :cond_24
    const-string v3, "{"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 140
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 141
    const-string p0, ""

    return-object p0

    .line 144
    :cond_32
    const-string v0, "("

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 145
    invoke-static {p0}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssParser;->readCueTarget(Lio/bidmachine/media3/common/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object v0

    goto :goto_40

    :cond_3f
    move-object v0, v1

    .line 147
    :goto_40
    invoke-static {p0, p1}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssParser;->parseNextToken(Lio/bidmachine/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    .line 148
    const-string p1, ")"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4d

    return-object v1

    :cond_4d
    return-object v0
.end method

.method public static parseStyleDeclaration(Lio/bidmachine/media3/common/util/ParsableByteArray;Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;Ljava/lang/StringBuilder;)V
    .registers 7

    .line 169
    invoke-static {p0}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssParser;->skipWhitespaceAndComments(Lio/bidmachine/media3/common/util/ParsableByteArray;)V

    .line 170
    invoke-static {p0, p2}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssParser;->parseIdentifier(Lio/bidmachine/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 171
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    goto/16 :goto_ff

    .line 174
    :cond_11
    const-string v2, ":"

    invoke-static {p0, p2}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssParser;->parseNextToken(Lio/bidmachine/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto/16 :goto_ff

    .line 177
    :cond_1f
    invoke-static {p0}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssParser;->skipWhitespaceAndComments(Lio/bidmachine/media3/common/util/ParsableByteArray;)V

    .line 178
    invoke-static {p0, p2}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssParser;->parsePropertyValue(Lio/bidmachine/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_ff

    .line 179
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    goto/16 :goto_ff

    .line 182
    :cond_30
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 183
    invoke-static {p0, p2}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssParser;->parseNextToken(Lio/bidmachine/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    .line 184
    const-string v3, ";"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    goto :goto_4c

    .line 186
    :cond_41
    const-string v3, "}"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_ff

    .line 189
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 195
    :goto_4c
    const-string p0, "color"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5c

    .line 196
    invoke-static {v2}, Lio/bidmachine/media3/common/util/ColorParser;->parseCssColor(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;->setFontColor(I)Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;

    return-void

    .line 197
    :cond_5c
    const-string p0, "background-color"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6c

    .line 198
    invoke-static {v2}, Lio/bidmachine/media3/common/util/ColorParser;->parseCssColor(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;->setBackgroundColor(I)Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;

    return-void

    .line 199
    :cond_6c
    const-string p0, "ruby-position"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 p2, 0x1

    if-eqz p0, :cond_8e

    .line 200
    const-string p0, "over"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_81

    .line 201
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;->setRubyPosition(I)Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;

    return-void

    .line 202
    :cond_81
    const-string p0, "under"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_ff

    const/4 p0, 0x2

    .line 203
    invoke-virtual {p1, p0}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;->setRubyPosition(I)Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;

    return-void

    .line 205
    :cond_8e
    const-string p0, "text-combine-upright"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_ac

    .line 206
    const-string p0, "all"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a8

    const-string p0, "digits"

    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a7

    goto :goto_a8

    :cond_a7
    const/4 p2, 0x0

    :cond_a8
    :goto_a8
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;->setCombineUpright(Z)Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;

    return-void

    .line 207
    :cond_ac
    const-string p0, "text-decoration"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c0

    .line 208
    const-string p0, "underline"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_ff

    .line 209
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;->setUnderline(Z)Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;

    return-void

    .line 211
    :cond_c0
    const-string p0, "font-family"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_cc

    .line 212
    invoke-virtual {p1, v2}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;->setFontFamily(Ljava/lang/String;)Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;

    return-void

    .line 213
    :cond_cc
    const-string p0, "font-weight"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e0

    .line 214
    const-string p0, "bold"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_ff

    .line 215
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;->setBold(Z)Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;

    return-void

    .line 217
    :cond_e0
    const-string p0, "font-style"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f4

    .line 218
    const-string p0, "italic"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_ff

    .line 219
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;->setItalic(Z)Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;

    return-void

    .line 221
    :cond_f4
    const-string p0, "font-size"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_ff

    .line 222
    invoke-static {v2, p1}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssParser;->parseFontSize(Ljava/lang/String;Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;)V

    :cond_ff
    :goto_ff
    return-void
.end method

.method public static peekCharAtPosition(Lio/bidmachine/media3/common/util/ParsableByteArray;I)C
    .registers 2

    .line 275
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object p0

    aget-byte p0, p0, p1

    int-to-char p0, p0

    return p0
.end method

.method public static readCueTarget(Lio/bidmachine/media3/common/util/ParsableByteArray;)Ljava/lang/String;
    .registers 6

    .line 156
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 157
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v0, v1, :cond_21

    if-nez v3, :cond_21

    .line 160
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v3, v0

    int-to-char v0, v0

    const/16 v3, 0x29

    if-ne v0, v3, :cond_1e

    const/4 v0, 0x1

    move v3, v0

    goto :goto_1f

    :cond_1e
    move v3, v2

    :goto_1f
    move v0, v4

    goto :goto_a

    :cond_21
    add-int/lit8 v0, v0, -0x1

    .line 163
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static skipStyleBlock(Lio/bidmachine/media3/common/util/ParsableByteArray;)V
    .registers 2

    .line 270
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public static skipWhitespaceAndComments(Lio/bidmachine/media3/common/util/ParsableByteArray;)V
    .registers 4

    const/4 v0, 0x1

    :cond_1
    :goto_1
    move v1, v0

    .line 230
    :goto_2
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-lez v2, :cond_19

    if-eqz v1, :cond_19

    .line 231
    invoke-static {p0}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssParser;->maybeSkipWhitespace(Lio/bidmachine/media3/common/util/ParsableByteArray;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssParser;->maybeSkipComment(Lio/bidmachine/media3/common/util/ParsableByteArray;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_1

    :cond_17
    const/4 v1, 0x0

    goto :goto_2

    :cond_19
    return-void
.end method


# virtual methods
.method public final applySelectorToStyle(Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;Ljava/lang/String;)V
    .registers 9

    .line 376
    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_65

    :cond_9
    const/16 v0, 0x5b

    .line 379
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_35

    .line 381
    sget-object v4, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssParser;->VOICE_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 382
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 383
    invoke-virtual {v4, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;->setTargetVoice(Ljava/lang/String;)V

    .line 385
    :cond_31
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 387
    :cond_35
    const-string v0, "\\."

    invoke-static {p2, v0}, Lio/bidmachine/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 388
    aget-object v0, p2, v2

    const/16 v4, 0x23

    .line 389
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v1, :cond_55

    .line 391
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;->setTargetTagName(Ljava/lang/String;)V

    add-int/2addr v4, v3

    .line 392
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;->setTargetId(Ljava/lang/String;)V

    goto :goto_58

    .line 394
    :cond_55
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;->setTargetTagName(Ljava/lang/String;)V

    .line 396
    :goto_58
    array-length v0, p2

    if-le v0, v3, :cond_65

    .line 397
    array-length v0, p2

    invoke-static {p2, v3, v0}, Lio/bidmachine/media3/common/util/Util;->nullSafeArrayCopyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;->setTargetClasses([Ljava/lang/String;)V

    :cond_65
    :goto_65
    return-void
.end method

.method public parseBlock(Lio/bidmachine/media3/common/util/ParsableByteArray;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/common/util/ParsableByteArray;",
            ")",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssParser;->stringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 84
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 85
    invoke-static {p1}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssParser;->skipStyleBlock(Lio/bidmachine/media3/common/util/ParsableByteArray;)V

    .line 86
    iget-object v2, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssParser;->styleInput:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v3

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result p1

    invoke-virtual {v2, v3, p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 87
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssParser;->styleInput:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 89
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    :cond_24
    :goto_24
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssParser;->styleInput:Lio/bidmachine/media3/common/util/ParsableByteArray;

    iget-object v2, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssParser;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-static {v0, v2}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssParser;->parseSelector(Lio/bidmachine/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_82

    .line 92
    iget-object v2, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssParser;->styleInput:Lio/bidmachine/media3/common/util/ParsableByteArray;

    iget-object v3, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssParser;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssParser;->parseNextToken(Lio/bidmachine/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "{"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    goto :goto_82

    .line 95
    :cond_3f
    new-instance v2, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;

    invoke-direct {v2}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;-><init>()V

    .line 96
    invoke-virtual {p0, v2, v0}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssParser;->applySelectorToStyle(Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v3, v1

    .line 99
    :goto_49
    const-string v4, "}"

    if-nez v3, :cond_78

    .line 100
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssParser;->styleInput:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 101
    iget-object v3, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssParser;->styleInput:Lio/bidmachine/media3/common/util/ParsableByteArray;

    iget-object v5, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssParser;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-static {v3, v5}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssParser;->parseNextToken(Lio/bidmachine/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_66

    .line 102
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64

    goto :goto_66

    :cond_64
    move v4, v1

    goto :goto_67

    :cond_66
    :goto_66
    const/4 v4, 0x1

    :goto_67
    if-nez v4, :cond_75

    .line 104
    iget-object v5, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssParser;->styleInput:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v5, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 105
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssParser;->styleInput:Lio/bidmachine/media3/common/util/ParsableByteArray;

    iget-object v5, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssParser;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-static {v0, v2, v5}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssParser;->parseStyleDeclaration(Lio/bidmachine/media3/common/util/ParsableByteArray;Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;Ljava/lang/StringBuilder;)V

    :cond_75
    move-object v0, v3

    move v3, v4

    goto :goto_49

    .line 109
    :cond_78
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 110
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_82
    :goto_82
    return-object p1
.end method
