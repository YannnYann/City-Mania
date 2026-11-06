###### Class io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParamsKt (io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParamsKt)
.class public final Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$WhenMappings;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$CteWcm3QMakojTSkwK1PWyyQ8Hg(Lio/bidmachine/protobuf/rendering/Rendering$CacheType;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt;->toCacheType$lambda$3(Lio/bidmachine/protobuf/rendering/Rendering$CacheType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JaR4zJM688zJD4Vuly9-KnS-oT8(Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt;->toEventTaskType$lambda$8(Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Lx4Kisfo5ixrxNusukM-VNVNnOs(Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt;->toEventType$lambda$7(Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$OTmEcELDPR1fVQl06FXuiXlDuSo(Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$ViewComponentType;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt;->toAdElementType$lambda$4(Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$ViewComponentType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QbkIJjkiQcT0kbE8Y4FQr9HniH8(Lio/bidmachine/protobuf/rendering/Rendering$CacheType;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt;->toCacheType$lambda$2(Lio/bidmachine/protobuf/rendering/Rendering$CacheType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ScblHBWt0Y0CGvRwUFgc7ooT3-s(Lio/bidmachine/protobuf/rendering/Rendering$Orientation;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt;->toOrientation$lambda$0(Lio/bidmachine/protobuf/rendering/Rendering$Orientation;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VEdx-1jbfolIK-XMnQ3l381QSPI(Lio/bidmachine/protobuf/rendering/Rendering$Image$ScaleType;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt;->toScaleType$lambda$6(Lio/bidmachine/protobuf/rendering/Rendering$Image$ScaleType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XQb4AEGeEioeKLDGcgs3zpg6-y8(Lio/bidmachine/protobuf/rendering/Rendering$Orientation;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt;->toOrientation$lambda$1(Lio/bidmachine/protobuf/rendering/Rendering$Orientation;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ru5GZYG6OtAyFvZV5H-DLDsZn_Q(Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint$Anchor;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt;->toSideType$lambda$5(Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint$Anchor;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toAdElementType(Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$ViewComponentType;)Lio/bidmachine/rendering/model/AdElementType;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1
    :cond_4
    sget-object v1, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2a

    .line 27
    new-instance v1, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$$ExternalSyntheticLambda3;-><init>(Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$ViewComponentType;)V

    invoke-static {v1}, Lio/bidmachine/core/Logger;->e(Lio/bidmachine/utils/lazy/LazyValue;)V

    return-object v0

    .line 28
    :pswitch_18
    sget-object p0, Lio/bidmachine/rendering/model/AdElementType;->Progress:Lio/bidmachine/rendering/model/AdElementType;

    return-object p0

    .line 29
    :pswitch_1b
    sget-object p0, Lio/bidmachine/rendering/model/AdElementType;->Countdown:Lio/bidmachine/rendering/model/AdElementType;

    return-object p0

    .line 30
    :pswitch_1e
    sget-object p0, Lio/bidmachine/rendering/model/AdElementType;->Label:Lio/bidmachine/rendering/model/AdElementType;

    return-object p0

    .line 31
    :pswitch_21
    sget-object p0, Lio/bidmachine/rendering/model/AdElementType;->Image:Lio/bidmachine/rendering/model/AdElementType;

    return-object p0

    .line 32
    :pswitch_24
    sget-object p0, Lio/bidmachine/rendering/model/AdElementType;->Video:Lio/bidmachine/rendering/model/AdElementType;

    return-object p0

    .line 33
    :pswitch_27
    sget-object p0, Lio/bidmachine/rendering/model/AdElementType;->Mraid:Lio/bidmachine/rendering/model/AdElementType;

    return-object p0

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
    .end packed-switch
.end method

.method public static final toAdElementType$lambda$4(Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$ViewComponentType;)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported ViewComponentType - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toCacheType(Lio/bidmachine/protobuf/rendering/Rendering$CacheType;)Lio/bidmachine/rendering/model/CacheType;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1
    :cond_4
    sget-object v1, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_33

    const/4 v2, 0x2

    if-eq v1, v2, :cond_30

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2d

    const/4 v2, 0x4

    if-eq v1, v2, :cond_24

    const/4 v2, 0x5

    if-eq v1, v2, :cond_24

    .line 23
    new-instance v1, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/protobuf/rendering/Rendering$CacheType;)V

    invoke-static {v1}, Lio/bidmachine/core/Logger;->e(Lio/bidmachine/utils/lazy/LazyValue;)V

    return-object v0

    .line 24
    :cond_24
    new-instance v1, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$$ExternalSyntheticLambda2;-><init>(Lio/bidmachine/protobuf/rendering/Rendering$CacheType;)V

    invoke-static {v1}, Lio/bidmachine/core/Logger;->d(Lio/bidmachine/utils/lazy/LazyValue;)V

    return-object v0

    .line 25
    :cond_2d
    sget-object p0, Lio/bidmachine/rendering/model/CacheType;->StreamLoad:Lio/bidmachine/rendering/model/CacheType;

    return-object p0

    .line 26
    :cond_30
    sget-object p0, Lio/bidmachine/rendering/model/CacheType;->PartialLoad:Lio/bidmachine/rendering/model/CacheType;

    return-object p0

    .line 27
    :cond_33
    sget-object p0, Lio/bidmachine/rendering/model/CacheType;->FullLoad:Lio/bidmachine/rendering/model/CacheType;

    return-object p0
.end method

.method public static final toCacheType$lambda$2(Lio/bidmachine/protobuf/rendering/Rendering$CacheType;)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported CacheType - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toCacheType$lambda$3(Lio/bidmachine/protobuf/rendering/Rendering$CacheType;)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported CacheType - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toEventTaskType(Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;)Lio/bidmachine/rendering/model/EventTaskType;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1
    :cond_4
    sget-object v1, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$WhenMappings;->$EnumSwitchMapping$6:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_66

    .line 107
    new-instance v1, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;)V

    invoke-static {v1}, Lio/bidmachine/core/Logger;->e(Lio/bidmachine/utils/lazy/LazyValue;)V

    return-object v0

    .line 108
    :pswitch_18
    sget-object p0, Lio/bidmachine/rendering/model/EventTaskType;->ChangeActivity:Lio/bidmachine/rendering/model/EventTaskType;

    return-object p0

    .line 109
    :pswitch_1b
    sget-object p0, Lio/bidmachine/rendering/model/EventTaskType;->ChangeLayout:Lio/bidmachine/rendering/model/EventTaskType;

    return-object p0

    .line 110
    :pswitch_1e
    sget-object p0, Lio/bidmachine/rendering/model/EventTaskType;->Pause:Lio/bidmachine/rendering/model/EventTaskType;

    return-object p0

    .line 111
    :pswitch_21
    sget-object p0, Lio/bidmachine/rendering/model/EventTaskType;->Play:Lio/bidmachine/rendering/model/EventTaskType;

    return-object p0

    .line 112
    :pswitch_24
    sget-object p0, Lio/bidmachine/rendering/model/EventTaskType;->ReportClick:Lio/bidmachine/rendering/model/EventTaskType;

    return-object p0

    .line 113
    :pswitch_27
    sget-object p0, Lio/bidmachine/rendering/model/EventTaskType;->RequestPermission:Lio/bidmachine/rendering/model/EventTaskType;

    return-object p0

    .line 114
    :pswitch_2a
    sget-object p0, Lio/bidmachine/rendering/model/EventTaskType;->Collapse:Lio/bidmachine/rendering/model/EventTaskType;

    return-object p0

    .line 115
    :pswitch_2d
    sget-object p0, Lio/bidmachine/rendering/model/EventTaskType;->Expand:Lio/bidmachine/rendering/model/EventTaskType;

    return-object p0

    .line 116
    :pswitch_30
    sget-object p0, Lio/bidmachine/rendering/model/EventTaskType;->ToggleStateGroups:Lio/bidmachine/rendering/model/EventTaskType;

    return-object p0

    .line 117
    :pswitch_33
    sget-object p0, Lio/bidmachine/rendering/model/EventTaskType;->Repeat:Lio/bidmachine/rendering/model/EventTaskType;

    return-object p0

    .line 118
    :pswitch_36
    sget-object p0, Lio/bidmachine/rendering/model/EventTaskType;->OpenPrivacySheet:Lio/bidmachine/rendering/model/EventTaskType;

    return-object p0

    .line 119
    :pswitch_39
    sget-object p0, Lio/bidmachine/rendering/model/EventTaskType;->SimulateClick:Lio/bidmachine/rendering/model/EventTaskType;

    return-object p0

    .line 120
    :pswitch_3c
    sget-object p0, Lio/bidmachine/rendering/model/EventTaskType;->NotifyOpen:Lio/bidmachine/rendering/model/EventTaskType;

    return-object p0

    .line 121
    :pswitch_3f
    sget-object p0, Lio/bidmachine/rendering/model/EventTaskType;->UnlockVisibility:Lio/bidmachine/rendering/model/EventTaskType;

    return-object p0

    .line 122
    :pswitch_42
    sget-object p0, Lio/bidmachine/rendering/model/EventTaskType;->LockVisibility:Lio/bidmachine/rendering/model/EventTaskType;

    return-object p0

    .line 123
    :pswitch_45
    sget-object p0, Lio/bidmachine/rendering/model/EventTaskType;->Schedule:Lio/bidmachine/rendering/model/EventTaskType;

    return-object p0

    .line 124
    :pswitch_48
    sget-object p0, Lio/bidmachine/rendering/model/EventTaskType;->Progress:Lio/bidmachine/rendering/model/EventTaskType;

    return-object p0

    .line 125
    :pswitch_4b
    sget-object p0, Lio/bidmachine/rendering/model/EventTaskType;->Hide:Lio/bidmachine/rendering/model/EventTaskType;

    return-object p0

    .line 126
    :pswitch_4e
    sget-object p0, Lio/bidmachine/rendering/model/EventTaskType;->Show:Lio/bidmachine/rendering/model/EventTaskType;

    return-object p0

    .line 127
    :pswitch_51
    sget-object p0, Lio/bidmachine/rendering/model/EventTaskType;->Open:Lio/bidmachine/rendering/model/EventTaskType;

    return-object p0

    .line 128
    :pswitch_54
    sget-object p0, Lio/bidmachine/rendering/model/EventTaskType;->Skip:Lio/bidmachine/rendering/model/EventTaskType;

    return-object p0

    .line 129
    :pswitch_57
    sget-object p0, Lio/bidmachine/rendering/model/EventTaskType;->Close:Lio/bidmachine/rendering/model/EventTaskType;

    return-object p0

    .line 130
    :pswitch_5a
    sget-object p0, Lio/bidmachine/rendering/model/EventTaskType;->Track:Lio/bidmachine/rendering/model/EventTaskType;

    return-object p0

    .line 131
    :pswitch_5d
    sget-object p0, Lio/bidmachine/rendering/model/EventTaskType;->UnMute:Lio/bidmachine/rendering/model/EventTaskType;

    return-object p0

    .line 132
    :pswitch_60
    sget-object p0, Lio/bidmachine/rendering/model/EventTaskType;->Mute:Lio/bidmachine/rendering/model/EventTaskType;

    return-object p0

    .line 133
    :pswitch_63
    sget-object p0, Lio/bidmachine/rendering/model/EventTaskType;->Start:Lio/bidmachine/rendering/model/EventTaskType;

    return-object p0

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_63
        :pswitch_60
        :pswitch_5d
        :pswitch_5a
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
    .end packed-switch
.end method

.method public static final toEventTaskType$lambda$8(Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported TaskName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toEventType(Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;)Lio/bidmachine/rendering/model/EventType;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1
    :cond_4
    sget-object v1, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$WhenMappings;->$EnumSwitchMapping$5:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_5a

    .line 91
    new-instance v1, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$$ExternalSyntheticLambda4;-><init>(Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;)V

    invoke-static {v1}, Lio/bidmachine/core/Logger;->e(Lio/bidmachine/utils/lazy/LazyValue;)V

    return-object v0

    .line 92
    :pswitch_18
    sget-object p0, Lio/bidmachine/rendering/model/EventType;->OnLayoutChanged:Lio/bidmachine/rendering/model/EventType;

    return-object p0

    .line 93
    :pswitch_1b
    sget-object p0, Lio/bidmachine/rendering/model/EventType;->OnClickResolved:Lio/bidmachine/rendering/model/EventType;

    return-object p0

    .line 94
    :pswitch_1e
    sget-object p0, Lio/bidmachine/rendering/model/EventType;->OnCollapse:Lio/bidmachine/rendering/model/EventType;

    return-object p0

    .line 95
    :pswitch_21
    sget-object p0, Lio/bidmachine/rendering/model/EventType;->OnExpand:Lio/bidmachine/rendering/model/EventType;

    return-object p0

    .line 96
    :pswitch_24
    sget-object p0, Lio/bidmachine/rendering/model/EventType;->OnScheduled:Lio/bidmachine/rendering/model/EventType;

    return-object p0

    .line 97
    :pswitch_27
    sget-object p0, Lio/bidmachine/rendering/model/EventType;->OnUseCustomClose:Lio/bidmachine/rendering/model/EventType;

    return-object p0

    .line 98
    :pswitch_2a
    sget-object p0, Lio/bidmachine/rendering/model/EventType;->OnComplete:Lio/bidmachine/rendering/model/EventType;

    return-object p0

    .line 99
    :pswitch_2d
    sget-object p0, Lio/bidmachine/rendering/model/EventType;->OnThirdQuartile:Lio/bidmachine/rendering/model/EventType;

    return-object p0

    .line 100
    :pswitch_30
    sget-object p0, Lio/bidmachine/rendering/model/EventType;->OnMidpoint:Lio/bidmachine/rendering/model/EventType;

    return-object p0

    .line 101
    :pswitch_33
    sget-object p0, Lio/bidmachine/rendering/model/EventType;->OnFirstQuartile:Lio/bidmachine/rendering/model/EventType;

    return-object p0

    .line 102
    :pswitch_36
    sget-object p0, Lio/bidmachine/rendering/model/EventType;->OnStart:Lio/bidmachine/rendering/model/EventType;

    return-object p0

    .line 103
    :pswitch_39
    sget-object p0, Lio/bidmachine/rendering/model/EventType;->OnClose:Lio/bidmachine/rendering/model/EventType;

    return-object p0

    .line 104
    :pswitch_3c
    sget-object p0, Lio/bidmachine/rendering/model/EventType;->OnSkip:Lio/bidmachine/rendering/model/EventType;

    return-object p0

    .line 105
    :pswitch_3f
    sget-object p0, Lio/bidmachine/rendering/model/EventType;->OnResume:Lio/bidmachine/rendering/model/EventType;

    return-object p0

    .line 106
    :pswitch_42
    sget-object p0, Lio/bidmachine/rendering/model/EventType;->OnPause:Lio/bidmachine/rendering/model/EventType;

    return-object p0

    .line 107
    :pswitch_45
    sget-object p0, Lio/bidmachine/rendering/model/EventType;->OnUnMute:Lio/bidmachine/rendering/model/EventType;

    return-object p0

    .line 108
    :pswitch_48
    sget-object p0, Lio/bidmachine/rendering/model/EventType;->OnMute:Lio/bidmachine/rendering/model/EventType;

    return-object p0

    .line 109
    :pswitch_4b
    sget-object p0, Lio/bidmachine/rendering/model/EventType;->OnNavigate:Lio/bidmachine/rendering/model/EventType;

    return-object p0

    .line 110
    :pswitch_4e
    sget-object p0, Lio/bidmachine/rendering/model/EventType;->OnProgress:Lio/bidmachine/rendering/model/EventType;

    return-object p0

    .line 111
    :pswitch_51
    sget-object p0, Lio/bidmachine/rendering/model/EventType;->OnClick:Lio/bidmachine/rendering/model/EventType;

    return-object p0

    .line 112
    :pswitch_54
    sget-object p0, Lio/bidmachine/rendering/model/EventType;->OnBillableImpression:Lio/bidmachine/rendering/model/EventType;

    return-object p0

    .line 113
    :pswitch_57
    sget-object p0, Lio/bidmachine/rendering/model/EventType;->OnImpression:Lio/bidmachine/rendering/model/EventType;

    return-object p0

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
    .end packed-switch
.end method

.method public static final toEventType$lambda$7(Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported EventName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toOrientation(Lio/bidmachine/protobuf/rendering/Rendering$Orientation;)Lio/bidmachine/rendering/model/Orientation;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1
    :cond_4
    sget-object v1, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_30

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2d

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2c

    const/4 v2, 0x4

    if-eq v1, v2, :cond_24

    const/4 v2, 0x5

    if-eq v1, v2, :cond_24

    .line 24
    new-instance v1, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$$ExternalSyntheticLambda5;-><init>(Lio/bidmachine/protobuf/rendering/Rendering$Orientation;)V

    invoke-static {v1}, Lio/bidmachine/core/Logger;->e(Lio/bidmachine/utils/lazy/LazyValue;)V

    return-object v0

    .line 25
    :cond_24
    new-instance v1, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$$ExternalSyntheticLambda6;-><init>(Lio/bidmachine/protobuf/rendering/Rendering$Orientation;)V

    invoke-static {v1}, Lio/bidmachine/core/Logger;->d(Lio/bidmachine/utils/lazy/LazyValue;)V

    :cond_2c
    return-object v0

    .line 26
    :cond_2d
    sget-object p0, Lio/bidmachine/rendering/model/Orientation;->Landscape:Lio/bidmachine/rendering/model/Orientation;

    return-object p0

    .line 27
    :cond_30
    sget-object p0, Lio/bidmachine/rendering/model/Orientation;->Portrait:Lio/bidmachine/rendering/model/Orientation;

    return-object p0
.end method

.method public static final toOrientation$lambda$0(Lio/bidmachine/protobuf/rendering/Rendering$Orientation;)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported Orientation - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toOrientation$lambda$1(Lio/bidmachine/protobuf/rendering/Rendering$Orientation;)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported Orientation - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toScaleType(Lio/bidmachine/protobuf/rendering/Rendering$Image$ScaleType;)Lio/bidmachine/rendering/model/ScaleType;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1
    :cond_4
    sget-object v1, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$WhenMappings;->$EnumSwitchMapping$4:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2a

    const/4 v2, 0x2

    if-eq v1, v2, :cond_27

    const/4 v2, 0x3

    if-eq v1, v2, :cond_24

    const/4 v2, 0x4

    if-eq v1, v2, :cond_21

    .line 19
    new-instance v1, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$$ExternalSyntheticLambda7;-><init>(Lio/bidmachine/protobuf/rendering/Rendering$Image$ScaleType;)V

    invoke-static {v1}, Lio/bidmachine/core/Logger;->e(Lio/bidmachine/utils/lazy/LazyValue;)V

    return-object v0

    .line 20
    :cond_21
    sget-object p0, Lio/bidmachine/rendering/model/ScaleType;->AspectFit:Lio/bidmachine/rendering/model/ScaleType;

    return-object p0

    .line 21
    :cond_24
    sget-object p0, Lio/bidmachine/rendering/model/ScaleType;->AspectFill:Lio/bidmachine/rendering/model/ScaleType;

    return-object p0

    .line 22
    :cond_27
    sget-object p0, Lio/bidmachine/rendering/model/ScaleType;->ToFill:Lio/bidmachine/rendering/model/ScaleType;

    return-object p0

    .line 23
    :cond_2a
    sget-object p0, Lio/bidmachine/rendering/model/ScaleType;->None:Lio/bidmachine/rendering/model/ScaleType;

    return-object p0
.end method

.method public static final toScaleType$lambda$6(Lio/bidmachine/protobuf/rendering/Rendering$Image$ScaleType;)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported ScaleType - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toSideType(Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint$Anchor;)Lio/bidmachine/rendering/model/SideType;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1
    :cond_4
    sget-object v1, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2a

    .line 27
    new-instance v1, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$$ExternalSyntheticLambda8;-><init>(Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint$Anchor;)V

    invoke-static {v1}, Lio/bidmachine/core/Logger;->e(Lio/bidmachine/utils/lazy/LazyValue;)V

    return-object v0

    .line 28
    :pswitch_18
    sget-object p0, Lio/bidmachine/rendering/model/SideType;->CenterY:Lio/bidmachine/rendering/model/SideType;

    return-object p0

    .line 29
    :pswitch_1b
    sget-object p0, Lio/bidmachine/rendering/model/SideType;->CenterX:Lio/bidmachine/rendering/model/SideType;

    return-object p0

    .line 30
    :pswitch_1e
    sget-object p0, Lio/bidmachine/rendering/model/SideType;->Bottom:Lio/bidmachine/rendering/model/SideType;

    return-object p0

    .line 31
    :pswitch_21
    sget-object p0, Lio/bidmachine/rendering/model/SideType;->Top:Lio/bidmachine/rendering/model/SideType;

    return-object p0

    .line 32
    :pswitch_24
    sget-object p0, Lio/bidmachine/rendering/model/SideType;->Right:Lio/bidmachine/rendering/model/SideType;

    return-object p0

    .line 33
    :pswitch_27
    sget-object p0, Lio/bidmachine/rendering/model/SideType;->Left:Lio/bidmachine/rendering/model/SideType;

    return-object p0

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
    .end packed-switch
.end method

.method public static final toSideType$lambda$5(Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint$Anchor;)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported Anchor for SideType - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParamsKt.WhenMappings (io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParamsKt$WhenMappings)
.class public final synthetic Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$WhenMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I

.field public static final synthetic $EnumSwitchMapping$2:[I

.field public static final synthetic $EnumSwitchMapping$3:[I

.field public static final synthetic $EnumSwitchMapping$4:[I

.field public static final synthetic $EnumSwitchMapping$5:[I

.field public static final synthetic $EnumSwitchMapping$6:[I


# direct methods
.method static constructor <clinit>()V
    .registers 24

    .line 0
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Orientation;->values()[Lio/bidmachine/protobuf/rendering/Rendering$Orientation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_8
    sget-object v2, Lio/bidmachine/protobuf/rendering/Rendering$Orientation;->ORIENTATION_PORTRAIT:Lio/bidmachine/protobuf/rendering/Rendering$Orientation;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_10} :catch_10

    :catch_10
    const/4 v2, 0x2

    :try_start_11
    sget-object v3, Lio/bidmachine/protobuf/rendering/Rendering$Orientation;->ORIENTATION_LANDSCAPE:Lio/bidmachine/protobuf/rendering/Rendering$Orientation;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_19} :catch_19

    :catch_19
    const/4 v3, 0x3

    :try_start_1a
    sget-object v4, Lio/bidmachine/protobuf/rendering/Rendering$Orientation;->ORIENTATION_SYSTEM:Lio/bidmachine/protobuf/rendering/Rendering$Orientation;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_22} :catch_22

    :catch_22
    const/4 v4, 0x4

    :try_start_23
    sget-object v5, Lio/bidmachine/protobuf/rendering/Rendering$Orientation;->ORIENTATION_INVALID:Lio/bidmachine/protobuf/rendering/Rendering$Orientation;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v4, v0, v5
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_2b} :catch_2b

    :catch_2b
    const/4 v5, 0x5

    :try_start_2c
    sget-object v6, Lio/bidmachine/protobuf/rendering/Rendering$Orientation;->UNRECOGNIZED:Lio/bidmachine/protobuf/rendering/Rendering$Orientation;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v5, v0, v6
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_34} :catch_34

    :catch_34
    sput-object v0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$CacheType;->values()[Lio/bidmachine/protobuf/rendering/Rendering$CacheType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_3d
    sget-object v6, Lio/bidmachine/protobuf/rendering/Rendering$CacheType;->CACHE_TYPE_FULL_LOAD:Lio/bidmachine/protobuf/rendering/Rendering$CacheType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v1, v0, v6
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_45} :catch_45

    :catch_45
    :try_start_45
    sget-object v6, Lio/bidmachine/protobuf/rendering/Rendering$CacheType;->CACHE_TYPE_PARTIAL_LOAD:Lio/bidmachine/protobuf/rendering/Rendering$CacheType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v2, v0, v6
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_4d} :catch_4d

    :catch_4d
    :try_start_4d
    sget-object v6, Lio/bidmachine/protobuf/rendering/Rendering$CacheType;->CACHE_TYPE_STREAM_LOAD:Lio/bidmachine/protobuf/rendering/Rendering$CacheType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v3, v0, v6
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_55} :catch_55

    :catch_55
    :try_start_55
    sget-object v6, Lio/bidmachine/protobuf/rendering/Rendering$CacheType;->CACHE_TYPE_INVALID:Lio/bidmachine/protobuf/rendering/Rendering$CacheType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v0, v6
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_5d} :catch_5d

    :catch_5d
    :try_start_5d
    sget-object v6, Lio/bidmachine/protobuf/rendering/Rendering$CacheType;->UNRECOGNIZED:Lio/bidmachine/protobuf/rendering/Rendering$CacheType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v5, v0, v6
    :try_end_65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_65} :catch_65

    :catch_65
    sput-object v0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$ViewComponentType;->values()[Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$ViewComponentType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_6e
    sget-object v6, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$ViewComponentType;->VIEW_COMPONENT_TYPE_MRAID:Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$ViewComponentType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v1, v0, v6
    :try_end_76
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_76} :catch_76

    :catch_76
    :try_start_76
    sget-object v6, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$ViewComponentType;->VIEW_COMPONENT_TYPE_VIDEO:Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$ViewComponentType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v2, v0, v6
    :try_end_7e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_76 .. :try_end_7e} :catch_7e

    :catch_7e
    :try_start_7e
    sget-object v6, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$ViewComponentType;->VIEW_COMPONENT_TYPE_IMAGE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$ViewComponentType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v3, v0, v6
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_86} :catch_86

    :catch_86
    :try_start_86
    sget-object v6, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$ViewComponentType;->VIEW_COMPONENT_TYPE_LABEL:Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$ViewComponentType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v0, v6
    :try_end_8e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_8e} :catch_8e

    :catch_8e
    :try_start_8e
    sget-object v6, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$ViewComponentType;->VIEW_COMPONENT_TYPE_COUNTDOWN:Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$ViewComponentType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v5, v0, v6
    :try_end_96
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8e .. :try_end_96} :catch_96

    :catch_96
    const/4 v6, 0x6

    :try_start_97
    sget-object v7, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$ViewComponentType;->VIEW_COMPONENT_TYPE_PROGRESS:Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$ViewComponentType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v6, v0, v7
    :try_end_9f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_97 .. :try_end_9f} :catch_9f

    :catch_9f
    sput-object v0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint$Anchor;->values()[Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint$Anchor;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_a8
    sget-object v7, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint$Anchor;->ANCHOR_LEFT:Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint$Anchor;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v1, v0, v7
    :try_end_b0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b0} :catch_b0

    :catch_b0
    :try_start_b0
    sget-object v7, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint$Anchor;->ANCHOR_RIGHT:Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint$Anchor;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v2, v0, v7
    :try_end_b8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b0 .. :try_end_b8} :catch_b8

    :catch_b8
    :try_start_b8
    sget-object v7, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint$Anchor;->ANCHOR_TOP:Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint$Anchor;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v3, v0, v7
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b8 .. :try_end_c0} :catch_c0

    :catch_c0
    :try_start_c0
    sget-object v7, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint$Anchor;->ANCHOR_BOTTOM:Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint$Anchor;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v4, v0, v7
    :try_end_c8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c0 .. :try_end_c8} :catch_c8

    :catch_c8
    :try_start_c8
    sget-object v7, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint$Anchor;->ANCHOR_CENTER_X:Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint$Anchor;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v5, v0, v7
    :try_end_d0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c8 .. :try_end_d0} :catch_d0

    :catch_d0
    :try_start_d0
    sget-object v7, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint$Anchor;->ANCHOR_CENTER_Y:Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint$Anchor;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v6, v0, v7
    :try_end_d8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d0 .. :try_end_d8} :catch_d8

    :catch_d8
    sput-object v0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Image$ScaleType;->values()[Lio/bidmachine/protobuf/rendering/Rendering$Image$ScaleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e1
    sget-object v7, Lio/bidmachine/protobuf/rendering/Rendering$Image$ScaleType;->SCALE_TYPE_NONE:Lio/bidmachine/protobuf/rendering/Rendering$Image$ScaleType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v1, v0, v7
    :try_end_e9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e1 .. :try_end_e9} :catch_e9

    :catch_e9
    :try_start_e9
    sget-object v7, Lio/bidmachine/protobuf/rendering/Rendering$Image$ScaleType;->SCALE_TYPE_TO_FILL:Lio/bidmachine/protobuf/rendering/Rendering$Image$ScaleType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v2, v0, v7
    :try_end_f1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e9 .. :try_end_f1} :catch_f1

    :catch_f1
    :try_start_f1
    sget-object v7, Lio/bidmachine/protobuf/rendering/Rendering$Image$ScaleType;->SCALE_TYPE_ASPECT_FILL:Lio/bidmachine/protobuf/rendering/Rendering$Image$ScaleType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v3, v0, v7
    :try_end_f9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f1 .. :try_end_f9} :catch_f9

    :catch_f9
    :try_start_f9
    sget-object v7, Lio/bidmachine/protobuf/rendering/Rendering$Image$ScaleType;->SCALE_TYPE_ASPECT_FIT:Lio/bidmachine/protobuf/rendering/Rendering$Image$ScaleType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v4, v0, v7
    :try_end_101
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f9 .. :try_end_101} :catch_101

    :catch_101
    sput-object v0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$WhenMappings;->$EnumSwitchMapping$4:[I

    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->values()[Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_10a
    sget-object v7, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_IMPRESSION:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v1, v0, v7
    :try_end_112
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10a .. :try_end_112} :catch_112

    :catch_112
    :try_start_112
    sget-object v7, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_BILLABLE_IMPRESSION:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v2, v0, v7
    :try_end_11a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_112 .. :try_end_11a} :catch_11a

    :catch_11a
    :try_start_11a
    sget-object v7, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_CLICK:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v3, v0, v7
    :try_end_122
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11a .. :try_end_122} :catch_122

    :catch_122
    :try_start_122
    sget-object v7, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_PROGRESS:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v4, v0, v7
    :try_end_12a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_122 .. :try_end_12a} :catch_12a

    :catch_12a
    :try_start_12a
    sget-object v7, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_NAVIGATE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v5, v0, v7
    :try_end_132
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12a .. :try_end_132} :catch_132

    :catch_132
    :try_start_132
    sget-object v7, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_MUTE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v6, v0, v7
    :try_end_13a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_132 .. :try_end_13a} :catch_13a

    :catch_13a
    const/4 v7, 0x7

    :try_start_13b
    sget-object v8, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_UNMUTE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v7, v0, v8
    :try_end_143
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13b .. :try_end_143} :catch_143

    :catch_143
    const/16 v8, 0x8

    :try_start_145
    sget-object v9, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_PAUSE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v8, v0, v9
    :try_end_14d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_145 .. :try_end_14d} :catch_14d

    :catch_14d
    const/16 v9, 0x9

    :try_start_14f
    sget-object v10, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_RESUME:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v9, v0, v10
    :try_end_157
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14f .. :try_end_157} :catch_157

    :catch_157
    const/16 v10, 0xa

    :try_start_159
    sget-object v11, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_SKIP:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aput v10, v0, v11
    :try_end_161
    .catch Ljava/lang/NoSuchFieldError; {:try_start_159 .. :try_end_161} :catch_161

    :catch_161
    const/16 v11, 0xb

    :try_start_163
    sget-object v12, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_CLOSE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v11, v0, v12
    :try_end_16b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_163 .. :try_end_16b} :catch_16b

    :catch_16b
    const/16 v12, 0xc

    :try_start_16d
    sget-object v13, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_START:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aput v12, v0, v13
    :try_end_175
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16d .. :try_end_175} :catch_175

    :catch_175
    const/16 v13, 0xd

    :try_start_177
    sget-object v14, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_FIRST_QUARTILE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aput v13, v0, v14
    :try_end_17f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_177 .. :try_end_17f} :catch_17f

    :catch_17f
    const/16 v14, 0xe

    :try_start_181
    sget-object v15, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_MIDPOINT:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aput v14, v0, v15
    :try_end_189
    .catch Ljava/lang/NoSuchFieldError; {:try_start_181 .. :try_end_189} :catch_189

    :catch_189
    const/16 v15, 0xf

    :try_start_18b
    sget-object v16, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_THIRD_QUARTILE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aput v15, v0, v16
    :try_end_193
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18b .. :try_end_193} :catch_193

    :catch_193
    const/16 v16, 0x10

    :try_start_195
    sget-object v17, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_COMPLETE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->ordinal()I

    move-result v17

    aput v16, v0, v17
    :try_end_19d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_195 .. :try_end_19d} :catch_19d

    :catch_19d
    const/16 v17, 0x11

    :try_start_19f
    sget-object v18, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_USE_CUSTOM_CLOSE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->ordinal()I

    move-result v18

    aput v17, v0, v18
    :try_end_1a7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19f .. :try_end_1a7} :catch_1a7

    :catch_1a7
    const/16 v18, 0x12

    :try_start_1a9
    sget-object v19, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_SCHEDULED:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Enum;->ordinal()I

    move-result v19

    aput v18, v0, v19
    :try_end_1b1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a9 .. :try_end_1b1} :catch_1b1

    :catch_1b1
    const/16 v19, 0x13

    :try_start_1b3
    sget-object v20, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_EXPAND:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Enum;->ordinal()I

    move-result v20

    aput v19, v0, v20
    :try_end_1bb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b3 .. :try_end_1bb} :catch_1bb

    :catch_1bb
    const/16 v20, 0x14

    :try_start_1bd
    sget-object v21, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_COLLAPSE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Enum;->ordinal()I

    move-result v21

    aput v20, v0, v21
    :try_end_1c5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1bd .. :try_end_1c5} :catch_1c5

    :catch_1c5
    const/16 v21, 0x15

    :try_start_1c7
    sget-object v22, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_CLICK_RESOLVED:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Enum;->ordinal()I

    move-result v22

    aput v21, v0, v22
    :try_end_1cf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c7 .. :try_end_1cf} :catch_1cf

    :catch_1cf
    const/16 v22, 0x16

    :try_start_1d1
    sget-object v23, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_LAYOUT_CHANGED:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    aput v22, v0, v23
    :try_end_1d9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d1 .. :try_end_1d9} :catch_1d9

    :catch_1d9
    sput-object v0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$WhenMappings;->$EnumSwitchMapping$5:[I

    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->values()[Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_1e2
    sget-object v23, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_START:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    aput v1, v0, v23
    :try_end_1ea
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e2 .. :try_end_1ea} :catch_1ea

    :catch_1ea
    :try_start_1ea
    sget-object v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_MUTE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_1f2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ea .. :try_end_1f2} :catch_1f2

    :catch_1f2
    :try_start_1f2
    sget-object v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_UNMUTE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_1fa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f2 .. :try_end_1fa} :catch_1fa

    :catch_1fa
    :try_start_1fa
    sget-object v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_TRACK:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_202
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1fa .. :try_end_202} :catch_202

    :catch_202
    :try_start_202
    sget-object v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_CLOSE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_20a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_202 .. :try_end_20a} :catch_20a

    :catch_20a
    :try_start_20a
    sget-object v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_SKIP:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_212
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20a .. :try_end_212} :catch_212

    :catch_212
    :try_start_212
    sget-object v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_OPEN:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_21a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_212 .. :try_end_21a} :catch_21a

    :catch_21a
    :try_start_21a
    sget-object v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_SHOW:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v8, v0, v1
    :try_end_222
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21a .. :try_end_222} :catch_222

    :catch_222
    :try_start_222
    sget-object v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_HIDE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v9, v0, v1
    :try_end_22a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_222 .. :try_end_22a} :catch_22a

    :catch_22a
    :try_start_22a
    sget-object v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_PROGRESS:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v10, v0, v1
    :try_end_232
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22a .. :try_end_232} :catch_232

    :catch_232
    :try_start_232
    sget-object v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_SCHEDULE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v11, v0, v1
    :try_end_23a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_232 .. :try_end_23a} :catch_23a

    :catch_23a
    :try_start_23a
    sget-object v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_LOCK_VISIBILITY:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v12, v0, v1
    :try_end_242
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23a .. :try_end_242} :catch_242

    :catch_242
    :try_start_242
    sget-object v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_UNLOCK_VISIBILITY:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v13, v0, v1
    :try_end_24a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_242 .. :try_end_24a} :catch_24a

    :catch_24a
    :try_start_24a
    sget-object v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_NOTIFY_OPEN:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v14, v0, v1
    :try_end_252
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24a .. :try_end_252} :catch_252

    :catch_252
    :try_start_252
    sget-object v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_SIMULATE_CLICK:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v15, v0, v1
    :try_end_25a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_252 .. :try_end_25a} :catch_25a

    :catch_25a
    :try_start_25a
    sget-object v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_PRIVACY_SHEET:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v16, v0, v1
    :try_end_262
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25a .. :try_end_262} :catch_262

    :catch_262
    :try_start_262
    sget-object v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_REPEAT:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v17, v0, v1
    :try_end_26a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_262 .. :try_end_26a} :catch_26a

    :catch_26a
    :try_start_26a
    sget-object v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_TOGGLE_STATE_GROUPS:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v18, v0, v1
    :try_end_272
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26a .. :try_end_272} :catch_272

    :catch_272
    :try_start_272
    sget-object v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_EXPAND:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v19, v0, v1
    :try_end_27a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_272 .. :try_end_27a} :catch_27a

    :catch_27a
    :try_start_27a
    sget-object v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_COLLAPSE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v20, v0, v1
    :try_end_282
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27a .. :try_end_282} :catch_282

    :catch_282
    :try_start_282
    sget-object v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_REQUEST_PERMISSION:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v21, v0, v1
    :try_end_28a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_282 .. :try_end_28a} :catch_28a

    :catch_28a
    :try_start_28a
    sget-object v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_REPORT_CLICK:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v22, v0, v1
    :try_end_292
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28a .. :try_end_292} :catch_292

    :catch_292
    :try_start_292
    sget-object v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_PLAY:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_29c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_292 .. :try_end_29c} :catch_29c

    :catch_29c
    :try_start_29c
    sget-object v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_PAUSE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_2a6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29c .. :try_end_2a6} :catch_2a6

    :catch_2a6
    :try_start_2a6
    sget-object v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_CHANGE_LAYOUT:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_2b0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a6 .. :try_end_2b0} :catch_2b0

    :catch_2b0
    :try_start_2b0
    sget-object v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_CHANGE_ACTIVITY:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_2ba
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b0 .. :try_end_2ba} :catch_2ba

    :catch_2ba
    sput-object v0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$WhenMappings;->$EnumSwitchMapping$6:[I

    return-void
.end method

###### Class io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParamsKt$$ExternalSyntheticLambda0 (io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParamsKt$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    invoke-static {v0}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt;->$r8$lambda$JaR4zJM688zJD4Vuly9-KnS-oT8(Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParamsKt$$ExternalSyntheticLambda1 (io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParamsKt$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/protobuf/rendering/Rendering$CacheType;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/protobuf/rendering/Rendering$CacheType;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/protobuf/rendering/Rendering$CacheType;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/protobuf/rendering/Rendering$CacheType;

    invoke-static {v0}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt;->$r8$lambda$CteWcm3QMakojTSkwK1PWyyQ8Hg(Lio/bidmachine/protobuf/rendering/Rendering$CacheType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParamsKt$$ExternalSyntheticLambda2 (io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParamsKt$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/protobuf/rendering/Rendering$CacheType;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/protobuf/rendering/Rendering$CacheType;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/protobuf/rendering/Rendering$CacheType;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/protobuf/rendering/Rendering$CacheType;

    invoke-static {v0}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt;->$r8$lambda$QbkIJjkiQcT0kbE8Y4FQr9HniH8(Lio/bidmachine/protobuf/rendering/Rendering$CacheType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParamsKt$$ExternalSyntheticLambda3 (io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParamsKt$$ExternalSyntheticLambda3)
.class public final synthetic Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$ViewComponentType;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$ViewComponentType;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$ViewComponentType;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$ViewComponentType;

    invoke-static {v0}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt;->$r8$lambda$OTmEcELDPR1fVQl06FXuiXlDuSo(Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$ViewComponentType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParamsKt$$ExternalSyntheticLambda4 (io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParamsKt$$ExternalSyntheticLambda4)
.class public final synthetic Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    invoke-static {v0}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt;->$r8$lambda$Lx4Kisfo5ixrxNusukM-VNVNnOs(Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParamsKt$$ExternalSyntheticLambda5 (io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParamsKt$$ExternalSyntheticLambda5)
.class public final synthetic Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/protobuf/rendering/Rendering$Orientation;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/protobuf/rendering/Rendering$Orientation;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$$ExternalSyntheticLambda5;->f$0:Lio/bidmachine/protobuf/rendering/Rendering$Orientation;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$$ExternalSyntheticLambda5;->f$0:Lio/bidmachine/protobuf/rendering/Rendering$Orientation;

    invoke-static {v0}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt;->$r8$lambda$XQb4AEGeEioeKLDGcgs3zpg6-y8(Lio/bidmachine/protobuf/rendering/Rendering$Orientation;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParamsKt$$ExternalSyntheticLambda6 (io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParamsKt$$ExternalSyntheticLambda6)
.class public final synthetic Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/protobuf/rendering/Rendering$Orientation;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/protobuf/rendering/Rendering$Orientation;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$$ExternalSyntheticLambda6;->f$0:Lio/bidmachine/protobuf/rendering/Rendering$Orientation;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$$ExternalSyntheticLambda6;->f$0:Lio/bidmachine/protobuf/rendering/Rendering$Orientation;

    invoke-static {v0}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt;->$r8$lambda$ScblHBWt0Y0CGvRwUFgc7ooT3-s(Lio/bidmachine/protobuf/rendering/Rendering$Orientation;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParamsKt$$ExternalSyntheticLambda7 (io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParamsKt$$ExternalSyntheticLambda7)
.class public final synthetic Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/protobuf/rendering/Rendering$Image$ScaleType;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/protobuf/rendering/Rendering$Image$ScaleType;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$$ExternalSyntheticLambda7;->f$0:Lio/bidmachine/protobuf/rendering/Rendering$Image$ScaleType;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$$ExternalSyntheticLambda7;->f$0:Lio/bidmachine/protobuf/rendering/Rendering$Image$ScaleType;

    invoke-static {v0}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt;->$r8$lambda$VEdx-1jbfolIK-XMnQ3l381QSPI(Lio/bidmachine/protobuf/rendering/Rendering$Image$ScaleType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParamsKt$$ExternalSyntheticLambda8 (io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParamsKt$$ExternalSyntheticLambda8)
.class public final synthetic Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint$Anchor;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint$Anchor;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$$ExternalSyntheticLambda8;->f$0:Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint$Anchor;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt$$ExternalSyntheticLambda8;->f$0:Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint$Anchor;

    invoke-static {v0}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt;->$r8$lambda$ru5GZYG6OtAyFvZV5H-DLDsZn_Q(Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint$Anchor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
