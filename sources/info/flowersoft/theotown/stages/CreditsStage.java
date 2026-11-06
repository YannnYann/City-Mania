package info.flowersoft.theotown.stages;

import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.ui.Credits;
import info.flowersoft.theotown.ui.GoldButton;
import info.flowersoft.theotown.ui.Page;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;

/* JADX INFO: loaded from: classes4.dex */
public class CreditsStage extends BaseStage {
    public CreditsStage(Stapel2DGameContext stapel2DGameContext) {
        super(stapel2DGameContext);
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void prepare() {
        super.prepare();
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void enter() {
        int i;
        super.enter();
        if (TheoTown.isPickleBirthday()) {
            replaceLogos(Resources.LOGO_JA);
            i = Resources.LOGO_JA;
        } else {
            i = 0;
        }
        Page page = new Page(this.context, this.translator.translate(2722), Resources.FRAME_PEOPLE + 11, this.gui);
        page.setOnBackgroundClick(new Runnable() { // from class: info.flowersoft.theotown.stages.CreditsStage.1
            @Override // java.lang.Runnable
            public void run() {
                CreditsStage.this.getGameStack().pop();
            }
        });
        Credits credits = new Credits((-1) - this.gui.getPaddingLeft(), (-1) - this.gui.getPaddingTop(), this.gui.getWidth() + 2, this.gui.getHeight() + 2, this.gui, this.context);
        credits.setPadding(10, 0, 10, 0);
        Credits.Character characterBuildCharacter = buildCharacter(Resources.LOGO_FLOWERSOFT, "blueflower", "http://www.blueflower.io/");
        Credits.Character characterBuildCharacter2 = buildCharacter(Resources.LOGO_LOBBY, "Lobby", "https://www.theotown.com/forum/memberlist.php?mode=viewprofile&u=15");
        Credits.Character characterBuildCharacter3 = buildCharacter(Resources.LOGO_JA, "JustAnyone", "https://www.theotown.com/forum/memberlist.php?mode=viewprofile&u=1880");
        Credits.Character characterBuildCharacter4 = buildCharacter(Resources.LOGO_THEO, "theotheoderich", "https://www.theotown.com/forum/memberlist.php?mode=viewprofile&u=2");
        Credits.Character characterBuildCharacter5 = buildCharacter(Resources.LOGO_PHOENIX, "phoenix", "");
        Credits.Character characterBuildCharacter6 = buildCharacter(Resources.LOGO_LUCAS, "Lucas King", "https://www.youtube.com/user/LucasKingPiano");
        Credits.Character characterBuildCharacter7 = buildCharacter(Resources.LOGO_EVAN, "Evan Wheeler", "");
        credits.addTopic(Resources.FRAME_LOGO_THEOTOWN, "TheoTown " + TheoTown.VERSION_NAME + " is a product of", new Runnable() { // from class: info.flowersoft.theotown.stages.CreditsStage$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.openUrl("https://theotown.com/");
            }
        });
        credits.addCharacter(characterBuildCharacter);
        credits.addCharacter(characterBuildCharacter2);
        credits.addTopic(-1, this.translator.translate(754), null);
        credits.addCharacter(characterBuildCharacter4);
        credits.addCharacter(characterBuildCharacter3);
        credits.addCharacter(characterBuildCharacter5);
        credits.addCharacter(buildCharacter(i, "MONTEMARINO", "https://www.theotown.com/forum/memberlist.php?mode=viewprofile&u=2590"));
        credits.addCharacter(buildCharacter(i, "Kevin hung", "https://www.theotown.com/forum/memberlist.php?mode=viewprofile&u=2314"));
        credits.addCharacter(buildCharacter(i, "_Rock Fort_", "https://www.theotown.com/forum/memberlist.php?mode=viewprofile&u=4615"));
        credits.addCharacter(buildCharacter(i, "A Dutch Guy", "https://www.theotown.com/forum/memberlist.php?mode=viewprofile&u=2860"));
        credits.addCharacter(buildCharacter(i, "rjroldan1", "https://www.theotown.com/forum/memberlist.php?mode=viewprofile&u=1853"));
        credits.addCharacter(buildCharacter(i, "Kulche", "https://www.theotown.com/forum/memberlist.php?mode=viewprofile&u=1492"));
        credits.addCharacter(buildCharacter(i, "yusuf8a684", "https://theotown.com/forum/memberlist.php?mode=viewprofile&u=2730"));
        credits.addCharacter(buildCharacter(Resources.LOGO_SGG, "SomeGermanGuy", "https://theotown.com/forum/memberlist.php?mode=viewprofile&u=4413"));
        credits.addCharacter(buildCharacter(Resources.LOGO_MDK, "mdk_813", "https://theotown.com/forum/memberlist.php?mode=viewprofile&u=922"));
        credits.addTopic(-1, this.translator.translate(693), null);
        credits.addCharacter(characterBuildCharacter6);
        credits.addTopic(-1, this.translator.translate(2213), null);
        credits.addCharacter(buildCharacter(Resources.LOGO_MAXIME, "Maxime [French]", "https://maximetanesie.com/"));
        credits.addCharacter(buildCharacter(Resources.LOGO_BLAZE, "Blaze [Polish]", ""));
        credits.addCharacter(buildCharacter(Resources.LOGO_AZULA, "Azula [Chinese]", ""));
        credits.addCharacter(buildCharacter(Resources.LOGO_HERNAN, "Hernan585G [Spanish]", ""));
        credits.addCharacter(buildCharacter(i, "Ciro Silvano (ExaTranslation team) [Italian]", ""));
        credits.addCharacter(buildCharacter(i, "Team NOSE-CONE [Korean]", ""));
        credits.addCharacter(buildCharacter(i, "yvelkram [Korean]", ""));
        credits.addCharacter(buildCharacter(i, "Honza Minařík [Czech]", ""));
        credits.addCharacter(buildCharacter(i, "Toko [Portuguese]", ""));
        credits.addCharacter(buildCharacter(Resources.LOGO_HAKANUCKUS, "Hakanuckus [Turkish]", ""));
        credits.addCharacter(buildCharacter(Resources.LOGO_DANIIL, "Daniil Usov [Russian]", ""));
        credits.addCharacter(buildCharacter(i, "Ahmad Nur Aizat [Malaysian]", ""));
        credits.addCharacter(buildCharacter(Resources.LOGO_RONNIE, "Ronie Dzividzinsky [Ukrainian]", ""));
        credits.addCharacter(buildCharacter(Resources.LOGO_Bearbear65, "Bearbear65 [Japanese]", ""));
        credits.addCharacter(buildCharacter(i, "KoalaGuy [Serbian]", ""));
        credits.addCharacter(buildCharacter(i, "MomciloMilic [Serbian]", ""));
        credits.addCharacter(buildCharacter(Resources.LOGO_KHADAFI, "Khadafi Laidi [Indonesian]", ""));
        credits.addCharacter(buildCharacter(i, "Mister Man [Turkish]", ""));
        credits.addCharacter(buildCharacter(i, "mateosaidi13 [Dutch]", ""));
        credits.addCharacter(buildCharacter(Resources.LOGO_REMAINSSTAY, "RemainsStay [Dutch]", ""));
        credits.addCharacter(buildCharacter(i, "smallg0at [Chinese]", ""));
        credits.addCharacter(buildCharacter(i, "HendersonYAP [Chinese]", ""));
        credits.addCharacter(buildCharacter(i, "CordylusLizard [Polish]", ""));
        credits.addCharacter(buildCharacter(Resources.LOGO_RENO, "Reno [Portuguese]", ""));
        credits.addCharacter(buildCharacter(Resources.LOGO_CEPHUES, "Cephues [Lithuanian]", ""));
        credits.addCharacter(characterBuildCharacter3);
        credits.addCharacter(buildCharacter(Resources.LOGO_LAKAN, "Lakan Haráya [Filipino]", ""));
        credits.addCharacter(buildCharacter(i, "Kensvin28 [Indonesian]", ""));
        credits.addCharacter(buildCharacter(i, "pxxxy99 [Thai]", ""));
        credits.addCharacter(buildCharacter(i, "Alex [Arabic]", ""));
        credits.addCharacter(buildCharacter(i, "MEHRDADsmj [Farsi]", ""));
        credits.addCharacter(buildCharacter(i, "JournalInt [Thai]", ""));
        credits.addCharacter(buildCharacter(i, "Bevise [Vietnamese]", ""));
        credits.addCharacter(buildCharacter(i, "The Leaf [Vietnamese]", ""));
        credits.addCharacter(buildCharacter(i, "Anhkatori2k [Vietnamese]", ""));
        credits.addCharacter(buildCharacter(i, "Linhnhianni [Vietnamese]", ""));
        credits.addCharacter(buildCharacter(i, "Lnquy065 [Vietnamese]", ""));
        credits.addCharacter(buildCharacter(i, "Babiabeo [Vietnamese]", ""));
        credits.addCharacter(buildCharacter(i, "VoKhoi [Vietnamese]", ""));
        credits.addCharacter(buildCharacter(i, "foxpuff54 [Arabic]", ""));
        credits.addTopic(-1, this.translator.translate(3555), null);
        credits.addCharacter(buildCharacter(Resources.LOGO_AB, "CommanderABab", ""));
        credits.addCharacter(characterBuildCharacter3);
        credits.addCharacter(buildCharacter(Resources.LOGO_Bearbear65, "Bearbear65", ""));
        credits.addCharacter(buildCharacter(Resources.LOGO_REMAINSSTAY, "RemainsStay", ""));
        credits.addCharacter(characterBuildCharacter7);
        credits.addCharacter(buildCharacter(Resources.LOGO_BUNNY, "Bunny", ""));
        credits.addCharacter(buildCharacter(i, "Kulche", ""));
        credits.addCharacter(buildCharacter(i, "Jesse", ""));
        credits.addCharacter(buildCharacter(i, "Ene7", ""));
        credits.addCharacter(buildCharacter(i, "Zoruzer0", ""));
        credits.addCharacter(buildCharacter(i, "unknownguy2002", ""));
        credits.addCharacter(buildCharacter(i, "josh", ""));
        credits.addCharacter(buildCharacter(i, "FranchuFranchu", ""));
        credits.addCharacter(buildCharacter(Resources.LOGO_WADERS, "waders", ""));
        credits.addCharacter(buildCharacter(Resources.ICON_ACCOUNT, this.translator.translate(2794), ""));
        GoldButton goldButtonAddButton = page.addButton(Resources.ICON_BACKWARD, this.translator.translate(1856), true, false, new Runnable() { // from class: info.flowersoft.theotown.stages.CreditsStage.2
            @Override // java.lang.Runnable
            public void run() {
                CreditsStage.this.getGameStack().pop();
            }
        });
        goldButtonAddButton.setPosition(goldButtonAddButton.getAbsoluteX() - this.gui.getPaddingLeft(), goldButtonAddButton.getAbsoluteY() - this.gui.getPaddingTop());
        this.gui.addChild(goldButtonAddButton);
        GoldButton goldButtonAddButton2 = page.addButton(Resources.ICON_CITY, this.translator.translate(2129), false, true, new Runnable() { // from class: info.flowersoft.theotown.stages.CreditsStage.3
            @Override // java.lang.Runnable
            public void run() {
                CreditsStage.this.openUrl("https://theotown.com/");
            }
        });
        goldButtonAddButton2.setGolden(true);
        goldButtonAddButton2.setPosition(goldButtonAddButton2.getAbsoluteX() - this.gui.getPaddingLeft(), goldButtonAddButton2.getAbsoluteY() - this.gui.getPaddingTop());
        this.gui.addChild(goldButtonAddButton2);
        page.free();
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void leave() {
        super.leave();
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void drop() {
        super.drop();
    }

    @Override // info.flowersoft.theotown.stages.BaseStage
    public void onUpdate() {
        drawBackground();
    }

    public String toString() {
        return "CreditsStage";
    }

    public final Credits.Character buildCharacter(final int i, final String str, final String str2) {
        final Runnable runnable = (str2 == null || str2.isEmpty()) ? null : new Runnable() { // from class: info.flowersoft.theotown.stages.CreditsStage.4
            @Override // java.lang.Runnable
            public void run() {
                CreditsStage.this.openUrl(str2);
            }
        };
        return new Credits.Character() { // from class: info.flowersoft.theotown.stages.CreditsStage.5
            @Override // info.flowersoft.theotown.ui.Credits.Character
            public String getName() {
                return str;
            }

            @Override // info.flowersoft.theotown.ui.Credits.Character
            public int getIcon() {
                return i;
            }

            @Override // info.flowersoft.theotown.ui.Credits.Character
            public Runnable onClick() {
                return runnable;
            }
        };
    }

    public final void openUrl(String str) {
        TheoTown.runtimeFeatures.openURLInApp(str);
    }

    public final void replaceLogos(int i) {
        Resources.LOGO_FLOWERSOFT = i;
        Resources.LOGO_LOBBY = i;
        Resources.LOGO_THEO = i;
        Resources.LOGO_PHOENIX = Resources.LOGO_JA;
        Resources.LOGO_LUCAS = i;
        Resources.LOGO_LIBGDX = i;
        Resources.LOGO_AB = i;
        Resources.LOGO_SGG = i;
        Resources.LOGO_MDK = i;
        Resources.LOGO_MAXIME = i;
        Resources.LOGO_BLAZE = i;
        Resources.LOGO_AZULA = i;
        Resources.LOGO_HERNAN = i;
        Resources.LOGO_HAKANUCKUS = i;
        Resources.LOGO_DANIIL = i;
        Resources.LOGO_RONNIE = i;
        Resources.LOGO_Bearbear65 = i;
        Resources.LOGO_KHADAFI = i;
        Resources.LOGO_REMAINSSTAY = i;
        Resources.LOGO_RENO = i;
        Resources.LOGO_CEPHUES = i;
        Resources.LOGO_LAKAN = i;
        Resources.LOGO_WADERS = i;
    }
}
