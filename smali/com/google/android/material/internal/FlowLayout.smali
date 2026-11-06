###### Class com.google.android.material.internal.FlowLayout (com.google.android.material.internal.FlowLayout)
.class public Lcom/google/android/material/internal/FlowLayout;
.super Landroid/view/ViewGroup;
.source "FlowLayout.java"


# instance fields
.field public itemSpacing:I

.field public lineSpacing:I

.field public rowCount:I

.field public singleLine:Z


# direct methods
.method public static getMeasuredDimension(III)I
    .registers 4

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_a

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p1, v0, :cond_9

    return p2

    :cond_9
    return p0

    .line 177
    :cond_a
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getItemSpacing()I
    .registers 2

    .line 83
    iget v0, p0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    return v0
.end method

.method public getLineSpacing()I
    .registers 2

    .line 75
    iget v0, p0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    return v0
.end method

.method public getRowCount()I
    .registers 2

    .line 248
    iget v0, p0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    return v0
.end method

.method public getRowIndex(Landroid/view/View;)I
    .registers 3

    .line 253
    sget v0, Lcom/google/android/material/R$id;->row_index_key:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    .line 254
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_c

    const/4 p1, -0x1

    return p1

    .line 257
    :cond_c
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public isSingleLine()Z
    .registers 2

    .line 92
    iget-boolean v0, p0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    return v0
.end method

.method public onLayout(ZIIII)V
    .registers 22

    move-object/from16 v0, p0

    .line 185
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 187
    iput v2, v0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    return-void

    :cond_c
    const/4 v1, 0x1

    .line 190
    iput v1, v0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    .line 192
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    if-ne v3, v1, :cond_17

    move v3, v1

    goto :goto_18

    :cond_17
    move v3, v2

    :goto_18
    if-eqz v3, :cond_1f

    .line 193
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    goto :goto_23

    :cond_1f
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    :goto_23
    if-eqz v3, :cond_2a

    .line 194
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    goto :goto_2e

    :cond_2a
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    .line 196
    :goto_2e
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    move v8, v2

    move v9, v4

    move v7, v6

    .line 200
    :goto_35
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-ge v8, v10, :cond_c1

    .line 201
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 203
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_54

    .line 204
    sget v11, Lcom/google/android/material/R$id;->row_index_key:I

    const/4 v12, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move/from16 p1, v1

    goto :goto_bb

    .line 208
    :cond_54
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 211
    instance-of v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v12, :cond_67

    .line 212
    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 213
    invoke-virtual {v11}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v12

    .line 214
    invoke-virtual {v11}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v11

    goto :goto_69

    :cond_67
    move v11, v2

    move v12, v11

    :goto_69
    add-int v13, v9, v12

    .line 217
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v13, v14

    sub-int v14, p4, p2

    sub-int v15, v14, v5

    move/from16 p1, v1

    .line 220
    iget-boolean v1, v0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    if-nez v1, :cond_8f

    if-le v13, v15, :cond_8f

    add-int v1, v4, v12

    .line 222
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int v13, v1, v7

    .line 223
    iget v1, v0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    add-int v7, v6, v1

    .line 224
    iget v1, v0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    move v9, v4

    .line 226
    :cond_8f
    sget v1, Lcom/google/android/material/R$id;->row_index_key:I

    iget v6, v0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v10, v1, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 227
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v7

    if-eqz v3, :cond_ab

    sub-int v6, v14, v13

    sub-int/2addr v14, v9

    sub-int/2addr v14, v12

    .line 230
    invoke-virtual {v10, v6, v7, v14, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_b0

    :cond_ab
    add-int v6, v9, v12

    .line 236
    invoke-virtual {v10, v6, v7, v13, v1}, Landroid/view/View;->layout(IIII)V

    :goto_b0
    add-int/2addr v12, v11

    .line 243
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v12, v6

    iget v6, v0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    add-int/2addr v12, v6

    add-int/2addr v9, v12

    move v6, v1

    :goto_bb
    add-int/lit8 v8, v8, 0x1

    move/from16 v1, p1

    goto/16 :goto_35

    :cond_c1
    return-void
.end method

.method public onMeasure(II)V
    .registers 22

    move-object/from16 v0, p0

    .line 102
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 103
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 105
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 106
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    const/high16 v5, -0x80000000

    if-eq v2, v5, :cond_1f

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v2, v5, :cond_1b

    goto :goto_1f

    :cond_1b
    const v5, 0x7fffffff

    goto :goto_20

    :cond_1f
    :goto_1f
    move v5, v1

    .line 113
    :goto_20
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    .line 114
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    .line 118
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    sub-int/2addr v5, v8

    move v9, v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 119
    :goto_30
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    if-ge v10, v12, :cond_a4

    .line 120
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 122
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_47

    move/from16 v13, p1

    move/from16 v14, p2

    goto :goto_a1

    :cond_47
    move/from16 v13, p1

    move/from16 v14, p2

    .line 125
    invoke-virtual {v0, v12, v13, v14}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 127
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 130
    instance-of v8, v15, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v8, :cond_5d

    .line 131
    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 132
    iget v8, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 133
    iget v15, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_5f

    :cond_5d
    const/4 v8, 0x0

    const/4 v15, 0x0

    :goto_5f
    add-int v16, v6, v8

    .line 136
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    move/from16 v18, v6

    add-int v6, v16, v17

    if-le v6, v5, :cond_79

    .line 141
    invoke-virtual {v0}, Lcom/google/android/material/internal/FlowLayout;->isSingleLine()Z

    move-result v6

    if-nez v6, :cond_79

    .line 142
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    .line 143
    iget v9, v0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    add-int/2addr v9, v7

    goto :goto_7b

    :cond_79
    move/from16 v6, v18

    :goto_7b
    add-int v7, v6, v8

    .line 146
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    add-int v7, v7, v16

    .line 147
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v16, v9, v16

    if-le v7, v11, :cond_8c

    move v11, v7

    :cond_8c
    add-int/2addr v8, v15

    .line 154
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v8, v7

    iget v7, v0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    add-int/2addr v8, v7

    add-int/2addr v6, v8

    .line 159
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v10, v7, :cond_9f

    add-int/2addr v11, v15

    :cond_9f
    move/from16 v7, v16

    :goto_a1
    add-int/lit8 v10, v10, 0x1

    goto :goto_30

    .line 164
    :cond_a4
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    add-int/2addr v11, v5

    .line 165
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    add-int/2addr v7, v5

    .line 167
    invoke-static {v1, v2, v11}, Lcom/google/android/material/internal/FlowLayout;->getMeasuredDimension(III)I

    move-result v1

    .line 168
    invoke-static {v3, v4, v7}, Lcom/google/android/material/internal/FlowLayout;->getMeasuredDimension(III)I

    move-result v2

    .line 169
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setItemSpacing(I)V
    .registers 2

    .line 87
    iput p1, p0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    return-void
.end method

.method public setLineSpacing(I)V
    .registers 2

    .line 79
    iput p1, p0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    return-void
.end method

.method public setSingleLine(Z)V
    .registers 2

    .line 97
    iput-boolean p1, p0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    return-void
.end method
