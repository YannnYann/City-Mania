###### Class io.bidmachine.media3.extractor.text.ssa.SsaDialogueFormat (io.bidmachine.media3.extractor.text.ssa.SsaDialogueFormat)
.class public final Lio/bidmachine/media3/extractor/text/ssa/SsaDialogueFormat;
.super Ljava/lang/Object;
.source "SsaDialogueFormat.java"


# instance fields
.field public final endTimeIndex:I

.field public final length:I

.field public final startTimeIndex:I

.field public final styleIndex:I

.field public final textIndex:I


# direct methods
.method public constructor <init>(IIIII)V
    .registers 6

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lio/bidmachine/media3/extractor/text/ssa/SsaDialogueFormat;->startTimeIndex:I

    .line 44
    iput p2, p0, Lio/bidmachine/media3/extractor/text/ssa/SsaDialogueFormat;->endTimeIndex:I

    .line 45
    iput p3, p0, Lio/bidmachine/media3/extractor/text/ssa/SsaDialogueFormat;->styleIndex:I

    .line 46
    iput p4, p0, Lio/bidmachine/media3/extractor/text/ssa/SsaDialogueFormat;->textIndex:I

    .line 47
    iput p5, p0, Lio/bidmachine/media3/extractor/text/ssa/SsaDialogueFormat;->length:I

    return-void
.end method

.method public static fromFormatLine(Ljava/lang/String;)Lio/bidmachine/media3/extractor/text/ssa/SsaDialogueFormat;
    .registers 11

    const/4 v0, 0x1

    .line 61
    const-string v1, "Format:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    const/4 v1, 0x7

    .line 62
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, ","

    invoke-static {p0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v5, v1

    move v6, v5

    move v7, v6

    move v8, v7

    move v3, v2

    .line 63
    :goto_1c
    array-length v4, p0

    if-ge v3, v4, :cond_6d

    .line 64
    aget-object v4, p0, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_7c

    :goto_33
    move v4, v1

    goto :goto_60

    :sswitch_35
    const-string v9, "style"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3e

    goto :goto_33

    :cond_3e
    const/4 v4, 0x3

    goto :goto_60

    :sswitch_40
    const-string v9, "start"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_49

    goto :goto_33

    :cond_49
    const/4 v4, 0x2

    goto :goto_60

    :sswitch_4b
    const-string v9, "text"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_54

    goto :goto_33

    :cond_54
    move v4, v0

    goto :goto_60

    :sswitch_56
    const-string v9, "end"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5f

    goto :goto_33

    :cond_5f
    move v4, v2

    :goto_60
    packed-switch v4, :pswitch_data_8e

    goto :goto_6b

    :pswitch_64
    move v7, v3

    goto :goto_6b

    :pswitch_66
    move v5, v3

    goto :goto_6b

    :pswitch_68
    move v8, v3

    goto :goto_6b

    :pswitch_6a
    move v6, v3

    :goto_6b
    add-int/2addr v3, v0

    goto :goto_1c

    :cond_6d
    if-eq v5, v1, :cond_7a

    if-eq v6, v1, :cond_7a

    if-eq v8, v1, :cond_7a

    .line 82
    new-instance v4, Lio/bidmachine/media3/extractor/text/ssa/SsaDialogueFormat;

    array-length v9, p0

    invoke-direct/range {v4 .. v9}, Lio/bidmachine/media3/extractor/text/ssa/SsaDialogueFormat;-><init>(IIIII)V

    return-object v4

    :cond_7a
    const/4 p0, 0x0

    return-object p0

    :sswitch_data_7c
    .sparse-switch
        0x188db -> :sswitch_56
        0x36452d -> :sswitch_4b
        0x68ac462 -> :sswitch_40
        0x68b1db1 -> :sswitch_35
    .end sparse-switch

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_6a
        :pswitch_68
        :pswitch_66
        :pswitch_64
    .end packed-switch
.end method
