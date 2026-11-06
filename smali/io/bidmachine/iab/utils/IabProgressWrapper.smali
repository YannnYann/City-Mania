###### Class io.bidmachine.iab.utils.IabProgressWrapper (io.bidmachine.iab.utils.IabProgressWrapper)
.class public Lio/bidmachine/iab/utils/IabProgressWrapper;
.super Lio/bidmachine/iab/utils/IabElementWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/iab/utils/IabElementWrapper<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View$OnClickListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onClickListener"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/iab/utils/IabElementWrapper;-><init>(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;Lio/bidmachine/iab/utils/IabElementStyle;)Landroid/view/View;
    .registers 5

    .line 1
    invoke-virtual {p2}, Lio/bidmachine/iab/utils/IabElementStyle;->getStyle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 2
    invoke-virtual {p2}, Lio/bidmachine/iab/utils/IabElementStyle;->getStyle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "text-reverse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_3e

    .line 4
    :cond_19
    invoke-virtual {p2}, Lio/bidmachine/iab/utils/IabElementStyle;->getStyle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "circular"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 5
    invoke-virtual {p2}, Lio/bidmachine/iab/utils/IabElementStyle;->getStyle()Ljava/lang/String;

    move-result-object p2

    const-string v0, "circular-reverse"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_32

    goto :goto_38

    .line 8
    :cond_32
    new-instance p2, Lio/bidmachine/iab/vast/view/LinearCountdownView;

    invoke-direct {p2, p1}, Lio/bidmachine/iab/vast/view/LinearCountdownView;-><init>(Landroid/content/Context;)V

    return-object p2

    .line 9
    :cond_38
    :goto_38
    new-instance p2, Lio/bidmachine/iab/vast/view/CircleCountdownView;

    invoke-direct {p2, p1}, Lio/bidmachine/iab/vast/view/CircleCountdownView;-><init>(Landroid/content/Context;)V

    return-object p2

    .line 10
    :cond_3e
    :goto_3e
    new-instance p2, Lio/bidmachine/iab/vast/view/TextCountdownView;

    invoke-direct {p2, p1}, Lio/bidmachine/iab/vast/view/TextCountdownView;-><init>(Landroid/content/Context;)V

    return-object p2
.end method

.method public c(Landroid/content/Context;Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/utils/IabElementStyle;
    .registers 4

    if-eqz p2, :cond_39

    .line 1
    invoke-virtual {p2}, Lio/bidmachine/iab/utils/IabElementStyle;->getStyle()Ljava/lang/String;

    move-result-object p1

    const-string v0, "text"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_36

    .line 2
    invoke-virtual {p2}, Lio/bidmachine/iab/utils/IabElementStyle;->getStyle()Ljava/lang/String;

    move-result-object p1

    const-string v0, "text-reverse"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    goto :goto_36

    .line 4
    :cond_1b
    invoke-virtual {p2}, Lio/bidmachine/iab/utils/IabElementStyle;->getStyle()Ljava/lang/String;

    move-result-object p1

    const-string v0, "circular"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_33

    .line 5
    invoke-virtual {p2}, Lio/bidmachine/iab/utils/IabElementStyle;->getStyle()Ljava/lang/String;

    move-result-object p1

    const-string p2, "circular-reverse"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_39

    .line 6
    :cond_33
    sget-object p1, Lio/bidmachine/iab/utils/Assets;->DEF_COUNT_DOWN_PROGRESS_STYLE:Lio/bidmachine/iab/utils/IabElementStyle;

    return-object p1

    .line 7
    :cond_36
    :goto_36
    sget-object p1, Lio/bidmachine/iab/utils/Assets;->DEF_TEXT_PROGRESS_STYLE:Lio/bidmachine/iab/utils/IabElementStyle;

    return-object p1

    .line 13
    :cond_39
    sget-object p1, Lio/bidmachine/iab/utils/Assets;->DEF_LINEAR_PROGRESS_STYLE:Lio/bidmachine/iab/utils/IabElementStyle;

    return-object p1
.end method

.method public changePercentage(FII)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "percent",
            "progressSec",
            "totalSec"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementWrapper;->c:Lio/bidmachine/iab/utils/IabElementStyle;

    if-nez v0, :cond_5

    goto :goto_61

    .line 4
    :cond_5
    invoke-virtual {v0}, Lio/bidmachine/iab/utils/IabElementStyle;->getStyle()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementWrapper;->c:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/iab/utils/IabElementStyle;->getStyle()Ljava/lang/String;

    move-result-object v0

    const-string v3, "reverse"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    move v0, v2

    goto :goto_1e

    :cond_1d
    move v0, v1

    .line 6
    :goto_1e
    iget-object v3, p0, Lio/bidmachine/iab/utils/IabElementWrapper;->b:Landroid/view/View;

    instance-of v4, v3, Lio/bidmachine/iab/vast/view/TextCountdownView;

    if-eqz v4, :cond_3a

    .line 7
    check-cast v3, Lio/bidmachine/iab/vast/view/TextCountdownView;

    if-nez p3, :cond_2e

    .line 9
    const-string p1, ""

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2e
    if-eqz v0, :cond_32

    sub-int p2, p3, p2

    .line 11
    :cond_32
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v3, p1}, Lio/bidmachine/iab/vast/view/TextCountdownView;->setRemaining(I)V

    return-void

    .line 16
    :cond_3a
    instance-of v4, v3, Lio/bidmachine/iab/vast/view/CircleCountdownView;

    const/high16 v5, 0x42c80000    # 100.0f

    if-eqz v4, :cond_54

    .line 17
    check-cast v3, Lio/bidmachine/iab/vast/view/CircleCountdownView;

    if-eqz v0, :cond_4f

    if-eqz p3, :cond_4b

    sub-int/2addr p3, p2

    .line 22
    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 23
    :cond_4b
    invoke-virtual {v3, p1, v1}, Lio/bidmachine/iab/vast/view/CircleCountdownView;->changePercentage(FI)V

    return-void

    :cond_4f
    sub-float/2addr v5, p1

    .line 29
    invoke-virtual {v3, v5, p2}, Lio/bidmachine/iab/vast/view/CircleCountdownView;->changePercentage(FI)V

    return-void

    .line 31
    :cond_54
    instance-of p2, v3, Lio/bidmachine/iab/vast/view/LinearCountdownView;

    if-eqz p2, :cond_61

    .line 32
    check-cast v3, Lio/bidmachine/iab/vast/view/LinearCountdownView;

    if-eqz v0, :cond_5e

    sub-float p1, v5, p1

    .line 33
    :cond_5e
    invoke-virtual {v3, p1}, Lio/bidmachine/iab/vast/view/LinearCountdownView;->changePercentage(F)V

    :cond_61
    :goto_61
    return-void
.end method
