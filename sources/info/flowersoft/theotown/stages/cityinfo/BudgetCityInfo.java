package info.flowersoft.theotown.stages.cityinfo;

import com.ironsource.InterfaceC3676je;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.components.BudgetItem;
import info.flowersoft.theotown.components.DefaultBudget;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.mechanics.GameHandler;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.SoundPlayer;
import info.flowersoft.theotown.resources.SoundType;
import info.flowersoft.theotown.stages.cityinfo.BudgetCityInfo;
import info.flowersoft.theotown.ui.BuyOrVideoDialog;
import info.flowersoft.theotown.ui.IconButton;
import info.flowersoft.theotown.ui.SuccessOverlay;
import info.flowersoft.theotown.util.Localizer;
import info.flowersoft.theotown.util.StringFormatter;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Font;
import io.blueflower.stapel2d.gamestack.GameStack;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.TranslationManager;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.gui.ElementLine;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Label;
import io.blueflower.stapel2d.gui.ListBox;
import io.blueflower.stapel2d.gui.ListItem;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Skin;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.Setter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class BudgetCityInfo extends CityInfo {
    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public int getIcon() {
        return Resources.ICON_MONEY;
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public int getTitleId(City city) {
        return city.getGameMode().hasInfinityMoney() ? 615 : 2454;
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public String getHelpText(City city) {
        if (city.getGameMode().hasInfinityMoney()) {
            return city.getTranslator().translate(751);
        }
        return city.getTranslator().translate(1843);
    }

    public static Label createEstateLabel(Gadget gadget, final DefaultBudget defaultBudget, final Translator translator) {
        return new Label("", 0, -15, gadget.getClientWidth(), 15, gadget) { // from class: info.flowersoft.theotown.stages.cityinfo.BudgetCityInfo.1
            @Override // io.blueflower.stapel2d.gui.Label
            public String getText() {
                return StringFormatter.format(translator.translate(1748), Localizer.localizeMoney(defaultBudget.getEstate()));
            }

            @Override // io.blueflower.stapel2d.gui.Label
            public Color getColor() {
                Skin skin = Resources.skin;
                return defaultBudget.getEstate() > 0.0d ? skin.cTextGreen : skin.cTextRed;
            }
        };
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public void build(City city, Gadget gadget, Stapel2DGameContext stapel2DGameContext, GameStack gameStack) {
        BudgetCityInfo budgetCityInfo;
        int i;
        int i2 = 0;
        DefaultBudget defaultBudget = (DefaultBudget) city.getComponent(0);
        boolean z = true;
        boolean z2 = !city.isReadonly();
        TranslationManager translator = stapel2DGameContext.getTranslator();
        char c = 2;
        int i3 = 0;
        if (city.getGameMode().hasInfinityMoney() || TheoTown.PREMIUM || city.isReadonly() || !(city.getScenarioInfo() == null || city.getScenarioInfo().getAllowBuyMoney())) {
            budgetCityInfo = this;
            i = 0;
        } else {
            ElementLine elementLine = new ElementLine(0, 1, 0, 0, gadget.getClientWidth(), 30, gadget);
            createEstateLabel(gadget, defaultBudget, stapel2DGameContext.getTranslator());
            int i4 = 3;
            double[] dArr = new double[3];
            dArr[0] = 15000.0d;
            dArr[1] = 100000.0d;
            dArr[2] = 1000000.0d;
            int[] iArr = {30, 150, InterfaceC3676je.c.d};
            int[] iArr2 = {Resources.ICON_GAMEMODE_HARD, Resources.ICON_GAMEMODE_MIDDLE, Resources.ICON_GAMEMODE_EASY};
            for (int i5 = 0; i5 < 3; i5++) {
                dArr[i5] = Math.max(dArr[i5], defaultBudget.getMoneyForDiamonds(iArr[i5]));
            }
            int i6 = 0;
            while (i6 < i4) {
                double d = dArr[i6];
                int i7 = i2;
                new AnonymousClass2(iArr2[i6], StringFormatter.format(translator.translate(1928), Localizer.localizeMoney(d)), 0, 0, 0, elementLine.getClientHeight(), elementLine.getThirdPart(), translator, d, iArr[i6], defaultBudget, gameStack, stapel2DGameContext);
                i6++;
                i2 = i7;
                i4 = i4;
                dArr = dArr;
                z = true;
                c = 2;
            }
            budgetCityInfo = this;
            i = i2;
            i3 = 31;
        }
        int i8 = i3;
        ListBox listBox = new ListBox(0, i8, gadget.getClientWidth(), gadget.getClientHeight() - i8, gadget);
        final List<BudgetItem> incomeItems = defaultBudget.getIncomeItems(true);
        final List<BudgetItem> spendingItems = defaultBudget.getSpendingItems(true);
        final ArrayList arrayList = new ArrayList();
        for (int i9 = i; i9 < incomeItems.size(); i9++) {
            arrayList.add(incomeItems.get(i9));
        }
        for (int i10 = i; i10 < spendingItems.size(); i10++) {
            arrayList.add(spendingItems.get(i10));
        }
        Skin skin = Resources.skin;
        final ListItemColorStyle listItemColorStyle = new ListItemColorStyle();
        listItemColorStyle.text = skin.cTextGreen;
        listItemColorStyle.bg0 = skin.cItemBg0.copy().lerp(skin.cTextGreen, 0.05f);
        listItemColorStyle.bg1 = skin.cItemBg1.copy().lerp(skin.cTextGreen, 0.05f);
        budgetCityInfo.addCategory(translator.translate(338), listBox, listItemColorStyle);
        budgetCityInfo.addTopic(translator.translate(3263), listBox, listItemColorStyle);
        int i11 = i;
        while (i11 < 9) {
            boolean z3 = z2;
            listBox.addItem(budgetCityInfo.new BudgetListItem(incomeItems.get(i11), stapel2DGameContext, listItemColorStyle, z3));
            if (i11 == 2 || i11 == 5) {
                listBox.addItem(new EmptyListItem());
                listBox.addItem(budgetCityInfo.new BlackLineItem());
            }
            i11++;
            z2 = z3;
        }
        boolean z4 = z2;
        listBox.addItem(new EmptyListItem());
        listBox.addItem(budgetCityInfo.new BlackLineItem());
        for (int i12 = 9; i12 < incomeItems.size(); i12++) {
            BudgetItem budgetItem = incomeItems.get(i12);
            if (budgetItem.isVisible()) {
                listBox.addItem(budgetCityInfo.new BudgetListItem(budgetItem, stapel2DGameContext, listItemColorStyle, z4));
            }
        }
        listBox.addItem(new EmptyListItem());
        listBox.addItem(budgetCityInfo.new BlackLineItem());
        listBox.addItem(budgetCityInfo.new BudgetListItem(new BudgetItem(defaultBudget) { // from class: info.flowersoft.theotown.stages.cityinfo.BudgetCityInfo.3
            @Override // info.flowersoft.theotown.components.BudgetItem
            public int getNameId() {
                return 3312;
            }

            @Override // info.flowersoft.theotown.components.BudgetItem
            public String getNameRaw() {
                return null;
            }

            @Override // info.flowersoft.theotown.components.BudgetItem
            public long getAmount() {
                Iterator it = incomeItems.iterator();
                int amount = 0;
                while (it.hasNext()) {
                    amount += (int) ((BudgetItem) it.next()).getAmount();
                }
                if (GameHandler.getInstance().getTimedEffectManager().getDoubleIncomeDays() > 0) {
                    amount *= 2;
                }
                return amount;
            }
        }, stapel2DGameContext, listItemColorStyle, z4));
        final ListItemColorStyle listItemColorStyle2 = new ListItemColorStyle();
        listItemColorStyle2.text = skin.cTextRed;
        listItemColorStyle2.bg0 = skin.cItemBg0.copy().lerp(skin.cTextRed, 0.05f);
        listItemColorStyle2.bg1 = skin.cItemBg1.copy().lerp(skin.cTextRed, 0.05f);
        budgetCityInfo.addCategory(translator.translate(1590), listBox, listItemColorStyle2);
        for (BudgetItem budgetItem2 : spendingItems) {
            if (budgetItem2.isVisible()) {
                listBox.addItem(budgetCityInfo.new BudgetListItem(budgetItem2, stapel2DGameContext, listItemColorStyle2, z4));
            }
        }
        listBox.addItem(new EmptyListItem());
        listBox.addItem(budgetCityInfo.new BlackLineItem());
        listBox.addItem(budgetCityInfo.new BudgetListItem(new BudgetItem(defaultBudget) { // from class: info.flowersoft.theotown.stages.cityinfo.BudgetCityInfo.4
            @Override // info.flowersoft.theotown.components.BudgetItem
            public int getNameId() {
                return 3158;
            }

            @Override // info.flowersoft.theotown.components.BudgetItem
            public String getNameRaw() {
                return null;
            }

            @Override // info.flowersoft.theotown.components.BudgetItem
            public long getAmount() {
                Iterator it = spendingItems.iterator();
                int amount = 0;
                while (it.hasNext()) {
                    amount += (int) ((BudgetItem) it.next()).getAmount();
                }
                return amount;
            }
        }, stapel2DGameContext, listItemColorStyle2, z4));
        listBox.addItem(budgetCityInfo.new BlackLineItem());
        listBox.addItem(budgetCityInfo.new BlackLineItem());
        listBox.addItem(new BudgetListItem(new BudgetItem(defaultBudget) { // from class: info.flowersoft.theotown.stages.cityinfo.BudgetCityInfo.5
            @Override // info.flowersoft.theotown.components.BudgetItem
            public int getNameId() {
                return 1224;
            }

            @Override // info.flowersoft.theotown.components.BudgetItem
            public String getNameRaw() {
                return null;
            }

            @Override // info.flowersoft.theotown.components.BudgetItem
            public long getAmount() {
                Iterator it = arrayList.iterator();
                int amount = 0;
                while (it.hasNext()) {
                    amount += (int) ((BudgetItem) it.next()).getAmount();
                }
                return amount;
            }
        }, stapel2DGameContext, listItemColorStyle, z4) { // from class: info.flowersoft.theotown.stages.cityinfo.BudgetCityInfo.6
            @Override // info.flowersoft.theotown.stages.cityinfo.BudgetCityInfo.BudgetListItem, io.blueflower.stapel2d.gui.ListItem
            public void draw(boolean z5, int i13, int i14, int i15, int i16, int i17, Skin skin2) {
                this.colorStyle = this.item.getAmount() >= 0 ? listItemColorStyle : listItemColorStyle2;
                super.draw(z5, i13, i14, i15, i16, i17, skin2);
            }
        });
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.stages.cityinfo.BudgetCityInfo$2, reason: invalid class name */
    public class AnonymousClass2 extends IconButton {
        public final /* synthetic */ double val$amount;
        public final /* synthetic */ DefaultBudget val$budget;
        public final /* synthetic */ Stapel2DGameContext val$context;
        public final /* synthetic */ int val$diamondPrice;
        public final /* synthetic */ GameStack val$gameStack;
        public final /* synthetic */ Translator val$translator;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(int i, String str, int i2, int i3, int i4, int i5, Gadget gadget, Translator translator, double d, int i6, DefaultBudget defaultBudget, GameStack gameStack, Stapel2DGameContext stapel2DGameContext) {
            super(i, str, i2, i3, i4, i5, gadget);
            this.val$translator = translator;
            this.val$amount = d;
            this.val$diamondPrice = i6;
            this.val$budget = defaultBudget;
            this.val$gameStack = gameStack;
            this.val$context = stapel2DGameContext;
        }

        @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
        public void onClick() {
            super.onClick();
            int i = Resources.ICON_MONEY;
            String str = StringFormatter.format(this.val$translator.translate(1928), Localizer.localizeMoney(this.val$amount));
            String str2 = StringFormatter.format(this.val$translator.translate(1335), Localizer.localizeMoney(this.val$amount));
            Master master = (Master) this.parent.getAbsoluteParent();
            final int i2 = this.val$diamondPrice;
            final DefaultBudget defaultBudget = this.val$budget;
            final double d = this.val$amount;
            Getter getter = new Getter() { // from class: info.flowersoft.theotown.stages.cityinfo.BudgetCityInfo$2$$ExternalSyntheticLambda0
                @Override // io.blueflower.stapel2d.util.Getter
                public final Object get() {
                    return BudgetCityInfo.AnonymousClass2.$r8$lambda$WOAcqzq9A4YTcBbSivynwYcFO_g(this.f$0, defaultBudget, d, i2);
                }
            };
            final GameStack gameStack = this.val$gameStack;
            Setter setter = new Setter() { // from class: info.flowersoft.theotown.stages.cityinfo.BudgetCityInfo$2$$ExternalSyntheticLambda1
                @Override // io.blueflower.stapel2d.util.Setter
                public final void set(Object obj) {
                    gameStack.push((Stage) obj);
                }
            };
            new BuyOrVideoDialog(i, str, str2, master, i2, (Getter<Boolean>) getter, (Setter<Stage>) setter, this.val$context, "get " + this.val$amount + " money", "Earn_Money", false).setVisible(true);
        }

        public static /* synthetic */ Boolean $r8$lambda$WOAcqzq9A4YTcBbSivynwYcFO_g(AnonymousClass2 anonymousClass2, DefaultBudget defaultBudget, double d, int i) {
            BudgetCityInfo.this.playSound();
            defaultBudget.earn(d, "watch money ad " + i);
            SuccessOverlay.getInstance().addEvent(1, d);
            return Boolean.TRUE;
        }
    }

    public final void playSound() {
        SoundPlayer.getInstance().play(Resources.SOUND_MONEY, SoundType.UI);
    }

    public final void addCategory(String str, ListBox listBox, ListItemColorStyle listItemColorStyle) {
        ListItemColorStyle listItemColorStyle2 = new ListItemColorStyle();
        listItemColorStyle2.bg0 = Colors.WHITE;
        listItemColorStyle2.bg1 = Colors.MARINE_BLUE_ULTRA_LIGHT;
        listItemColorStyle2.text = Colors.BLACK;
        listBox.addItem(new CategoryListItem(str, listItemColorStyle));
    }

    public final void addTopic(String str, ListBox listBox, ListItemColorStyle listItemColorStyle) {
        listBox.addItem(new TopicListItem(str, listItemColorStyle));
    }

    public class BlackLineItem extends ListItem {
        @Override // io.blueflower.stapel2d.gui.ListItem
        public int getHeight(boolean z) {
            return 2;
        }

        public BlackLineItem() {
            super("");
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public void draw(boolean z, int i, int i2, int i3, int i4, int i5, Skin skin) {
            skin.engine.setColorAndTransparency(skin.cText);
            skin.engine.drawImage(Resources.IMAGE_WORLD, i2, i3, i4, 1.0f, Resources.FRAME_RECT);
            skin.engine.setColorAndTransparency(Colors.WHITE);
        }
    }

    public static class EmptyListItem extends ListItem {
        @Override // io.blueflower.stapel2d.gui.ListItem
        public void draw(boolean z, int i, int i2, int i3, int i4, int i5, Skin skin) {
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public int getHeight(boolean z) {
            return 0;
        }

        public EmptyListItem() {
            super("");
        }
    }

    public static class ListItemColorStyle {
        public Color bg0;
        public Color bg1;
        public Color text;

        public ListItemColorStyle() {
        }
    }

    public class BudgetListItem extends ListItem {
        public ListItemColorStyle colorStyle;
        public boolean editable;
        public BudgetItem item;
        public int modifierX;

        @Override // io.blueflower.stapel2d.gui.ListItem
        public int getHeight(boolean z) {
            return 20;
        }

        public final int getModifierX(int i) {
            return i - 100;
        }

        public BudgetListItem(BudgetItem budgetItem, Stapel2DGameContext stapel2DGameContext, ListItemColorStyle listItemColorStyle, boolean z) {
            super(stapel2DGameContext.getTranslator().translate(budgetItem.getNameId()));
            if (budgetItem.getNameId() == 0) {
                this.text = budgetItem.getNameRaw();
            }
            this.item = budgetItem;
            this.colorStyle = listItemColorStyle;
            this.editable = z;
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public void draw(boolean z, int i, int i2, int i3, int i4, int i5, Skin skin) {
            drawBackground(false, i, i2, i3, i4, i5, skin, this.colorStyle.bg0, this.colorStyle.bg1);
            Font font = skin.fontDefault;
            String str = StringFormatter.format(this.text, Integer.valueOf(this.item.getExtra()));
            float fRound = i3 + ((i5 - Math.round(skin.fontDefault.getHeight())) / 2);
            skin.engine.setColor(this.colorStyle.text);
            skin.engine.drawText(skin.fontDefault, str, i2 + 5, fRound);
            String strLocalizeMoney = Localizer.localizeMoney(this.item.getAmount());
            skin.engine.drawText(skin.fontDefault, strLocalizeMoney, ((i2 + i4) - 5) - font.getWidth(strLocalizeMoney), fRound);
            if (this.item.isModifyable() && this.editable) {
                this.modifierX = getModifierX(i4);
                skin.engine.setColor(skin.cText);
                String str2 = StringFormatter.format("%1$,.1f%%", Float.valueOf(this.item.getModifyable() / 10.0f));
                skin.engine.drawText(skin.fontDefault, str2, (i2 + this.modifierX) - (font.getWidth(str2) / 2.0f), fRound);
                skin.engine.setColor(skin.cTextAccent);
                float width = font.getWidth("+") / 2.0f;
                float f = 20;
                skin.engine.drawText(skin.fontDefault, "--", (((i2 + this.modifierX) - (font.getWidth(str2) / 2.0f)) - f) - (3.0f * width), fRound);
                float f2 = 10;
                skin.engine.drawText(skin.fontDefault, "-", (((i2 + this.modifierX) - (font.getWidth(str2) / 2.0f)) - f2) - width, fRound);
                skin.engine.drawText(skin.fontDefault, "+", i2 + this.modifierX + (font.getWidth(str2) / 2.0f) + f2, fRound);
                skin.engine.drawText(skin.fontDefault, "++", i2 + this.modifierX + (font.getWidth(str2) / 2.0f) + f + width, fRound);
            }
            skin.engine.setColor(Colors.WHITE);
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public void onClick(int i, int i2) {
            if (this.item.isModifyable() && this.editable) {
                int i3 = i - this.modifierX;
                if (Math.abs(i3) <= 30) {
                    SoundPlayer.getInstance().play(Resources.SOUND_CLICK, SoundType.UI);
                    if (i3 < 0) {
                        this.item.decrementModifyable();
                        return;
                    } else {
                        this.item.incrementModifyable();
                        return;
                    }
                }
                if (Math.abs(i3) <= 50) {
                    SoundPlayer.getInstance().play(Resources.SOUND_CLICK, SoundType.UI);
                    int i4 = 0;
                    if (i3 < 0) {
                        while (i4 < 5) {
                            this.item.decrementModifyable();
                            i4++;
                        }
                    } else {
                        while (i4 < 5) {
                            this.item.incrementModifyable();
                            i4++;
                        }
                    }
                }
            }
        }
    }

    public class CategoryListItem extends ListItem {
        public ListItemColorStyle style;

        @Override // io.blueflower.stapel2d.gui.ListItem
        public int getHeight(boolean z) {
            return 30;
        }

        public CategoryListItem(String str, ListItemColorStyle listItemColorStyle) {
            super(str);
            this.style = listItemColorStyle;
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public void draw(boolean z, int i, int i2, int i3, int i4, int i5, Skin skin) {
            drawBackground(false, i, i2, i3, i4, i5, skin, this.style.bg0, this.style.bg1);
            Engine engine = skin.engine;
            Color color = engine.getColor();
            color.setTo(this.style.text);
            Color color2 = Colors.WHITE;
            color.lerp(color2, 0.5f);
            engine.setColor(color);
            float f = i2;
            float f2 = i3;
            float f3 = i4;
            float f4 = i5;
            engine.drawText(skin.fontDefault, this.text, f, f2, f3, f4, 0.5f, 0.5f);
            engine.drawText(skin.fontDefault, this.text, 0.4f + f, f2, f3, f4, 0.5f, 0.5f);
            engine.setColor(color2);
        }
    }

    public class TopicListItem extends ListItem {
        public final ListItemColorStyle style;

        @Override // io.blueflower.stapel2d.gui.ListItem
        public int getHeight(boolean z) {
            return 20;
        }

        public TopicListItem(String str, ListItemColorStyle listItemColorStyle) {
            super(str);
            this.style = listItemColorStyle;
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public void draw(boolean z, int i, int i2, int i3, int i4, int i5, Skin skin) {
            drawBackground(false, i, i2, i3, i4, i5, skin, this.style.bg0, this.style.bg1);
            Math.round(skin.fontDefault.getWidth(" "));
            int iRound = i3 + ((i5 - Math.round(skin.fontDefault.getHeight(" "))) / 2);
            skin.engine.setColor(this.style.text);
            skin.engine.drawText(skin.fontDefault, this.text, i2 + 5, iRound);
            skin.engine.setColor(Colors.WHITE);
        }
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public String getTag() {
        return "BudgetCityInfo";
    }

    public String toString() {
        return "Budget";
    }
}
