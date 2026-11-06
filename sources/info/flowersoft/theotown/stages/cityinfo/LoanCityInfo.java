package info.flowersoft.theotown.stages.cityinfo;

import com.unity3d.mediation.LevelPlayAdError;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.components.Loan;
import info.flowersoft.theotown.components.DefaultBudget;
import info.flowersoft.theotown.components.DefaultDate;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.SoundPlayer;
import info.flowersoft.theotown.resources.SoundType;
import info.flowersoft.theotown.ui.FilledRect;
import info.flowersoft.theotown.ui.IconButton;
import info.flowersoft.theotown.util.Localizer;
import info.flowersoft.theotown.util.StringFormatter;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Font;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.gamestack.GameStack;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.TranslationManager;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Label;
import io.blueflower.stapel2d.gui.ListBox;
import io.blueflower.stapel2d.gui.ListItem;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.gui.Skin;
import io.blueflower.stapel2d.gui.TextFrame;

/* JADX INFO: loaded from: classes4.dex */
public class LoanCityInfo extends CityInfo {
    public DefaultBudget budget;
    public DefaultDate date;
    public Label lblOverall;
    public ListBox listBox;
    public Translator translator;

    public interface Availability {
        boolean isAvailable();
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public int getTitleId(City city) {
        return 3379;
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public String getHelpText(City city) {
        return city.getTranslator().translate(1563);
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public void build(final City city, Gadget gadget, Stapel2DGameContext stapel2DGameContext, GameStack gameStack) {
        this.budget = (DefaultBudget) city.getComponent(0);
        this.date = (DefaultDate) city.getComponent(1);
        TranslationManager translator = stapel2DGameContext.getTranslator();
        this.translator = translator;
        BudgetCityInfo.createEstateLabel(gadget, this.budget, translator);
        Gadget gadget2 = new Gadget(0, 0, gadget.getClientWidth(), gadget.getClientHeight(), gadget) { // from class: info.flowersoft.theotown.stages.cityinfo.LoanCityInfo.1
            @Override // io.blueflower.stapel2d.gui.Gadget
            public void layout() {
                int height = 2;
                for (Gadget gadget3 : this.children) {
                    gadget3.setPosition(gadget3.getX(), height);
                    height += gadget3.getHeight() + 1;
                }
                super.layout();
            }
        };
        final long loanValue = this.budget.getLoanValue();
        final int loanTermMonths = this.budget.getLoanTermMonths();
        final long loanMonthlyPrice = this.budget.getLoanMonthlyPrice();
        Gadget gadgetAddLoan = addLoan(new int[]{Resources.ICON_LOAN_TAKE}, StringFormatter.format(this.translator.translate(LevelPlayAdError.ERROR_CODE_SHOW_BEFORE_LOAD_SUCCESS_CALLBACK), Localizer.localizeMoney(loanValue), Integer.valueOf(loanTermMonths), Localizer.localizeMoney(loanMonthlyPrice)), new String[]{this.translator.translate(2893)}, new Runnable[]{new Runnable() { // from class: info.flowersoft.theotown.stages.cityinfo.LoanCityInfo.2
            @Override // java.lang.Runnable
            public void run() {
                LoanCityInfo.this.budget.addLoan(loanTermMonths, loanValue, loanMonthlyPrice);
                LoanCityInfo.this.update();
                LoanCityInfo.this.playSound();
                if (city.canAchieve()) {
                    TheoTown.gamesService.unlockAchievement("loan_take");
                }
            }
        }}, new Availability() { // from class: info.flowersoft.theotown.stages.cityinfo.LoanCityInfo.3
            @Override // info.flowersoft.theotown.stages.cityinfo.LoanCityInfo.Availability
            public boolean isAvailable() {
                return LoanCityInfo.this.budget.canAddLoan() && !city.isReadonly();
            }
        }, gadget2);
        Panel panel = new Panel(0, 0, gadget2.getClientWidth(), ((gadget2.getClientHeight() - gadgetAddLoan.getY()) - gadgetAddLoan.getHeight()) - 1, gadget2) { // from class: info.flowersoft.theotown.stages.cityinfo.LoanCityInfo.4
            @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i, int i2) {
                drawChildren(i, i2);
            }
        };
        this.lblOverall = new Label("", 0, 0, panel.getClientWidth(), 12, panel);
        this.listBox = new ListBox(0, 12, panel.getClientWidth(), panel.getClientHeight() - 12, panel);
        update();
    }

    public final Gadget addLoan(int[] iArr, String str, String[] strArr, final Runnable[] runnableArr, final Availability availability, Gadget gadget) {
        Panel panel = new Panel(0, 0, gadget.getClientWidth(), 35, gadget) { // from class: info.flowersoft.theotown.stages.cityinfo.LoanCityInfo.5
            @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i, int i2) {
                drawChildren(i, i2);
            }
        };
        panel.setPadding(1);
        int clientWidth = panel.getClientWidth();
        for (final int i = 0; i < iArr.length; i++) {
            IconButton iconButton = new IconButton(iArr[i], strArr[i], 0, 0, 120, panel.getClientHeight(), panel) { // from class: info.flowersoft.theotown.stages.cityinfo.LoanCityInfo.6
                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void onClick() {
                    if (isVisible()) {
                        runnableArr[i].run();
                    }
                }

                @Override // io.blueflower.stapel2d.gui.Gadget
                public boolean isVisible() {
                    Availability availability2 = availability;
                    return availability2 == null || availability2.isAvailable();
                }
            };
            clientWidth -= iconButton.getWidth();
            iconButton.setPosition(clientWidth, 0);
        }
        Skin skin = panel.getSkin();
        new FilledRect(0, -2, panel.getClientWidth(), 1, panel).setColor(skin.cTextSecondary);
        new FilledRect(0, panel.getClientHeight() + 1, panel.getClientWidth(), 1, panel).setColor(skin.cTextSecondary);
        if (str != null) {
            new TextFrame(str, 0, 0, clientWidth, panel.getClientHeight(), panel).setFont(Resources.skin.fontSmall);
        }
        return panel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void playSound() {
        SoundPlayer.getInstance().play(Resources.SOUND_MONEY, SoundType.UI);
    }

    public final synchronized void update() {
        int estate;
        while (true) {
            try {
                estate = 0;
                if (this.listBox.countItems() <= 0) {
                    break;
                } else {
                    this.listBox.removeItemIndex(0);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        for (Loan loan : this.budget.getLoans()) {
            this.listBox.addItem(new LoanItem(loan));
            estate = (int) (((long) estate) + loan.getEstate());
        }
        this.lblOverall.setText(StringFormatter.format(this.translator.translate(2770), Localizer.localizeMoney(estate), Integer.valueOf(this.budget.getLoans().size()), Integer.valueOf(this.budget.getMaxLoanCount())));
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public int getIcon() {
        return Resources.ICON_LOAN;
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public boolean isAvailable(City city) {
        if (city.getGameMode().hasInfinityMoney()) {
            return false;
        }
        return city.getScenarioInfo() == null || city.getScenarioInfo().getAllowLoans();
    }

    public class LoanItem extends ListItem {
        public final Loan loan;

        @Override // io.blueflower.stapel2d.gui.ListItem
        public int getHeight(boolean z) {
            return 40;
        }

        public LoanItem(Loan loan) {
            super("");
            this.loan = loan;
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public void draw(boolean z, int i, int i2, int i3, int i4, int i5, Skin skin) {
            drawBackground(false, i, i2, i3, i4, i5, skin);
            Engine engine = skin.engine;
            Image image = Resources.IMAGE_WORLD;
            int i6 = i3 + 1;
            engine.setColor(skin.cText);
            Font font = skin.fontDefault;
            float f = i2 + 2;
            engine.drawText(font, Localizer.localizeMoney(this.loan.getEstate()), f, i6);
            int height = i6 + ((int) font.getHeight());
            Font font2 = skin.fontSmall;
            int targetDay = (int) (this.loan.getTargetDay() - LoanCityInfo.this.date.getAbsoluteDay());
            engine.drawText(font2, StringFormatter.format(LoanCityInfo.this.translator.translate(1473), Integer.valueOf(targetDay % 30), Integer.valueOf(targetDay / 30)), f, height);
            int height2 = height + ((int) font2.getHeight());
            long loanPayBackPrice = LoanCityInfo.this.budget.getLoanPayBackPrice(this.loan);
            String str = StringFormatter.format(LoanCityInfo.this.translator.translate(1954), Localizer.localizeMoney(loanPayBackPrice));
            engine.setColor(LoanCityInfo.this.budget.canSpend(loanPayBackPrice) ? skin.cTextGreen : skin.cTextRed);
            engine.drawText(font2, str, f, height2);
            if (LoanCityInfo.this.budget.canSpend(loanPayBackPrice)) {
                engine.setColor(Colors.WHITE);
                engine.drawImage(image, (i2 + i4) - 28, ((i5 - 26) / 2) + i3, Resources.ICON_LOAD_PAYBACK);
            }
            engine.setColor(Colors.WHITE);
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public void onClick(int i, int i2) {
            if (LoanCityInfo.this.listBox.getClientWidth() - i <= 26) {
                if (LoanCityInfo.this.budget.canSpend(LoanCityInfo.this.budget.getLoanPayBackPrice(this.loan))) {
                    SoundPlayer.getInstance().play(Resources.SOUND_CLICK, SoundType.UI);
                    LoanCityInfo.this.budget.payBackLoan(this.loan);
                    LoanCityInfo.this.update();
                }
            }
        }
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public String getTag() {
        return "LoanCityInfo";
    }

    public String toString() {
        return "Loan";
    }
}
