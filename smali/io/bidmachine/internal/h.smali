###### Class io.bidmachine.internal.AbstractC4224h (io.bidmachine.internal.h)
.class public abstract Lio/bidmachine/internal/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/internal/h$a;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$3dX5H8O-8xnnNpeG-t2XrLgpNyI(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/internal/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5IKJpazA_OEE1t6p48Q35aHL6Ck(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/bidmachine/internal/h;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$U4z6Ir0aSIM1WBlZEIkv0ZOTQhQ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/bidmachine/internal/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XLcw8Xv5Ov7158gjG5xdacQpENY(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/internal/h;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XQYVP17SdOO3Nz-CvZquqnrM8Ik(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/bidmachine/internal/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$sgw9AfBBbdgntsAvySalfEDVkmU(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/internal/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uhXAyjVgzMwyzN2aSXyINwe__AY(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/bidmachine/internal/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lio/bidmachine/rendering/model/EventType;)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v0, Lio/bidmachine/internal/h$a;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_58

    .line 121
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_16
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_LAYOUT_CHANGED:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    return-object p0

    .line 122
    :pswitch_19
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_CLICK_RESOLVED:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    return-object p0

    .line 123
    :pswitch_1c
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_COLLAPSE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    return-object p0

    .line 124
    :pswitch_1f
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_EXPAND:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    return-object p0

    .line 125
    :pswitch_22
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_NAVIGATE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    return-object p0

    .line 126
    :pswitch_25
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_SCHEDULED:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    return-object p0

    .line 127
    :pswitch_28
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_USE_CUSTOM_CLOSE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    return-object p0

    .line 128
    :pswitch_2b
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_PROGRESS:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    return-object p0

    .line 129
    :pswitch_2e
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_COMPLETE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    return-object p0

    .line 130
    :pswitch_31
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_THIRD_QUARTILE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    return-object p0

    .line 131
    :pswitch_34
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_MIDPOINT:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    return-object p0

    .line 132
    :pswitch_37
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_FIRST_QUARTILE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    return-object p0

    .line 133
    :pswitch_3a
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_START:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    return-object p0

    .line 134
    :pswitch_3d
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_CLOSE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    return-object p0

    .line 135
    :pswitch_40
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_SKIP:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    return-object p0

    .line 136
    :pswitch_43
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_RESUME:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    return-object p0

    .line 137
    :pswitch_46
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_PAUSE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    return-object p0

    .line 138
    :pswitch_49
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_UNMUTE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    return-object p0

    .line 139
    :pswitch_4c
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_MUTE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    return-object p0

    .line 140
    :pswitch_4f
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_CLICK:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    return-object p0

    .line 141
    :pswitch_52
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_BILLABLE_IMPRESSION:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    return-object p0

    .line 142
    :pswitch_55
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_IMPRESSION:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    return-object p0

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
    .end packed-switch
.end method

.method public static final a(Lio/bidmachine/rendering/model/EventTaskType;)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    sget-object v0, Lio/bidmachine/internal/h$a;->$EnumSwitchMapping$1:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_64

    .line 245
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_16
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_CHANGE_ACTIVITY:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    return-object p0

    .line 246
    :pswitch_19
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_CHANGE_LAYOUT:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    return-object p0

    .line 247
    :pswitch_1c
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_PAUSE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    return-object p0

    .line 248
    :pswitch_1f
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_PLAY:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    return-object p0

    .line 249
    :pswitch_22
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_REPORT_CLICK:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    return-object p0

    .line 250
    :pswitch_25
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_REQUEST_PERMISSION:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    return-object p0

    .line 251
    :pswitch_28
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_COLLAPSE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    return-object p0

    .line 252
    :pswitch_2b
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_EXPAND:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    return-object p0

    .line 253
    :pswitch_2e
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_TOGGLE_STATE_GROUPS:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    return-object p0

    .line 254
    :pswitch_31
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_PRIVACY_SHEET:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    return-object p0

    .line 255
    :pswitch_34
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_SIMULATE_CLICK:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    return-object p0

    .line 256
    :pswitch_37
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_UNLOCK_VISIBILITY:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    return-object p0

    .line 257
    :pswitch_3a
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_LOCK_VISIBILITY:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    return-object p0

    .line 258
    :pswitch_3d
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_START:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    return-object p0

    .line 259
    :pswitch_40
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_SCHEDULE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    return-object p0

    .line 260
    :pswitch_43
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_PROGRESS:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    return-object p0

    .line 261
    :pswitch_46
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_HIDE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    return-object p0

    .line 262
    :pswitch_49
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_SHOW:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    return-object p0

    .line 263
    :pswitch_4c
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_REPEAT:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    return-object p0

    .line 264
    :pswitch_4f
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_UNMUTE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    return-object p0

    .line 265
    :pswitch_52
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_MUTE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    return-object p0

    .line 266
    :pswitch_55
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_CLOSE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    return-object p0

    .line 267
    :pswitch_58
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_SKIP:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    return-object p0

    .line 268
    :pswitch_5b
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_NOTIFY_OPEN:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    return-object p0

    .line 269
    :pswitch_5e
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_OPEN:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    return-object p0

    .line 270
    :pswitch_61
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_TRACK:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    return-object p0

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_61
        :pswitch_5e
        :pswitch_5b
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
    .end packed-switch
.end method

.method public static final a(Lio/bidmachine/rendering/model/EventTaskParams;)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;->newBuilder()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$Builder;

    move-result-object v0

    .line 26
    invoke-virtual {p0}, Lio/bidmachine/rendering/model/EventTaskParams;->getEventTaskType()Lio/bidmachine/rendering/model/EventTaskType;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/internal/h;->a(Lio/bidmachine/rendering/model/EventTaskType;)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$Builder;->setName(Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$Builder;

    move-result-object v0

    .line 27
    invoke-virtual {p0}, Lio/bidmachine/rendering/model/EventTaskParams;->getTarget()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$Builder;->setTarget(Ljava/lang/String;)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$Builder;

    move-result-object v0

    const-string v1, "newBuilder()\n        .se\u2026       .setTarget(target)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lio/bidmachine/rendering/model/EventTaskParams;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$Builder;->setValue(Ljava/lang/String;)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$Builder;

    .line 31
    :cond_2f
    invoke-virtual {p0}, Lio/bidmachine/rendering/model/EventTaskParams;->getAnimationEffectRaw()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 32
    invoke-virtual {p0}, Lio/bidmachine/rendering/model/EventTaskParams;->getAnimationEffectRaw()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$Builder;->setAnimationEffect(Ljava/lang/String;)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$Builder;

    .line 34
    :cond_3c
    invoke-virtual {v0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$Builder;->build()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;

    move-result-object p0

    const-string v0, "taskBuilder.build()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final a(Lio/bidmachine/rendering/model/EventTaskBucketParams;)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;->newBuilder()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket$Builder;

    move-result-object v0

    .line 18
    invoke-virtual {p0}, Lio/bidmachine/rendering/model/EventTaskBucketParams;->getExecutionMode()Lio/bidmachine/rendering/model/ExecutionMode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket$Builder;->setMode(Ljava/lang/String;)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket$Builder;

    move-result-object v0

    .line 19
    invoke-virtual {p0}, Lio/bidmachine/rendering/model/EventTaskBucketParams;->getAnimationTimingRaw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket$Builder;->setAnimationTiming(Ljava/lang/String;)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket$Builder;

    move-result-object v0

    .line 20
    invoke-virtual {p0}, Lio/bidmachine/rendering/model/EventTaskBucketParams;->getStateGroups()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket$Builder;->addAllStateGroups(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket$Builder;

    move-result-object v0

    .line 21
    invoke-virtual {p0}, Lio/bidmachine/rendering/model/EventTaskBucketParams;->getBeforeEventTaskParamsList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/internal/h;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket$Builder;->addAllBeforeTasks(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket$Builder;

    move-result-object v0

    .line 22
    invoke-virtual {p0}, Lio/bidmachine/rendering/model/EventTaskBucketParams;->getEventTaskParamsList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/internal/h;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket$Builder;->addAllTasks(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket$Builder;

    move-result-object v0

    .line 23
    invoke-virtual {p0}, Lio/bidmachine/rendering/model/EventTaskBucketParams;->getAfterEventTaskParamsList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lio/bidmachine/internal/h;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket$Builder;->addAllAfterTasks(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket$Builder;

    move-result-object p0

    .line 24
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket$Builder;->build()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;

    move-result-object p0

    const-string v0, "newBuilder()\n        .se\u2026kList())\n        .build()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final a(Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;)Lio/bidmachine/rendering/model/EventTaskBucketParams;
    .registers 11

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p0, v0, :cond_d

    return-object v1

    .line 5
    :cond_d
    new-instance v2, Lio/bidmachine/rendering/model/EventTaskBucketParams;

    .line 6
    sget-object v0, Lio/bidmachine/rendering/model/ExecutionMode;->Companion:Lio/bidmachine/rendering/model/ExecutionMode$Companion;

    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;->getMode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mode"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lio/bidmachine/rendering/model/ExecutionMode$Companion;->get(Ljava/lang/String;)Lio/bidmachine/rendering/model/ExecutionMode;

    move-result-object v0

    if-nez v0, :cond_2d

    sget-object v0, Lio/bidmachine/rendering/model/ExecutionMode;->Parallel:Lio/bidmachine/rendering/model/ExecutionMode;

    :cond_2d
    move-object v3, v0

    .line 7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;->getStateGroupsList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    const-string v4, "stateGroupsList"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    .line 8
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;->getBeforeTasksList()Ljava/util/List;

    move-result-object v0

    const-string v5, "beforeTasksList"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-static {v0, v1, v5, v1}, Lio/bidmachine/internal/h;->a(Ljava/util/List;Lio/bidmachine/rendering/model/animation/AnimationTiming;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;->getTasksList()Ljava/util/List;

    move-result-object v6

    const-string v7, "tasksList"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;->getAnimationTiming()Ljava/lang/String;

    move-result-object v7

    const-string v8, "animationTiming"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lio/bidmachine/internal/h;->f(Ljava/lang/String;)Lio/bidmachine/rendering/model/animation/AnimationTiming;

    move-result-object v7

    invoke-static {v6, v7}, Lio/bidmachine/internal/h;->a(Ljava/util/List;Lio/bidmachine/rendering/model/animation/AnimationTiming;)Ljava/util/List;

    move-result-object v6

    .line 10
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;->getAfterTasksList()Ljava/util/List;

    move-result-object v7

    const-string v9, "afterTasksList"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v1, v5, v1}, Lio/bidmachine/internal/h;->a(Ljava/util/List;Lio/bidmachine/rendering/model/animation/AnimationTiming;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 11
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;->getAnimationTiming()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, p0

    move-object v5, v0

    .line 12
    invoke-direct/range {v2 .. v8}, Lio/bidmachine/rendering/model/EventTaskBucketParams;-><init>(Lio/bidmachine/rendering/model/ExecutionMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-object v2
.end method

.method public static final a(Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;Lio/bidmachine/rendering/model/animation/AnimationTiming;)Lio/bidmachine/rendering/model/animation/AnimationParams;
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v0, Lio/bidmachine/rendering/model/animation/AnimationParams;

    const/4 v1, 0x0

    if-nez p1, :cond_b

    return-object v1

    .line 15
    :cond_b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;->getAnimationEffect()Ljava/lang/String;

    move-result-object p0

    const-string v2, "animationEffect"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lio/bidmachine/internal/h;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1b

    return-object v1

    .line 16
    :cond_1b
    invoke-direct {v0, p1, p0}, Lio/bidmachine/rendering/model/animation/AnimationParams;-><init>(Lio/bidmachine/rendering/model/animation/AnimationTiming;Ljava/util/List;)V

    return-object v0
.end method

.method public static final a(Ljava/lang/String;)Lio/bidmachine/rendering/model/animation/easing/AnimationEasing;
    .registers 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string p0, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    .line 272
    const-string v2, "("

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1f

    move-object p0, v1

    goto :goto_31

    :cond_1f
    const/4 v0, 0x0

    .line 276
    invoke-virtual {v1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 278
    :goto_31
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v2, -0x75215c9c

    if-eq v0, v2, :cond_77

    const v2, -0x41b970db

    if-eq v0, v2, :cond_68

    const v2, -0x2f0a1f11

    if-eq v0, v2, :cond_59

    const v2, -0x15938a9b

    if-eq v0, v2, :cond_4a

    goto :goto_7f

    :cond_4a
    const-string v0, "ease-in-out"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    goto :goto_7f

    .line 292
    :cond_53
    new-instance p0, Lio/bidmachine/rendering/model/animation/easing/EaseInOutAnimationEasing;

    invoke-direct {p0}, Lio/bidmachine/rendering/model/animation/easing/EaseInOutAnimationEasing;-><init>()V

    return-object p0

    .line 293
    :cond_59
    const-string v0, "ease-out"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    goto :goto_7f

    .line 303
    :cond_62
    new-instance p0, Lio/bidmachine/rendering/model/animation/easing/EaseOutAnimationEasing;

    invoke-direct {p0}, Lio/bidmachine/rendering/model/animation/easing/EaseOutAnimationEasing;-><init>()V

    return-object p0

    .line 304
    :cond_68
    const-string v0, "linear"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    goto :goto_7f

    .line 306
    :cond_71
    new-instance p0, Lio/bidmachine/rendering/model/animation/easing/LinearAnimationEasing;

    invoke-direct {p0}, Lio/bidmachine/rendering/model/animation/easing/LinearAnimationEasing;-><init>()V

    return-object p0

    .line 307
    :cond_77
    const-string v0, "ease-in"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_89

    .line 325
    :goto_7f
    new-instance v0, Lio/bidmachine/internal/h$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, v1}, Lio/bidmachine/internal/h$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lio/bidmachine/core/Logger;->e(Lio/bidmachine/utils/lazy/LazyValue;)V

    const/4 p0, 0x0

    return-object p0

    .line 326
    :cond_89
    new-instance p0, Lio/bidmachine/rendering/model/animation/easing/EaseInAnimationEasing;

    invoke-direct {p0}, Lio/bidmachine/rendering/model/animation/easing/EaseInAnimationEasing;-><init>()V

    return-object p0
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "$name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$thisLowercase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported animation easing - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Ljava/util/List;)Ljava/util/List;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 749
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 750
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 751
    check-cast v1, Lio/bidmachine/rendering/model/EventTaskBucketParams;

    .line 752
    invoke-static {v1}, Lio/bidmachine/internal/h;->a(Lio/bidmachine/rendering/model/EventTaskBucketParams;)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;

    move-result-object v1

    .line 1162
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_28
    return-object v0
.end method

.method public static final a(Ljava/util/List;Lio/bidmachine/rendering/model/animation/AnimationTiming;)Ljava/util/List;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 337
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 338
    check-cast v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;

    .line 339
    invoke-static {v1, p1}, Lio/bidmachine/internal/h;->b(Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;Lio/bidmachine/rendering/model/animation/AnimationTiming;)Lio/bidmachine/rendering/model/EventTaskParams;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 748
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_24
    return-object v0
.end method

.method public static synthetic a(Ljava/util/List;Lio/bidmachine/rendering/model/animation/AnimationTiming;ILjava/lang/Object;)Ljava/util/List;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 1
    :cond_5
    invoke-static {p0, p1}, Lio/bidmachine/internal/h;->a(Ljava/util/List;Lio/bidmachine/rendering/model/animation/AnimationTiming;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;Lio/bidmachine/rendering/model/animation/AnimationTiming;)Lio/bidmachine/rendering/model/EventTaskParams;
    .registers 12

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p0, v0, :cond_d

    return-object v1

    .line 4
    :cond_d
    new-instance v2, Lio/bidmachine/rendering/model/EventTaskParams;

    .line 5
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;->getName()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParamsKt;->toEventTaskType(Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;)Lio/bidmachine/rendering/model/EventTaskType;

    move-result-object v3

    if-nez v3, :cond_1a

    return-object v1

    .line 6
    :cond_1a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;->getTarget()Ljava/lang/String;

    move-result-object v4

    const-string v0, "target"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-static {p0, p1}, Lio/bidmachine/internal/h;->a(Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;Lio/bidmachine/rendering/model/animation/AnimationTiming;)Lio/bidmachine/rendering/model/animation/AnimationParams;

    move-result-object v6

    const/16 v8, 0x10

    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 9
    invoke-direct/range {v2 .. v9}, Lio/bidmachine/rendering/model/EventTaskParams;-><init>(Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;Ljava/lang/Object;Lio/bidmachine/rendering/model/animation/AnimationParams;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2
.end method

.method public static final b(Ljava/lang/String;)Lio/bidmachine/rendering/model/animation/effect/AnimationEffect;
    .registers 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string p0, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    const-string p0, ":"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 12
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2e

    .line 13
    new-instance p0, Lio/bidmachine/internal/h$$ExternalSyntheticLambda1;

    invoke-direct {p0, v1}, Lio/bidmachine/internal/h$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lio/bidmachine/core/Logger;->e(Lio/bidmachine/utils/lazy/LazyValue;)V

    return-object v2

    :cond_2e
    const/4 v0, 0x0

    .line 18
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x422504d6

    if-eq v3, v4, :cond_a7

    const v4, 0x2fd67c

    if-eq v3, v4, :cond_98

    const v4, 0x6873db1

    if-eq v3, v4, :cond_49

    goto :goto_af

    :cond_49
    const-string v3, "slide"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_52

    goto :goto_af

    .line 24
    :cond_52
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_62

    .line 25
    new-instance p0, Lio/bidmachine/internal/h$$ExternalSyntheticLambda2;

    invoke-direct {p0, v0, v1}, Lio/bidmachine/internal/h$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lio/bidmachine/core/Logger;->e(Lio/bidmachine/utils/lazy/LazyValue;)V

    return-object v2

    :cond_62
    const/4 v0, 0x1

    .line 30
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 31
    sget-object v3, Lio/bidmachine/rendering/model/animation/effect/AnimationDirection;->Companion:Lio/bidmachine/rendering/model/animation/effect/AnimationDirection$Companion;

    invoke-virtual {v3, v0}, Lio/bidmachine/rendering/model/animation/effect/AnimationDirection$Companion;->get(Ljava/lang/String;)Lio/bidmachine/rendering/model/animation/effect/AnimationDirection;

    move-result-object v3

    if-nez v3, :cond_7a

    .line 33
    new-instance p0, Lio/bidmachine/internal/h$$ExternalSyntheticLambda3;

    invoke-direct {p0, v0, v1}, Lio/bidmachine/internal/h$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lio/bidmachine/core/Logger;->e(Lio/bidmachine/utils/lazy/LazyValue;)V

    return-object v2

    :cond_7a
    const/4 v0, 0x2

    .line 38
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 39
    sget-object v0, Lio/bidmachine/rendering/model/animation/effect/AnimationBase;->Companion:Lio/bidmachine/rendering/model/animation/effect/AnimationBase$Companion;

    invoke-virtual {v0, p0}, Lio/bidmachine/rendering/model/animation/effect/AnimationBase$Companion;->get(Ljava/lang/String;)Lio/bidmachine/rendering/model/animation/effect/AnimationBase;

    move-result-object v0

    if-nez v0, :cond_92

    .line 41
    new-instance v0, Lio/bidmachine/internal/h$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, v1}, Lio/bidmachine/internal/h$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lio/bidmachine/core/Logger;->e(Lio/bidmachine/utils/lazy/LazyValue;)V

    return-object v2

    .line 46
    :cond_92
    new-instance p0, Lio/bidmachine/rendering/model/animation/effect/SlideAnimationEffect;

    invoke-direct {p0, v3, v0}, Lio/bidmachine/rendering/model/animation/effect/SlideAnimationEffect;-><init>(Lio/bidmachine/rendering/model/animation/effect/AnimationDirection;Lio/bidmachine/rendering/model/animation/effect/AnimationBase;)V

    return-object p0

    .line 47
    :cond_98
    const-string p0, "fade"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a1

    goto :goto_af

    .line 49
    :cond_a1
    new-instance p0, Lio/bidmachine/rendering/model/animation/effect/FadeAnimationEffect;

    invoke-direct {p0}, Lio/bidmachine/rendering/model/animation/effect/FadeAnimationEffect;-><init>()V

    return-object p0

    .line 50
    :cond_a7
    const-string p0, "layout"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b8

    .line 89
    :goto_af
    new-instance p0, Lio/bidmachine/internal/h$$ExternalSyntheticLambda5;

    invoke-direct {p0, v0}, Lio/bidmachine/internal/h$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lio/bidmachine/core/Logger;->e(Lio/bidmachine/utils/lazy/LazyValue;)V

    return-object v2

    .line 90
    :cond_b8
    new-instance p0, Lio/bidmachine/rendering/model/animation/effect/LayoutAnimationEffect;

    invoke-direct {p0}, Lio/bidmachine/rendering/model/animation/effect/LayoutAnimationEffect;-><init>()V

    return-object p0
.end method

.method public static final b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "$name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$thisLowercase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not enough parameters - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Ljava/util/List;)Ljava/util/List;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 102
    check-cast v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;

    .line 103
    invoke-static {v1}, Lio/bidmachine/internal/h;->a(Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;)Lio/bidmachine/rendering/model/EventTaskBucketParams;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 505
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_24
    return-object v0
.end method

.method public static final c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "$name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported animation effect - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "$animationDirectionName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$thisLowercase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported animation direction - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Ljava/util/List;)Ljava/util/List;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Lio/bidmachine/rendering/model/EventTaskParams;

    .line 6
    invoke-static {v1}, Lio/bidmachine/internal/h;->a(Lio/bidmachine/rendering/model/EventTaskParams;)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;

    move-result-object v1

    .line 414
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_28
    return-object v0
.end method

.method public static final d(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "$thisLowercase"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not found animation effect name - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "$animationBaseName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$thisLowercase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported animation base - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Ljava/lang/String;)Ljava/util/List;
    .registers 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string p0, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    const-string p0, "+"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_27
    :goto_27
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 106
    check-cast v1, Ljava/lang/String;

    .line 107
    invoke-static {v1}, Lio/bidmachine/internal/h;->b(Ljava/lang/String;)Lio/bidmachine/rendering/model/animation/effect/AnimationEffect;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 208
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 209
    :cond_3d
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_44

    return-object v0

    :cond_44
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final f(Ljava/lang/String;)Lio/bidmachine/rendering/model/animation/AnimationTiming;
    .registers 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return-object v1

    .line 4
    :cond_d
    const-string v0, ":"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    .line 5
    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x1

    if-eqz v0, :cond_47

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_47

    invoke-static {v0, v1, v3, v1}, Lio/bidmachine/util/UtilsKt;->toLongOrDefault$default(Ljava/lang/Object;Ljava/lang/Long;ILjava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_47

    sget-object v4, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v4, v5, v0}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v0

    goto :goto_48

    :cond_47
    move-object v0, v1

    :goto_48
    if-nez v0, :cond_53

    .line 7
    new-instance p0, Lio/bidmachine/internal/h$$ExternalSyntheticLambda0;

    invoke-direct {p0, v2}, Lio/bidmachine/internal/h$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lio/bidmachine/core/Logger;->e(Lio/bidmachine/utils/lazy/LazyValue;)V

    return-object v1

    .line 12
    :cond_53
    new-instance v2, Lio/bidmachine/rendering/model/animation/AnimationTiming;

    .line 13
    invoke-static {p0, v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_6d

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6d

    invoke-static {p0}, Lio/bidmachine/internal/h;->a(Ljava/lang/String;)Lio/bidmachine/rendering/model/animation/easing/AnimationEasing;

    move-result-object p0

    if-nez p0, :cond_72

    .line 14
    :cond_6d
    new-instance p0, Lio/bidmachine/rendering/model/animation/easing/EaseOutAnimationEasing;

    invoke-direct {p0}, Lio/bidmachine/rendering/model/animation/easing/EaseOutAnimationEasing;-><init>()V

    .line 15
    :cond_72
    invoke-virtual {v0}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v3

    .line 16
    invoke-direct {v2, p0, v3, v4, v1}, Lio/bidmachine/rendering/model/animation/AnimationTiming;-><init>(Lio/bidmachine/rendering/model/animation/easing/AnimationEasing;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2
.end method

.method public static final g(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "$this_parseAnimationTiming"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Animation duration don\'t found - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class io.bidmachine.internal.AbstractC4224h.a (io.bidmachine.internal.h$a)
.class public abstract synthetic Lio/bidmachine/internal/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/internal/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static constructor <clinit>()V
    .registers 24

    .line 0
    invoke-static {}, Lio/bidmachine/rendering/model/EventType;->values()[Lio/bidmachine/rendering/model/EventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_8
    sget-object v2, Lio/bidmachine/rendering/model/EventType;->OnImpression:Lio/bidmachine/rendering/model/EventType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_10} :catch_10

    :catch_10
    const/4 v2, 0x2

    :try_start_11
    sget-object v3, Lio/bidmachine/rendering/model/EventType;->OnBillableImpression:Lio/bidmachine/rendering/model/EventType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_19} :catch_19

    :catch_19
    const/4 v3, 0x3

    :try_start_1a
    sget-object v4, Lio/bidmachine/rendering/model/EventType;->OnClick:Lio/bidmachine/rendering/model/EventType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_22} :catch_22

    :catch_22
    const/4 v4, 0x4

    :try_start_23
    sget-object v5, Lio/bidmachine/rendering/model/EventType;->OnMute:Lio/bidmachine/rendering/model/EventType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v4, v0, v5
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_2b} :catch_2b

    :catch_2b
    const/4 v5, 0x5

    :try_start_2c
    sget-object v6, Lio/bidmachine/rendering/model/EventType;->OnUnMute:Lio/bidmachine/rendering/model/EventType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v5, v0, v6
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_34} :catch_34

    :catch_34
    const/4 v6, 0x6

    :try_start_35
    sget-object v7, Lio/bidmachine/rendering/model/EventType;->OnPause:Lio/bidmachine/rendering/model/EventType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v6, v0, v7
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_3d} :catch_3d

    :catch_3d
    const/4 v7, 0x7

    :try_start_3e
    sget-object v8, Lio/bidmachine/rendering/model/EventType;->OnResume:Lio/bidmachine/rendering/model/EventType;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v7, v0, v8
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_46} :catch_46

    :catch_46
    const/16 v8, 0x8

    :try_start_48
    sget-object v9, Lio/bidmachine/rendering/model/EventType;->OnSkip:Lio/bidmachine/rendering/model/EventType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v8, v0, v9
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_50} :catch_50

    :catch_50
    const/16 v9, 0x9

    :try_start_52
    sget-object v10, Lio/bidmachine/rendering/model/EventType;->OnClose:Lio/bidmachine/rendering/model/EventType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v9, v0, v10
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_5a} :catch_5a

    :catch_5a
    const/16 v10, 0xa

    :try_start_5c
    sget-object v11, Lio/bidmachine/rendering/model/EventType;->OnStart:Lio/bidmachine/rendering/model/EventType;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aput v10, v0, v11
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5c .. :try_end_64} :catch_64

    :catch_64
    const/16 v11, 0xb

    :try_start_66
    sget-object v12, Lio/bidmachine/rendering/model/EventType;->OnFirstQuartile:Lio/bidmachine/rendering/model/EventType;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v11, v0, v12
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_66 .. :try_end_6e} :catch_6e

    :catch_6e
    const/16 v12, 0xc

    :try_start_70
    sget-object v13, Lio/bidmachine/rendering/model/EventType;->OnMidpoint:Lio/bidmachine/rendering/model/EventType;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aput v12, v0, v13
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_70 .. :try_end_78} :catch_78

    :catch_78
    const/16 v13, 0xd

    :try_start_7a
    sget-object v14, Lio/bidmachine/rendering/model/EventType;->OnThirdQuartile:Lio/bidmachine/rendering/model/EventType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aput v13, v0, v14
    :try_end_82
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_82} :catch_82

    :catch_82
    const/16 v14, 0xe

    :try_start_84
    sget-object v15, Lio/bidmachine/rendering/model/EventType;->OnComplete:Lio/bidmachine/rendering/model/EventType;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aput v14, v0, v15
    :try_end_8c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_8c} :catch_8c

    :catch_8c
    const/16 v15, 0xf

    :try_start_8e
    sget-object v16, Lio/bidmachine/rendering/model/EventType;->OnProgress:Lio/bidmachine/rendering/model/EventType;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aput v15, v0, v16
    :try_end_96
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8e .. :try_end_96} :catch_96

    :catch_96
    const/16 v16, 0x10

    :try_start_98
    sget-object v17, Lio/bidmachine/rendering/model/EventType;->OnUseCustomClose:Lio/bidmachine/rendering/model/EventType;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->ordinal()I

    move-result v17

    aput v16, v0, v17
    :try_end_a0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_98 .. :try_end_a0} :catch_a0

    :catch_a0
    const/16 v17, 0x11

    :try_start_a2
    sget-object v18, Lio/bidmachine/rendering/model/EventType;->OnScheduled:Lio/bidmachine/rendering/model/EventType;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->ordinal()I

    move-result v18

    aput v17, v0, v18
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a2 .. :try_end_aa} :catch_aa

    :catch_aa
    const/16 v18, 0x12

    :try_start_ac
    sget-object v19, Lio/bidmachine/rendering/model/EventType;->OnNavigate:Lio/bidmachine/rendering/model/EventType;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Enum;->ordinal()I

    move-result v19

    aput v18, v0, v19
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ac .. :try_end_b4} :catch_b4

    :catch_b4
    const/16 v19, 0x13

    :try_start_b6
    sget-object v20, Lio/bidmachine/rendering/model/EventType;->OnExpand:Lio/bidmachine/rendering/model/EventType;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Enum;->ordinal()I

    move-result v20

    aput v19, v0, v20
    :try_end_be
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b6 .. :try_end_be} :catch_be

    :catch_be
    const/16 v20, 0x14

    :try_start_c0
    sget-object v21, Lio/bidmachine/rendering/model/EventType;->OnCollapse:Lio/bidmachine/rendering/model/EventType;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Enum;->ordinal()I

    move-result v21

    aput v20, v0, v21
    :try_end_c8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c0 .. :try_end_c8} :catch_c8

    :catch_c8
    const/16 v21, 0x15

    :try_start_ca
    sget-object v22, Lio/bidmachine/rendering/model/EventType;->OnClickResolved:Lio/bidmachine/rendering/model/EventType;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Enum;->ordinal()I

    move-result v22

    aput v21, v0, v22
    :try_end_d2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ca .. :try_end_d2} :catch_d2

    :catch_d2
    const/16 v22, 0x16

    :try_start_d4
    sget-object v23, Lio/bidmachine/rendering/model/EventType;->OnLayoutChanged:Lio/bidmachine/rendering/model/EventType;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    aput v22, v0, v23
    :try_end_dc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d4 .. :try_end_dc} :catch_dc

    :catch_dc
    sput-object v0, Lio/bidmachine/internal/h$a;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lio/bidmachine/rendering/model/EventTaskType;->values()[Lio/bidmachine/rendering/model/EventTaskType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e5
    sget-object v23, Lio/bidmachine/rendering/model/EventTaskType;->Track:Lio/bidmachine/rendering/model/EventTaskType;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    aput v1, v0, v23
    :try_end_ed
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e5 .. :try_end_ed} :catch_ed

    :catch_ed
    :try_start_ed
    sget-object v1, Lio/bidmachine/rendering/model/EventTaskType;->Open:Lio/bidmachine/rendering/model/EventTaskType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_f5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ed .. :try_end_f5} :catch_f5

    :catch_f5
    :try_start_f5
    sget-object v1, Lio/bidmachine/rendering/model/EventTaskType;->NotifyOpen:Lio/bidmachine/rendering/model/EventTaskType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_fd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f5 .. :try_end_fd} :catch_fd

    :catch_fd
    :try_start_fd
    sget-object v1, Lio/bidmachine/rendering/model/EventTaskType;->Skip:Lio/bidmachine/rendering/model/EventTaskType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_105
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fd .. :try_end_105} :catch_105

    :catch_105
    :try_start_105
    sget-object v1, Lio/bidmachine/rendering/model/EventTaskType;->Close:Lio/bidmachine/rendering/model/EventTaskType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_10d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_105 .. :try_end_10d} :catch_10d

    :catch_10d
    :try_start_10d
    sget-object v1, Lio/bidmachine/rendering/model/EventTaskType;->Mute:Lio/bidmachine/rendering/model/EventTaskType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_115
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10d .. :try_end_115} :catch_115

    :catch_115
    :try_start_115
    sget-object v1, Lio/bidmachine/rendering/model/EventTaskType;->UnMute:Lio/bidmachine/rendering/model/EventTaskType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_11d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_115 .. :try_end_11d} :catch_11d

    :catch_11d
    :try_start_11d
    sget-object v1, Lio/bidmachine/rendering/model/EventTaskType;->Repeat:Lio/bidmachine/rendering/model/EventTaskType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v8, v0, v1
    :try_end_125
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11d .. :try_end_125} :catch_125

    :catch_125
    :try_start_125
    sget-object v1, Lio/bidmachine/rendering/model/EventTaskType;->Show:Lio/bidmachine/rendering/model/EventTaskType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v9, v0, v1
    :try_end_12d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_125 .. :try_end_12d} :catch_12d

    :catch_12d
    :try_start_12d
    sget-object v1, Lio/bidmachine/rendering/model/EventTaskType;->Hide:Lio/bidmachine/rendering/model/EventTaskType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v10, v0, v1
    :try_end_135
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12d .. :try_end_135} :catch_135

    :catch_135
    :try_start_135
    sget-object v1, Lio/bidmachine/rendering/model/EventTaskType;->Progress:Lio/bidmachine/rendering/model/EventTaskType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v11, v0, v1
    :try_end_13d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_135 .. :try_end_13d} :catch_13d

    :catch_13d
    :try_start_13d
    sget-object v1, Lio/bidmachine/rendering/model/EventTaskType;->Schedule:Lio/bidmachine/rendering/model/EventTaskType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v12, v0, v1
    :try_end_145
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13d .. :try_end_145} :catch_145

    :catch_145
    :try_start_145
    sget-object v1, Lio/bidmachine/rendering/model/EventTaskType;->Start:Lio/bidmachine/rendering/model/EventTaskType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v13, v0, v1
    :try_end_14d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_145 .. :try_end_14d} :catch_14d

    :catch_14d
    :try_start_14d
    sget-object v1, Lio/bidmachine/rendering/model/EventTaskType;->LockVisibility:Lio/bidmachine/rendering/model/EventTaskType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v14, v0, v1
    :try_end_155
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14d .. :try_end_155} :catch_155

    :catch_155
    :try_start_155
    sget-object v1, Lio/bidmachine/rendering/model/EventTaskType;->UnlockVisibility:Lio/bidmachine/rendering/model/EventTaskType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v15, v0, v1
    :try_end_15d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_155 .. :try_end_15d} :catch_15d

    :catch_15d
    :try_start_15d
    sget-object v1, Lio/bidmachine/rendering/model/EventTaskType;->SimulateClick:Lio/bidmachine/rendering/model/EventTaskType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v16, v0, v1
    :try_end_165
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15d .. :try_end_165} :catch_165

    :catch_165
    :try_start_165
    sget-object v1, Lio/bidmachine/rendering/model/EventTaskType;->OpenPrivacySheet:Lio/bidmachine/rendering/model/EventTaskType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v17, v0, v1
    :try_end_16d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_165 .. :try_end_16d} :catch_16d

    :catch_16d
    :try_start_16d
    sget-object v1, Lio/bidmachine/rendering/model/EventTaskType;->ToggleStateGroups:Lio/bidmachine/rendering/model/EventTaskType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v18, v0, v1
    :try_end_175
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16d .. :try_end_175} :catch_175

    :catch_175
    :try_start_175
    sget-object v1, Lio/bidmachine/rendering/model/EventTaskType;->Expand:Lio/bidmachine/rendering/model/EventTaskType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v19, v0, v1
    :try_end_17d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_175 .. :try_end_17d} :catch_17d

    :catch_17d
    :try_start_17d
    sget-object v1, Lio/bidmachine/rendering/model/EventTaskType;->Collapse:Lio/bidmachine/rendering/model/EventTaskType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v20, v0, v1
    :try_end_185
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17d .. :try_end_185} :catch_185

    :catch_185
    :try_start_185
    sget-object v1, Lio/bidmachine/rendering/model/EventTaskType;->RequestPermission:Lio/bidmachine/rendering/model/EventTaskType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v21, v0, v1
    :try_end_18d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_185 .. :try_end_18d} :catch_18d

    :catch_18d
    :try_start_18d
    sget-object v1, Lio/bidmachine/rendering/model/EventTaskType;->ReportClick:Lio/bidmachine/rendering/model/EventTaskType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v22, v0, v1
    :try_end_195
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18d .. :try_end_195} :catch_195

    :catch_195
    :try_start_195
    sget-object v1, Lio/bidmachine/rendering/model/EventTaskType;->Play:Lio/bidmachine/rendering/model/EventTaskType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_19f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_195 .. :try_end_19f} :catch_19f

    :catch_19f
    :try_start_19f
    sget-object v1, Lio/bidmachine/rendering/model/EventTaskType;->Pause:Lio/bidmachine/rendering/model/EventTaskType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_1a9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19f .. :try_end_1a9} :catch_1a9

    :catch_1a9
    :try_start_1a9
    sget-object v1, Lio/bidmachine/rendering/model/EventTaskType;->ChangeLayout:Lio/bidmachine/rendering/model/EventTaskType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_1b3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a9 .. :try_end_1b3} :catch_1b3

    :catch_1b3
    :try_start_1b3
    sget-object v1, Lio/bidmachine/rendering/model/EventTaskType;->ChangeActivity:Lio/bidmachine/rendering/model/EventTaskType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_1bd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b3 .. :try_end_1bd} :catch_1bd

    :catch_1bd
    sput-object v0, Lio/bidmachine/internal/h$a;->$EnumSwitchMapping$1:[I

    return-void
.end method

###### Class io.bidmachine.internal.h$$ExternalSyntheticLambda0 (io.bidmachine.internal.h$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/internal/h$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/internal/h$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/internal/h$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    invoke-static {v0}, Lio/bidmachine/internal/h;->$r8$lambda$XLcw8Xv5Ov7158gjG5xdacQpENY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.internal.h$$ExternalSyntheticLambda1 (io.bidmachine.internal.h$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/internal/h$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/internal/h$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/internal/h$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    invoke-static {v0}, Lio/bidmachine/internal/h;->$r8$lambda$3dX5H8O-8xnnNpeG-t2XrLgpNyI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.internal.h$$ExternalSyntheticLambda2 (io.bidmachine.internal.h$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/internal/h$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/internal/h$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lio/bidmachine/internal/h$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/internal/h$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lio/bidmachine/internal/h$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/bidmachine/internal/h;->$r8$lambda$uhXAyjVgzMwyzN2aSXyINwe__AY(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.internal.h$$ExternalSyntheticLambda3 (io.bidmachine.internal.h$$ExternalSyntheticLambda3)
.class public final synthetic Lio/bidmachine/internal/h$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/internal/h$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lio/bidmachine/internal/h$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/internal/h$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lio/bidmachine/internal/h$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/bidmachine/internal/h;->$r8$lambda$U4z6Ir0aSIM1WBlZEIkv0ZOTQhQ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.internal.h$$ExternalSyntheticLambda4 (io.bidmachine.internal.h$$ExternalSyntheticLambda4)
.class public final synthetic Lio/bidmachine/internal/h$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/internal/h$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lio/bidmachine/internal/h$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/internal/h$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lio/bidmachine/internal/h$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/bidmachine/internal/h;->$r8$lambda$5IKJpazA_OEE1t6p48Q35aHL6Ck(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.internal.h$$ExternalSyntheticLambda5 (io.bidmachine.internal.h$$ExternalSyntheticLambda5)
.class public final synthetic Lio/bidmachine/internal/h$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/internal/h$$ExternalSyntheticLambda5;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/internal/h$$ExternalSyntheticLambda5;->f$0:Ljava/lang/String;

    invoke-static {v0}, Lio/bidmachine/internal/h;->$r8$lambda$sgw9AfBBbdgntsAvySalfEDVkmU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.internal.h$$ExternalSyntheticLambda6 (io.bidmachine.internal.h$$ExternalSyntheticLambda6)
.class public final synthetic Lio/bidmachine/internal/h$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/internal/h$$ExternalSyntheticLambda6;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lio/bidmachine/internal/h$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/internal/h$$ExternalSyntheticLambda6;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lio/bidmachine/internal/h$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/bidmachine/internal/h;->$r8$lambda$XQYVP17SdOO3Nz-CvZquqnrM8Ik(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
