###### Class com.google.android.material.shape.StateListSizeChange (com.google.android.material.shape.StateListSizeChange)
.class public Lcom/google/android/material/shape/StateListSizeChange;
.super Ljava/lang/Object;
.source "StateListSizeChange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/shape/StateListSizeChange$SizeChange;,
        Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;,
        Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;
    }
.end annotation


# instance fields
.field public defaultSizeChange:Lcom/google/android/material/shape/StateListSizeChange$SizeChange;

.field public sizeChanges:[Lcom/google/android/material/shape/StateListSizeChange$SizeChange;

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

    iput-object v1, p0, Lcom/google/android/material/shape/StateListSizeChange;->stateSpecs:[[I

    .line 54
    new-array v0, v0, [Lcom/google/android/material/shape/StateListSizeChange$SizeChange;

    iput-object v0, p0, Lcom/google/android/material/shape/StateListSizeChange;->sizeChanges:[Lcom/google/android/material/shape/StateListSizeChange$SizeChange;

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/shape/StateListSizeChange;
    .registers 8

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_9

    return-object p2

    .line 75
    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 76
    const-string v1, "xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    return-object p2

    .line 79
    :cond_1a
    :try_start_1a
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1
    :try_end_22
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_22} :catch_65
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_22} :catch_65
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1a .. :try_end_22} :catch_65

    .line 80
    :try_start_22
    new-instance v0, Lcom/google/android/material/shape/StateListSizeChange;

    invoke-direct {v0}, Lcom/google/android/material/shape/StateListSizeChange;-><init>()V

    .line 81
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 84
    :goto_2b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_36

    const/4 v4, 0x1

    if-eq v2, v4, :cond_36

    goto :goto_2b

    :cond_36
    if-ne v2, v3, :cond_52

    .line 91
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 92
    const-string v3, "selector"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/android/material/shape/StateListSizeChange;->loadSizeChangeFromItems(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    :try_end_4b
    .catchall {:try_start_22 .. :try_end_4b} :catchall_4c

    goto :goto_4e

    :catchall_4c
    move-exception p0

    goto :goto_5a

    .line 96
    :cond_4e
    :goto_4e
    :try_start_4e
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_51
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4e .. :try_end_51} :catch_65
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_65
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4e .. :try_end_51} :catch_65

    return-object v0

    .line 89
    :cond_52
    :try_start_52
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v0, "No start tag found"

    invoke-direct {p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5a
    .catchall {:try_start_52 .. :try_end_5a} :catchall_4c

    :goto_5a
    if-eqz p1, :cond_64

    .line 79
    :try_start_5c
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_60

    goto :goto_64

    :catchall_60
    move-exception p1

    :try_start_61
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_64
    :goto_64
    throw p0
    :try_end_65
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_61 .. :try_end_65} :catch_65
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_65} :catch_65
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_61 .. :try_end_65} :catch_65

    :catch_65
    return-object p2
.end method


