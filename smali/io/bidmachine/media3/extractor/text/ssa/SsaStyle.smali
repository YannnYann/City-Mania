###### Class io.bidmachine.media3.extractor.text.ssa.SsaStyle (io.bidmachine.media3.extractor.text.ssa.SsaStyle)
.class public final Lio/bidmachine/media3/extractor/text/ssa/SsaStyle;
.super Ljava/lang/Object;
.source "SsaStyle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Format;,
        Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Overrides;
    }
.end annotation


# instance fields
.field public final alignment:I

.field public final bold:Z

.field public final borderStyle:I

.field public final fontSize:F

.field public final italic:Z

.field public final name:Ljava/lang/String;

.field public final outlineColor:Ljava/lang/Integer;

.field public final primaryColor:Ljava/lang/Integer;

.field public final strikeout:Z

.field public final underline:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;FZZZZI)V
    .registers 11

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle;->name:Ljava/lang/String;

    .line 144
    iput p2, p0, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle;->alignment:I

    .line 145
    iput-object p3, p0, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle;->primaryColor:Ljava/lang/Integer;

    .line 146
    iput-object p4, p0, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle;->outlineColor:Ljava/lang/Integer;

    .line 147
    iput p5, p0, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle;->fontSize:F

    .line 148
    iput-boolean p6, p0, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle;->bold:Z

    .line 149
    iput-boolean p7, p0, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle;->italic:Z

    .line 150
    iput-boolean p8, p0, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle;->underline:Z

    .line 151
    iput-boolean p9, p0, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle;->strikeout:Z

    .line 152
    iput p10, p0, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle;->borderStyle:I

    return-void
.end method

