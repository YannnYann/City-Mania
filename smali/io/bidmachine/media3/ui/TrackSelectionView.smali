###### Class io.bidmachine.media3.ui.TrackSelectionView (io.bidmachine.media3.ui.TrackSelectionView)
.class public Lio/bidmachine/media3/ui/TrackSelectionView;
.super Landroid/widget/LinearLayout;
.source "TrackSelectionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/ui/TrackSelectionView$ComponentListener;,
        Lio/bidmachine/media3/ui/TrackSelectionView$TrackInfo;
    }
.end annotation


# instance fields
.field public allowAdaptiveSelections:Z

.field public allowMultipleOverrides:Z

.field public final componentListener:Lio/bidmachine/media3/ui/TrackSelectionView$ComponentListener;

.field public final defaultView:Landroid/widget/CheckedTextView;

.field public final disableView:Landroid/widget/CheckedTextView;

.field public final inflater:Landroid/view/LayoutInflater;

.field public isDisabled:Z

.field public final overrides:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/bidmachine/media3/common/TrackGroup;",
            "Lio/bidmachine/media3/common/TrackSelectionOverride;",
            ">;"
        }
    .end annotation
.end field

.field public final selectableItemBackgroundResourceId:I

.field public final trackGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/Tracks$Group;",
            ">;"
        }
    .end annotation
.end field

.field public trackInfoComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lio/bidmachine/media3/ui/TrackSelectionView$TrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field public trackNameProvider:Lio/bidmachine/media3/ui/TrackNameProvider;

