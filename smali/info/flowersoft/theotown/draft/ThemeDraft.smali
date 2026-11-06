###### Class info.flowersoft.theotown.draft.ThemeDraft (info.flowersoft.theotown.draft.ThemeDraft)
.class public final Linfo/flowersoft/theotown/draft/ThemeDraft;
.super Linfo/flowersoft/theotown/draft/Draft;
.source "ThemeDraft.kt"


# instance fields
.field public isDark:Z

.field public skin:Lio/blueflower/stapel2d/gui/Skin;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Linfo/flowersoft/theotown/draft/Draft;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSkin()Lio/blueflower/stapel2d/gui/Skin;
    .registers 2

    .line 11
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/ThemeDraft;->skin:Lio/blueflower/stapel2d/gui/Skin;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "skin"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isDark()Z
    .registers 2

    .line 8
    iget-boolean v0, p0, Linfo/flowersoft/theotown/draft/ThemeDraft;->isDark:Z

    return v0
.end method

.method public final setDark(Z)V
    .registers 2

    .line 8
    iput-boolean p1, p0, Linfo/flowersoft/theotown/draft/ThemeDraft;->isDark:Z

    return-void
.end method

.method public final setSkin(Lio/blueflower/stapel2d/gui/Skin;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Linfo/flowersoft/theotown/draft/ThemeDraft;->skin:Lio/blueflower/stapel2d/gui/Skin;

    return-void
.end method
