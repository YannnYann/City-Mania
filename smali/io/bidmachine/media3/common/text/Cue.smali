###### Class io.bidmachine.media3.common.text.Cue (io.bidmachine.media3.common.text.Cue)
.class public final Lio/bidmachine/media3/common/text/Cue;
.super Ljava/lang/Object;
.source "Cue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/common/text/Cue$Builder;
    }
.end annotation


# static fields
.field public static final EMPTY:Lio/bidmachine/media3/common/text/Cue;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FIELD_BITMAP_BYTES:Ljava/lang/String;

.field public static final FIELD_BITMAP_HEIGHT:Ljava/lang/String;

.field public static final FIELD_BITMAP_PARCELABLE:Ljava/lang/String;

.field public static final FIELD_CUSTOM_SPANS:Ljava/lang/String;

.field public static final FIELD_LINE:Ljava/lang/String;

.field public static final FIELD_LINE_ANCHOR:Ljava/lang/String;

.field public static final FIELD_LINE_TYPE:Ljava/lang/String;

.field public static final FIELD_MULTI_ROW_ALIGNMENT:Ljava/lang/String;

.field public static final FIELD_POSITION:Ljava/lang/String;

.field public static final FIELD_POSITION_ANCHOR:Ljava/lang/String;

.field public static final FIELD_SHEAR_DEGREES:Ljava/lang/String;

.field public static final FIELD_SIZE:Ljava/lang/String;

.field public static final FIELD_TEXT:Ljava/lang/String;

.field public static final FIELD_TEXT_ALIGNMENT:Ljava/lang/String;

.field public static final FIELD_TEXT_SIZE:Ljava/lang/String;

.field public static final FIELD_TEXT_SIZE_TYPE:Ljava/lang/String;

.field public static final FIELD_VERTICAL_TYPE:Ljava/lang/String;

.field public static final FIELD_WINDOW_COLOR:Ljava/lang/String;

.field public static final FIELD_WINDOW_COLOR_SET:Ljava/lang/String;


# instance fields
.field public final bitmap:Landroid/graphics/Bitmap;

.field public final bitmapHeight:F

.field public final line:F

.field public final lineAnchor:I

.field public final lineType:I

.field public final multiRowAlignment:Landroid/text/Layout$Alignment;

.field public final position:F

.field public final positionAnchor:I

.field public final shearDegrees:F

.field public final size:F

.field public final text:Ljava/lang/CharSequence;

.field public final textAlignment:Landroid/text/Layout$Alignment;

.field public final textSize:F

.field public final textSizeType:I

.field public final verticalType:I

.field public final windowColor:I

