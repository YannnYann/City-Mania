###### Class io.bidmachine.iab.utils.IabCtaWrapper (io.bidmachine.iab.utils.IabCtaWrapper)
.class public Lio/bidmachine/iab/utils/IabCtaWrapper;
.super Lio/bidmachine/iab/utils/IabElementWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/iab/utils/IabElementWrapper<",
        "Lio/bidmachine/iab/vast/view/IabTextView;",
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
.method public bridge synthetic a(Landroid/content/Context;Landroid/view/View;Lio/bidmachine/iab/utils/IabElementStyle;)V
    .registers 4

    .line 1
    check-cast p2, Lio/bidmachine/iab/vast/view/IabTextView;

    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/iab/utils/IabCtaWrapper;->a(Landroid/content/Context;Lio/bidmachine/iab/vast/view/IabTextView;Lio/bidmachine/iab/utils/IabElementStyle;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lio/bidmachine/iab/vast/view/IabTextView;Lio/bidmachine/iab/utils/IabElementStyle;)V
    .registers 4

    .line 2
    invoke-super {p0, p1, p2, p3}, Lio/bidmachine/iab/utils/IabElementWrapper;->a(Landroid/content/Context;Landroid/view/View;Lio/bidmachine/iab/utils/IabElementStyle;)V

    .line 4
    invoke-virtual {p3}, Lio/bidmachine/iab/utils/IabElementStyle;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 5
    invoke-virtual {p3}, Lio/bidmachine/iab/utils/IabElementStyle;->getContent()Ljava/lang/String;

    move-result-object p1

    goto :goto_14

    .line 6
    :cond_12
    const-string p1, "Learn more"

    .line 7
    :goto_14
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic b(Landroid/content/Context;Lio/bidmachine/iab/utils/IabElementStyle;)Landroid/view/View;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/iab/utils/IabCtaWrapper;->d(Landroid/content/Context;Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/vast/view/IabTextView;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/content/Context;Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/utils/IabElementStyle;
    .registers 3

    .line 1
    sget-object p1, Lio/bidmachine/iab/utils/Assets;->DEF_CTA_STYLE:Lio/bidmachine/iab/utils/IabElementStyle;

    return-object p1
.end method

.method public d(Landroid/content/Context;Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/vast/view/IabTextView;
    .registers 3

    .line 1
    new-instance p2, Lio/bidmachine/iab/vast/view/IabTextView;

    invoke-direct {p2, p1}, Lio/bidmachine/iab/vast/view/IabTextView;-><init>(Landroid/content/Context;)V

    return-object p2
.end method