.field public trackViews:[[Landroid/widget/CheckedTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, p1, p2, v0}, Lio/bidmachine/media3/ui/TrackSelectionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    .line 115
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 116
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 p3, 0x0

    .line 118
    invoke-virtual {p0, p3}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x101030e

    filled-new-array {v1}, [I

    move-result-object v1

    .line 123
    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 124
    invoke-virtual {v0, p3, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->selectableItemBackgroundResourceId:I

    .line 125
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 127
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->inflater:Landroid/view/LayoutInflater;

    .line 128
    new-instance v0, Lio/bidmachine/media3/ui/TrackSelectionView$ComponentListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lio/bidmachine/media3/ui/TrackSelectionView$ComponentListener;-><init>(Lio/bidmachine/media3/ui/TrackSelectionView;Lio/bidmachine/media3/ui/TrackSelectionView$1;)V

    iput-object v0, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->componentListener:Lio/bidmachine/media3/ui/TrackSelectionView$ComponentListener;

    .line 129
    new-instance v2, Lio/bidmachine/media3/ui/DefaultTrackNameProvider;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/bidmachine/media3/ui/DefaultTrackNameProvider;-><init>(Landroid/content/res/Resources;)V

    iput-object v2, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->trackNameProvider:Lio/bidmachine/media3/ui/TrackNameProvider;

    .line 130
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->trackGroups:Ljava/util/List;

    .line 131
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->overrides:Ljava/util/Map;

    const v2, 0x109000f

    .line 136
    invoke-virtual {p1, v2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckedTextView;

    iput-object v3, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->disableView:Landroid/widget/CheckedTextView;

    .line 137
    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 138
    sget v4, Lio/bidmachine/media3/ui/R$string;->exo_track_selection_none:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 139
    invoke-virtual {v3, p3}, Landroid/view/View;->setEnabled(Z)V

    .line 140
    invoke-virtual {v3, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 141
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v4, 0x8

    .line 142
    invoke-virtual {v3, v4}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 143
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 145
    sget v3, Lio/bidmachine/media3/ui/R$layout;->bm_exo_list_divider:I

    invoke-virtual {p1, v3, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 149
    invoke-virtual {p1, v2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    iput-object p1, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->defaultView:Landroid/widget/CheckedTextView;

    .line 150
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 151
    sget v1, Lio/bidmachine/media3/ui/R$string;->exo_track_selection_auto:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 152
    invoke-virtual {p1, p3}, Landroid/view/View;->setEnabled(Z)V

    .line 153
    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 154
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$100(Lio/bidmachine/media3/ui/TrackSelectionView;Landroid/view/View;)V
    .registers 2

    .line 43
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/ui/TrackSelectionView;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public static filterOverrides(Ljava/util/Map;Ljava/util/List;Z)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lio/bidmachine/media3/common/TrackGroup;",
            "Lio/bidmachine/media3/common/TrackSelectionOverride;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/Tracks$Group;",
            ">;Z)",
            "Ljava/util/Map<",
            "Lio/bidmachine/media3/common/TrackGroup;",
            "Lio/bidmachine/media3/common/TrackSelectionOverride;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 73
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 74
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/common/Tracks$Group;

    .line 75
    invoke-virtual {v2}, Lio/bidmachine/media3/common/Tracks$Group;->getMediaTrackGroup()Lio/bidmachine/media3/common/TrackGroup;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/common/TrackSelectionOverride;

    if-eqz v2, :cond_2b

    if-nez p2, :cond_26

    .line 76
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 77
    :cond_26
    iget-object v3, v2, Lio/bidmachine/media3/common/TrackSelectionOverride;->mediaTrackGroup:Lio/bidmachine/media3/common/TrackGroup;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_2e
    return-object v0
.end method


# virtual methods
.method public getIsDisabled()Z
    .registers 2

    .line 250
    iget-boolean v0, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->isDisabled:Z

    return v0
.end method

.method public getOverrides()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lio/bidmachine/media3/common/TrackGroup;",
            "Lio/bidmachine/media3/common/TrackSelectionOverride;",
            ">;"
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->overrides:Ljava/util/Map;

    return-object v0
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 337
    iget-object v0, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->disableView:Landroid/widget/CheckedTextView;

    if-ne p1, v0, :cond_8

    .line 338
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/TrackSelectionView;->onDisableViewClicked()V

    goto :goto_13

    .line 339
    :cond_8
    iget-object v0, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->defaultView:Landroid/widget/CheckedTextView;

    if-ne p1, v0, :cond_10

    .line 340
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/TrackSelectionView;->onDefaultViewClicked()V

    goto :goto_13

    .line 342
    :cond_10
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/ui/TrackSelectionView;->onTrackViewClicked(Landroid/view/View;)V

    .line 344
    :goto_13
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/TrackSelectionView;->updateViewStates()V

    return-void
.end method

.method public final onDefaultViewClicked()V
    .registers 2

    const/4 v0, 0x0

    .line 356
    iput-boolean v0, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->isDisabled:Z

    .line 357
    iget-object v0, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->overrides:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final onDisableViewClicked()V
    .registers 2

    const/4 v0, 0x1

    .line 351
    iput-boolean v0, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->isDisabled:Z

    .line 352
    iget-object v0, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->overrides:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final onTrackViewClicked(Landroid/view/View;)V
    .registers 8

    const/4 v0, 0x0

    .line 361
    iput-boolean v0, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->isDisabled:Z

    .line 362
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/ui/TrackSelectionView$TrackInfo;

    .line 363
    iget-object v2, v1, Lio/bidmachine/media3/ui/TrackSelectionView$TrackInfo;->trackGroup:Lio/bidmachine/media3/common/Tracks$Group;

    invoke-virtual {v2}, Lio/bidmachine/media3/common/Tracks$Group;->getMediaTrackGroup()Lio/bidmachine/media3/common/TrackGroup;

    move-result-object v2

    .line 364
    iget v3, v1, Lio/bidmachine/media3/ui/TrackSelectionView$TrackInfo;->trackIndex:I

    .line 365
    iget-object v4, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->overrides:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/bidmachine/media3/common/TrackSelectionOverride;

    if-nez v4, :cond_43

    .line 368
    iget-boolean p1, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->allowMultipleOverrides:Z

    if-nez p1, :cond_30

    iget-object p1, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->overrides:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_30

    .line 370
    iget-object p1, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->overrides:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 372
    :cond_30
    iget-object p1, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->overrides:Ljava/util/Map;

    new-instance v0, Lio/bidmachine/media3/common/TrackSelectionOverride;

    .line 374
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lio/bidmachine/media3/common/TrackSelectionOverride;-><init>(Lio/bidmachine/media3/common/TrackGroup;Ljava/util/List;)V

    .line 372
    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 377
    :cond_43
    new-instance v5, Ljava/util/ArrayList;

    iget-object v4, v4, Lio/bidmachine/media3/common/TrackSelectionOverride;->trackIndices:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 378
    check-cast p1, Landroid/widget/CheckedTextView;

    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p1

    .line 379
    iget-object v1, v1, Lio/bidmachine/media3/ui/TrackSelectionView$TrackInfo;->trackGroup:Lio/bidmachine/media3/common/Tracks$Group;

    invoke-virtual {p0, v1}, Lio/bidmachine/media3/ui/TrackSelectionView;->shouldEnableAdaptiveSelection(Lio/bidmachine/media3/common/Tracks$Group;)Z

    move-result v1

    if-nez v1, :cond_5e

    .line 380
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/TrackSelectionView;->shouldEnableMultiGroupSelection()Z

    move-result v4

    if-eqz v4, :cond_5f

    :cond_5e
    const/4 v0, 0x1

    :cond_5f
    if-eqz p1, :cond_81

    if-eqz v0, :cond_81

    .line 383
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 384
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_76

    .line 386
    iget-object p1, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->overrides:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 388
    :cond_76
    iget-object p1, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->overrides:Ljava/util/Map;

    new-instance v0, Lio/bidmachine/media3/common/TrackSelectionOverride;

    invoke-direct {v0, v2, v5}, Lio/bidmachine/media3/common/TrackSelectionOverride;-><init>(Lio/bidmachine/media3/common/TrackGroup;Ljava/util/List;)V

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_81
    if-nez p1, :cond_a9

    if-eqz v1, :cond_97

    .line 393
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    iget-object p1, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->overrides:Ljava/util/Map;

    new-instance v0, Lio/bidmachine/media3/common/TrackSelectionOverride;

    invoke-direct {v0, v2, v5}, Lio/bidmachine/media3/common/TrackSelectionOverride;-><init>(Lio/bidmachine/media3/common/TrackGroup;Ljava/util/List;)V

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 397
    :cond_97
    iget-object p1, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->overrides:Ljava/util/Map;

    new-instance v0, Lio/bidmachine/media3/common/TrackSelectionOverride;

    .line 399
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lio/bidmachine/media3/common/TrackSelectionOverride;-><init>(Lio/bidmachine/media3/common/TrackGroup;Ljava/util/List;)V

    .line 397
    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a9
    return-void
.end method

.method public setAllowAdaptiveSelections(Z)V
    .registers 3

    .line 168
    iget-boolean v0, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->allowAdaptiveSelections:Z

    if-eq v0, p1, :cond_9

    .line 169
    iput-boolean p1, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->allowAdaptiveSelections:Z

    .line 170
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/TrackSelectionView;->updateViews()V

    :cond_9
    return-void
.end method

.method public setAllowMultipleOverrides(Z)V
    .registers 4

    .line 181
    iget-boolean v0, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->allowMultipleOverrides:Z

    if-eq v0, p1, :cond_27

    .line 182
    iput-boolean p1, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->allowMultipleOverrides:Z

    if-nez p1, :cond_24

    .line 183
    iget-object p1, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->overrides:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_24

    .line 185
    iget-object p1, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->overrides:Ljava/util/Map;

    iget-object v0, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->trackGroups:Ljava/util/List;

    const/4 v1, 0x0

    .line 186
    invoke-static {p1, v0, v1}, Lio/bidmachine/media3/ui/TrackSelectionView;->filterOverrides(Ljava/util/Map;Ljava/util/List;Z)Ljava/util/Map;

    move-result-object p1

    .line 187
    iget-object v0, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->overrides:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 188
    iget-object v0, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->overrides:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 190
    :cond_24
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/TrackSelectionView;->updateViews()V

    :cond_27
    return-void
.end method

.method public setShowDisableOption(Z)V
    .registers 3

    .line 200
    iget-object v0, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->disableView:Landroid/widget/CheckedTextView;

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_8

    :cond_6
    const/16 p1, 0x8

    :goto_8
    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    return-void
.end method

.method public setTrackNameProvider(Lio/bidmachine/media3/ui/TrackNameProvider;)V
    .registers 2

    .line 210
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/ui/TrackNameProvider;

    iput-object p1, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->trackNameProvider:Lio/bidmachine/media3/ui/TrackNameProvider;

    .line 211
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/TrackSelectionView;->updateViews()V

    return-void
.end method

.method public final shouldEnableAdaptiveSelection(Lio/bidmachine/media3/common/Tracks$Group;)Z
    .registers 3

    .line 406
    iget-boolean v0, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->allowAdaptiveSelections:Z

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lio/bidmachine/media3/common/Tracks$Group;->isAdaptiveSupported()Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public final shouldEnableMultiGroupSelection()Z
    .registers 3

    .line 410
    iget-boolean v0, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->allowMultipleOverrides:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->trackGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_e

    return v1

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public final updateViewStates()V
    .registers 8

    .line 320
    iget-object v0, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->disableView:Landroid/widget/CheckedTextView;

    iget-boolean v1, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->isDisabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 321
    iget-object v0, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->defaultView:Landroid/widget/CheckedTextView;

    iget-boolean v1, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->isDisabled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_18

    iget-object v1, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->overrides:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    move v1, v2

    :goto_19
    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    move v0, v2

    .line 322
    :goto_1d
    iget-object v1, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->trackViews:[[Landroid/widget/CheckedTextView;

    array-length v1, v1

    if-ge v0, v1, :cond_6d

    .line 324
    iget-object v1, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->overrides:Ljava/util/Map;

    iget-object v3, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->trackGroups:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/common/Tracks$Group;

    invoke-virtual {v3}, Lio/bidmachine/media3/common/Tracks$Group;->getMediaTrackGroup()Lio/bidmachine/media3/common/TrackGroup;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/common/TrackSelectionOverride;

    move v3, v2

    .line 325
    :goto_37
    iget-object v4, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->trackViews:[[Landroid/widget/CheckedTextView;

    aget-object v4, v4, v0

    array-length v5, v4

    if-ge v3, v5, :cond_6a

    if-eqz v1, :cond_62

    .line 327
    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/bidmachine/media3/ui/TrackSelectionView$TrackInfo;

    .line 328
    iget-object v5, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->trackViews:[[Landroid/widget/CheckedTextView;

    aget-object v5, v5, v0

    aget-object v5, v5, v3

    iget-object v6, v1, Lio/bidmachine/media3/common/TrackSelectionOverride;->trackIndices:Lcom/google/common/collect/ImmutableList;

    iget v4, v4, Lio/bidmachine/media3/ui/TrackSelectionView$TrackInfo;->trackIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_67

    .line 330
    :cond_62
    aget-object v4, v4, v3

    invoke-virtual {v4, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :goto_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    :cond_6a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_6d
    return-void
.end method

.method public final updateViews()V
    .registers 13

    .line 262
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    const/4 v2, 0x3

    if-lt v0, v2, :cond_f

    .line 263
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 266
    :cond_f
    iget-object v0, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->trackGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    .line 268
    iget-object v0, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->disableView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 269
    iget-object v0, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->defaultView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    return-void

    .line 272
    :cond_23
    iget-object v0, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->disableView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 273
    iget-object v0, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->defaultView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 276
    iget-object v0, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->trackGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [[Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->trackViews:[[Landroid/widget/CheckedTextView;

    .line 277
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/TrackSelectionView;->shouldEnableMultiGroupSelection()Z

    move-result v0

    move v3, v2

    .line 278
    :goto_3c
    iget-object v4, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->trackGroups:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_d2

    .line 279
    iget-object v4, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->trackGroups:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/bidmachine/media3/common/Tracks$Group;

    .line 280
    invoke-virtual {p0, v4}, Lio/bidmachine/media3/ui/TrackSelectionView;->shouldEnableAdaptiveSelection(Lio/bidmachine/media3/common/Tracks$Group;)Z

    move-result v5

    .line 281
    iget-object v6, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->trackViews:[[Landroid/widget/CheckedTextView;

    iget v7, v4, Lio/bidmachine/media3/common/Tracks$Group;->length:I

    new-array v8, v7, [Landroid/widget/CheckedTextView;

    aput-object v8, v6, v3

    .line 283
    new-array v6, v7, [Lio/bidmachine/media3/ui/TrackSelectionView$TrackInfo;

    move v8, v2

    .line 284
    :goto_5b
    iget v9, v4, Lio/bidmachine/media3/common/Tracks$Group;->length:I

    if-ge v8, v9, :cond_69

    .line 285
    new-instance v9, Lio/bidmachine/media3/ui/TrackSelectionView$TrackInfo;

    invoke-direct {v9, v4, v8}, Lio/bidmachine/media3/ui/TrackSelectionView$TrackInfo;-><init>(Lio/bidmachine/media3/common/Tracks$Group;I)V

    aput-object v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_5b

    .line 287
    :cond_69
    iget-object v8, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->trackInfoComparator:Ljava/util/Comparator;

    if-eqz v8, :cond_70

    .line 288
    invoke-static {v6, v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_70
    move v8, v2

    :goto_71
    if-ge v8, v7, :cond_ce

    if-nez v8, :cond_80

    .line 293
    iget-object v9, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->inflater:Landroid/view/LayoutInflater;

    sget v10, Lio/bidmachine/media3/ui/R$layout;->bm_exo_list_divider:I

    invoke-virtual {v9, v10, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_80
    if-nez v5, :cond_89

    if-eqz v0, :cond_85

    goto :goto_89

    :cond_85
    const v9, 0x109000f

    goto :goto_8c

    :cond_89
    :goto_89
    const v9, 0x1090010

    .line 299
    :goto_8c
    iget-object v10, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->inflater:Landroid/view/LayoutInflater;

    .line 300
    invoke-virtual {v10, v9, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckedTextView;

    .line 301
    iget v10, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->selectableItemBackgroundResourceId:I

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 302
    iget-object v10, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->trackNameProvider:Lio/bidmachine/media3/ui/TrackNameProvider;

    aget-object v11, v6, v8

    invoke-virtual {v11}, Lio/bidmachine/media3/ui/TrackSelectionView$TrackInfo;->getFormat()Lio/bidmachine/media3/common/Format;

    move-result-object v11

    invoke-interface {v10, v11}, Lio/bidmachine/media3/ui/TrackNameProvider;->getTrackName(Lio/bidmachine/media3/common/Format;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    aget-object v10, v6, v8

    invoke-virtual {v9, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 304
    invoke-virtual {v4, v8}, Lio/bidmachine/media3/common/Tracks$Group;->isTrackSupported(I)Z

    move-result v10

    if-eqz v10, :cond_bc

    .line 305
    invoke-virtual {v9, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 306
    iget-object v10, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->componentListener:Lio/bidmachine/media3/ui/TrackSelectionView$ComponentListener;

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_c2

    .line 308
    :cond_bc
    invoke-virtual {v9, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 309
    invoke-virtual {v9, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 311
    :goto_c2
    iget-object v10, p0, Lio/bidmachine/media3/ui/TrackSelectionView;->trackViews:[[Landroid/widget/CheckedTextView;

    aget-object v10, v10, v3

    aput-object v9, v10, v8

    .line 312
    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_71

    :cond_ce
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3c

    .line 316
    :cond_d2
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/TrackSelectionView;->updateViewStates()V

    return-void
.end method

###### Class io.bidmachine.media3.ui.TrackSelectionView.AnonymousClass1 (io.bidmachine.media3.ui.TrackSelectionView$1)
.class public synthetic Lio/bidmachine/media3/ui/TrackSelectionView$1;
.super Ljava/lang/Object;
.source "TrackSelectionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/ui/TrackSelectionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.ui.TrackSelectionView.ComponentListener (io.bidmachine.media3.ui.TrackSelectionView$ComponentListener)
.class public Lio/bidmachine/media3/ui/TrackSelectionView$ComponentListener;
.super Ljava/lang/Object;
.source "TrackSelectionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/ui/TrackSelectionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ComponentListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/ui/TrackSelectionView;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/ui/TrackSelectionView;)V
    .registers 2

    .line 415
    iput-object p1, p0, Lio/bidmachine/media3/ui/TrackSelectionView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/TrackSelectionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/ui/TrackSelectionView;Lio/bidmachine/media3/ui/TrackSelectionView$1;)V
    .registers 3

    .line 415
    invoke-direct {p0, p1}, Lio/bidmachine/media3/ui/TrackSelectionView$ComponentListener;-><init>(Lio/bidmachine/media3/ui/TrackSelectionView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 419
    iget-object v0, p0, Lio/bidmachine/media3/ui/TrackSelectionView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/TrackSelectionView;

    invoke-static {v0, p1}, Lio/bidmachine/media3/ui/TrackSelectionView;->access$100(Lio/bidmachine/media3/ui/TrackSelectionView;Landroid/view/View;)V

    return-void
.end method

###### Class io.bidmachine.media3.ui.TrackSelectionView.TrackInfo (io.bidmachine.media3.ui.TrackSelectionView$TrackInfo)
.class public final Lio/bidmachine/media3/ui/TrackSelectionView$TrackInfo;
.super Ljava/lang/Object;
.source "TrackSelectionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/ui/TrackSelectionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrackInfo"
.end annotation


# instance fields
.field public final trackGroup:Lio/bidmachine/media3/common/Tracks$Group;

.field public final trackIndex:I


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/common/Tracks$Group;I)V
    .registers 3

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    iput-object p1, p0, Lio/bidmachine/media3/ui/TrackSelectionView$TrackInfo;->trackGroup:Lio/bidmachine/media3/common/Tracks$Group;

    .line 429
    iput p2, p0, Lio/bidmachine/media3/ui/TrackSelectionView$TrackInfo;->trackIndex:I

    return-void
.end method


# virtual methods
.method public getFormat()Lio/bidmachine/media3/common/Format;
    .registers 3

    .line 433
    iget-object v0, p0, Lio/bidmachine/media3/ui/TrackSelectionView$TrackInfo;->trackGroup:Lio/bidmachine/media3/common/Tracks$Group;

    iget v1, p0, Lio/bidmachine/media3/ui/TrackSelectionView$TrackInfo;->trackIndex:I

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Tracks$Group;->getTrackFormat(I)Lio/bidmachine/media3/common/Format;

    move-result-object v0

    return-object v0
.end method
