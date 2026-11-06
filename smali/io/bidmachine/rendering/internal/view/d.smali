###### Class io.bidmachine.rendering.internal.view.d (io.bidmachine.rendering.internal.view.d)
.class public Lio/bidmachine/rendering/internal/view/d;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/view/d$c;,
        Lio/bidmachine/rendering/internal/view/d$b;
    }
.end annotation


# instance fields
.field public final a:Lio/bidmachine/rendering/internal/view/b;

.field public final b:Landroid/widget/ImageView;


# direct methods
.method public static synthetic $r8$lambda$VWtYhlNUHF3dKKiGNr8Hya7klVQ(Lio/bidmachine/rendering/internal/view/d;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/view/d;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fnUOkE4yGw97F6VKpEyURA5LmIQ(Lio/bidmachine/rendering/internal/view/d;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/view/d;->a(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lio/bidmachine/rendering/internal/view/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/view/d;->a(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/rendering/internal/view/d;->b:Landroid/widget/ImageView;

    .line 5
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/view/d;->b(Landroid/content/Context;)Lio/bidmachine/rendering/internal/view/b;

    move-result-object p3

    iput-object p3, p0, Lio/bidmachine/rendering/internal/view/d;->a:Lio/bidmachine/rendering/internal/view/b;

    .line 6
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/view/d;->c(Landroid/content/Context;)Lio/bidmachine/iab/utils/CircularProgressBar;

    move-result-object p1

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v0, v1}, Lio/bidmachine/util/Utils;->dpToPx(Landroid/content/Context;F)I

    move-result v0

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v1, v2}, Lio/bidmachine/util/Utils;->dpToPx(Landroid/content/Context;F)I

    move-result v1

    .line 9
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v0, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const v0, 0x800035

    invoke-direct {p1, v1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/widget/ImageView;
    .registers 3

    .line 4
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 5
    const-string p1, "iVBORw0KGgoAAAANSUhEUgAAALQAAAC0CAYAAAA9zQYyAAAMcElEQVR4Ae2d32tcxxXHj+WAFOJYanCEklomq8gvdUWRHQopjfBT8UNwMAgX+tyXQF7Sx/wBwQ8FPYjQP6AvbVHr1hTqh0KNUmwITYSrGhpiSTY2kbAhldT8kCDBud+9O8rd1f64M3fm3pm53w9MdrO7wd7sZ8+eOTP3zBEhJhxPxngyRlr3n23dH07GaOs1w63Rjf3M2Mvc/j8Zu8nYaT32SIgWR4T0A5KelFTa55NxqnW/TB5LKjhuH7Ru94R0hUK3A1mnpTp584Iojuh9V1LBGclb1F1oRGAI/P1knJbeKYLvQHBEbwj+UGocwesoNCT+gaQiT0qcQO47ksq9IzWiLkJDYqQRr0q8EvfibmvckRoQu9CQGJH4nISbTthCpSW3JOKoHavQiMJ1jMZ5gdgfSRq5oyI2oc+0BkXOB6L2TYkoHYlFaEj8E/G3zOY70YgdutAU2S7Bix2q0MyR3QKxr0uaawdFaEJjn8R5SSsXxD2I1EFVRUIS+qyk6UXdy29lg01SH0oqtveEIDR2tV2QtKZMqgNpyB/E82h9VPwGefLryXhGSNXgl/Fs6/5D8RRfIzRy5TeEUdlXvI3WPkZoRAFEZZbi/AXRGiXTr5OxKR7hk9DYQPRTSSd+TwnxHXxGDUk/ty1J5a4cX1IOphhh400K4kOExuLIZWGKETJIQbA2gMniF1IhVQut8mWmGOEDqX8kad26sry6SqGRK78mJDYardtKSntVCY2FkrNCYgVpJCaL96RkqhAaMp8REjsvSDrZL/UigjKrHPjGYvLHSka9QJsFVEBKuRK9rAhNmesLti0gr/5YSqhVlyX0L4Qy1xkl9W1xTBlCI2d+SUjdgdTOc2rXQp+XtDZJCMBWYKdSuxQadeYfCyHtjLdundSpXQmNGjMXTUgvUKd2sqLoQmj8ZV8XQvqDSSKi9K5YZEjsgvzoghCSD+ywHBWL2IzQqDWjPMddcyQv2JSGX3RrNWqbQmNzfkMI0QPlPIh9TyxgS2jVYoAQE7Dvw8ok0UYOjRyIMpOiwKHC+bQNobFHg81fSFHg0BtSkKIpB75VbMtFbKH6rxgvuhSJ0Ph5eFUIsQuC5LgYUkToy0KIG4zXMkxTDqYaxCVIPYyqHiYRGqkGrwckrjGqepgIjbyZVQ3iGjh2XjTRFRrLlLzAlZSF9uGoukJz4xEpG61Kmo7QiMzceETKRisr0BGay9ukKnK7l1doRmdSJXAvV5TOKzSjM6maXA7mEZrRmfhAriidR2hGZ+ILhYVGHZDRmfjCpAyoSw8SOvgl7kajMXL16tWfra2tvfnkyZNfY2xubv5qcXHxFYmQGrzfvnXpft1HsY7+SwmYubm57127du3N0dHR57o9v7Oz89nFixd/s7y8/D+JgBq9398m41G3J/oJHXwf5+3t7Xd6fbiKWD7kQTIr8H5nZ2cXNjY2vpJwuSk9jmrul3JoraH7Bn5iB324AK+BCBBCAiWvzACvWVhYCL2r1TlJ22YcopfQwZfq5ufn5/K+NmSpdWRWzMzMvCxhg514Xdsz9xI6+M37ExMTL+q8PkSpTWQGU1NToQsNuk4OuwmNyWAtr0YJSWpTmSNCHUzURjehT0oErK+vr4kBIUhdVOatra1PJQ4OFS2G8rwoRFZXV42EBj5LbSMyLy0tLUscHEqdOst2SLbfkghIFhieXllZebvIB+9bSc+GzHhPY2Nj70o8vCeZE7Y6I3TQpbosqLNCRnyAYohPkdqWzPh/InHRNt8b6vdk6CCyxiC1TZljWRXN0DbnizZCK0KXmjIPpGeERvulKHfWhSo1Zc4F5n0H3maFjvpgzNCkpsxanFZ3skJHv5gSitSUWZuDYNyZckSP71JTZiMO5n5K6LY8JHZ8lZoyGwN3m8vgSuhaROcsvklNmQvTLN8poaMr1+XBF6kpsxWanUqV0FFXOPpRtdSU2RpNh5XQtb6yuyqpKbNVmllGbXPoTsqWmjJbpxmUIXTtZVaUJTVldsZxCM1u/BlcS02ZnTIOoQuf3hkbrqSmzM4ZwQZ/9K7jeYNdsL0HmTI75xaEDr6hjEtsSY1byuycO8yhB2Ar/aDMpTBMoXNgQ2pTKLMWFDovVUhNmbUZhdAjQnJRptSU2QxGaE3KkJoyG8OUwwSXUlPmQgybnPVNxI3UlLk4FLoANqWmzHag0CQqKHQBbLa0DbE/tY9QaENc9Gem1MWB0PtCtHDZbJxSF2KfQmtSRud8Sm3MPlMODco8BoJSG9EUekfIQMqUWUGptdljypGDKmRWUGotmEMPwtYG/1hOEvCcptC7Qrpi8xKsELqeRsAuhe6B7QtaYzkew3OaQu8JacPV1dmU2jk7EPqRkANctxqg1E5hDp2lrL4ZlNoZj9TCSu2lLrsJDKW2zmP8Qwn9QGpMVR2NKLVVmguESuja5tFVt+ei1NZoi9C1TDl86TVHqa3QzDJqm3L41jiRUhemLUJj+bs2UdrXLqCU2hi421xPyW4frUWU9r2lLaU24mAOONTtwVgJpT8zpdbmrroz1O3BGAmt2Til1uKxupMVGnlIlFtJQ5NZQalzAW+7phwguigdqswKSj2Qtrlfp9APJSJCl1lBqfvSFoSPdDyJxo1vSSRsb2+/E7rMWWx9QWdnZxc2Nja+kjh4TzJboDsjNHLoKMp3i4uLr8QkM7AVqRcWFl6TOICrbfv5u7UxiCKPnp+fnxNDfG6caEPqmZmZlyUO7nQ+MJTnRSEyMTHxohgQQhfQolJPTU3FIvShbKKb0NGkHbqE1NK2yoOMPAGZxKHtGr06J92SwFlfX1/TeX1IMitMpd7a2vpUwqdratxLaBSqg15kWV1dzS10iDIrTKReWlpalrBBZO6aGh/p8x8FfWRyo9F4emVl5e1BlY6QZc6St6SH9zs2NvauhA1kvt7tiX7NGj+RgEGddVDkikVmkCdSZ88dD5ybvZ44Kr35MhmTyRiVQLl///7elStX3j9x4sRnp06deu7YsWPP4nHk14kA/7p06dLvbt++/blEQk3eLwoWH/V6sl/KASD0ZSHEH/4ifdZKBvWHfiA1vyKceAUmg30X/vI0PI9ioYVEwc1BL8grNLsrkarpWarLkvdIioHfDEIck8vBvEIzSpMqyRWdgc6hQYzSpCpyu6cjNL4hrHiQsskdnYHusW7Bb1oiwXFd58W6QiNCR93ugHiFdlZgcvDmP4QnZxH3wDHtedtR0Qd/0NfJaAgh7vggGVp72oHp0cjYHMKzWYgrMBE0mq8VOetbK1knRIPfiyEmKYcC20uxW29SCLEH8mbtVENRJEKrP5ypB7GFcaqhKCo0wP5UVj1IUeCQcaqhKJJySOYvwqoHKco/k3FPCmJDaLCZjJFkvCCE6IOqmZW9QjZSDgXzaWIC8mZrG99sRWjwjaQ/GT9MxlNCyGAgM/LmL8USNoUGyKeRfpwRQgaDgsJjsYhtoYE62oKTRNKPG8n4r1jGhdAAUZqLLqQXyJk/EAe4Ehpg2x+a1IwLId+Bisb74giXQgPsnabURIH9zX8Xh9gs2/UCm5hYziOY/Dnf0OY6Qis+TsZLyXhGSB2BzCjPfSOOKUtovBFKXU+UzKXs9ylLaACp/y3MqesEcuY/SgmRWVGm0ApMFLnvI356NiV3SRVCg3vCOnXMoM58QyqgKqEB6tRcUYyPG+Jo0SQPVQoNsKKI88URqYeFhAyC05/EwXK2DlULDVQT69NCqUNFVTKsbjQywQehAb7dmERg2ykni2GBpWxM/qxtAS2CL0IDtZ8acuNYY+6p9ht8TrhsChPA0spygxh0aFBVHE/Gz1u3xD+QWvxZPOwZ7lOEzoJvP37KWNrzD7QZ+Kt4eqW/rxE6C6O1HyAq/008mPj1IwShFTiq+aywElI2iMSIyh9KAIQkNECUhti8ZrEcUE5F++RgztcJTWgF8uoLwjTEFVjsQvUiuCNIQhVagUiNiE2x7aB6ZAR72GroQisodjGCF1kRi9AKiq0HUov/SETHX8cmtGI6GeeScVJIN4LNkQcRq9AKVRWZFEZttViFykW0Fy3HLnQWpCPTrVEnVDSGxNH38a6T0ApEakRsNJWMNSWBxJ9ImhvXqhl9HYXOglVHyD0tYaclkBaphBK5ticq1F3oTp6X9Ir06datr4KjzIYJHdKIuxLQSp5rKHR/EMEhNqI3ZB9t3ZZJVl51n2fa9IBCmwGp0YoBgh9vjeHWY8Mdoxv78p2UkHSv9e+7mX9XAhMNvgWcUhe4fbAitwAAAABJRU5ErkJggg=="

    invoke-static {p1}, Lio/bidmachine/rendering/internal/k;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 6
    new-instance p1, Lio/bidmachine/rendering/internal/view/d$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lio/bidmachine/rendering/internal/view/d$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/rendering/internal/view/d;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    sget p1, Lio/bidmachine/rendering/internal/k;->c:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-object v0
.end method

.method public a()V
    .registers 2

    .line 1
    invoke-static {p0}, Lio/bidmachine/util/ViewUtils;->hideViewSafely(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/d;->a:Lio/bidmachine/rendering/internal/view/b;

    invoke-static {v0}, Lio/bidmachine/util/ViewUtils;->hideViewSafely(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/d;->b:Landroid/widget/ImageView;

    invoke-static {v0}, Lio/bidmachine/util/ViewUtils;->hideViewSafely(Landroid/view/View;)V

    return-void
.end method

.method public final synthetic a(Landroid/view/View;)V
    .registers 2

    .line 8
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/view/d;->b()V

    return-void
.end method

.method public final b(Landroid/content/Context;)Lio/bidmachine/rendering/internal/view/b;
    .registers 4

    .line 2
    new-instance v0, Lio/bidmachine/rendering/internal/view/b;

    invoke-direct {v0, p1}, Lio/bidmachine/rendering/internal/view/b;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance p1, Lio/bidmachine/rendering/internal/view/d$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lio/bidmachine/rendering/internal/view/d$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/rendering/internal/view/d;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    new-instance p1, Lio/bidmachine/rendering/internal/view/d$b;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lio/bidmachine/rendering/internal/view/d$b;-><init>(Lio/bidmachine/rendering/internal/view/d;Lio/bidmachine/rendering/internal/view/d$a;)V

    invoke-virtual {v0, p1}, Lio/bidmachine/rendering/internal/view/b;->setListener(Lio/bidmachine/rendering/internal/view/b$d;)V

    return-object v0
.end method

.method public final b()V
    .registers 1

    .line 0
    return-void
.end method

.method public final synthetic b(Landroid/view/View;)V
    .registers 2

    .line 5
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/view/d;->b()V

    return-void
.end method

.method public final c(Landroid/content/Context;)Lio/bidmachine/iab/utils/CircularProgressBar;
    .registers 4

    .line 4
    new-instance v0, Lio/bidmachine/iab/utils/CircularProgressBar;

    invoke-direct {v0, p1}, Lio/bidmachine/iab/utils/CircularProgressBar;-><init>(Landroid/content/Context;)V

    .line 5
    new-instance p1, Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-direct {p1}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    sget-object v1, Lio/bidmachine/iab/utils/Assets;->DEF_LOADING_STYLE:Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-virtual {p1, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->copyWith(Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/bidmachine/iab/utils/CircularProgressBar;->setStyle(Lio/bidmachine/iab/utils/IabElementStyle;)V

    return-object v0
.end method

.method public c()V
    .registers 2

    .line 1
    invoke-static {p0}, Lio/bidmachine/util/ViewUtils;->showViewSafely(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/d;->a:Lio/bidmachine/rendering/internal/view/b;

    invoke-static {v0}, Lio/bidmachine/util/ViewUtils;->hideViewSafely(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/d;->b:Landroid/widget/ImageView;

    invoke-static {v0}, Lio/bidmachine/util/ViewUtils;->hideViewSafely(Landroid/view/View;)V

    return-void
.end method

.method public setListener(Lio/bidmachine/rendering/internal/view/d$c;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 0
    return-void
.end method

###### Class io.bidmachine.rendering.internal.view.d.a (io.bidmachine.rendering.internal.view.d$a)
.class public abstract synthetic Lio/bidmachine/rendering/internal/view/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/view/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.rendering.internal.view.d.b (io.bidmachine.rendering.internal.view.d$b)
.class public final Lio/bidmachine/rendering/internal/view/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/internal/view/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/view/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/view/d;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/view/d;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/view/d$b;->a:Lio/bidmachine/rendering/internal/view/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/rendering/internal/view/d;Lio/bidmachine/rendering/internal/view/d$a;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/internal/view/d$b;-><init>(Lio/bidmachine/rendering/internal/view/d;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/d$b;->a:Lio/bidmachine/rendering/internal/view/d;

    iget-object v0, v0, Lio/bidmachine/rendering/internal/view/d;->a:Lio/bidmachine/rendering/internal/view/b;

    invoke-static {v0}, Lio/bidmachine/util/ViewUtils;->hideViewSafely(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/d$b;->a:Lio/bidmachine/rendering/internal/view/d;

    iget-object v0, v0, Lio/bidmachine/rendering/internal/view/d;->b:Landroid/widget/ImageView;

    invoke-static {v0}, Lio/bidmachine/util/ViewUtils;->showViewSafely(Landroid/view/View;)V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.view.d.c (io.bidmachine.rendering.internal.view.d$c)
.class public interface abstract Lio/bidmachine/rendering/internal/view/d$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/view/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation

###### Class io.bidmachine.rendering.internal.view.d$$ExternalSyntheticLambda0 (io.bidmachine.rendering.internal.view.d$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/rendering/internal/view/d$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/rendering/internal/view/d;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/rendering/internal/view/d;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/view/d$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/rendering/internal/view/d;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/d$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/rendering/internal/view/d;

    invoke-static {v0, p1}, Lio/bidmachine/rendering/internal/view/d;->$r8$lambda$VWtYhlNUHF3dKKiGNr8Hya7klVQ(Lio/bidmachine/rendering/internal/view/d;Landroid/view/View;)V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.view.d$$ExternalSyntheticLambda1 (io.bidmachine.rendering.internal.view.d$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/rendering/internal/view/d$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/rendering/internal/view/d;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/rendering/internal/view/d;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/view/d$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/rendering/internal/view/d;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/d$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/rendering/internal/view/d;

    invoke-static {v0, p1}, Lio/bidmachine/rendering/internal/view/d;->$r8$lambda$fnUOkE4yGw97F6VKpEyURA5LmIQ(Lio/bidmachine/rendering/internal/view/d;Landroid/view/View;)V

    return-void
.end method