.method public static synthetic access$000(Ljava/lang/String;)I
    .registers 1

    .line 44
    invoke-static {p0}, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle;->parseAlignment(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static fromStyleLine(Ljava/lang/String;Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Format;)Lio/bidmachine/media3/extractor/text/ssa/SsaStyle;
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 157
    const-string v2, "Style:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    const/4 v2, 0x6

    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-static {v2, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 159
    array-length v3, v2

    iget v4, v0, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Format;->length:I

    const-string v5, "SsaStyle"

    const/4 v6, 0x0

    if-eq v3, v4, :cond_37

    .line 164
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 162
    const-string v1, "Skipping malformed \'Style:\' line (expected %s values, found %s): \'%s\'"

    invoke-static {v1, v0}, Lio/bidmachine/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-static {v5, v0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    .line 168
    :cond_37
    :try_start_37
    new-instance v7, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle;

    iget v3, v0, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Format;->nameIndex:I

    aget-object v3, v2, v3

    .line 169
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 170
    iget v3, v0, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Format;->alignmentIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_55

    .line 171
    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle;->parseAlignment(Ljava/lang/String;)I

    move-result v3

    move v9, v3

    goto :goto_56

    :catch_52
    move-exception v0

    goto/16 :goto_f1

    :cond_55
    move v9, v4

    .line 173
    :goto_56
    iget v3, v0, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Format;->primaryColorIndex:I

    if-eq v3, v4, :cond_66

    .line 174
    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle;->parseColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    move-object v10, v3

    goto :goto_67

    :cond_66
    move-object v10, v6

    .line 176
    :goto_67
    iget v3, v0, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Format;->outlineColorIndex:I

    if-eq v3, v4, :cond_77

    .line 177
    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle;->parseColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    move-object v11, v3

    goto :goto_78

    :cond_77
    move-object v11, v6

    .line 179
    :goto_78
    iget v3, v0, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Format;->fontSizeIndex:I

    if-eq v3, v4, :cond_88

    .line 180
    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle;->parseFontSize(Ljava/lang/String;)F

    move-result v3

    :goto_86
    move v12, v3

    goto :goto_8c

    :cond_88
    const v3, -0x800001

    goto :goto_86

    .line 181
    :goto_8c
    iget v3, v0, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Format;->boldIndex:I

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eq v3, v4, :cond_a1

    aget-object v3, v2, v3

    .line 183
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle;->parseBooleanValue(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a1

    move v3, v13

    move v13, v14

    goto :goto_a2

    :cond_a1
    move v3, v13

    :goto_a2
    iget v15, v0, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Format;->italicIndex:I

    if-eq v15, v4, :cond_b4

    aget-object v15, v2, v15

    .line 185
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle;->parseBooleanValue(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b4

    move v15, v14

    goto :goto_b6

    :cond_b4
    move v15, v14

    move v14, v3

    :goto_b6
    iget v3, v0, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Format;->underlineIndex:I

    if-eq v3, v4, :cond_c7

    aget-object v3, v2, v3

    .line 187
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle;->parseBooleanValue(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c7

    goto :goto_c8

    :cond_c7
    const/4 v15, 0x0

    :goto_c8
    iget v3, v0, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Format;->strikeoutIndex:I

    if-eq v3, v4, :cond_db

    aget-object v3, v2, v3

    .line 189
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle;->parseBooleanValue(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_db

    const/16 v16, 0x1

    goto :goto_dd

    :cond_db
    const/16 v16, 0x0

    .line 190
    :goto_dd
    iget v0, v0, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Format;->borderStyleIndex:I

    if-eq v0, v4, :cond_eb

    .line 191
    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle;->parseBorderStyle(Ljava/lang/String;)I

    move-result v4

    :cond_eb
    move/from16 v17, v4

    .line 192
    invoke-direct/range {v7 .. v17}, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;FZZZZI)V
    :try_end_f0
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_f0} :catch_52

    return-object v7

    .line 194
    :goto_f1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping malformed \'Style:\' line: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v6
.end method

.method public static isValidAlignment(I)Z
    .registers 1

    .line 0
    packed-switch p0, :pswitch_data_8

    const/4 p0, 0x0

    return p0

    :pswitch_5
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static isValidBorderStyle(I)Z
    .registers 3

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    const/4 v1, 0x3

    if-eq p0, v1, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    return v0
.end method

.method public static parseAlignment(Ljava/lang/String;)I
    .registers 3

    .line 201
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 202
    invoke-static {v0}, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle;->isValidAlignment(I)Z

    move-result v1
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_c} :catch_f

    if-eqz v1, :cond_f

    return v0

    .line 208
    :catch_f
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring unknown alignment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SsaStyle"

    invoke-static {v0, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public static parseBooleanValue(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    .line 303
    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_5} :catch_e

    const/4 v1, 0x1

    if-eq p0, v1, :cond_d

    const/4 v2, -0x1

    if-ne p0, v2, :cond_c

    goto :goto_d

    :cond_c
    return v0

    :cond_d
    :goto_d
    return v1

    :catch_e
    move-exception v1

    .line 306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse boolean value: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "SsaStyle"

    invoke-static {v2, p0, v1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public static parseBorderStyle(Ljava/lang/String;)I
    .registers 3

    .line 232
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 233
    invoke-static {v0}, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle;->isValidBorderStyle(I)Z

    move-result v1
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_c} :catch_f

    if-eqz v1, :cond_f

    return v0

    .line 239
    :catch_f
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring unknown BorderStyle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SsaStyle"

    invoke-static {v0, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public static parseColor(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 9

    .line 273
    :try_start_0
    const-string v0, "&H"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x10

    if-eqz v0, :cond_16

    const/4 v0, 0x2

    .line 275
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    goto :goto_1a

    :catch_14
    move-exception v0

    goto :goto_53

    .line 277
    :cond_16
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    :goto_1a
    const-wide v4, 0xffffffffL

    cmp-long v0, v2, v4

    if-gtz v0, :cond_25

    const/4 v0, 0x1

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    .line 279
    :goto_26
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V
    :try_end_29
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_29} :catch_14

    const/16 p0, 0x18

    shr-long v4, v2, p0

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    xor-long/2addr v4, v6

    .line 285
    invoke-static {v4, v5}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result p0

    shr-long v0, v2, v1

    and-long/2addr v0, v6

    .line 286
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v0

    const/16 v1, 0x8

    shr-long v4, v2, v1

    and-long/2addr v4, v6

    .line 287
    invoke-static {v4, v5}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v1

    and-long/2addr v2, v6

    .line 288
    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v2

    .line 289
    invoke-static {p0, v2, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 281
    :goto_53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse color expression: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SsaStyle"

    invoke-static {v1, p0, v0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseFontSize(Ljava/lang/String;)F
    .registers 4

    .line 294
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception v0

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse font size: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SsaStyle"

    invoke-static {v1, p0, v0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const p0, -0x800001

    return p0
.end method

###### Class io.bidmachine.media3.extractor.text.ssa.SsaStyle.Format (io.bidmachine.media3.extractor.text.ssa.SsaStyle$Format)
.class public final Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Format;
.super Ljava/lang/Object;
.source "SsaStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/text/ssa/SsaStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Format"
.end annotation


# instance fields
.field public final alignmentIndex:I

.field public final boldIndex:I

.field public final borderStyleIndex:I

.field public final fontSizeIndex:I

.field public final italicIndex:I

.field public final length:I

.field public final nameIndex:I

.field public final outlineColorIndex:I

.field public final primaryColorIndex:I

.field public final strikeoutIndex:I

.field public final underlineIndex:I


# direct methods
.method public constructor <init>(IIIIIIIIIII)V
    .registers 12

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    iput p1, p0, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Format;->nameIndex:I

    .line 344
    iput p2, p0, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Format;->alignmentIndex:I

    .line 345
    iput p3, p0, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Format;->primaryColorIndex:I

    .line 346
    iput p4, p0, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Format;->outlineColorIndex:I

    .line 347
    iput p5, p0, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Format;->fontSizeIndex:I

    .line 348
    iput p6, p0, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Format;->boldIndex:I

    .line 349
    iput p7, p0, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Format;->italicIndex:I

    .line 350
    iput p8, p0, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Format;->underlineIndex:I

    .line 351
    iput p9, p0, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Format;->strikeoutIndex:I

    .line 352
    iput p10, p0, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Format;->borderStyleIndex:I

    .line 353
    iput p11, p0, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Format;->length:I

    return-void
.end method

.method public static fromFormatLine(Ljava/lang/String;)Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Format;
    .registers 19

    const/4 v1, 0x7

    move-object/from16 v2, p0

    .line 374
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-static {v2, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    move v7, v3

    move v8, v7

    move v9, v8

    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    move v5, v4

    .line 375
    :goto_1b
    array-length v6, v2

    if-ge v5, v6, :cond_de

    .line 376
    aget-object v6, v2, v5

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_ec

    move v0, v3

    const/16 v17, 0x1

    goto/16 :goto_c2

    :sswitch_37
    const/16 v17, 0x1

    const-string v0, "outlinecolour"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    goto/16 :goto_bf

    :cond_43
    const/16 v0, 0x9

    goto/16 :goto_c2

    :sswitch_47
    const/16 v17, 0x1

    const-string v0, "alignment"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    goto/16 :goto_bf

    :cond_53
    const/16 v0, 0x8

    goto/16 :goto_c2

    :sswitch_57
    const/16 v17, 0x1

    const-string v0, "borderstyle"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    goto/16 :goto_bf

    :cond_63
    move v0, v1

    goto/16 :goto_c2

    :sswitch_66
    const/16 v17, 0x1

    const-string v0, "fontsize"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    goto :goto_bf

    :cond_71
    const/4 v0, 0x6

    goto :goto_c2

    :sswitch_73
    const/16 v17, 0x1

    const-string v0, "name"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e

    goto :goto_bf

    :cond_7e
    const/4 v0, 0x5

    goto :goto_c2

    :sswitch_80
    const/16 v17, 0x1

    const-string v0, "bold"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    goto :goto_bf

    :cond_8b
    const/4 v0, 0x4

    goto :goto_c2

    :sswitch_8d
    const/16 v17, 0x1

    const-string v0, "primarycolour"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_98

    goto :goto_bf

    :cond_98
    const/4 v0, 0x3

    goto :goto_c2

    :sswitch_9a
    const/16 v17, 0x1

    const-string v0, "strikeout"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a5

    goto :goto_bf

    :cond_a5
    const/4 v0, 0x2

    goto :goto_c2

    :sswitch_a7
    const/16 v17, 0x1

    const-string v0, "underline"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b2

    goto :goto_bf

    :cond_b2
    move/from16 v0, v17

    goto :goto_c2

    :sswitch_b5
    const/16 v17, 0x1

    const-string v0, "italic"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c1

    :goto_bf
    move v0, v3

    goto :goto_c2

    :cond_c1
    move v0, v4

    :goto_c2
    packed-switch v0, :pswitch_data_116

    goto :goto_da

    :pswitch_c6
    move v10, v5

    goto :goto_da

    :pswitch_c8
    move v8, v5

    goto :goto_da

    :pswitch_ca
    move/from16 v16, v5

    goto :goto_da

    :pswitch_cd
    move v11, v5

    goto :goto_da

    :pswitch_cf
    move v7, v5

    goto :goto_da

    :pswitch_d1
    move v12, v5

    goto :goto_da

    :pswitch_d3
    move v9, v5

    goto :goto_da

    :pswitch_d5
    move v15, v5

    goto :goto_da

    :pswitch_d7
    move v14, v5

    goto :goto_da

    :pswitch_d9
    move v13, v5

    :goto_da
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1b

    :cond_de
    if-eq v7, v3, :cond_e9

    .line 410
    new-instance v6, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Format;

    array-length v0, v2

    move/from16 v17, v0

    invoke-direct/range {v6 .. v17}, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Format;-><init>(IIIIIIIIIII)V

    return-object v6

    :cond_e9
    const/4 v0, 0x0

    return-object v0

    nop

    :sswitch_data_ec
    .sparse-switch
        -0x4642c5d0 -> :sswitch_b5
        -0x3d363934 -> :sswitch_a7
        -0xb7325a4 -> :sswitch_9a
        -0x43a3db2 -> :sswitch_8d
        0x2e3a85 -> :sswitch_80
        0x337a8b -> :sswitch_73
        0x15d92cd0 -> :sswitch_66
        0x2dbc6505 -> :sswitch_57
        0x695fa1e3 -> :sswitch_47
        0x76840c8e -> :sswitch_37
    .end sparse-switch

    :pswitch_data_116
    .packed-switch 0x0
        :pswitch_d9
        :pswitch_d7
        :pswitch_d5
        :pswitch_d3
        :pswitch_d1
        :pswitch_cf
        :pswitch_cd
        :pswitch_ca
        :pswitch_c8
        :pswitch_c6
    .end packed-switch
.end method

###### Class io.bidmachine.media3.extractor.text.ssa.SsaStyle.Overrides (io.bidmachine.media3.extractor.text.ssa.SsaStyle$Overrides)
.class public final Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Overrides;
.super Ljava/lang/Object;
.source "SsaStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/text/ssa/SsaStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Overrides"
.end annotation


# static fields
.field public static final ALIGNMENT_OVERRIDE_PATTERN:Ljava/util/regex/Pattern;

.field public static final BRACES_PATTERN:Ljava/util/regex/Pattern;

.field public static final MOVE_PATTERN:Ljava/util/regex/Pattern;

.field public static final POSITION_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public final alignment:I

.field public final position:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 437
    const-string v0, "\\{([^}]*)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Overrides;->BRACES_PATTERN:Ljava/util/regex/Pattern;

    .line 442
    const-string v0, "\\s*\\d+(?:\\.\\d+)?\\s*"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v1

    .line 443
    const-string v2, "\\\\pos\\((%1$s),(%1$s)\\)"

    invoke-static {v2, v1}, Lio/bidmachine/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Overrides;->POSITION_PATTERN:Ljava/util/regex/Pattern;

    .line 446
    const-string v1, "\\\\move\\(%1$s,%1$s,(%1$s),(%1$s)(?:,%1$s,%1$s)?\\)"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 448
    invoke-static {v1, v0}, Lio/bidmachine/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 447
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Overrides;->MOVE_PATTERN:Ljava/util/regex/Pattern;

    .line 452
    const-string v0, "\\\\an(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Overrides;->ALIGNMENT_OVERRIDE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(ILandroid/graphics/PointF;)V
    .registers 3

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    iput p1, p0, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Overrides;->alignment:I

    .line 459
    iput-object p2, p0, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Overrides;->position:Landroid/graphics/PointF;

    return-void
.end method

.method public static parseAlignmentOverride(Ljava/lang/String;)I
    .registers 2

    .line 533
    sget-object v0, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Overrides;->ALIGNMENT_OVERRIDE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 534
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    .line 535
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle;->access$000(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1c
    const/4 p0, -0x1

    return p0
.end method

.method public static parseFromDialogue(Ljava/lang/String;)Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Overrides;
    .registers 6

    .line 465
    sget-object v0, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Overrides;->BRACES_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    .line 466
    :catch_9
    :cond_9
    :goto_9
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_29

    const/4 v3, 0x1

    .line 467
    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 469
    :try_start_1a
    invoke-static {v3}, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Overrides;->parsePosition(Ljava/lang/String;)Landroid/graphics/PointF;

    move-result-object v4
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1e} :catch_21

    if-eqz v4, :cond_21

    move-object v1, v4

    .line 477
    :catch_21
    :cond_21
    :try_start_21
    invoke-static {v3}, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Overrides;->parseAlignmentOverride(Ljava/lang/String;)I

    move-result v3
    :try_end_25
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_25} :catch_9

    if-eq v3, v0, :cond_9

    move v2, v3

    goto :goto_9

    .line 485
    :cond_29
    new-instance p0, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Overrides;

    invoke-direct {p0, v2, v1}, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Overrides;-><init>(ILandroid/graphics/PointF;)V

    return-object p0
.end method

.method public static parsePosition(Ljava/lang/String;)Landroid/graphics/PointF;
    .registers 7

    .line 504
    sget-object v0, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Overrides;->POSITION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 505
    sget-object v1, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Overrides;->MOVE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 506
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    .line 507
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3e

    if-eqz v3, :cond_35

    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Override has both \\pos(x,y) and \\move(x1,y1,x2,y2); using \\pos values. override=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SsaStyle.Overrides"

    invoke-static {v1, p0}, Lio/bidmachine/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    :cond_35
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 520
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_48

    :cond_3e
    if-eqz v3, :cond_6a

    .line 522
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 523
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 527
    :goto_48
    new-instance v1, Landroid/graphics/PointF;

    .line 528
    invoke-static {p0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    .line 529
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-direct {v1, p0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1

    :cond_6a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static stripStyleOverrides(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 489
    sget-object v0, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Overrides;->BRACES_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
