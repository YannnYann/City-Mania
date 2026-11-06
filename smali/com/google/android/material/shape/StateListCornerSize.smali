###### Class com.google.android.material.shape.StateListCornerSize (com.google.android.material.shape.StateListCornerSize)
.class public Lcom/google/android/material/shape/StateListCornerSize;
.super Ljava/lang/Object;
.source "StateListCornerSize.java"


# instance fields
.field public cornerSizes:[Lcom/google/android/material/shape/CornerSize;

.field public defaultCornerSize:Lcom/google/android/material/shape/CornerSize;

.field public stateCount:I

.field public stateSpecs:[[I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 53
    new-array v1, v0, [[I

    iput-object v1, p0, Lcom/google/android/material/shape/StateListCornerSize;->stateSpecs:[[I

    .line 54
    new-array v0, v0, [Lcom/google/android/material/shape/CornerSize;

    iput-object v0, p0, Lcom/google/android/material/shape/StateListCornerSize;->cornerSizes:[Lcom/google/android/material/shape/CornerSize;

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/content/res/TypedArray;ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/StateListCornerSize;
    .registers 8

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-nez v0, :cond_10

    .line 80
    invoke-static {p1, p2, p3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getCornerSize(Landroid/content/res/TypedArray;ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/material/shape/StateListCornerSize;->create(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/StateListCornerSize;

    move-result-object p0

    return-object p0

    .line 82
    :cond_10
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 83
    const-string v2, "xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 84
    invoke-static {p1, p2, p3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getCornerSize(Landroid/content/res/TypedArray;ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/material/shape/StateListCornerSize;->create(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/StateListCornerSize;

    move-result-object p0

    return-object p0

    .line 86
    :cond_29
    :try_start_29
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1
    :try_end_31
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_29 .. :try_end_31} :catch_74
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_31} :catch_74
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_29 .. :try_end_31} :catch_74

    .line 87
    :try_start_31
    new-instance p2, Lcom/google/android/material/shape/StateListCornerSize;

    invoke-direct {p2}, Lcom/google/android/material/shape/StateListCornerSize;-><init>()V

    .line 88
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 91
    :goto_3a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_45

    const/4 v3, 0x1

    if-eq v1, v3, :cond_45

    goto :goto_3a

    :cond_45
    if-ne v1, v2, :cond_61

    .line 98
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 99
    const-string v2, "selector"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {p2, p0, p1, v0, v1}, Lcom/google/android/material/shape/StateListCornerSize;->loadCornerSizesFromItems(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    :try_end_5a
    .catchall {:try_start_31 .. :try_end_5a} :catchall_5b

    goto :goto_5d

    :catchall_5b
    move-exception p0

    goto :goto_69

    .line 103
    :cond_5d
    :goto_5d
    :try_start_5d
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_60
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5d .. :try_end_60} :catch_74
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_74
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5d .. :try_end_60} :catch_74

    return-object p2

    .line 96
    :cond_61
    :try_start_61
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p2, "No start tag found"

    invoke-direct {p0, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_69
    .catchall {:try_start_61 .. :try_end_69} :catchall_5b

    :goto_69
    if-eqz p1, :cond_73

    .line 86
    :try_start_6b
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_6f

    goto :goto_73

    :catchall_6f
    move-exception p1

    :try_start_70
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_73
    :goto_73
    throw p0
    :try_end_74
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_70 .. :try_end_74} :catch_74
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_74} :catch_74
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_70 .. :try_end_74} :catch_74

    .line 104
    :catch_74
    invoke-static {p3}, Lcom/google/android/material/shape/StateListCornerSize;->create(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/StateListCornerSize;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/StateListCornerSize;
    .registers 3

    .line 110
    new-instance v0, Lcom/google/android/material/shape/StateListCornerSize;

    invoke-direct {v0}, Lcom/google/android/material/shape/StateListCornerSize;-><init>()V

    .line 111
    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v0, v1, p0}, Lcom/google/android/material/shape/StateListCornerSize;->addStateCornerSize([ILcom/google/android/material/shape/CornerSize;)V

    return-object v0
.end method


# virtual methods
.method public final addStateCornerSize([ILcom/google/android/material/shape/CornerSize;)V
    .registers 5

    .line 200
    iget v0, p0, Lcom/google/android/material/shape/StateListCornerSize;->stateCount:I

    if-eqz v0, :cond_7

    array-length v1, p1

    if-nez v1, :cond_9

    .line 201
    :cond_7
    iput-object p2, p0, Lcom/google/android/material/shape/StateListCornerSize;->defaultCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 203
    :cond_9
    iget-object v1, p0, Lcom/google/android/material/shape/StateListCornerSize;->stateSpecs:[[I

    array-length v1, v1

    if-lt v0, v1, :cond_13

    add-int/lit8 v1, v0, 0xa

    .line 204
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/shape/StateListCornerSize;->growArray(II)V

    .line 206
    :cond_13
    iget-object v0, p0, Lcom/google/android/material/shape/StateListCornerSize;->stateSpecs:[[I

    iget v1, p0, Lcom/google/android/material/shape/StateListCornerSize;->stateCount:I

    aput-object p1, v0, v1

    .line 207
    iget-object p1, p0, Lcom/google/android/material/shape/StateListCornerSize;->cornerSizes:[Lcom/google/android/material/shape/CornerSize;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 208
    iput v1, p0, Lcom/google/android/material/shape/StateListCornerSize;->stateCount:I

    return-void
.end method

.method public getCornerSizeForState([I)Lcom/google/android/material/shape/CornerSize;
    .registers 3

    .line 139
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/StateListCornerSize;->indexOfStateSet([I)I

    move-result p1

    if-gez p1, :cond_c

    .line 141
    sget-object p1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/StateListCornerSize;->indexOfStateSet([I)I

    move-result p1

    :cond_c
    if-gez p1, :cond_11

    .line 143
    iget-object p1, p0, Lcom/google/android/material/shape/StateListCornerSize;->defaultCornerSize:Lcom/google/android/material/shape/CornerSize;

    return-object p1

    :cond_11
    iget-object v0, p0, Lcom/google/android/material/shape/StateListCornerSize;->cornerSizes:[Lcom/google/android/material/shape/CornerSize;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getDefaultCornerSize()Lcom/google/android/material/shape/CornerSize;
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/google/android/material/shape/StateListCornerSize;->defaultCornerSize:Lcom/google/android/material/shape/CornerSize;

    return-object v0
.end method

.method public final growArray(II)V
    .registers 6

    .line 212
    new-array v0, p2, [[I

    .line 213
    iget-object v1, p0, Lcom/google/android/material/shape/StateListCornerSize;->stateSpecs:[[I

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    iput-object v0, p0, Lcom/google/android/material/shape/StateListCornerSize;->stateSpecs:[[I

    .line 215
    new-array p2, p2, [Lcom/google/android/material/shape/CornerSize;

    .line 216
    iget-object v0, p0, Lcom/google/android/material/shape/StateListCornerSize;->cornerSizes:[Lcom/google/android/material/shape/CornerSize;

    invoke-static {v0, v2, p2, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    iput-object p2, p0, Lcom/google/android/material/shape/StateListCornerSize;->cornerSizes:[Lcom/google/android/material/shape/CornerSize;

    return-void
.end method

.method public final indexOfStateSet([I)I
    .registers 5

    .line 147
    iget-object v0, p0, Lcom/google/android/material/shape/StateListCornerSize;->stateSpecs:[[I

    const/4 v1, 0x0

    .line 148
    :goto_3
    iget v2, p0, Lcom/google/android/material/shape/StateListCornerSize;->stateCount:I

    if-ge v1, v2, :cond_13

    .line 149
    aget-object v2, v0, v1

    invoke-static {v2, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v2

    if-eqz v2, :cond_10

    return v1

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_13
    const/4 p1, -0x1

    return p1
.end method

.method public isStateful()Z
    .registers 3

    .line 129
    iget v0, p0, Lcom/google/android/material/shape/StateListCornerSize;->stateCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final loadCornerSizesFromItems(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 166
    :cond_6
    :goto_6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v1, :cond_74

    .line 167
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ge v3, v0, :cond_15

    const/4 v4, 0x3

    if-eq v2, v4, :cond_74

    :cond_15
    const/4 v4, 0x2

    if-ne v2, v4, :cond_6

    if-gt v3, v0, :cond_6

    .line 170
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "item"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    goto :goto_6

    .line 174
    :cond_27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    if-nez p4, :cond_35

    .line 177
    sget-object v4, Lcom/google/android/material/R$styleable;->ShapeAppearance:[I

    invoke-virtual {v2, p3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    goto :goto_3b

    .line 178
    :cond_35
    sget-object v2, Lcom/google/android/material/R$styleable;->ShapeAppearance:[I

    invoke-virtual {p4, p3, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 180
    :goto_3b
    sget v4, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSize:I

    new-instance v5, Lcom/google/android/material/shape/AbsoluteCornerSize;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    .line 181
    invoke-static {v2, v4, v5}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getCornerSize(Landroid/content/res/TypedArray;ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v4

    .line 182
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 186
    invoke-interface {p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v2

    .line 187
    new-array v5, v2, [I

    move v6, v3

    move v7, v6

    :goto_52
    if-ge v6, v2, :cond_6c

    .line 189
    invoke-interface {p3, v6}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v8

    .line 190
    sget v9, Lcom/google/android/material/R$attr;->cornerSize:I

    if-eq v8, v9, :cond_69

    add-int/lit8 v9, v7, 0x1

    .line 191
    invoke-interface {p3, v6, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v10

    if-eqz v10, :cond_65

    goto :goto_66

    :cond_65
    neg-int v8, v8

    :goto_66
    aput v8, v5, v7

    move v7, v9

    :cond_69
    add-int/lit8 v6, v6, 0x1

    goto :goto_52

    .line 194
    :cond_6c
    invoke-static {v5, v7}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v2

    .line 195
    invoke-virtual {p0, v2, v4}, Lcom/google/android/material/shape/StateListCornerSize;->addStateCornerSize([ILcom/google/android/material/shape/CornerSize;)V

    goto :goto_6

    :cond_74
    return-void
.end method
