package info.flowersoft.theotown.stages;

import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.PluginPolicy;
import info.flowersoft.theotown.resources.PluginScriptPolicy;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.ui.Dialog;
import info.flowersoft.theotown.ui.GoldButton;
import info.flowersoft.theotown.ui.listitem.ActionListItem;
import info.flowersoft.theotown.ui.settings.BinarySettingsItem;
import info.flowersoft.theotown.ui.settings.SettingsListbox;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.TranslationManager;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.gui.Skin;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: compiled from: ScriptPolicyStage.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class ScriptPolicyStage extends BaseStage {
    public final boolean atStartup;
    public final boolean mustRestart;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScriptPolicyStage(Stapel2DGameContext context, boolean z, boolean z2) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.atStartup = z;
        this.mustRestart = z2;
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void prepare() {
        super.prepare();
        if (this.atStartup && PluginScriptPolicy.INSTANCE.getUndecidedPlugins().isEmpty()) {
            getGameStack().pop();
        }
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [T, java.lang.reflect.AccessibleObject, java.lang.reflect.Field] */
    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void enter() {
        super.enter();
        final TranslationManager translator = this.context.getTranslator();
        Collection<PluginPolicy> collectionValues = PluginScriptPolicy.INSTANCE.getPolicies().values();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(collectionValues, 10));
        Iterator<T> it = collectionValues.iterator();
        while (it.hasNext()) {
            arrayList.add(PluginPolicy.copy$default((PluginPolicy) it.next(), null, null, false, false, false, 0L, 63, null));
        }
        final Function2 function2 = new Function2() { // from class: info.flowersoft.theotown.stages.ScriptPolicyStage$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return Integer.valueOf(ScriptPolicyStage.enter$lambda$1((PluginPolicy) obj, (PluginPolicy) obj2));
            }
        };
        final List listSortedWith = CollectionsKt___CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: info.flowersoft.theotown.stages.ScriptPolicyStage$$ExternalSyntheticLambda1
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ScriptPolicyStage.enter$lambda$2(function2, obj, obj2);
            }
        });
        Dialog dialog = new Dialog(Resources.ICON_ALERT, translator.translate(437), "", 300, 450, this.gui);
        Panel contentPane = dialog.getContentPane();
        final SettingsListbox settingsListbox = new SettingsListbox(translator.prefersRTL(), 0, 0, contentPane.getClientWidth(), contentPane.getClientHeight(), contentPane);
        final Function1 function1 = new Function1() { // from class: info.flowersoft.theotown.stages.ScriptPolicyStage$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ScriptPolicyStage.enter$lambda$3$0(listSortedWith, settingsListbox, this, ((Boolean) obj).booleanValue());
            }
        };
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        try {
            ?? declaredField = PluginPolicy.class.getDeclaredField("allowed");
            ref$ObjectRef.element = declaredField;
            declaredField.setAccessible(true);
        } catch (Exception e) {
            e.printStackTrace();
        }
        final Function0 function0 = new Function0() { // from class: info.flowersoft.theotown.stages.ScriptPolicyStage$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ScriptPolicyStage.enter$lambda$3$1(settingsListbox, translator, listSortedWith, function1, ref$ObjectRef, this);
            }
        };
        function0.invoke();
        settingsListbox.setRebuildFunction(new Runnable() { // from class: info.flowersoft.theotown.stages.ScriptPolicyStage$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                function0.invoke();
            }
        });
        dialog.setCanCloseViaBackground(false);
        dialog.addButton(Resources.ICON_INFO, translator.translate(36), false, false, true, new Runnable() { // from class: info.flowersoft.theotown.stages.ScriptPolicyStage$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                ScriptPolicyStage.enter$lambda$3$3(translator, this);
            }
        });
        GoldButton goldButtonAddButton = dialog.addButton(Resources.ICON_OK, translator.translate(2927), new Runnable() { // from class: info.flowersoft.theotown.stages.ScriptPolicyStage$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                ScriptPolicyStage.enter$lambda$3$4(listSortedWith, this);
            }
        });
        goldButtonAddButton.addSensitiveKey(66);
        goldButtonAddButton.setGolden(true);
        dialog.distributeButtons();
        dialog.setVisible(true, false);
    }

    public static final boolean enter$isNew(PluginPolicy pluginPolicy) {
        return PluginScriptPolicy.INSTANCE.getUndecidedPlugins().contains(pluginPolicy.getPath());
    }

    public static final int enter$lambda$2(Function2 function2, Object obj, Object obj2) {
        return ((Number) function2.invoke(obj, obj2)).intValue();
    }

    public static final int enter$lambda$1(PluginPolicy pluginPolicy, PluginPolicy pluginPolicy2) {
        Intrinsics.checkNotNull(pluginPolicy2);
        boolean zEnter$isNew = enter$isNew(pluginPolicy2);
        Intrinsics.checkNotNull(pluginPolicy);
        return (Boolean.compare(zEnter$isNew, enter$isNew(pluginPolicy)) * 2) + Intrinsics.compare(pluginPolicy2.getChangeTimeMS(), pluginPolicy.getChangeTimeMS());
    }

    public static final Unit enter$lambda$3$0(List list, SettingsListbox settingsListbox, ScriptPolicyStage scriptPolicyStage, boolean z) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (enter$isNew((PluginPolicy) obj) || !scriptPolicyStage.atStartup) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((PluginPolicy) it.next()).setAllowed(z);
        }
        settingsListbox.rebuild();
        return Unit.INSTANCE;
    }

    public static final Unit enter$lambda$3$1(final SettingsListbox settingsListbox, TranslationManager translationManager, List list, final Function1 function1, final Ref$ObjectRef ref$ObjectRef, final ScriptPolicyStage scriptPolicyStage) {
        settingsListbox.removeAllItems();
        ActionListItem actionListItem = new ActionListItem(settingsListbox);
        actionListItem.addAction(Resources.skin.fCheckboxOn, translationManager.translate(1800), new Runnable() { // from class: info.flowersoft.theotown.stages.ScriptPolicyStage$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                ScriptPolicyStage.enter$lambda$3$1$0(function1);
            }
        });
        actionListItem.addAction(Resources.skin.fCheckboxOff, translationManager.translate(3547), new Runnable() { // from class: info.flowersoft.theotown.stages.ScriptPolicyStage$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                ScriptPolicyStage.enter$lambda$3$1$1(function1);
            }
        });
        settingsListbox.addItem(actionListItem);
        final int i = ((AnimationDraft) Drafts.get("$anim_ui_new00", AnimationDraft.class)).frames[0];
        Iterator it = list.iterator();
        while (it.hasNext()) {
            final PluginPolicy pluginPolicy = (PluginPolicy) it.next();
            if (pluginPolicy.getPresent()) {
                final boolean zEnter$isNew = enter$isNew(pluginPolicy);
                String path = pluginPolicy.getPath();
                if (StringsKt__StringsJVMKt.startsWith$default(path, "plugins/", false, 2, null)) {
                    path = path.substring(8);
                    Intrinsics.checkNotNullExpressionValue(path, "substring(...)");
                }
                if (pluginPolicy.getPrivileged()) {
                    path = "[privileged!] " + path;
                }
                final String str = path;
                settingsListbox.setTargetObject(pluginPolicy);
                settingsListbox.addItem(new BinarySettingsItem(str, ref$ObjectRef, settingsListbox, pluginPolicy, zEnter$isNew, scriptPolicyStage, i) { // from class: info.flowersoft.theotown.stages.ScriptPolicyStage$enter$1$buildList$1$3
                    public final /* synthetic */ boolean $isNew;
                    public final /* synthetic */ int $newIcon;
                    public final /* synthetic */ ScriptPolicyStage this$0;

                    @Override // info.flowersoft.theotown.ui.settings.SettingsListbox.SettingsItem, io.blueflower.stapel2d.gui.ListItem
                    public int getHeight(boolean z) {
                        return 25;
                    }

                    {
                        this.$isNew = zEnter$isNew;
                        this.this$0 = scriptPolicyStage;
                        this.$newIcon = i;
                        Field field = ref$ObjectRef.element;
                    }

                    @Override // info.flowersoft.theotown.ui.settings.BinarySettingsItem, info.flowersoft.theotown.ui.settings.SettingsListbox.SettingsItem, io.blueflower.stapel2d.gui.ListItem
                    public void draw(boolean z, int i2, int i3, int i4, int i5, int i6, Skin skin) {
                        Intrinsics.checkNotNullParameter(skin, "skin");
                        super.draw(z, i2, i3, i4, i5, i6, skin);
                        if (this.$isNew) {
                            Engine engine = skin.engine;
                            ScriptPolicyStage scriptPolicyStage2 = this.this$0;
                            int i7 = this.$newIcon;
                            scriptPolicyStage2.engine.setColor(Colors.WHITE);
                            scriptPolicyStage2.engine.drawImage(Resources.IMAGE_WORLD, i3 + 8, (i4 + (i6 / 2.0f)) - 3, 13.0f, 13.0f, i7);
                        }
                    }

                    @Override // info.flowersoft.theotown.ui.settings.SettingsListbox.SettingsItem
                    public int getPaddingLeft() {
                        if (this.$isNew) {
                            return 25;
                        }
                        return super.getPaddingLeft();
                    }
                });
            }
        }
        return Unit.INSTANCE;
    }

    public static final void enter$lambda$3$1$0(Function1 function1) {
        function1.invoke(Boolean.TRUE);
    }

    public static final void enter$lambda$3$1$1(Function1 function1) {
        function1.invoke(Boolean.FALSE);
    }

    public static final void enter$lambda$3$3(TranslationManager translationManager, ScriptPolicyStage scriptPolicyStage) {
        Dialog dialog = new Dialog(Resources.PEOPLE_MANAGER, translationManager.translate(1702), translationManager.translate(2516), 400, Sdk.SDKError.Reason.INVALID_ADUNIT_BID_PAYLOAD_VALUE, scriptPolicyStage.gui);
        GoldButton goldButtonAddButton = dialog.addButton(Resources.ICON_OK, translationManager.translate(1899), null);
        goldButtonAddButton.setGolden(true);
        goldButtonAddButton.addSensitiveKey(66);
        dialog.setVisible(true);
    }

    public static final void enter$lambda$3$4(List list, ScriptPolicyStage scriptPolicyStage) {
        Iterator it = list.iterator();
        boolean z = false;
        while (it.hasNext()) {
            PluginPolicy pluginPolicy = (PluginPolicy) it.next();
            PluginPolicy pluginPolicy2 = PluginScriptPolicy.INSTANCE.getPolicies().get(pluginPolicy.getPath());
            Intrinsics.checkNotNull(pluginPolicy2);
            PluginPolicy pluginPolicy3 = pluginPolicy2;
            if (pluginPolicy3.getAllowed() != pluginPolicy.getAllowed()) {
                pluginPolicy3.setAllowed(pluginPolicy.getAllowed());
                z = true;
            }
        }
        PluginScriptPolicy.INSTANCE.save();
        if ((z && scriptPolicyStage.atStartup) || scriptPolicyStage.mustRestart) {
            scriptPolicyStage.context.requestRestart();
        }
        scriptPolicyStage.getGameStack().pop();
    }

    @Override // info.flowersoft.theotown.stages.BaseStage
    public void onUpdate() {
        drawBackground();
    }

    public String toString() {
        return "MissingScriptPermsStage";
    }
}
