###### Class io.bidmachine.iab.vast.tags.VastXmlTag (io.bidmachine.iab.vast.tags.VastXmlTag)
.class public Lio/bidmachine/iab/vast/tags/VastXmlTag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "xmlPullParser"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method public static a(Lio/bidmachine/iab/vast/tags/VastXmlTag;Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/HashMap;
    .registers 6

    .line 5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    if-lez v0, :cond_2b

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 7
    :goto_c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 8
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 9
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_2a
    return-object v0

    :cond_2b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;Lio/bidmachine/iab/utils/IabElementStyle;)V
    .registers 6

    const/4 v0, 0x0

    .line 13
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    if-ge v0, v1, :cond_134

    .line 14
    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_17

    goto/16 :goto_130

    .line 20
    :cond_17
    :try_start_17
    const-string v3, "stroke"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 21
    invoke-static {v2}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->setStrokeColor(Ljava/lang/Integer;)V

    goto/16 :goto_130

    :catchall_28
    move-exception v1

    goto/16 :goto_12b

    .line 22
    :cond_2b
    const-string v3, "fill"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 23
    invoke-static {v2}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->setFillColor(Ljava/lang/Integer;)V

    goto/16 :goto_130

    .line 24
    :cond_3c
    const-string v3, "outlined"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 25
    invoke-static {v2}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->k(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->setOutlined(Ljava/lang/Boolean;)V

    goto/16 :goto_130

    .line 26
    :cond_51
    const-string v3, "visible"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 27
    invoke-static {v2}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->k(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->setVisible(Ljava/lang/Boolean;)V

    goto/16 :goto_130

    .line 28
    :cond_66
    const-string v3, "x"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 29
    invoke-static {v2}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->setHorizontalPosition(Ljava/lang/Integer;)V

    goto/16 :goto_130

    .line 30
    :cond_77
    const-string v3, "y"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_88

    .line 31
    invoke-static {v2}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->i(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->setVerticalPosition(Ljava/lang/Integer;)V

    goto/16 :goto_130

    .line 32
    :cond_88
    const-string v3, "style"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_95

    .line 33
    invoke-virtual {p1, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->setStyle(Ljava/lang/String;)V

    goto/16 :goto_130

    .line 34
    :cond_95
    const-string v3, "opacity"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 35
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->setOpacity(Ljava/lang/Float;)V

    goto/16 :goto_130

    .line 36
    :cond_aa
    const-string v3, "hideafter"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bf

    .line 37
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->setHideAfter(Ljava/lang/Float;)V

    goto/16 :goto_130

    .line 38
    :cond_bf
    const-string v3, "padding"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cb

    .line 39
    invoke-virtual {p1, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->setPadding(Ljava/lang/String;)V

    goto :goto_130

    .line 40
    :cond_cb
    const-string v3, "margin"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d7

    .line 41
    invoke-virtual {p1, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->setMargin(Ljava/lang/String;)V

    goto :goto_130

    .line 42
    :cond_d7
    const-string v3, "strokewidth"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e7

    .line 43
    invoke-static {v2}, Lio/bidmachine/iab/utils/Utils;->convertCssSizeToPx(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->setStrokeWidth(Ljava/lang/Float;)V

    goto :goto_130

    .line 44
    :cond_e7
    const-string v3, "width"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f7

    .line 45
    invoke-static {v2}, Lio/bidmachine/iab/utils/Utils;->convertCssSizeToPx(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->setWidth(Ljava/lang/Number;)V

    goto :goto_130

    .line 46
    :cond_f7
    const-string v3, "height"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_107

    .line 47
    invoke-static {v2}, Lio/bidmachine/iab/utils/Utils;->convertCssSizeToPx(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->setHeight(Ljava/lang/Number;)V

    goto :goto_130

    .line 48
    :cond_107
    const-string v3, "fontstyle"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11b

    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->setFontStyle(Ljava/lang/Integer;)V

    goto :goto_130

    .line 50
    :cond_11b
    const-string v3, "fontsize"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_130

    .line 51
    invoke-static {v2}, Lio/bidmachine/iab/utils/Utils;->convertCssSizeToPx(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->setFontSize(Ljava/lang/Float;)V
    :try_end_12a
    .catchall {:try_start_17 .. :try_end_12a} :catchall_28

    goto :goto_130

    .line 54
    :goto_12b
    const-string v2, "VastXmlTag"

    invoke-static {v2, v1}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_130
    :goto_130
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 58
    :cond_134
    :try_start_134
    invoke-static {p0}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/bidmachine/iab/utils/IabElementStyle;->setContent(Ljava/lang/String;)V
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_134 .. :try_end_13b} :catch_13c

    goto :goto_140

    :catch_13c
    move-exception p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    :goto_140
    :try_start_140
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_149
    .catch Ljava/io/IOException; {:try_start_140 .. :try_end_149} :catch_14f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_140 .. :try_end_149} :catch_14a

    goto :goto_153

    :catch_14a
    move-exception p0

    .line 67
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_153

    :catch_14f
    move-exception p0

    .line 68
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_153
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_a

    .line 12
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Lorg/xmlpull/v1/XmlPullParser;)Z
    .registers 1

    .line 11
    invoke-static {p0}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p0

    .line 12
    invoke-static {p0}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->k(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3

    .line 7
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 9
    :try_start_6
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VastXmlTag"

    invoke-static {v1, p0, v0}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_19

    .line 2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_15
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    return-object v0

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 5

    .line 4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1b

    const/4 v0, 0x1

    :goto_8
    if-eqz v0, :cond_1a

    .line 9
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v1, :cond_17

    const/4 v3, 0x3

    if-eq v2, v3, :cond_14

    goto :goto_8

    :cond_14
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1a
    return-void

    .line 10
    :cond_1b
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public static e(Ljava/lang/String;)I
    .registers 4

    if-eqz p0, :cond_39

    .line 1
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_f

    .line 3
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 5
    :cond_f
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 6
    array-length v0, p0

    const/4 v2, 0x2

    if-le v0, v2, :cond_39

    .line 8
    :try_start_19
    aget-object v0, p0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    .line 9
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 10
    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2c} :catch_33

    mul-int/lit16 v0, v0, 0xe10

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    add-int/2addr v0, p0

    return v0

    :catch_33
    move-exception p0

    .line 13
    const-string v0, "VastXmlTag"

    invoke-static {v0, p0}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_39
    const/4 p0, -0x1

    return p0
.end method

.method public static f(Ljava/lang/String;)I
    .registers 3

    if-eqz p0, :cond_23

    .line 1
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2
    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_23

    const/4 v0, 0x0

    .line 4
    :try_start_d
    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 5
    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_19} :catch_1d

    mul-int/lit8 v0, v0, 0x3c

    add-int/2addr v0, p0

    return v0

    :catch_1d
    move-exception p0

    .line 8
    const-string v0, "VastXmlTag"

    invoke-static {v0, p0}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_23
    const/4 p0, -0x1

    return p0
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "portrait"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string v0, "landscape"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    goto :goto_2a

    :cond_1e
    const/4 p0, 0x2

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_24
    const/4 p0, 0x1

    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2a
    :goto_2a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 4

    const/4 v0, 0x1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4c

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_4e

    goto :goto_37

    :sswitch_17
    const-string v2, "right"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    goto :goto_37

    :cond_20
    const/4 v1, 0x2

    goto :goto_37

    :sswitch_22
    const-string v2, "left"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto :goto_37

    :cond_2b
    move v1, v0

    goto :goto_37

    :sswitch_2d
    const-string v2, "center"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_36

    goto :goto_37

    :cond_36
    const/4 v1, 0x0

    :goto_37
    packed-switch v1, :pswitch_data_5c

    goto :goto_4c

    :pswitch_3b
    const/4 p0, 0x5

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_41
    const/4 p0, 0x3

    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 11
    :pswitch_47
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_4c
    :goto_4c
    const/4 p0, 0x0

    return-object p0

    :sswitch_data_4e
    .sparse-switch
        -0x514d33ab -> :sswitch_2d
        0x32a007 -> :sswitch_22
        0x677c21c -> :sswitch_17
    .end sparse-switch

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_47
        :pswitch_41
        :pswitch_3b
    .end packed-switch
.end method

.method public static i(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_52

    goto :goto_36

    :sswitch_16
    const-string v1, "top"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    goto :goto_36

    :cond_1f
    const/4 v0, 0x2

    goto :goto_36

    :sswitch_21
    const-string v1, "center"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2a

    goto :goto_36

    :cond_2a
    const/4 v0, 0x1

    goto :goto_36

    :sswitch_2c
    const-string v1, "bottom"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_35

    goto :goto_36

    :cond_35
    const/4 v0, 0x0

    :goto_36
    packed-switch v0, :pswitch_data_60

    goto :goto_4f

    :pswitch_3a
    const/16 p0, 0x30

    .line 4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_41
    const/16 p0, 0x10

    .line 8
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_48
    const/16 p0, 0x50

    .line 9
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_4f
    :goto_4f
    const/4 p0, 0x0

    return-object p0

    nop

    :sswitch_data_52
    .sparse-switch
        -0x527265d5 -> :sswitch_2c
        -0x514d33ab -> :sswitch_21
        0x1c155 -> :sswitch_16
    .end sparse-switch

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_48
        :pswitch_41
        :pswitch_3a
    .end packed-switch
.end method

.method public static j(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_14

    .line 1
    const-string v0, "false"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 2
    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_14

    :cond_12
    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public static k(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_14

    .line 1
    const-string v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 2
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_14

    :cond_12
    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 3
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/VastXmlTag;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_b

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/util/HashMap;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lio/bidmachine/iab/vast/tags/VastXmlTag;->b:Ljava/util/HashMap;

    return-void
.end method

.method public a(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 2

    .line 0
    return-void
.end method

.method public final b(Ljava/lang/String;)I
    .registers 7

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "Error parse attribute value - %s, by name - %s"

    const-string v3, "VastXmlTag"

    const/4 v4, -0x1

    if-eqz v1, :cond_17

    .line 4
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, v2, p1}, Lio/bidmachine/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    .line 8
    :cond_17
    :try_start_17
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1b} :catch_1c

    return p1

    .line 10
    :catch_1c
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, v2, p1}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4
.end method

.method public final d(Ljava/lang/String;)Z
    .registers 7

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->getSupportedAttributes()[Ljava/lang/String;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_16

    aget-object v4, v0, v3

    .line 3
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    const/4 p1, 0x1

    return p1

    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_16
    return v2
.end method

.method public final getBooleanAttributeValueByName(Ljava/lang/String;Z)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "defValue"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_c
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->j(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x0

    return p1

    :cond_14
    return p2
.end method

.method public getSupportedAttributes()[Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 1
    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a:Ljava/lang/String;

    return-object v0
.end method

.method public isTextSupported()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "xmlPullParser"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Lio/bidmachine/iab/vast/tags/VastXmlTag;Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/util/HashMap;)V

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->isTextSupported()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->setText(Ljava/lang/String;)V

    .line 5
    :cond_14
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a:Ljava/lang/String;

    return-void
.end method
