package io.bidmachine.internal;

import com.explorestack.protobuf.ProtocolStringList;
import io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParamsKt;
import io.bidmachine.core.Logger;
import io.bidmachine.protobuf.rendering.Rendering;
import io.bidmachine.rendering.model.EventTaskBucketParams;
import io.bidmachine.rendering.model.EventTaskParams;
import io.bidmachine.rendering.model.EventTaskType;
import io.bidmachine.rendering.model.EventType;
import io.bidmachine.rendering.model.ExecutionMode;
import io.bidmachine.rendering.model.animation.AnimationParams;
import io.bidmachine.rendering.model.animation.AnimationTiming;
import io.bidmachine.rendering.model.animation.easing.AnimationEasing;
import io.bidmachine.rendering.model.animation.easing.EaseInAnimationEasing;
import io.bidmachine.rendering.model.animation.easing.EaseInOutAnimationEasing;
import io.bidmachine.rendering.model.animation.easing.EaseOutAnimationEasing;
import io.bidmachine.rendering.model.animation.easing.LinearAnimationEasing;
import io.bidmachine.rendering.model.animation.effect.AnimationBase;
import io.bidmachine.rendering.model.animation.effect.AnimationDirection;
import io.bidmachine.rendering.model.animation.effect.AnimationEffect;
import io.bidmachine.rendering.model.animation.effect.FadeAnimationEffect;
import io.bidmachine.rendering.model.animation.effect.LayoutAnimationEffect;
import io.bidmachine.rendering.model.animation.effect.SlideAnimationEffect;
import io.bidmachine.util.UtilsKt;
import io.bidmachine.utils.lazy.LazyValue;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* JADX INFO: renamed from: io.bidmachine.internal.h, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractC4224h {

    /* JADX INFO: renamed from: io.bidmachine.internal.h$a */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[EventType.values().length];
            try {
                iArr[EventType.OnImpression.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[EventType.OnBillableImpression.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[EventType.OnClick.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[EventType.OnMute.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[EventType.OnUnMute.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[EventType.OnPause.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[EventType.OnResume.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[EventType.OnSkip.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[EventType.OnClose.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[EventType.OnStart.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[EventType.OnFirstQuartile.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[EventType.OnMidpoint.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[EventType.OnThirdQuartile.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[EventType.OnComplete.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[EventType.OnProgress.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[EventType.OnUseCustomClose.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr[EventType.OnScheduled.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr[EventType.OnNavigate.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr[EventType.OnExpand.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr[EventType.OnCollapse.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr[EventType.OnClickResolved.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr[EventType.OnLayoutChanged.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[EventTaskType.values().length];
            try {
                iArr2[EventTaskType.Track.ordinal()] = 1;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                iArr2[EventTaskType.Open.ordinal()] = 2;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                iArr2[EventTaskType.NotifyOpen.ordinal()] = 3;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                iArr2[EventTaskType.Skip.ordinal()] = 4;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                iArr2[EventTaskType.Close.ordinal()] = 5;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                iArr2[EventTaskType.Mute.ordinal()] = 6;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                iArr2[EventTaskType.UnMute.ordinal()] = 7;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                iArr2[EventTaskType.Repeat.ordinal()] = 8;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                iArr2[EventTaskType.Show.ordinal()] = 9;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                iArr2[EventTaskType.Hide.ordinal()] = 10;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                iArr2[EventTaskType.Progress.ordinal()] = 11;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                iArr2[EventTaskType.Schedule.ordinal()] = 12;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                iArr2[EventTaskType.Start.ordinal()] = 13;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                iArr2[EventTaskType.LockVisibility.ordinal()] = 14;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                iArr2[EventTaskType.UnlockVisibility.ordinal()] = 15;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                iArr2[EventTaskType.SimulateClick.ordinal()] = 16;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                iArr2[EventTaskType.OpenPrivacySheet.ordinal()] = 17;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                iArr2[EventTaskType.ToggleStateGroups.ordinal()] = 18;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                iArr2[EventTaskType.Expand.ordinal()] = 19;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                iArr2[EventTaskType.Collapse.ordinal()] = 20;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                iArr2[EventTaskType.RequestPermission.ordinal()] = 21;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                iArr2[EventTaskType.ReportClick.ordinal()] = 22;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                iArr2[EventTaskType.Play.ordinal()] = 23;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                iArr2[EventTaskType.Pause.ordinal()] = 24;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                iArr2[EventTaskType.ChangeLayout.ordinal()] = 25;
            } catch (NoSuchFieldError unused47) {
            }
            try {
                iArr2[EventTaskType.ChangeActivity.ordinal()] = 26;
            } catch (NoSuchFieldError unused48) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public static /* synthetic */ List a(List list, AnimationTiming animationTiming, int i, Object obj) {
        if ((i & 1) != 0) {
            animationTiming = null;
        }
        return a(list, animationTiming);
    }

    public static final EventTaskParams b(Rendering.Phase.Event.Task task, AnimationTiming animationTiming) {
        EventTaskType eventTaskType;
        Intrinsics.checkNotNullParameter(task, "<this>");
        if (task == Rendering.Phase.Event.Task.getDefaultInstance() || (eventTaskType = AdaptiveRenderingParamsKt.toEventTaskType(task.getName())) == null) {
            return null;
        }
        String target = task.getTarget();
        Intrinsics.checkNotNullExpressionValue(target, "target");
        return new EventTaskParams(eventTaskType, target, task.getValue(), a(task, animationTiming), null, 16, null);
    }

    public static final String c(String animationDirectionName, String thisLowercase) {
        Intrinsics.checkNotNullParameter(animationDirectionName, "$animationDirectionName");
        Intrinsics.checkNotNullParameter(thisLowercase, "$thisLowercase");
        return "Unsupported animation direction - " + animationDirectionName + " (" + thisLowercase + ')';
    }

    public static final String d(String thisLowercase) {
        Intrinsics.checkNotNullParameter(thisLowercase, "$thisLowercase");
        return "Not found animation effect name - " + thisLowercase;
    }

    public static final List e(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        String lowerCase = str.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        List listSplit$default = StringsKt__StringsKt.split$default((CharSequence) lowerCase, new String[]{"+"}, false, 0, 6, (Object) null);
        ArrayList arrayList = new ArrayList();
        Iterator it = listSplit$default.iterator();
        while (it.hasNext()) {
            AnimationEffect animationEffectB = b((String) it.next());
            if (animationEffectB != null) {
                arrayList.add(animationEffectB);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return arrayList;
    }

    public static final AnimationTiming f(final String str) {
        Duration durationM2870boximpl;
        AnimationEasing easeOutAnimationEasing;
        String string;
        String string2;
        Long longOrDefault$default;
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (str.length() == 0) {
            return null;
        }
        List listSplit$default = StringsKt__StringsKt.split$default((CharSequence) str, new String[]{":"}, false, 0, 6, (Object) null);
        String str2 = (String) CollectionsKt___CollectionsKt.getOrNull(listSplit$default, 0);
        if (str2 == null || (string2 = StringsKt__StringsKt.trim(str2).toString()) == null || (longOrDefault$default = UtilsKt.toLongOrDefault$default(string2, null, 1, null)) == null) {
            durationM2870boximpl = null;
        } else {
            Duration.Companion companion = Duration.Companion;
            durationM2870boximpl = Duration.m2870boximpl(DurationKt.toDuration(longOrDefault$default.longValue(), DurationUnit.MILLISECONDS));
        }
        if (durationM2870boximpl == null) {
            Logger.e((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.internal.h$$ExternalSyntheticLambda0
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return AbstractC4224h.g(str);
                }
            });
            return null;
        }
        String str3 = (String) CollectionsKt___CollectionsKt.getOrNull(listSplit$default, 1);
        if (str3 == null || (string = StringsKt__StringsKt.trim(str3).toString()) == null || (easeOutAnimationEasing = a(string)) == null) {
            easeOutAnimationEasing = new EaseOutAnimationEasing();
        }
        return new AnimationTiming(easeOutAnimationEasing, durationM2870boximpl.m2906unboximpl(), null);
    }

    public static final String g(String this_parseAnimationTiming) {
        Intrinsics.checkNotNullParameter(this_parseAnimationTiming, "$this_parseAnimationTiming");
        return "Animation duration don't found - " + this_parseAnimationTiming;
    }

    public static final EventTaskBucketParams a(Rendering.Phase.Event.TaskBucket taskBucket) {
        Intrinsics.checkNotNullParameter(taskBucket, "<this>");
        if (taskBucket == Rendering.Phase.Event.TaskBucket.getDefaultInstance()) {
            return null;
        }
        ExecutionMode.Companion companion = ExecutionMode.Companion;
        String mode = taskBucket.getMode();
        Intrinsics.checkNotNullExpressionValue(mode, "mode");
        String lowerCase = mode.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        ExecutionMode executionMode = companion.get(lowerCase);
        if (executionMode == null) {
            executionMode = ExecutionMode.Parallel;
        }
        ExecutionMode executionMode2 = executionMode;
        ProtocolStringList stateGroupsList = taskBucket.getStateGroupsList();
        Intrinsics.checkNotNullExpressionValue(stateGroupsList, "stateGroupsList");
        List list = CollectionsKt___CollectionsKt.toList(stateGroupsList);
        List<Rendering.Phase.Event.Task> beforeTasksList = taskBucket.getBeforeTasksList();
        Intrinsics.checkNotNullExpressionValue(beforeTasksList, "beforeTasksList");
        List listA = a(beforeTasksList, null, 1, null);
        List<Rendering.Phase.Event.Task> tasksList = taskBucket.getTasksList();
        Intrinsics.checkNotNullExpressionValue(tasksList, "tasksList");
        String animationTiming = taskBucket.getAnimationTiming();
        Intrinsics.checkNotNullExpressionValue(animationTiming, "animationTiming");
        List listA2 = a(tasksList, f(animationTiming));
        List<Rendering.Phase.Event.Task> afterTasksList = taskBucket.getAfterTasksList();
        Intrinsics.checkNotNullExpressionValue(afterTasksList, "afterTasksList");
        List listA3 = a(afterTasksList, null, 1, null);
        String animationTiming2 = taskBucket.getAnimationTiming();
        Intrinsics.checkNotNullExpressionValue(animationTiming2, "animationTiming");
        return new EventTaskBucketParams(executionMode2, list, listA, listA2, listA3, animationTiming2);
    }

    public static final String c(String name) {
        Intrinsics.checkNotNullParameter(name, "$name");
        return "Unsupported animation effect - " + name;
    }

    public static final String d(String animationBaseName, String thisLowercase) {
        Intrinsics.checkNotNullParameter(animationBaseName, "$animationBaseName");
        Intrinsics.checkNotNullParameter(thisLowercase, "$thisLowercase");
        return "Unsupported animation base - " + animationBaseName + " (" + thisLowercase + ')';
    }

    public static final List c(List list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(a((EventTaskParams) it.next()));
        }
        return arrayList;
    }

    public static final AnimationEffect b(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        final String lowerCase = str.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        List listSplit$default = StringsKt__StringsKt.split$default((CharSequence) lowerCase, new String[]{":"}, false, 0, 6, (Object) null);
        if (listSplit$default.isEmpty()) {
            Logger.e((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.internal.h$$ExternalSyntheticLambda1
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return AbstractC4224h.d(lowerCase);
                }
            });
            return null;
        }
        final String str2 = (String) listSplit$default.get(0);
        int iHashCode = str2.hashCode();
        if (iHashCode != -1109722326) {
            if (iHashCode != 3135100) {
                if (iHashCode == 109526449 && str2.equals("slide")) {
                    if (listSplit$default.size() < 3) {
                        Logger.e((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.internal.h$$ExternalSyntheticLambda2
                            @Override // io.bidmachine.utils.lazy.LazyValue
                            public final Object get() {
                                return AbstractC4224h.b(str2, lowerCase);
                            }
                        });
                        return null;
                    }
                    final String str3 = (String) listSplit$default.get(1);
                    AnimationDirection animationDirection = AnimationDirection.Companion.get(str3);
                    if (animationDirection == null) {
                        Logger.e((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.internal.h$$ExternalSyntheticLambda3
                            @Override // io.bidmachine.utils.lazy.LazyValue
                            public final Object get() {
                                return AbstractC4224h.c(str3, lowerCase);
                            }
                        });
                        return null;
                    }
                    final String str4 = (String) listSplit$default.get(2);
                    AnimationBase animationBase = AnimationBase.Companion.get(str4);
                    if (animationBase == null) {
                        Logger.e((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.internal.h$$ExternalSyntheticLambda4
                            @Override // io.bidmachine.utils.lazy.LazyValue
                            public final Object get() {
                                return AbstractC4224h.d(str4, lowerCase);
                            }
                        });
                        return null;
                    }
                    return new SlideAnimationEffect(animationDirection, animationBase);
                }
            } else if (str2.equals("fade")) {
                return new FadeAnimationEffect();
            }
        } else if (str2.equals("layout")) {
            return new LayoutAnimationEffect();
        }
        Logger.e((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.internal.h$$ExternalSyntheticLambda5
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return AbstractC4224h.c(str2);
            }
        });
        return null;
    }

    public static final AnimationParams a(Rendering.Phase.Event.Task task, AnimationTiming animationTiming) {
        Intrinsics.checkNotNullParameter(task, "<this>");
        if (animationTiming == null) {
            return null;
        }
        String animationEffect = task.getAnimationEffect();
        Intrinsics.checkNotNullExpressionValue(animationEffect, "animationEffect");
        List listE = e(animationEffect);
        if (listE == null) {
            return null;
        }
        return new AnimationParams(animationTiming, listE);
    }

    public static final Rendering.Phase.Event.TaskBucket a(EventTaskBucketParams eventTaskBucketParams) {
        Intrinsics.checkNotNullParameter(eventTaskBucketParams, "<this>");
        Rendering.Phase.Event.TaskBucket taskBucketBuild = Rendering.Phase.Event.TaskBucket.newBuilder().setMode(eventTaskBucketParams.getExecutionMode().name()).setAnimationTiming(eventTaskBucketParams.getAnimationTimingRaw()).addAllStateGroups(eventTaskBucketParams.getStateGroups()).addAllBeforeTasks(c(eventTaskBucketParams.getBeforeEventTaskParamsList())).addAllTasks(c(eventTaskBucketParams.getEventTaskParamsList())).addAllAfterTasks(c(eventTaskBucketParams.getAfterEventTaskParamsList())).build();
        Intrinsics.checkNotNullExpressionValue(taskBucketBuild, "newBuilder()\n        .se…kList())\n        .build()");
        return taskBucketBuild;
    }

    public static final Rendering.Phase.Event.Task a(EventTaskParams eventTaskParams) {
        Intrinsics.checkNotNullParameter(eventTaskParams, "<this>");
        Rendering.Phase.Event.Task.Builder target = Rendering.Phase.Event.Task.newBuilder().setName(a(eventTaskParams.getEventTaskType())).setTarget(eventTaskParams.getTarget());
        Intrinsics.checkNotNullExpressionValue(target, "newBuilder()\n        .se…       .setTarget(target)");
        Object value = eventTaskParams.getValue();
        if (value != null) {
            target.setValue(value.toString());
        }
        if (eventTaskParams.getAnimationEffectRaw() != null) {
            target.setAnimationEffect(eventTaskParams.getAnimationEffectRaw());
        }
        Rendering.Phase.Event.Task taskBuild = target.build();
        Intrinsics.checkNotNullExpressionValue(taskBuild, "taskBuilder.build()");
        return taskBuild;
    }

    public static final Rendering.Phase.Event.EventName a(EventType eventType) {
        Intrinsics.checkNotNullParameter(eventType, "<this>");
        switch (a.$EnumSwitchMapping$0[eventType.ordinal()]) {
            case 1:
                return Rendering.Phase.Event.EventName.EVENT_NAME_ON_IMPRESSION;
            case 2:
                return Rendering.Phase.Event.EventName.EVENT_NAME_ON_BILLABLE_IMPRESSION;
            case 3:
                return Rendering.Phase.Event.EventName.EVENT_NAME_ON_CLICK;
            case 4:
                return Rendering.Phase.Event.EventName.EVENT_NAME_ON_MUTE;
            case 5:
                return Rendering.Phase.Event.EventName.EVENT_NAME_ON_UNMUTE;
            case 6:
                return Rendering.Phase.Event.EventName.EVENT_NAME_ON_PAUSE;
            case 7:
                return Rendering.Phase.Event.EventName.EVENT_NAME_ON_RESUME;
            case 8:
                return Rendering.Phase.Event.EventName.EVENT_NAME_ON_SKIP;
            case 9:
                return Rendering.Phase.Event.EventName.EVENT_NAME_ON_CLOSE;
            case 10:
                return Rendering.Phase.Event.EventName.EVENT_NAME_ON_START;
            case 11:
                return Rendering.Phase.Event.EventName.EVENT_NAME_ON_FIRST_QUARTILE;
            case 12:
                return Rendering.Phase.Event.EventName.EVENT_NAME_ON_MIDPOINT;
            case 13:
                return Rendering.Phase.Event.EventName.EVENT_NAME_ON_THIRD_QUARTILE;
            case 14:
                return Rendering.Phase.Event.EventName.EVENT_NAME_ON_COMPLETE;
            case 15:
                return Rendering.Phase.Event.EventName.EVENT_NAME_ON_PROGRESS;
            case 16:
                return Rendering.Phase.Event.EventName.EVENT_NAME_ON_USE_CUSTOM_CLOSE;
            case 17:
                return Rendering.Phase.Event.EventName.EVENT_NAME_ON_SCHEDULED;
            case 18:
                return Rendering.Phase.Event.EventName.EVENT_NAME_ON_NAVIGATE;
            case 19:
                return Rendering.Phase.Event.EventName.EVENT_NAME_ON_EXPAND;
            case 20:
                return Rendering.Phase.Event.EventName.EVENT_NAME_ON_COLLAPSE;
            case 21:
                return Rendering.Phase.Event.EventName.EVENT_NAME_ON_CLICK_RESOLVED;
            case 22:
                return Rendering.Phase.Event.EventName.EVENT_NAME_ON_LAYOUT_CHANGED;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    public static final String b(String name, String thisLowercase) {
        Intrinsics.checkNotNullParameter(name, "$name");
        Intrinsics.checkNotNullParameter(thisLowercase, "$thisLowercase");
        return "Not enough parameters - " + name + " (" + thisLowercase + ')';
    }

    public static final List b(List list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            EventTaskBucketParams eventTaskBucketParamsA = a((Rendering.Phase.Event.TaskBucket) it.next());
            if (eventTaskBucketParamsA != null) {
                arrayList.add(eventTaskBucketParamsA);
            }
        }
        return arrayList;
    }

    public static final Rendering.Phase.Event.Task.TaskName a(EventTaskType eventTaskType) {
        Intrinsics.checkNotNullParameter(eventTaskType, "<this>");
        switch (a.$EnumSwitchMapping$1[eventTaskType.ordinal()]) {
            case 1:
                return Rendering.Phase.Event.Task.TaskName.TASK_NAME_TRACK;
            case 2:
                return Rendering.Phase.Event.Task.TaskName.TASK_NAME_OPEN;
            case 3:
                return Rendering.Phase.Event.Task.TaskName.TASK_NAME_NOTIFY_OPEN;
            case 4:
                return Rendering.Phase.Event.Task.TaskName.TASK_NAME_SKIP;
            case 5:
                return Rendering.Phase.Event.Task.TaskName.TASK_NAME_CLOSE;
            case 6:
                return Rendering.Phase.Event.Task.TaskName.TASK_NAME_MUTE;
            case 7:
                return Rendering.Phase.Event.Task.TaskName.TASK_NAME_UNMUTE;
            case 8:
                return Rendering.Phase.Event.Task.TaskName.TASK_NAME_REPEAT;
            case 9:
                return Rendering.Phase.Event.Task.TaskName.TASK_NAME_SHOW;
            case 10:
                return Rendering.Phase.Event.Task.TaskName.TASK_NAME_HIDE;
            case 11:
                return Rendering.Phase.Event.Task.TaskName.TASK_NAME_PROGRESS;
            case 12:
                return Rendering.Phase.Event.Task.TaskName.TASK_NAME_SCHEDULE;
            case 13:
                return Rendering.Phase.Event.Task.TaskName.TASK_NAME_START;
            case 14:
                return Rendering.Phase.Event.Task.TaskName.TASK_NAME_LOCK_VISIBILITY;
            case 15:
                return Rendering.Phase.Event.Task.TaskName.TASK_NAME_UNLOCK_VISIBILITY;
            case 16:
                return Rendering.Phase.Event.Task.TaskName.TASK_NAME_SIMULATE_CLICK;
            case 17:
                return Rendering.Phase.Event.Task.TaskName.TASK_NAME_PRIVACY_SHEET;
            case 18:
                return Rendering.Phase.Event.Task.TaskName.TASK_NAME_TOGGLE_STATE_GROUPS;
            case 19:
                return Rendering.Phase.Event.Task.TaskName.TASK_NAME_EXPAND;
            case 20:
                return Rendering.Phase.Event.Task.TaskName.TASK_NAME_COLLAPSE;
            case 21:
                return Rendering.Phase.Event.Task.TaskName.TASK_NAME_REQUEST_PERMISSION;
            case 22:
                return Rendering.Phase.Event.Task.TaskName.TASK_NAME_REPORT_CLICK;
            case 23:
                return Rendering.Phase.Event.Task.TaskName.TASK_NAME_PLAY;
            case 24:
                return Rendering.Phase.Event.Task.TaskName.TASK_NAME_PAUSE;
            case 25:
                return Rendering.Phase.Event.Task.TaskName.TASK_NAME_CHANGE_LAYOUT;
            case 26:
                return Rendering.Phase.Event.Task.TaskName.TASK_NAME_CHANGE_ACTIVITY;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    public static final AnimationEasing a(String str) {
        final String string;
        Intrinsics.checkNotNullParameter(str, "<this>");
        final String lowerCase = str.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        int iIndexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) lowerCase, "(", 0, false, 6, (Object) null);
        if (iIndexOf$default == -1) {
            string = lowerCase;
        } else {
            String strSubstring = lowerCase.substring(0, iIndexOf$default);
            Intrinsics.checkNotNullExpressionValue(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            string = StringsKt__StringsKt.trim(strSubstring).toString();
        }
        int iHashCode = string.hashCode();
        if (iHashCode != -1965120668) {
            if (iHashCode != -1102672091) {
                if (iHashCode != -789192465) {
                    if (iHashCode == -361990811 && string.equals("ease-in-out")) {
                        return new EaseInOutAnimationEasing();
                    }
                } else if (string.equals("ease-out")) {
                    return new EaseOutAnimationEasing();
                }
            } else if (string.equals("linear")) {
                return new LinearAnimationEasing();
            }
        } else if (string.equals("ease-in")) {
            return new EaseInAnimationEasing();
        }
        Logger.e((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.internal.h$$ExternalSyntheticLambda6
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return AbstractC4224h.a(string, lowerCase);
            }
        });
        return null;
    }

    public static final String a(String name, String thisLowercase) {
        Intrinsics.checkNotNullParameter(name, "$name");
        Intrinsics.checkNotNullParameter(thisLowercase, "$thisLowercase");
        return "Unsupported animation easing - " + name + " (" + thisLowercase + ')';
    }

    public static final List a(List list, AnimationTiming animationTiming) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            EventTaskParams eventTaskParamsB = b((Rendering.Phase.Event.Task) it.next(), animationTiming);
            if (eventTaskParamsB != null) {
                arrayList.add(eventTaskParamsB);
            }
        }
        return arrayList;
    }

    public static final List a(List list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(a((EventTaskBucketParams) it.next()));
        }
        return arrayList;
    }
}
