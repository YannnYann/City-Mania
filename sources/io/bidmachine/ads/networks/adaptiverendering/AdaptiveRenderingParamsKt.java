package io.bidmachine.ads.networks.adaptiverendering;

import io.bidmachine.core.Logger;
import io.bidmachine.protobuf.rendering.Rendering;
import io.bidmachine.rendering.model.AdElementType;
import io.bidmachine.rendering.model.CacheType;
import io.bidmachine.rendering.model.EventTaskType;
import io.bidmachine.rendering.model.EventType;
import io.bidmachine.rendering.model.Orientation;
import io.bidmachine.rendering.model.ScaleType;
import io.bidmachine.rendering.model.SideType;
import io.bidmachine.utils.lazy.LazyValue;

/* JADX INFO: loaded from: classes4.dex */
public final class AdaptiveRenderingParamsKt {

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;
        public static final /* synthetic */ int[] $EnumSwitchMapping$2;
        public static final /* synthetic */ int[] $EnumSwitchMapping$3;
        public static final /* synthetic */ int[] $EnumSwitchMapping$4;
        public static final /* synthetic */ int[] $EnumSwitchMapping$5;
        public static final /* synthetic */ int[] $EnumSwitchMapping$6;

        static {
            int[] iArr = new int[Rendering.Orientation.values().length];
            try {
                iArr[Rendering.Orientation.ORIENTATION_PORTRAIT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Rendering.Orientation.ORIENTATION_LANDSCAPE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Rendering.Orientation.ORIENTATION_SYSTEM.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Rendering.Orientation.ORIENTATION_INVALID.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[Rendering.Orientation.UNRECOGNIZED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[Rendering.CacheType.values().length];
            try {
                iArr2[Rendering.CacheType.CACHE_TYPE_FULL_LOAD.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[Rendering.CacheType.CACHE_TYPE_PARTIAL_LOAD.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[Rendering.CacheType.CACHE_TYPE_STREAM_LOAD.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr2[Rendering.CacheType.CACHE_TYPE_INVALID.ordinal()] = 4;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr2[Rendering.CacheType.UNRECOGNIZED.ordinal()] = 5;
            } catch (NoSuchFieldError unused10) {
            }
            $EnumSwitchMapping$1 = iArr2;
            int[] iArr3 = new int[Rendering.Phase.ViewComponent.ViewComponentType.values().length];
            try {
                iArr3[Rendering.Phase.ViewComponent.ViewComponentType.VIEW_COMPONENT_TYPE_MRAID.ordinal()] = 1;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr3[Rendering.Phase.ViewComponent.ViewComponentType.VIEW_COMPONENT_TYPE_VIDEO.ordinal()] = 2;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr3[Rendering.Phase.ViewComponent.ViewComponentType.VIEW_COMPONENT_TYPE_IMAGE.ordinal()] = 3;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr3[Rendering.Phase.ViewComponent.ViewComponentType.VIEW_COMPONENT_TYPE_LABEL.ordinal()] = 4;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr3[Rendering.Phase.ViewComponent.ViewComponentType.VIEW_COMPONENT_TYPE_COUNTDOWN.ordinal()] = 5;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr3[Rendering.Phase.ViewComponent.ViewComponentType.VIEW_COMPONENT_TYPE_PROGRESS.ordinal()] = 6;
            } catch (NoSuchFieldError unused16) {
            }
            $EnumSwitchMapping$2 = iArr3;
            int[] iArr4 = new int[Rendering.Phase.ViewComponent.Layout.Constraint.Anchor.values().length];
            try {
                iArr4[Rendering.Phase.ViewComponent.Layout.Constraint.Anchor.ANCHOR_LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr4[Rendering.Phase.ViewComponent.Layout.Constraint.Anchor.ANCHOR_RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr4[Rendering.Phase.ViewComponent.Layout.Constraint.Anchor.ANCHOR_TOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr4[Rendering.Phase.ViewComponent.Layout.Constraint.Anchor.ANCHOR_BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr4[Rendering.Phase.ViewComponent.Layout.Constraint.Anchor.ANCHOR_CENTER_X.ordinal()] = 5;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr4[Rendering.Phase.ViewComponent.Layout.Constraint.Anchor.ANCHOR_CENTER_Y.ordinal()] = 6;
            } catch (NoSuchFieldError unused22) {
            }
            $EnumSwitchMapping$3 = iArr4;
            int[] iArr5 = new int[Rendering.Image.ScaleType.values().length];
            try {
                iArr5[Rendering.Image.ScaleType.SCALE_TYPE_NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                iArr5[Rendering.Image.ScaleType.SCALE_TYPE_TO_FILL.ordinal()] = 2;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                iArr5[Rendering.Image.ScaleType.SCALE_TYPE_ASPECT_FILL.ordinal()] = 3;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                iArr5[Rendering.Image.ScaleType.SCALE_TYPE_ASPECT_FIT.ordinal()] = 4;
            } catch (NoSuchFieldError unused26) {
            }
            $EnumSwitchMapping$4 = iArr5;
            int[] iArr6 = new int[Rendering.Phase.Event.EventName.values().length];
            try {
                iArr6[Rendering.Phase.Event.EventName.EVENT_NAME_ON_IMPRESSION.ordinal()] = 1;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                iArr6[Rendering.Phase.Event.EventName.EVENT_NAME_ON_BILLABLE_IMPRESSION.ordinal()] = 2;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                iArr6[Rendering.Phase.Event.EventName.EVENT_NAME_ON_CLICK.ordinal()] = 3;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                iArr6[Rendering.Phase.Event.EventName.EVENT_NAME_ON_PROGRESS.ordinal()] = 4;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                iArr6[Rendering.Phase.Event.EventName.EVENT_NAME_ON_NAVIGATE.ordinal()] = 5;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                iArr6[Rendering.Phase.Event.EventName.EVENT_NAME_ON_MUTE.ordinal()] = 6;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                iArr6[Rendering.Phase.Event.EventName.EVENT_NAME_ON_UNMUTE.ordinal()] = 7;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                iArr6[Rendering.Phase.Event.EventName.EVENT_NAME_ON_PAUSE.ordinal()] = 8;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                iArr6[Rendering.Phase.Event.EventName.EVENT_NAME_ON_RESUME.ordinal()] = 9;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                iArr6[Rendering.Phase.Event.EventName.EVENT_NAME_ON_SKIP.ordinal()] = 10;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                iArr6[Rendering.Phase.Event.EventName.EVENT_NAME_ON_CLOSE.ordinal()] = 11;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                iArr6[Rendering.Phase.Event.EventName.EVENT_NAME_ON_START.ordinal()] = 12;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                iArr6[Rendering.Phase.Event.EventName.EVENT_NAME_ON_FIRST_QUARTILE.ordinal()] = 13;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                iArr6[Rendering.Phase.Event.EventName.EVENT_NAME_ON_MIDPOINT.ordinal()] = 14;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                iArr6[Rendering.Phase.Event.EventName.EVENT_NAME_ON_THIRD_QUARTILE.ordinal()] = 15;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                iArr6[Rendering.Phase.Event.EventName.EVENT_NAME_ON_COMPLETE.ordinal()] = 16;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                iArr6[Rendering.Phase.Event.EventName.EVENT_NAME_ON_USE_CUSTOM_CLOSE.ordinal()] = 17;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                iArr6[Rendering.Phase.Event.EventName.EVENT_NAME_ON_SCHEDULED.ordinal()] = 18;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                iArr6[Rendering.Phase.Event.EventName.EVENT_NAME_ON_EXPAND.ordinal()] = 19;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                iArr6[Rendering.Phase.Event.EventName.EVENT_NAME_ON_COLLAPSE.ordinal()] = 20;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                iArr6[Rendering.Phase.Event.EventName.EVENT_NAME_ON_CLICK_RESOLVED.ordinal()] = 21;
            } catch (NoSuchFieldError unused47) {
            }
            try {
                iArr6[Rendering.Phase.Event.EventName.EVENT_NAME_ON_LAYOUT_CHANGED.ordinal()] = 22;
            } catch (NoSuchFieldError unused48) {
            }
            $EnumSwitchMapping$5 = iArr6;
            int[] iArr7 = new int[Rendering.Phase.Event.Task.TaskName.values().length];
            try {
                iArr7[Rendering.Phase.Event.Task.TaskName.TASK_NAME_START.ordinal()] = 1;
            } catch (NoSuchFieldError unused49) {
            }
            try {
                iArr7[Rendering.Phase.Event.Task.TaskName.TASK_NAME_MUTE.ordinal()] = 2;
            } catch (NoSuchFieldError unused50) {
            }
            try {
                iArr7[Rendering.Phase.Event.Task.TaskName.TASK_NAME_UNMUTE.ordinal()] = 3;
            } catch (NoSuchFieldError unused51) {
            }
            try {
                iArr7[Rendering.Phase.Event.Task.TaskName.TASK_NAME_TRACK.ordinal()] = 4;
            } catch (NoSuchFieldError unused52) {
            }
            try {
                iArr7[Rendering.Phase.Event.Task.TaskName.TASK_NAME_CLOSE.ordinal()] = 5;
            } catch (NoSuchFieldError unused53) {
            }
            try {
                iArr7[Rendering.Phase.Event.Task.TaskName.TASK_NAME_SKIP.ordinal()] = 6;
            } catch (NoSuchFieldError unused54) {
            }
            try {
                iArr7[Rendering.Phase.Event.Task.TaskName.TASK_NAME_OPEN.ordinal()] = 7;
            } catch (NoSuchFieldError unused55) {
            }
            try {
                iArr7[Rendering.Phase.Event.Task.TaskName.TASK_NAME_SHOW.ordinal()] = 8;
            } catch (NoSuchFieldError unused56) {
            }
            try {
                iArr7[Rendering.Phase.Event.Task.TaskName.TASK_NAME_HIDE.ordinal()] = 9;
            } catch (NoSuchFieldError unused57) {
            }
            try {
                iArr7[Rendering.Phase.Event.Task.TaskName.TASK_NAME_PROGRESS.ordinal()] = 10;
            } catch (NoSuchFieldError unused58) {
            }
            try {
                iArr7[Rendering.Phase.Event.Task.TaskName.TASK_NAME_SCHEDULE.ordinal()] = 11;
            } catch (NoSuchFieldError unused59) {
            }
            try {
                iArr7[Rendering.Phase.Event.Task.TaskName.TASK_NAME_LOCK_VISIBILITY.ordinal()] = 12;
            } catch (NoSuchFieldError unused60) {
            }
            try {
                iArr7[Rendering.Phase.Event.Task.TaskName.TASK_NAME_UNLOCK_VISIBILITY.ordinal()] = 13;
            } catch (NoSuchFieldError unused61) {
            }
            try {
                iArr7[Rendering.Phase.Event.Task.TaskName.TASK_NAME_NOTIFY_OPEN.ordinal()] = 14;
            } catch (NoSuchFieldError unused62) {
            }
            try {
                iArr7[Rendering.Phase.Event.Task.TaskName.TASK_NAME_SIMULATE_CLICK.ordinal()] = 15;
            } catch (NoSuchFieldError unused63) {
            }
            try {
                iArr7[Rendering.Phase.Event.Task.TaskName.TASK_NAME_PRIVACY_SHEET.ordinal()] = 16;
            } catch (NoSuchFieldError unused64) {
            }
            try {
                iArr7[Rendering.Phase.Event.Task.TaskName.TASK_NAME_REPEAT.ordinal()] = 17;
            } catch (NoSuchFieldError unused65) {
            }
            try {
                iArr7[Rendering.Phase.Event.Task.TaskName.TASK_NAME_TOGGLE_STATE_GROUPS.ordinal()] = 18;
            } catch (NoSuchFieldError unused66) {
            }
            try {
                iArr7[Rendering.Phase.Event.Task.TaskName.TASK_NAME_EXPAND.ordinal()] = 19;
            } catch (NoSuchFieldError unused67) {
            }
            try {
                iArr7[Rendering.Phase.Event.Task.TaskName.TASK_NAME_COLLAPSE.ordinal()] = 20;
            } catch (NoSuchFieldError unused68) {
            }
            try {
                iArr7[Rendering.Phase.Event.Task.TaskName.TASK_NAME_REQUEST_PERMISSION.ordinal()] = 21;
            } catch (NoSuchFieldError unused69) {
            }
            try {
                iArr7[Rendering.Phase.Event.Task.TaskName.TASK_NAME_REPORT_CLICK.ordinal()] = 22;
            } catch (NoSuchFieldError unused70) {
            }
            try {
                iArr7[Rendering.Phase.Event.Task.TaskName.TASK_NAME_PLAY.ordinal()] = 23;
            } catch (NoSuchFieldError unused71) {
            }
            try {
                iArr7[Rendering.Phase.Event.Task.TaskName.TASK_NAME_PAUSE.ordinal()] = 24;
            } catch (NoSuchFieldError unused72) {
            }
            try {
                iArr7[Rendering.Phase.Event.Task.TaskName.TASK_NAME_CHANGE_LAYOUT.ordinal()] = 25;
            } catch (NoSuchFieldError unused73) {
            }
            try {
                iArr7[Rendering.Phase.Event.Task.TaskName.TASK_NAME_CHANGE_ACTIVITY.ordinal()] = 26;
            } catch (NoSuchFieldError unused74) {
            }
            $EnumSwitchMapping$6 = iArr7;
        }
    }

    public static final AdElementType toAdElementType(final Rendering.Phase.ViewComponent.ViewComponentType viewComponentType) {
        if (viewComponentType == null) {
            return null;
        }
        switch (WhenMappings.$EnumSwitchMapping$2[viewComponentType.ordinal()]) {
            case 1:
                break;
            case 2:
                break;
            case 3:
                break;
            case 4:
                break;
            case 5:
                break;
            case 6:
                break;
            default:
                Logger.e((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParamsKt$$ExternalSyntheticLambda3
                    @Override // io.bidmachine.utils.lazy.LazyValue
                    public final Object get() {
                        return AdaptiveRenderingParamsKt.toAdElementType$lambda$4(viewComponentType);
                    }
                });
                break;
        }
        return null;
    }

    public static final String toAdElementType$lambda$4(Rendering.Phase.ViewComponent.ViewComponentType viewComponentType) {
        return "Unsupported ViewComponentType - " + viewComponentType.name();
    }

    public static final CacheType toCacheType(final Rendering.CacheType cacheType) {
        if (cacheType == null) {
            return null;
        }
        int i = WhenMappings.$EnumSwitchMapping$1[cacheType.ordinal()];
        if (i == 1) {
            return CacheType.FullLoad;
        }
        if (i == 2) {
            return CacheType.PartialLoad;
        }
        if (i == 3) {
            return CacheType.StreamLoad;
        }
        if (i == 4 || i == 5) {
            Logger.d((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParamsKt$$ExternalSyntheticLambda2
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return AdaptiveRenderingParamsKt.toCacheType$lambda$2(cacheType);
                }
            });
            return null;
        }
        Logger.e((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParamsKt$$ExternalSyntheticLambda1
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return AdaptiveRenderingParamsKt.toCacheType$lambda$3(cacheType);
            }
        });
        return null;
    }

    public static final String toCacheType$lambda$2(Rendering.CacheType cacheType) {
        return "Unsupported CacheType - " + cacheType.name();
    }

    public static final String toCacheType$lambda$3(Rendering.CacheType cacheType) {
        return "Unsupported CacheType - " + cacheType.name();
    }

    public static final EventTaskType toEventTaskType(final Rendering.Phase.Event.Task.TaskName taskName) {
        if (taskName == null) {
            return null;
        }
        switch (WhenMappings.$EnumSwitchMapping$6[taskName.ordinal()]) {
            case 1:
                break;
            case 2:
                break;
            case 3:
                break;
            case 4:
                break;
            case 5:
                break;
            case 6:
                break;
            case 7:
                break;
            case 8:
                break;
            case 9:
                break;
            case 10:
                break;
            case 11:
                break;
            case 12:
                break;
            case 13:
                break;
            case 14:
                break;
            case 15:
                break;
            case 16:
                break;
            case 17:
                break;
            case 18:
                break;
            case 19:
                break;
            case 20:
                break;
            case 21:
                break;
            case 22:
                break;
            case 23:
                break;
            case 24:
                break;
            case 25:
                break;
            case 26:
                break;
            default:
                Logger.e((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParamsKt$$ExternalSyntheticLambda0
                    @Override // io.bidmachine.utils.lazy.LazyValue
                    public final Object get() {
                        return AdaptiveRenderingParamsKt.toEventTaskType$lambda$8(taskName);
                    }
                });
                break;
        }
        return null;
    }

    public static final String toEventTaskType$lambda$8(Rendering.Phase.Event.Task.TaskName taskName) {
        return "Unsupported TaskName - " + taskName.name();
    }

    public static final EventType toEventType(final Rendering.Phase.Event.EventName eventName) {
        if (eventName == null) {
            return null;
        }
        switch (WhenMappings.$EnumSwitchMapping$5[eventName.ordinal()]) {
            case 1:
                break;
            case 2:
                break;
            case 3:
                break;
            case 4:
                break;
            case 5:
                break;
            case 6:
                break;
            case 7:
                break;
            case 8:
                break;
            case 9:
                break;
            case 10:
                break;
            case 11:
                break;
            case 12:
                break;
            case 13:
                break;
            case 14:
                break;
            case 15:
                break;
            case 16:
                break;
            case 17:
                break;
            case 18:
                break;
            case 19:
                break;
            case 20:
                break;
            case 21:
                break;
            case 22:
                break;
            default:
                Logger.e((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParamsKt$$ExternalSyntheticLambda4
                    @Override // io.bidmachine.utils.lazy.LazyValue
                    public final Object get() {
                        return AdaptiveRenderingParamsKt.toEventType$lambda$7(eventName);
                    }
                });
                break;
        }
        return null;
    }

    public static final String toEventType$lambda$7(Rendering.Phase.Event.EventName eventName) {
        return "Unsupported EventName - " + eventName.name();
    }

    public static final Orientation toOrientation(final Rendering.Orientation orientation) {
        if (orientation == null) {
            return null;
        }
        int i = WhenMappings.$EnumSwitchMapping$0[orientation.ordinal()];
        if (i == 1) {
            return Orientation.Portrait;
        }
        if (i == 2) {
            return Orientation.Landscape;
        }
        if (i != 3) {
            if (i != 4 && i != 5) {
                Logger.e((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParamsKt$$ExternalSyntheticLambda5
                    @Override // io.bidmachine.utils.lazy.LazyValue
                    public final Object get() {
                        return AdaptiveRenderingParamsKt.toOrientation$lambda$1(orientation);
                    }
                });
                return null;
            }
            Logger.d((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParamsKt$$ExternalSyntheticLambda6
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return AdaptiveRenderingParamsKt.toOrientation$lambda$0(orientation);
                }
            });
        }
        return null;
    }

    public static final String toOrientation$lambda$0(Rendering.Orientation orientation) {
        return "Unsupported Orientation - " + orientation.name();
    }

    public static final String toOrientation$lambda$1(Rendering.Orientation orientation) {
        return "Unsupported Orientation - " + orientation.name();
    }

    public static final ScaleType toScaleType(final Rendering.Image.ScaleType scaleType) {
        if (scaleType == null) {
            return null;
        }
        int i = WhenMappings.$EnumSwitchMapping$4[scaleType.ordinal()];
        if (i == 1) {
            return ScaleType.None;
        }
        if (i == 2) {
            return ScaleType.ToFill;
        }
        if (i == 3) {
            return ScaleType.AspectFill;
        }
        if (i == 4) {
            return ScaleType.AspectFit;
        }
        Logger.e((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParamsKt$$ExternalSyntheticLambda7
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return AdaptiveRenderingParamsKt.toScaleType$lambda$6(scaleType);
            }
        });
        return null;
    }

    public static final String toScaleType$lambda$6(Rendering.Image.ScaleType scaleType) {
        return "Unsupported ScaleType - " + scaleType.name();
    }

    public static final SideType toSideType(final Rendering.Phase.ViewComponent.Layout.Constraint.Anchor anchor) {
        if (anchor == null) {
            return null;
        }
        switch (WhenMappings.$EnumSwitchMapping$3[anchor.ordinal()]) {
            case 1:
                break;
            case 2:
                break;
            case 3:
                break;
            case 4:
                break;
            case 5:
                break;
            case 6:
                break;
            default:
                Logger.e((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParamsKt$$ExternalSyntheticLambda8
                    @Override // io.bidmachine.utils.lazy.LazyValue
                    public final Object get() {
                        return AdaptiveRenderingParamsKt.toSideType$lambda$5(anchor);
                    }
                });
                break;
        }
        return null;
    }

    public static final String toSideType$lambda$5(Rendering.Phase.ViewComponent.Layout.Constraint.Anchor anchor) {
        return "Unsupported Anchor for SideType - " + anchor.name();
    }
}