# virtual methods
.method public final addStateSizeChange([ILcom/google/android/material/shape/StateListSizeChange$SizeChange;)V
    .registers 5

    .line 206
    iget v0, p0, Lcom/google/android/material/shape/StateListSizeChange;->stateCount:I

    if-eqz v0, :cond_7

    array-length v1, p1

    if-nez v1, :cond_9

    .line 207
    :cond_7
    iput-object p2, p0, Lcom/google/android/material/shape/StateListSizeChange;->defaultSizeChange:Lcom/google/android/material/shape/StateListSizeChange$SizeChange;

    .line 209
    :cond_9
    iget-object v1, p0, Lcom/google/android/material/shape/StateListSizeChange;->stateSpecs:[[I

    array-length v1, v1

    if-lt v0, v1, :cond_13

    add-int/lit8 v1, v0, 0xa

    .line 210
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/shape/StateListSizeChange;->growArray(II)V

    .line 212
    :cond_13
    iget-object v0, p0, Lcom/google/android/material/shape/StateListSizeChange;->stateSpecs:[[I

    iget v1, p0, Lcom/google/android/material/shape/StateListSizeChange;->stateCount:I

    aput-object p1, v0, v1

    .line 213
    iget-object p1, p0, Lcom/google/android/material/shape/StateListSizeChange;->sizeChanges:[Lcom/google/android/material/shape/StateListSizeChange$SizeChange;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 214
    iput v1, p0, Lcom/google/android/material/shape/StateListSizeChange;->stateCount:I

    return-void
.end method

.method public getMaxWidthChange(I)I
    .registers 7

    neg-int v0, p1

    const/4 v1, 0x0

    .line 121
    :goto_2
    iget v2, p0, Lcom/google/android/material/shape/StateListSizeChange;->stateCount:I

    if-ge v1, v2, :cond_2c

    .line 122
    iget-object v2, p0, Lcom/google/android/material/shape/StateListSizeChange;->sizeChanges:[Lcom/google/android/material/shape/StateListSizeChange$SizeChange;

    aget-object v2, v2, v1

    .line 123
    iget-object v2, v2, Lcom/google/android/material/shape/StateListSizeChange$SizeChange;->widthChange:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;

    iget-object v3, v2, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;->type:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

    sget-object v4, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;->PIXELS:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

    if-ne v3, v4, :cond_1b

    int-to-float v0, v0

    .line 124
    iget v2, v2, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;->amount:F

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :goto_19
    float-to-int v0, v0

    goto :goto_29

    .line 125
    :cond_1b
    sget-object v4, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;->PERCENT:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

    if-ne v3, v4, :cond_29

    int-to-float v0, v0

    int-to-float v3, p1

    .line 126
    iget v2, v2, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;->amount:F

    mul-float/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_19

    :cond_29
    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2c
    return v0
.end method

.method public final getSizeChangeAmount(Landroid/content/res/TypedArray;ILcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;)Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;
    .registers 6

    .line 189
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    if-nez p2, :cond_7

    goto :goto_34

    .line 194
    :cond_7
    iget v0, p2, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_23

    .line 195
    new-instance p3, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;

    sget-object v0, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;->PIXELS:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

    iget p2, p2, Landroid/util/TypedValue;->data:I

    .line 197
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p3, v0, p1}, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;-><init>(Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;F)V

    return-object p3

    :cond_23
    const/4 p1, 0x6

    if-ne v0, p1, :cond_34

    .line 199
    new-instance p1, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;

    sget-object p3, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;->PERCENT:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0, v0}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p2

    invoke-direct {p1, p3, p2}, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;-><init>(Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;F)V

    return-object p1

    :cond_34
    :goto_34
    return-object p3
.end method

.method public getSizeChangeForState([I)Lcom/google/android/material/shape/StateListSizeChange$SizeChange;
    .registers 3

    .line 112
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/StateListSizeChange;->indexOfStateSet([I)I

    move-result p1

    if-gez p1, :cond_c

    .line 114
    sget-object p1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/StateListSizeChange;->indexOfStateSet([I)I

    move-result p1

    :cond_c
    if-gez p1, :cond_11

    .line 116
    iget-object p1, p0, Lcom/google/android/material/shape/StateListSizeChange;->defaultSizeChange:Lcom/google/android/material/shape/StateListSizeChange$SizeChange;

    return-object p1

    :cond_11
    iget-object v0, p0, Lcom/google/android/material/shape/StateListSizeChange;->sizeChanges:[Lcom/google/android/material/shape/StateListSizeChange$SizeChange;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final growArray(II)V
    .registers 6

    .line 218
    new-array v0, p2, [[I

    .line 219
    iget-object v1, p0, Lcom/google/android/material/shape/StateListSizeChange;->stateSpecs:[[I

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    iput-object v0, p0, Lcom/google/android/material/shape/StateListSizeChange;->stateSpecs:[[I

    .line 221
    new-array p2, p2, [Lcom/google/android/material/shape/StateListSizeChange$SizeChange;

    .line 222
    iget-object v0, p0, Lcom/google/android/material/shape/StateListSizeChange;->sizeChanges:[Lcom/google/android/material/shape/StateListSizeChange$SizeChange;

    invoke-static {v0, v2, p2, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    iput-object p2, p0, Lcom/google/android/material/shape/StateListSizeChange;->sizeChanges:[Lcom/google/android/material/shape/StateListSizeChange$SizeChange;

    return-void
.end method

.method public final indexOfStateSet([I)I
    .registers 5

    .line 133
    iget-object v0, p0, Lcom/google/android/material/shape/StateListSizeChange;->stateSpecs:[[I

    const/4 v1, 0x0

    .line 134
    :goto_3
    iget v2, p0, Lcom/google/android/material/shape/StateListSizeChange;->stateCount:I

    if-ge v1, v2, :cond_13

    .line 135
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

.method public final loadSizeChangeFromItems(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 152
    :cond_6
    :goto_6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v1, :cond_74

    .line 153
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ge v3, v0, :cond_15

    const/4 v4, 0x3

    if-eq v2, v4, :cond_74

    :cond_15
    const/4 v4, 0x2

    if-ne v2, v4, :cond_6

    if-gt v3, v0, :cond_6

    .line 156
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "item"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    goto :goto_6

    .line 160
    :cond_27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    if-nez p4, :cond_35

    .line 163
    sget-object v4, Lcom/google/android/material/R$styleable;->StateListSizeChange:[I

    invoke-virtual {v2, p3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    goto :goto_3b

    .line 164
    :cond_35
    sget-object v2, Lcom/google/android/material/R$styleable;->StateListSizeChange:[I

    invoke-virtual {p4, p3, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 166
    :goto_3b
    sget v4, Lcom/google/android/material/R$styleable;->StateListSizeChange_widthChange:I

    const/4 v5, 0x0

    .line 167
    invoke-virtual {p0, v2, v4, v5}, Lcom/google/android/material/shape/StateListSizeChange;->getSizeChangeAmount(Landroid/content/res/TypedArray;ILcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;)Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;

    move-result-object v4

    .line 169
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 173
    invoke-interface {p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v2

    .line 174
    new-array v5, v2, [I

    move v6, v3

    move v7, v6

    :goto_4d
    if-ge v6, v2, :cond_67

    .line 176
    invoke-interface {p3, v6}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v8

    .line 177
    sget v9, Lcom/google/android/material/R$attr;->widthChange:I

    if-eq v8, v9, :cond_64

    add-int/lit8 v9, v7, 0x1

    .line 178
    invoke-interface {p3, v6, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v10

    if-eqz v10, :cond_60

    goto :goto_61

    :cond_60
    neg-int v8, v8

    :goto_61
    aput v8, v5, v7

    move v7, v9

    :cond_64
    add-int/lit8 v6, v6, 0x1

    goto :goto_4d

    .line 181
    :cond_67
    invoke-static {v5, v7}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v2

    .line 182
    new-instance v3, Lcom/google/android/material/shape/StateListSizeChange$SizeChange;

    invoke-direct {v3, v4}, Lcom/google/android/material/shape/StateListSizeChange$SizeChange;-><init>(Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;)V

    invoke-virtual {p0, v2, v3}, Lcom/google/android/material/shape/StateListSizeChange;->addStateSizeChange([ILcom/google/android/material/shape/StateListSizeChange$SizeChange;)V

    goto :goto_6

    :cond_74
    return-void
.end method

###### Class com.google.android.material.shape.StateListSizeChange.SizeChange (com.google.android.material.shape.StateListSizeChange$SizeChange)
.class public Lcom/google/android/material/shape/StateListSizeChange$SizeChange;
.super Ljava/lang/Object;
.source "StateListSizeChange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/StateListSizeChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SizeChange"
.end annotation


# instance fields
.field public widthChange:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;


# direct methods
.method public constructor <init>(Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;)V
    .registers 2

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p1, p0, Lcom/google/android/material/shape/StateListSizeChange$SizeChange;->widthChange:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;

    return-void
.end method

###### Class com.google.android.material.shape.StateListSizeChange.SizeChangeAmount (com.google.android.material.shape.StateListSizeChange$SizeChangeAmount)
.class public Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;
.super Ljava/lang/Object;
.source "StateListSizeChange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/StateListSizeChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SizeChangeAmount"
.end annotation


# instance fields
.field public amount:F

.field public type:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;


# direct methods
.method public constructor <init>(Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;F)V
    .registers 3

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p1, p0, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;->type:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

    .line 246
    iput p2, p0, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;->amount:F

    return-void
.end method


# virtual methods
.method public getChange(I)I
    .registers 4

    .line 250
    iget-object v0, p0, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;->type:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

    sget-object v1, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;->PERCENT:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

    if-ne v0, v1, :cond_c

    .line 251
    iget v0, p0, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;->amount:F

    int-to-float p1, p1

    mul-float/2addr v0, p1

    float-to-int p1, v0

    return p1

    .line 253
    :cond_c
    sget-object p1, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;->PIXELS:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

    if-ne v0, p1, :cond_14

    .line 254
    iget p1, p0, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;->amount:F

    float-to-int p1, p1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

###### Class com.google.android.material.shape.StateListSizeChange.SizeChangeType (com.google.android.material.shape.StateListSizeChange$SizeChangeType)
.class public final enum Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;
.super Ljava/lang/Enum;
.source "StateListSizeChange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/StateListSizeChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SizeChangeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

.field public static final enum PERCENT:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

.field public static final enum PIXELS:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;


# direct methods
.method public static synthetic $values()[Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;
    .registers 2

    .line 261
    sget-object v0, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;->PERCENT:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

    sget-object v1, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;->PIXELS:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

    filled-new-array {v0, v1}, [Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 262
    new-instance v0, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

    const-string v1, "PERCENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;->PERCENT:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

    .line 263
    new-instance v0, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

    const-string v1, "PIXELS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;->PIXELS:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

    .line 261
    invoke-static {}, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;->$values()[Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;->$VALUES:[Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 261
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 261
    const-class v0, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

    return-object p0
.end method

.method public static values()[Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;
    .registers 1

    .line 261
    sget-object v0, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;->$VALUES:[Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

    invoke-virtual {v0}, [Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

    return-object v0
.end method
