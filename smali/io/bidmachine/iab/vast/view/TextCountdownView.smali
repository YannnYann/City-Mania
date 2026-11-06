###### Class io.bidmachine.iab.vast.view.TextCountdownView (io.bidmachine.iab.vast.view.TextCountdownView)
.class public Lio/bidmachine/iab/vast/view/TextCountdownView;
.super Lio/bidmachine/iab/vast/view/IabTextView;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/iab/utils/IabElement;


# instance fields
.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/iab/vast/view/IabTextView;-><init>(Landroid/content/Context;)V

    .line 2
    const-string p1, "%1.0fs"

    iput-object p1, p0, Lio/bidmachine/iab/vast/view/TextCountdownView;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 p1, 0x0

    const/high16 p2, 0x40000000    # 2.0f

    .line 2
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 3
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 4
    invoke-super {p0, v0, p1}, Lio/bidmachine/iab/vast/view/IabTextView;->onMeasure(II)V

    return-void

    .line 7
    :cond_19
    invoke-super {p0, p1, p2}, Lio/bidmachine/iab/vast/view/IabTextView;->onMeasure(II)V

    return-void
.end method

.method public setProgress(I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "percent"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/vast/view/TextCountdownView;->e:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "%1.0f"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setRemaining(I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "remainingTimeSec"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/view/TextCountdownView;->e:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "%1.0f"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setStyle(Lio/bidmachine/iab/utils/IabElementStyle;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "style"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lio/bidmachine/iab/vast/view/IabTextView;->setStyle(Lio/bidmachine/iab/utils/IabElementStyle;)V

    .line 3
    invoke-virtual {p1}, Lio/bidmachine/iab/utils/IabElementStyle;->getContent()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 5
    iput-object p1, p0, Lio/bidmachine/iab/vast/view/TextCountdownView;->e:Ljava/lang/String;

    :cond_b
    return-void
.end method