.field public final windowColorSet:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 63
    new-instance v0, Lio/bidmachine/media3/common/text/Cue$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/common/text/Cue$Builder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/text/Cue$Builder;->setText(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/media3/common/text/Cue$Builder;->build()Lio/bidmachine/media3/common/text/Cue;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/text/Cue;->EMPTY:Lio/bidmachine/media3/common/text/Cue;

    const/4 v0, 0x0

    .line 832
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/text/Cue;->FIELD_TEXT:Ljava/lang/String;

    const/16 v0, 0x11

    .line 833
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/text/Cue;->FIELD_CUSTOM_SPANS:Ljava/lang/String;

    const/4 v0, 0x1

    .line 834
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/text/Cue;->FIELD_TEXT_ALIGNMENT:Ljava/lang/String;

    const/4 v0, 0x2

    .line 835
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/text/Cue;->FIELD_MULTI_ROW_ALIGNMENT:Ljava/lang/String;

    const/4 v0, 0x3

    .line 836
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/text/Cue;->FIELD_BITMAP_PARCELABLE:Ljava/lang/String;

    const/16 v0, 0x12

    .line 837
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/text/Cue;->FIELD_BITMAP_BYTES:Ljava/lang/String;

    const/4 v0, 0x4

    .line 838
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/text/Cue;->FIELD_LINE:Ljava/lang/String;

    const/4 v0, 0x5

    .line 839
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/text/Cue;->FIELD_LINE_TYPE:Ljava/lang/String;

    const/4 v0, 0x6

    .line 840
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/text/Cue;->FIELD_LINE_ANCHOR:Ljava/lang/String;

    const/4 v0, 0x7

    .line 841
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/text/Cue;->FIELD_POSITION:Ljava/lang/String;

    const/16 v0, 0x8

    .line 842
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/text/Cue;->FIELD_POSITION_ANCHOR:Ljava/lang/String;

    const/16 v0, 0x9

    .line 843
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/text/Cue;->FIELD_TEXT_SIZE_TYPE:Ljava/lang/String;

    const/16 v0, 0xa

    .line 844
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/text/Cue;->FIELD_TEXT_SIZE:Ljava/lang/String;

    const/16 v0, 0xb

    .line 845
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/text/Cue;->FIELD_SIZE:Ljava/lang/String;

    const/16 v0, 0xc

    .line 846
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/text/Cue;->FIELD_BITMAP_HEIGHT:Ljava/lang/String;

    const/16 v0, 0xd

    .line 847
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/text/Cue;->FIELD_WINDOW_COLOR:Ljava/lang/String;

    const/16 v0, 0xe

    .line 848
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/text/Cue;->FIELD_WINDOW_COLOR_SET:Ljava/lang/String;

    const/16 v0, 0xf

    .line 849
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/text/Cue;->FIELD_VERTICAL_TYPE:Ljava/lang/String;

    const/16 v0, 0x10

    .line 850
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/text/Cue;->FIELD_SHEAR_DEGREES:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V
    .registers 19

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_9

    .line 332
    invoke-static {p4}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_9
    if-nez p4, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 334
    :goto_e
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 336
    :goto_11
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_1c

    .line 337
    invoke-static {p1}, Landroid/text/SpannedString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannedString;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    goto :goto_28

    :cond_1c
    if-eqz p1, :cond_25

    .line 339
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    goto :goto_28

    :cond_25
    const/4 p1, 0x0

    .line 341
    iput-object p1, p0, Lio/bidmachine/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    .line 343
    :goto_28
    iput-object p2, p0, Lio/bidmachine/media3/common/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    .line 344
    iput-object p3, p0, Lio/bidmachine/media3/common/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    .line 345
    iput-object p4, p0, Lio/bidmachine/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    .line 346
    iput p5, p0, Lio/bidmachine/media3/common/text/Cue;->line:F

    .line 347
    iput p6, p0, Lio/bidmachine/media3/common/text/Cue;->lineType:I

    .line 348
    iput p7, p0, Lio/bidmachine/media3/common/text/Cue;->lineAnchor:I

    .line 349
    iput p8, p0, Lio/bidmachine/media3/common/text/Cue;->position:F

    .line 350
    iput p9, p0, Lio/bidmachine/media3/common/text/Cue;->positionAnchor:I

    .line 351
    iput p12, p0, Lio/bidmachine/media3/common/text/Cue;->size:F

    .line 352
    iput p13, p0, Lio/bidmachine/media3/common/text/Cue;->bitmapHeight:F

    .line 353
    iput-boolean p14, p0, Lio/bidmachine/media3/common/text/Cue;->windowColorSet:Z

    move/from16 p1, p15

    .line 354
    iput p1, p0, Lio/bidmachine/media3/common/text/Cue;->windowColor:I

    .line 355
    iput p10, p0, Lio/bidmachine/media3/common/text/Cue;->textSizeType:I

    .line 356
    iput p11, p0, Lio/bidmachine/media3/common/text/Cue;->textSize:F

    move/from16 p1, p16

    .line 357
    iput p1, p0, Lio/bidmachine/media3/common/text/Cue;->verticalType:I

    move/from16 p1, p17

    .line 358
    iput p1, p0, Lio/bidmachine/media3/common/text/Cue;->shearDegrees:F

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFLio/bidmachine/media3/common/text/Cue$1;)V
    .registers 19

    .line 57
    invoke-direct/range {p0 .. p17}, Lio/bidmachine/media3/common/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Lio/bidmachine/media3/common/text/Cue;
    .registers 6

    .line 932
    new-instance v0, Lio/bidmachine/media3/common/text/Cue$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/common/text/Cue$Builder;-><init>()V

    .line 933
    sget-object v1, Lio/bidmachine/media3/common/text/Cue;->FIELD_TEXT:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 935
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/text/Cue$Builder;->setText(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/text/Cue$Builder;

    .line 937
    sget-object v2, Lio/bidmachine/media3/common/text/Cue;->FIELD_CUSTOM_SPANS:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 939
    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v1

    .line 940
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 941
    invoke-static {v3, v1}, Lio/bidmachine/media3/common/text/CustomSpanBundler;->unbundleAndApplyCustomSpan(Landroid/os/Bundle;Landroid/text/Spannable;)V

    goto :goto_20

    .line 943
    :cond_30
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/text/Cue$Builder;->setText(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/text/Cue$Builder;

    .line 946
    :cond_33
    sget-object v1, Lio/bidmachine/media3/common/text/Cue;->FIELD_TEXT_ALIGNMENT:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Landroid/text/Layout$Alignment;

    if-eqz v1, :cond_40

    .line 948
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/text/Cue$Builder;->setTextAlignment(Landroid/text/Layout$Alignment;)Lio/bidmachine/media3/common/text/Cue$Builder;

    .line 951
    :cond_40
    sget-object v1, Lio/bidmachine/media3/common/text/Cue;->FIELD_MULTI_ROW_ALIGNMENT:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Landroid/text/Layout$Alignment;

    if-eqz v1, :cond_4d

    .line 953
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/text/Cue$Builder;->setMultiRowAlignment(Landroid/text/Layout$Alignment;)Lio/bidmachine/media3/common/text/Cue$Builder;

    .line 955
    :cond_4d
    sget-object v1, Lio/bidmachine/media3/common/text/Cue;->FIELD_BITMAP_PARCELABLE:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    if-eqz v1, :cond_5c

    .line 957
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/text/Cue$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lio/bidmachine/media3/common/text/Cue$Builder;

    goto :goto_6c

    .line 959
    :cond_5c
    sget-object v1, Lio/bidmachine/media3/common/text/Cue;->FIELD_BITMAP_BYTES:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_6c

    .line 961
    array-length v3, v1

    .line 962
    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 961
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/text/Cue$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lio/bidmachine/media3/common/text/Cue$Builder;

    .line 965
    :cond_6c
    :goto_6c
    sget-object v1, Lio/bidmachine/media3/common/text/Cue;->FIELD_LINE:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_87

    sget-object v3, Lio/bidmachine/media3/common/text/Cue;->FIELD_LINE_TYPE:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_87

    .line 966
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lio/bidmachine/media3/common/text/Cue$Builder;->setLine(FI)Lio/bidmachine/media3/common/text/Cue$Builder;

    .line 968
    :cond_87
    sget-object v1, Lio/bidmachine/media3/common/text/Cue;->FIELD_LINE_ANCHOR:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_96

    .line 969
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/text/Cue$Builder;->setLineAnchor(I)Lio/bidmachine/media3/common/text/Cue$Builder;

    .line 971
    :cond_96
    sget-object v1, Lio/bidmachine/media3/common/text/Cue;->FIELD_POSITION:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 972
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/text/Cue$Builder;->setPosition(F)Lio/bidmachine/media3/common/text/Cue$Builder;

    .line 974
    :cond_a5
    sget-object v1, Lio/bidmachine/media3/common/text/Cue;->FIELD_POSITION_ANCHOR:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b4

    .line 975
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/text/Cue$Builder;->setPositionAnchor(I)Lio/bidmachine/media3/common/text/Cue$Builder;

    .line 977
    :cond_b4
    sget-object v1, Lio/bidmachine/media3/common/text/Cue;->FIELD_TEXT_SIZE:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_cf

    sget-object v3, Lio/bidmachine/media3/common/text/Cue;->FIELD_TEXT_SIZE_TYPE:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_cf

    .line 978
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lio/bidmachine/media3/common/text/Cue$Builder;->setTextSize(FI)Lio/bidmachine/media3/common/text/Cue$Builder;

    .line 980
    :cond_cf
    sget-object v1, Lio/bidmachine/media3/common/text/Cue;->FIELD_SIZE:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_de

    .line 981
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/text/Cue$Builder;->setSize(F)Lio/bidmachine/media3/common/text/Cue$Builder;

    .line 983
    :cond_de
    sget-object v1, Lio/bidmachine/media3/common/text/Cue;->FIELD_BITMAP_HEIGHT:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ed

    .line 984
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/text/Cue$Builder;->setBitmapHeight(F)Lio/bidmachine/media3/common/text/Cue$Builder;

    .line 986
    :cond_ed
    sget-object v1, Lio/bidmachine/media3/common/text/Cue;->FIELD_WINDOW_COLOR:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_fc

    .line 987
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/text/Cue$Builder;->setWindowColor(I)Lio/bidmachine/media3/common/text/Cue$Builder;

    .line 989
    :cond_fc
    sget-object v1, Lio/bidmachine/media3/common/text/Cue;->FIELD_WINDOW_COLOR_SET:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_107

    .line 990
    invoke-virtual {v0}, Lio/bidmachine/media3/common/text/Cue$Builder;->clearWindowColor()Lio/bidmachine/media3/common/text/Cue$Builder;

    .line 992
    :cond_107
    sget-object v1, Lio/bidmachine/media3/common/text/Cue;->FIELD_VERTICAL_TYPE:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_116

    .line 993
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/text/Cue$Builder;->setVerticalType(I)Lio/bidmachine/media3/common/text/Cue$Builder;

    .line 995
    :cond_116
    sget-object v1, Lio/bidmachine/media3/common/text/Cue;->FIELD_SHEAR_DEGREES:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_125

    .line 996
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p0

    invoke-virtual {v0, p0}, Lio/bidmachine/media3/common/text/Cue$Builder;->setShearDegrees(F)Lio/bidmachine/media3/common/text/Cue$Builder;

    .line 998
    :cond_125
    invoke-virtual {v0}, Lio/bidmachine/media3/common/text/Cue$Builder;->build()Lio/bidmachine/media3/common/text/Cue;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public buildUpon()Lio/bidmachine/media3/common/text/Cue$Builder;
    .registers 3

    .line 364
    new-instance v0, Lio/bidmachine/media3/common/text/Cue$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/media3/common/text/Cue$Builder;-><init>(Lio/bidmachine/media3/common/text/Cue;Lio/bidmachine/media3/common/text/Cue$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_97

    .line 372
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/bidmachine/media3/common/text/Cue;

    if-eq v3, v2, :cond_11

    goto/16 :goto_97

    .line 375
    :cond_11
    check-cast p1, Lio/bidmachine/media3/common/text/Cue;

    .line 376
    iget-object v2, p0, Lio/bidmachine/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    iget-object v3, p1, Lio/bidmachine/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_97

    iget-object v2, p0, Lio/bidmachine/media3/common/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    iget-object v3, p1, Lio/bidmachine/media3/common/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    if-ne v2, v3, :cond_97

    iget-object v2, p0, Lio/bidmachine/media3/common/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    iget-object v3, p1, Lio/bidmachine/media3/common/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    if-ne v2, v3, :cond_97

    iget-object v2, p0, Lio/bidmachine/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_32

    iget-object v2, p1, Lio/bidmachine/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_97

    goto :goto_3c

    :cond_32
    iget-object v3, p1, Lio/bidmachine/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_97

    .line 381
    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_97

    :goto_3c
    iget v2, p0, Lio/bidmachine/media3/common/text/Cue;->line:F

    iget v3, p1, Lio/bidmachine/media3/common/text/Cue;->line:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_97

    iget v2, p0, Lio/bidmachine/media3/common/text/Cue;->lineType:I

    iget v3, p1, Lio/bidmachine/media3/common/text/Cue;->lineType:I

    if-ne v2, v3, :cond_97

    iget v2, p0, Lio/bidmachine/media3/common/text/Cue;->lineAnchor:I

    iget v3, p1, Lio/bidmachine/media3/common/text/Cue;->lineAnchor:I

    if-ne v2, v3, :cond_97

    iget v2, p0, Lio/bidmachine/media3/common/text/Cue;->position:F

    iget v3, p1, Lio/bidmachine/media3/common/text/Cue;->position:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_97

    iget v2, p0, Lio/bidmachine/media3/common/text/Cue;->positionAnchor:I

    iget v3, p1, Lio/bidmachine/media3/common/text/Cue;->positionAnchor:I

    if-ne v2, v3, :cond_97

    iget v2, p0, Lio/bidmachine/media3/common/text/Cue;->size:F

    iget v3, p1, Lio/bidmachine/media3/common/text/Cue;->size:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_97

    iget v2, p0, Lio/bidmachine/media3/common/text/Cue;->bitmapHeight:F

    iget v3, p1, Lio/bidmachine/media3/common/text/Cue;->bitmapHeight:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_97

    iget-boolean v2, p0, Lio/bidmachine/media3/common/text/Cue;->windowColorSet:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/common/text/Cue;->windowColorSet:Z

    if-ne v2, v3, :cond_97

    iget v2, p0, Lio/bidmachine/media3/common/text/Cue;->windowColor:I

    iget v3, p1, Lio/bidmachine/media3/common/text/Cue;->windowColor:I

    if-ne v2, v3, :cond_97

    iget v2, p0, Lio/bidmachine/media3/common/text/Cue;->textSizeType:I

    iget v3, p1, Lio/bidmachine/media3/common/text/Cue;->textSizeType:I

    if-ne v2, v3, :cond_97

    iget v2, p0, Lio/bidmachine/media3/common/text/Cue;->textSize:F

    iget v3, p1, Lio/bidmachine/media3/common/text/Cue;->textSize:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_97

    iget v2, p0, Lio/bidmachine/media3/common/text/Cue;->verticalType:I

    iget v3, p1, Lio/bidmachine/media3/common/text/Cue;->verticalType:I

    if-ne v2, v3, :cond_97

    iget v2, p0, Lio/bidmachine/media3/common/text/Cue;->shearDegrees:F

    iget p1, p1, Lio/bidmachine/media3/common/text/Cue;->shearDegrees:F

    cmpl-float p1, v2, p1

    if-nez p1, :cond_97

    return v0

    :cond_97
    :goto_97
    return v1
.end method

.method public hashCode()I
    .registers 20

    move-object/from16 v0, p0

    .line 399
    iget-object v1, v0, Lio/bidmachine/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    iget-object v2, v0, Lio/bidmachine/media3/common/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    iget-object v3, v0, Lio/bidmachine/media3/common/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    iget-object v4, v0, Lio/bidmachine/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    iget v5, v0, Lio/bidmachine/media3/common/text/Cue;->line:F

    .line 404
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget v6, v0, Lio/bidmachine/media3/common/text/Cue;->lineType:I

    .line 405
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, v0, Lio/bidmachine/media3/common/text/Cue;->lineAnchor:I

    .line 406
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, v0, Lio/bidmachine/media3/common/text/Cue;->position:F

    .line 407
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    iget v9, v0, Lio/bidmachine/media3/common/text/Cue;->positionAnchor:I

    .line 408
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v10, v0, Lio/bidmachine/media3/common/text/Cue;->size:F

    .line 409
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    iget v11, v0, Lio/bidmachine/media3/common/text/Cue;->bitmapHeight:F

    .line 410
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    iget-boolean v12, v0, Lio/bidmachine/media3/common/text/Cue;->windowColorSet:Z

    .line 411
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iget v13, v0, Lio/bidmachine/media3/common/text/Cue;->windowColor:I

    .line 412
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget v14, v0, Lio/bidmachine/media3/common/text/Cue;->textSizeType:I

    .line 413
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget v15, v0, Lio/bidmachine/media3/common/text/Cue;->textSize:F

    .line 414
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v16, v1

    iget v1, v0, Lio/bidmachine/media3/common/text/Cue;->verticalType:I

    .line 415
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v17, v1

    iget v1, v0, Lio/bidmachine/media3/common/text/Cue;->shearDegrees:F

    .line 416
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    move-object/from16 v18, v17

    move-object/from16 v17, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v18

    filled-new-array/range {v1 .. v17}, [Ljava/lang/Object;

    move-result-object v1

    .line 399
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public final toBundleWithoutBitmap()Landroid/os/Bundle;
    .registers 4

    .line 901
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 902
    iget-object v1, p0, Lio/bidmachine/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    if-eqz v1, :cond_25

    .line 903
    sget-object v2, Lio/bidmachine/media3/common/text/Cue;->FIELD_TEXT:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 904
    iget-object v1, p0, Lio/bidmachine/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    instance-of v2, v1, Landroid/text/Spanned;

    if-eqz v2, :cond_25

    .line 905
    check-cast v1, Landroid/text/Spanned;

    invoke-static {v1}, Lio/bidmachine/media3/common/text/CustomSpanBundler;->bundleCustomSpans(Landroid/text/Spanned;)Ljava/util/ArrayList;

    move-result-object v1

    .line 906
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_25

    .line 907
    sget-object v2, Lio/bidmachine/media3/common/text/Cue;->FIELD_CUSTOM_SPANS:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 911
    :cond_25
    sget-object v1, Lio/bidmachine/media3/common/text/Cue;->FIELD_TEXT_ALIGNMENT:Ljava/lang/String;

    iget-object v2, p0, Lio/bidmachine/media3/common/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 912
    sget-object v1, Lio/bidmachine/media3/common/text/Cue;->FIELD_MULTI_ROW_ALIGNMENT:Ljava/lang/String;

    iget-object v2, p0, Lio/bidmachine/media3/common/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 913
    sget-object v1, Lio/bidmachine/media3/common/text/Cue;->FIELD_LINE:Ljava/lang/String;

    iget v2, p0, Lio/bidmachine/media3/common/text/Cue;->line:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 914
    sget-object v1, Lio/bidmachine/media3/common/text/Cue;->FIELD_LINE_TYPE:Ljava/lang/String;

    iget v2, p0, Lio/bidmachine/media3/common/text/Cue;->lineType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 915
    sget-object v1, Lio/bidmachine/media3/common/text/Cue;->FIELD_LINE_ANCHOR:Ljava/lang/String;

    iget v2, p0, Lio/bidmachine/media3/common/text/Cue;->lineAnchor:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 916
    sget-object v1, Lio/bidmachine/media3/common/text/Cue;->FIELD_POSITION:Ljava/lang/String;

    iget v2, p0, Lio/bidmachine/media3/common/text/Cue;->position:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 917
    sget-object v1, Lio/bidmachine/media3/common/text/Cue;->FIELD_POSITION_ANCHOR:Ljava/lang/String;

    iget v2, p0, Lio/bidmachine/media3/common/text/Cue;->positionAnchor:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 918
    sget-object v1, Lio/bidmachine/media3/common/text/Cue;->FIELD_TEXT_SIZE_TYPE:Ljava/lang/String;

    iget v2, p0, Lio/bidmachine/media3/common/text/Cue;->textSizeType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 919
    sget-object v1, Lio/bidmachine/media3/common/text/Cue;->FIELD_TEXT_SIZE:Ljava/lang/String;

    iget v2, p0, Lio/bidmachine/media3/common/text/Cue;->textSize:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 920
    sget-object v1, Lio/bidmachine/media3/common/text/Cue;->FIELD_SIZE:Ljava/lang/String;

    iget v2, p0, Lio/bidmachine/media3/common/text/Cue;->size:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 921
    sget-object v1, Lio/bidmachine/media3/common/text/Cue;->FIELD_BITMAP_HEIGHT:Ljava/lang/String;

    iget v2, p0, Lio/bidmachine/media3/common/text/Cue;->bitmapHeight:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 922
    sget-object v1, Lio/bidmachine/media3/common/text/Cue;->FIELD_WINDOW_COLOR_SET:Ljava/lang/String;

    iget-boolean v2, p0, Lio/bidmachine/media3/common/text/Cue;->windowColorSet:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 923
    sget-object v1, Lio/bidmachine/media3/common/text/Cue;->FIELD_WINDOW_COLOR:Ljava/lang/String;

    iget v2, p0, Lio/bidmachine/media3/common/text/Cue;->windowColor:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 924
    sget-object v1, Lio/bidmachine/media3/common/text/Cue;->FIELD_VERTICAL_TYPE:Ljava/lang/String;

    iget v2, p0, Lio/bidmachine/media3/common/text/Cue;->verticalType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 925
    sget-object v1, Lio/bidmachine/media3/common/text/Cue;->FIELD_SHEAR_DEGREES:Ljava/lang/String;

    iget v2, p0, Lio/bidmachine/media3/common/text/Cue;->shearDegrees:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v0
.end method

.method public toSerializableBundle()Landroid/os/Bundle;
    .registers 6

    .line 863
    invoke-virtual {p0}, Lio/bidmachine/media3/common/text/Cue;->toBundleWithoutBitmap()Landroid/os/Bundle;

    move-result-object v0

    .line 864
    iget-object v1, p0, Lio/bidmachine/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_22

    .line 865
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 867
    iget-object v2, p0, Lio/bidmachine/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v2

    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 868
    sget-object v2, Lio/bidmachine/media3/common/text/Cue;->FIELD_BITMAP_BYTES:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_22
    return-object v0
.end method

###### Class io.bidmachine.media3.common.text.Cue.AnonymousClass1 (io.bidmachine.media3.common.text.Cue$1)
.class public synthetic Lio/bidmachine/media3/common/text/Cue$1;
.super Ljava/lang/Object;
.source "Cue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/text/Cue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.common.text.Cue.Builder (io.bidmachine.media3.common.text.Cue$Builder)
.class public final Lio/bidmachine/media3/common/text/Cue$Builder;
.super Ljava/lang/Object;
.source "Cue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/text/Cue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public bitmapHeight:F

.field public line:F

.field public lineAnchor:I

.field public lineType:I

.field public multiRowAlignment:Landroid/text/Layout$Alignment;

.field public position:F

.field public positionAnchor:I

.field public shearDegrees:F

.field public size:F

.field public text:Ljava/lang/CharSequence;

.field public textAlignment:Landroid/text/Layout$Alignment;

.field public textSize:F

.field public textSizeType:I

.field public verticalType:I

.field public windowColor:I

.field public windowColorSet:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 441
    iput-object v0, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    .line 442
    iput-object v0, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->bitmap:Landroid/graphics/Bitmap;

    .line 443
    iput-object v0, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    .line 444
    iput-object v0, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->multiRowAlignment:Landroid/text/Layout$Alignment;

    const v0, -0x800001

    .line 445
    iput v0, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->line:F

    const/high16 v1, -0x80000000

    .line 446
    iput v1, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->lineType:I

    .line 447
    iput v1, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->lineAnchor:I

    .line 448
    iput v0, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->position:F

    .line 449
    iput v1, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->positionAnchor:I

    .line 450
    iput v1, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->textSizeType:I

    .line 451
    iput v0, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->textSize:F

    .line 452
    iput v0, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->size:F

    .line 453
    iput v0, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->bitmapHeight:F

    const/4 v0, 0x0

    .line 454
    iput-boolean v0, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->windowColorSet:Z

    const/high16 v0, -0x1000000

    .line 455
    iput v0, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->windowColor:I

    .line 456
    iput v1, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->verticalType:I

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/common/text/Cue;)V
    .registers 3

    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    iget-object v0, p1, Lio/bidmachine/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    iput-object v0, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    .line 461
    iget-object v0, p1, Lio/bidmachine/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->bitmap:Landroid/graphics/Bitmap;

    .line 462
    iget-object v0, p1, Lio/bidmachine/media3/common/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    .line 463
    iget-object v0, p1, Lio/bidmachine/media3/common/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->multiRowAlignment:Landroid/text/Layout$Alignment;

    .line 464
    iget v0, p1, Lio/bidmachine/media3/common/text/Cue;->line:F

    iput v0, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->line:F

    .line 465
    iget v0, p1, Lio/bidmachine/media3/common/text/Cue;->lineType:I

    iput v0, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->lineType:I

    .line 466
    iget v0, p1, Lio/bidmachine/media3/common/text/Cue;->lineAnchor:I

    iput v0, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->lineAnchor:I

    .line 467
    iget v0, p1, Lio/bidmachine/media3/common/text/Cue;->position:F

    iput v0, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->position:F

    .line 468
    iget v0, p1, Lio/bidmachine/media3/common/text/Cue;->positionAnchor:I

    iput v0, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->positionAnchor:I

    .line 469
    iget v0, p1, Lio/bidmachine/media3/common/text/Cue;->textSizeType:I

    iput v0, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->textSizeType:I

    .line 470
    iget v0, p1, Lio/bidmachine/media3/common/text/Cue;->textSize:F

    iput v0, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->textSize:F

    .line 471
    iget v0, p1, Lio/bidmachine/media3/common/text/Cue;->size:F

    iput v0, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->size:F

    .line 472
    iget v0, p1, Lio/bidmachine/media3/common/text/Cue;->bitmapHeight:F

    iput v0, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->bitmapHeight:F

    .line 473
    iget-boolean v0, p1, Lio/bidmachine/media3/common/text/Cue;->windowColorSet:Z

    iput-boolean v0, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->windowColorSet:Z

    .line 474
    iget v0, p1, Lio/bidmachine/media3/common/text/Cue;->windowColor:I

    iput v0, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->windowColor:I

    .line 475
    iget v0, p1, Lio/bidmachine/media3/common/text/Cue;->verticalType:I

    iput v0, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->verticalType:I

    .line 476
    iget p1, p1, Lio/bidmachine/media3/common/text/Cue;->shearDegrees:F

    iput p1, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->shearDegrees:F

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/common/text/Cue;Lio/bidmachine/media3/common/text/Cue$1;)V
    .registers 3

    .line 421
    invoke-direct {p0, p1}, Lio/bidmachine/media3/common/text/Cue$Builder;-><init>(Lio/bidmachine/media3/common/text/Cue;)V

    return-void
.end method


# virtual methods
.method public build()Lio/bidmachine/media3/common/text/Cue;
    .registers 22

    move-object/from16 v0, p0

    .line 811
    new-instance v1, Lio/bidmachine/media3/common/text/Cue;

    iget-object v2, v0, Lio/bidmachine/media3/common/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    iget-object v3, v0, Lio/bidmachine/media3/common/text/Cue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    iget-object v4, v0, Lio/bidmachine/media3/common/text/Cue$Builder;->multiRowAlignment:Landroid/text/Layout$Alignment;

    iget-object v5, v0, Lio/bidmachine/media3/common/text/Cue$Builder;->bitmap:Landroid/graphics/Bitmap;

    iget v6, v0, Lio/bidmachine/media3/common/text/Cue$Builder;->line:F

    iget v7, v0, Lio/bidmachine/media3/common/text/Cue$Builder;->lineType:I

    iget v8, v0, Lio/bidmachine/media3/common/text/Cue$Builder;->lineAnchor:I

    iget v9, v0, Lio/bidmachine/media3/common/text/Cue$Builder;->position:F

    iget v10, v0, Lio/bidmachine/media3/common/text/Cue$Builder;->positionAnchor:I

    iget v11, v0, Lio/bidmachine/media3/common/text/Cue$Builder;->textSizeType:I

    iget v12, v0, Lio/bidmachine/media3/common/text/Cue$Builder;->textSize:F

    iget v13, v0, Lio/bidmachine/media3/common/text/Cue$Builder;->size:F

    iget v14, v0, Lio/bidmachine/media3/common/text/Cue$Builder;->bitmapHeight:F

    iget-boolean v15, v0, Lio/bidmachine/media3/common/text/Cue$Builder;->windowColorSet:Z

    move-object/from16 v16, v1

    iget v1, v0, Lio/bidmachine/media3/common/text/Cue$Builder;->windowColor:I

    move/from16 v17, v1

    iget v1, v0, Lio/bidmachine/media3/common/text/Cue$Builder;->verticalType:I

    move/from16 v18, v1

    iget v1, v0, Lio/bidmachine/media3/common/text/Cue$Builder;->shearDegrees:F

    const/16 v19, 0x0

    move/from16 v20, v18

    move/from16 v18, v1

    move-object/from16 v1, v16

    move/from16 v16, v17

    move/from16 v17, v20

    invoke-direct/range {v1 .. v19}, Lio/bidmachine/media3/common/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFLio/bidmachine/media3/common/text/Cue$1;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public clearWindowColor()Lio/bidmachine/media3/common/text/Cue$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 757
    iput-boolean v0, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->windowColorSet:Z

    return-object p0
.end method

.method public getLineAnchor()I
    .registers 2

    .line 615
    iget v0, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->lineAnchor:I

    return v0
.end method

.method public getPositionAnchor()I
    .registers 2

    .line 659
    iget v0, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->positionAnchor:I

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    .line 500
    iget-object v0, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)Lio/bidmachine/media3/common/text/Cue$Builder;
    .registers 2

    .line 510
    iput-object p1, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setBitmapHeight(F)Lio/bidmachine/media3/common/text/Cue$Builder;
    .registers 2

    .line 725
    iput p1, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->bitmapHeight:F

    return-object p0
.end method

.method public setLine(FI)Lio/bidmachine/media3/common/text/Cue$Builder;
    .registers 3

    .line 571
    iput p1, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->line:F

    .line 572
    iput p2, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->lineType:I

    return-object p0
.end method

.method public setLineAnchor(I)Lio/bidmachine/media3/common/text/Cue$Builder;
    .registers 2

    .line 604
    iput p1, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->lineAnchor:I

    return-object p0
.end method

.method public setMultiRowAlignment(Landroid/text/Layout$Alignment;)Lio/bidmachine/media3/common/text/Cue$Builder;
    .registers 2

    .line 558
    iput-object p1, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->multiRowAlignment:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public setPosition(F)Lio/bidmachine/media3/common/text/Cue$Builder;
    .registers 2

    .line 626
    iput p1, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->position:F

    return-object p0
.end method

.method public setPositionAnchor(I)Lio/bidmachine/media3/common/text/Cue$Builder;
    .registers 2

    .line 648
    iput p1, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->positionAnchor:I

    return-object p0
.end method

.method public setShearDegrees(F)Lio/bidmachine/media3/common/text/Cue$Builder;
    .registers 2

    .line 795
    iput p1, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->shearDegrees:F

    return-object p0
.end method

.method public setSize(F)Lio/bidmachine/media3/common/text/Cue$Builder;
    .registers 2

    .line 703
    iput p1, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->size:F

    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/text/Cue$Builder;
    .registers 2

    .line 488
    iput-object p1, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTextAlignment(Landroid/text/Layout$Alignment;)Lio/bidmachine/media3/common/text/Cue$Builder;
    .registers 2

    .line 534
    iput-object p1, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public setTextSize(FI)Lio/bidmachine/media3/common/text/Cue$Builder;
    .registers 3

    .line 670
    iput p1, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->textSize:F

    .line 671
    iput p2, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->textSizeType:I

    return-object p0
.end method

.method public setVerticalType(I)Lio/bidmachine/media3/common/text/Cue$Builder;
    .registers 2

    .line 788
    iput p1, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->verticalType:I

    return-object p0
.end method

.method public setWindowColor(I)Lio/bidmachine/media3/common/text/Cue$Builder;
    .registers 2

    .line 749
    iput p1, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->windowColor:I

    const/4 p1, 0x1

    .line 750
    iput-boolean p1, p0, Lio/bidmachine/media3/common/text/Cue$Builder;->windowColorSet:Z

    return-object p0
.end method
