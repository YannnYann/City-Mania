package info.flowersoft.theotown.store;

import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.TimeUtils;
import com.ironsource.C3522b4;
import com.ironsource.InterfaceC3676je;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.GlobalTransitionVariables;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.TaskManager;
import info.flowersoft.theotown.store.StoreCategory;
import info.flowersoft.theotown.ui.BuyOrVideoDialog;
import info.flowersoft.theotown.ui.Dialog;
import info.flowersoft.theotown.ui.GoldButton;
import info.flowersoft.theotown.ui.IconButton;
import info.flowersoft.theotown.ui.ProgressBar;
import info.flowersoft.theotown.ui.ReportDialog;
import info.flowersoft.theotown.ui.ScrollableTextFrame;
import info.flowersoft.theotown.ui.SuccessOverlay;
import info.flowersoft.theotown.util.DraftLocalizer;
import info.flowersoft.theotown.util.JSONUtil;
import info.flowersoft.theotown.util.Localizer;
import info.flowersoft.theotown.util.StringFormatter;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.gui.Button;
import io.blueflower.stapel2d.gui.ElementLine;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Icon;
import io.blueflower.stapel2d.gui.Label;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.gui.Skin;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.Setter;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public class PluginEntry extends Panel {
    public final int ACTIVE_FRAME;
    public final int DOWNLOAD_FRAME;
    public final int IMAGE_FADE_IN_MS;
    public final int INACTIVE_FRAME;
    public final int REPORT_FRAME;
    public String _text;
    public String _title;
    public final int childIndex;
    public IconButton cmdAcquire;
    public IconButton cmdActivate;
    public IconButton cmdComments;
    public IconButton cmdDeactivate;
    public IconButton cmdDelete;
    public IconButton cmdDownload;
    public IconButton cmdError;
    public IconButton cmdReport;
    public final JSONObject config;
    public final Stapel2DGameContext context;
    public boolean expandable;
    public boolean expanded;
    public int expandedHeight;
    public boolean initiated;
    public long lastNoImageMs;
    public Label lblAuthor;
    public Label lblDownloaded;
    public Label lblStatus;
    public ScrollableTextFrame lblText;
    public Label lblTitle;
    public final int minRatings;
    public final PluginWrapper plugin;
    public ProgressBar progressBar;
    public final JSONObject ratingConfig;
    public final float[] ratingPercentages;
    public String shortText;
    public final Setter<Stage> stageVisitor;
    public final Translator translator;
    public final Runnable updateRunner;

    @Override // io.blueflower.stapel2d.gui.Gadget
    public boolean parentHasToLayout() {
        return false;
    }

    public PluginEntry(Gadget gadget, PluginWrapper pluginWrapper, Stapel2DGameContext stapel2DGameContext, Setter<Stage> setter, Runnable runnable) {
        super(0, 0, gadget.getClientWidth() - 4, getDefaultHeight(gadget), gadget);
        AnimationDraft animationDraft = (AnimationDraft) Drafts.get("$anim_store_download00", AnimationDraft.class);
        Objects.requireNonNull(animationDraft);
        this.DOWNLOAD_FRAME = animationDraft.frames[0];
        AnimationDraft animationDraft2 = (AnimationDraft) Drafts.get("$anim_store_active00", AnimationDraft.class);
        Objects.requireNonNull(animationDraft2);
        this.ACTIVE_FRAME = animationDraft2.frames[0];
        AnimationDraft animationDraft3 = (AnimationDraft) Drafts.get("$anim_store_inactive00", AnimationDraft.class);
        Objects.requireNonNull(animationDraft3);
        this.INACTIVE_FRAME = animationDraft3.frames[0];
        AnimationDraft animationDraft4 = (AnimationDraft) Drafts.get("$anim_store_report00", AnimationDraft.class);
        Objects.requireNonNull(animationDraft4);
        this.REPORT_FRAME = animationDraft4.frames[0];
        this.IMAGE_FADE_IN_MS = 200;
        JSONObject specificConfig = Resources.getSpecificConfig(C3522b4.i.U);
        this.config = specificConfig;
        JSONObject jSONObjectOptObject = JSONUtil.optObject(specificConfig, "ratings");
        this.ratingConfig = jSONObjectOptObject;
        this.minRatings = jSONObjectOptObject.optInt("min ratings", 1);
        JSONArray jSONArrayOptJSONArray = jSONObjectOptObject.optJSONArray("percentages");
        if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() >= 4) {
            this.ratingPercentages = new float[jSONArrayOptJSONArray.length()];
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                this.ratingPercentages[i] = (float) jSONArrayOptJSONArray.optDouble(i, 0.0d);
            }
        } else {
            this.ratingPercentages = new float[]{0.2f, 0.4f, 0.6f, 0.8f};
        }
        this.expanded = false;
        this.lastNoImageMs = 0L;
        this.plugin = pluginWrapper;
        this.context = stapel2DGameContext;
        this.translator = stapel2DGameContext.getTranslator();
        this.stageVisitor = setter;
        this.updateRunner = runnable;
        this.childIndex = gadget.countChildren();
        updateVisibility();
    }

    public final String getTitle() {
        if (this._title == null) {
            this._title = new DraftLocalizer(this.context, "").localizePacked(this.plugin.getTitle());
        }
        return this._title;
    }

    private String getText() {
        if (this._text == null) {
            this._text = new DraftLocalizer(this.context, "").localizePacked(this.plugin.getDescription());
        }
        return this._text;
    }

    public static boolean isNarrow(Gadget gadget) {
        return gadget != null && gadget.getClientWidth() < 400;
    }

    public static int getDefaultHeight(Gadget gadget) {
        isNarrow(gadget);
        return 110;
    }

    public final void updateVisibility() {
        if ((this.plugin.isReported() && !this.plugin.isDownloaded() && this.config.optBoolean("hide reported plugins", false)) || this.plugin.isInternal()) {
            setVisible(false);
        }
    }

    private void build() {
        String str;
        final ElementLine elementLine = new ElementLine(0, 5, 0, 0, getClientWidth(), getClientHeight(), this) { // from class: info.flowersoft.theotown.store.PluginEntry.1
            @Override // io.blueflower.stapel2d.gui.Gadget
            public void onUpdate() {
                this.height = PluginEntry.this.getClientHeight();
            }
        };
        elementLine.setPadding(5);
        final boolean zIsNarrow = isNarrow(this.parent);
        int i = zIsNarrow ? 65 : 100;
        new Panel(0, 0, i, i, elementLine.getFirstPart()) { // from class: info.flowersoft.theotown.store.PluginEntry.2
            @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i2, int i3) {
                int i4 = i2 + this.x;
                int i5 = i3 + this.y;
                Engine engine = this.skin.engine;
                Image image = PluginEntry.this.plugin.getImage();
                long jMillis = TimeUtils.millis();
                if (image != null) {
                    int frame = PluginEntry.this.plugin.getFrame();
                    engine.setTransparency((((int) MathUtils.clamp(jMillis - PluginEntry.this.lastNoImageMs, 0L, 200L)) * 255) / 200);
                    engine.drawNinePatch(Resources.IMAGE_WORLD, i4 - 5, i5 - 5, this.width + 10, this.height + 10, this.skin.npRectShadow);
                    Drawing.getInstance().drawRoundedFit(engine, image, i4, i5, this.width, this.height, frame, 4.0f);
                    engine = engine;
                } else {
                    PluginEntry.this.lastNoImageMs = jMillis;
                    engine.setColor(this.skin.cTextSecondary);
                    engine.drawNinePatch(Resources.IMAGE_WORLD, i4 - 1, i5 - 1, this.width + 2, this.height + 2, this.skin.npWhiteRect);
                    if (PluginEntry.this.plugin.isStorePlugin()) {
                        engine.setColor(this.skin.cTextAccent);
                        float fMillis = ((TimeUtils.millis() % 1000) / 1000.0f) * 2.0f * 3.1415927f;
                        Drawing.getInstance().drawCircle(i4 + (this.width / 2.0f), i5 + (this.height / 2.0f), 20.0f, 25.0f, fMillis, fMillis + 1.5707964f, 1.0f, 1.0f, engine);
                        engine = engine;
                    }
                    engine.setColor(Colors.WHITE);
                }
                engine.setScale(0.5f, 0.5f);
                int i6 = this.width;
                int i7 = i6 - 13;
                if (PluginEntry.this.plugin.isPermanent()) {
                    engine.drawImage(Resources.IMAGE_WORLD, i7 + i4, i5, Resources.ICON_GOLDEN_PRESENT);
                    i7 = i6 - 26;
                }
                if (PluginEntry.this.plugin.isFeatured()) {
                    engine.drawImage(Resources.IMAGE_WORLD, i4 + i7, i5, Resources.ICON_RANK);
                }
                engine.setScale(1.0f, 1.0f);
            }
        };
        final ElementLine elementLine2 = new ElementLine(1, 2, 0, 0, (elementLine.getClientWidth() - i) - elementLine.getFirstPart().getSpace(), elementLine.getClientHeight(), elementLine.getFirstPart()) { // from class: info.flowersoft.theotown.store.PluginEntry.3
            @Override // io.blueflower.stapel2d.gui.Gadget
            public void onUpdate() {
                this.height = elementLine.getClientHeight();
            }
        };
        ElementLine elementLine3 = new ElementLine(0, 2, 0, 0, elementLine2.getClientWidth(), 12, elementLine2.getFirstPart());
        this.lblTitle = new Label(getTitle(), 0, 0, 0, elementLine3.getClientHeight(), elementLine3.getFirstPart());
        if (this.plugin.hasCategory() && this.plugin.getCategory().getCategoryId() == StoreCategory.Builtins.Scenarios.id) {
            Label label = new Label(this.plugin.getCategory().getTitle(), 0, 0, 0, elementLine3.getClientHeight(), elementLine3.getFirstPart());
            label.setFont(this.skin.fontSmall);
            label.setColor(Colors.getRepr(Sdk.SDKError.Reason.MRAID_JS_DOES_NOT_EXIST_VALUE, 165, 32, 255));
            label.setWidth((int) label.getTextWidth());
        }
        Label label2 = new Label(StringFormatter.format(this.translator.translate(2383), this.plugin.getAuthor()), 0, 0, 0, elementLine3.getClientHeight(), elementLine3.getFirstPart());
        this.lblAuthor = label2;
        label2.setColor(this.skin.cTextAccent);
        this.lblAuthor.setFont(this.skin.fontSmall);
        Label label3 = this.lblAuthor;
        label3.setWidth((int) label3.getTextWidth());
        if (this.plugin.isQualityPluginCertifiedAuthor()) {
            Icon icon = new Icon(Resources.ICON_HEART, 0, 0, 8, elementLine3.getFirstPart().getClientHeight(), elementLine3.getFirstPart());
            icon.setScale(0.5f);
            icon.setAlignment(0.5f, 0.5f);
        }
        if (this.plugin.canVisitAuthor()) {
            new Button(0, 0, 0, 0, elementLine3) { // from class: info.flowersoft.theotown.store.PluginEntry.4
                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void draw(int i2, int i3) {
                }

                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void onClick() {
                    super.onClick();
                    PluginEntry.this.plugin.visitAuthor();
                }
            }.setFillParent(true);
        }
        if (zIsNarrow) {
            elementLine3 = new ElementLine(0, 2, 0, 0, elementLine2.getClientWidth(), 12, elementLine2.getFirstPart());
        }
        StringBuilder sb = new StringBuilder();
        if (this.plugin.getDownloads() >= 0) {
            str = StringFormatter.format(this.translator.translate(2521), Integer.valueOf(this.plugin.getDownloads())) + " | ";
        } else {
            str = "";
        }
        sb.append(str);
        sb.append(Localizer.localizeFileSize(this.translator, this.plugin.getSize()));
        Label label4 = new Label(sb.toString(), 0, 0, 0, elementLine3.getClientHeight(), elementLine3.getThirdPart());
        label4.setFont(this.skin.fontSmall);
        label4.setColor(this.skin.cTextSecondary);
        label4.setWidth((int) label4.getFont().getWidth(label4.getText()));
        elementLine3.layout();
        int clientHeight = elementLine2.getClientHeight();
        int i2 = clientHeight - 42;
        if (zIsNarrow) {
            i2 = clientHeight - 58;
        }
        int i3 = i2;
        int i4 = zIsNarrow ? 60 : 80;
        String text = getText();
        ScrollableTextFrame scrollableTextFrame = new ScrollableTextFrame(text, 0, 0, elementLine2.getClientWidth() - i4, i3, elementLine2.getFirstPart()) { // from class: info.flowersoft.theotown.store.PluginEntry.5
            @Override // io.blueflower.stapel2d.gui.Gadget
            public void onUpdate() {
                int clientHeight2 = elementLine2.getClientHeight();
                this.height = clientHeight2 - 42;
                if (zIsNarrow) {
                    this.height = clientHeight2 - 58;
                }
            }
        };
        this.lblText = scrollableTextFrame;
        scrollableTextFrame.setShowBorder(false);
        this.lblText.getListBox().setPadding(0, -2, 0, 0);
        this.lblText.getListBox().setShowSlider(false);
        this.lblText.setFont(this.skin.fontSmall);
        this.lblText.setAlignment(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        int textHeight = (this.lblText.getTextHeight() + getHeight()) - this.lblText.getClientHeight();
        this.expandedHeight = textHeight;
        this.expandable = textHeight > getDefaultHeight(this.parent);
        this.shortText = text;
        while (true) {
            int textHeight2 = this.lblText.getTextHeight();
            if (textHeight2 <= this.lblText.getClientHeight() || this.shortText.isEmpty()) {
                break;
            }
            String str2 = this.shortText;
            this.shortText = str2.substring(0, Math.min(str2.length() - 1, (((this.shortText.length() * 3) * this.lblText.getClientHeight()) / textHeight2) / 2));
            while (this.shortText.length() > 0) {
                String str3 = this.shortText;
                char cCharAt = str3.charAt(str3.length() - 1);
                if (Character.isWhitespace(cCharAt) || cCharAt == ',' || cCharAt == '.') {
                    String str4 = this.shortText;
                    this.shortText = str4.substring(0, str4.length() - 1);
                }
            }
            this.lblText.setText(this.shortText + "...");
        }
        if (!this.shortText.equals(text)) {
            this.shortText += "...";
        }
        this.lblText.setText(this.shortText);
        new Button(this.lblText.getWidth(), this.lblText.getY(), i4, Math.min(this.lblText.getHeight() - 4, 36), elementLine2) { // from class: info.flowersoft.theotown.store.PluginEntry.6
            public final Label lblCount;
            public final Label lblRating;
            public final Label lblTitle;
            public final Color semiNegative;
            public final Color semiPositive;

            {
                Skin skin = this.skin;
                this.semiPositive = Colors.interpolate(0.4f, skin.cTextGreen, skin.cTextYellow).copy();
                Skin skin2 = this.skin;
                this.semiNegative = Colors.interpolate(0.4f, skin2.cTextRed, skin2.cTextYellow).copy();
                Label label5 = new Label(PluginEntry.this.translator.translate(274), 0, 0, 0, 0, this);
                this.lblTitle = label5;
                label5.fillParent();
                label5.setFont(this.skin.fontSmall);
                label5.setColor(this.skin.cTextSecondary);
                label5.setAlignment(0.5f, 0.1f);
                Label label6 = new Label("", 0, 0, 0, 0, this);
                this.lblRating = label6;
                label6.fillParent();
                label6.setFont(this.skin.fontSmall);
                label6.setColor(Colors.BLACK);
                label6.setAlignment(0.5f, 0.65f);
                Label label7 = new Label("", 0, 0, 0, 0, this);
                this.lblCount = label7;
                label7.fillParent();
                label7.setFont(this.skin.fontDefault);
                label7.setColor(this.skin.cTextSecondary);
                label7.setAlignment(0.5f, 1.0f);
                label7.setScale(0.5f, 0.5f);
                updateText();
            }

            public final void updateText() {
                this.lblRating.setText(PluginEntry.this.plugin.getRatingCount() == 0 ? "?" : StringFormatter.format("%d%%", Integer.valueOf((int) ((((PluginEntry.this.plugin.getRatingSum() + PluginEntry.this.plugin.getRatingCount()) * 100) / 2.0f) / PluginEntry.this.plugin.getRatingCount()))));
                this.lblCount.setText(StringFormatter.format(PluginEntry.this.translator.translate(1607), Integer.valueOf(PluginEntry.this.plugin.getRatingCount())));
            }

            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i5, int i6) {
                String strTranslate;
                Color color;
                int userRating = PluginEntry.this.plugin.getUserRating();
                boolean zCanRate = PluginEntry.this.plugin.canRate();
                float ratingSum = ((PluginEntry.this.plugin.getRatingSum() + PluginEntry.this.plugin.getRatingCount()) / 2.0f) / PluginEntry.this.plugin.getRatingCount();
                if (PluginEntry.this.plugin.getRatingCount() < PluginEntry.this.minRatings) {
                    strTranslate = PluginEntry.this.translator.translate(Sdk.SDKError.Reason.TEMPLATE_DOWNLOAD_ERROR_VALUE);
                    color = this.skin.cTextSecondary;
                } else if (ratingSum <= PluginEntry.this.ratingPercentages[0]) {
                    strTranslate = PluginEntry.this.translator.translate(3276);
                    color = this.skin.cTextRed;
                } else if (ratingSum <= PluginEntry.this.ratingPercentages[1]) {
                    strTranslate = PluginEntry.this.translator.translate(IronSourceError.ERROR_RV_LOAD_SUCCESS_UNEXPECTED);
                    color = this.semiNegative;
                } else if (ratingSum <= PluginEntry.this.ratingPercentages[2]) {
                    strTranslate = PluginEntry.this.translator.translate(575);
                    color = this.skin.cTextYellow;
                } else if (ratingSum <= PluginEntry.this.ratingPercentages[3]) {
                    strTranslate = PluginEntry.this.translator.translate(352);
                    color = this.semiPositive;
                } else {
                    strTranslate = PluginEntry.this.translator.translate(2299);
                    color = this.skin.cTextGreen;
                }
                this.lblRating.setColor(color);
                this.lblRating.setText(strTranslate);
                int i7 = this.x + i5;
                int i8 = this.y + i6;
                Engine engine = this.skin.engine;
                engine.setColor(Colors.WHITE);
                super.drawChildren(i5, i6);
                if (PluginEntry.this.plugin.isAcquired() && PluginEntry.this.plugin.isAvailableInStore()) {
                    engine.setTransparency((!zCanRate || userRating == 1) ? 50 : 255);
                    Skin skin = this.skin;
                    Color color2 = skin.cTextAccent;
                    Color color3 = skin.cTextSecondary;
                    engine.setColor(userRating == -1 ? color2 : color3);
                    float clientHeight2 = ((getClientHeight() / 4) + i8) - 3;
                    Drawing.getInstance().drawTriangle(i7 + 12, r10 + 2, i7 + 7, clientHeight2, i7 + 17, clientHeight2, engine);
                    engine.setTransparency((!zCanRate || userRating == -1) ? 100 : 255);
                    if (userRating != 1) {
                        color2 = color3;
                    }
                    engine.setColor(color2);
                    int clientWidth = i7 + getClientWidth();
                    float clientHeight3 = i8 + (getClientHeight() / 4) + 3;
                    Drawing.getInstance().drawTriangle(clientWidth - 12, r4 - 2, clientWidth - 7, clientHeight3, clientWidth - 17, clientHeight3, engine);
                }
            }

            @Override // io.blueflower.stapel2d.gui.Gadget
            public boolean isVisible() {
                return PluginEntry.this.plugin.supportsRating();
            }

            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                if (PluginEntry.this.plugin.isAvailableInStore()) {
                    super.onClick();
                    if (PluginEntry.this.plugin.isAcquired()) {
                        if (PluginEntry.this.plugin.canRate()) {
                            if (PluginEntry.this.plugin.getUserRating() == 0) {
                                PluginEntry.this.plugin.rate((this.tp.getX() * this.master.getWidthRatio()) - ((float) getAbsoluteX()) > ((float) (getClientWidth() / 2)) ? 1 : -1);
                            } else {
                                PluginEntry.this.plugin.rate(0);
                            }
                            updateText();
                            return;
                        }
                        TheoTown.socialManager.showConnectionDialog(PluginEntry.this.context);
                    }
                }
            }
        };
        new Button(0, 0, 0, 0, this.lblText) { // from class: info.flowersoft.theotown.store.PluginEntry.7
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i5, int i6) {
            }

            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                if (PluginEntry.this.expandable || PluginEntry.this.expanded) {
                    PluginEntry.this.expanded = !r0.expanded;
                }
            }
        }.setFillParent(true);
        ElementLine elementLine4 = new ElementLine(0, 2, 0, 0, elementLine2.getClientWidth(), 30, elementLine2.getThirdPart());
        if (zIsNarrow) {
            elementLine4.setX((-i) - elementLine.getFirstPart().getSpace());
            elementLine4.setWidth(elementLine4.getWidth() + i + elementLine.getFirstPart().getSpace());
        }
        ProgressBar progressBar = new ProgressBar(0, 10, 100, 10, elementLine4.getFirstPart());
        this.progressBar = progressBar;
        progressBar.setVisible(false);
        Label label5 = new Label(this.translator.translate(3324), 0, 0, 100, 30, elementLine4.getFirstPart());
        this.lblDownloaded = label5;
        label5.getColor().setTo(this.skin.cTextGreen);
        this.lblDownloaded.getColor().setAlpha(200);
        this.lblDownloaded.setAlignment(0.5f, 0.5f);
        int i5 = 30;
        int i6 = 0;
        int i7 = 100;
        this.cmdAcquire = new GoldButton(this.DOWNLOAD_FRAME, this.translator.translate(1777), 0, i6, i7, i5, elementLine4.getFirstPart()) { // from class: info.flowersoft.theotown.store.PluginEntry.8
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                if (TheoTown.PREMIUM) {
                    PluginEntry.this.acquireAndDownload();
                    SuccessOverlay.getInstance().addEvent(2, 1.0d);
                } else {
                    PluginEntry.this.showPurchaseDialog();
                }
            }
        };
        this.cmdDownload = new IconButton(this.DOWNLOAD_FRAME, this.translator.translate(2010), 0, i6, i7, i5, elementLine4.getFirstPart()) { // from class: info.flowersoft.theotown.store.PluginEntry.9
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                PluginEntry.this.downloadOnly();
            }
        };
        this.cmdError = new IconButton(Resources.ICON_ALERT, this.translator.translate(3219), 0, i6, i7, i5, elementLine4.getFirstPart()) { // from class: info.flowersoft.theotown.store.PluginEntry.10
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                PluginEntry.this.showError();
            }
        };
        int i8 = 80;
        this.cmdActivate = new IconButton(this.INACTIVE_FRAME, this.translator.translate(2976), 0, i6, i8, i5, elementLine4.getFirstPart()) { // from class: info.flowersoft.theotown.store.PluginEntry.11
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                PluginEntry.this.plugin.setActive(true);
            }
        };
        int i9 = 0;
        this.cmdDeactivate = new IconButton(this.ACTIVE_FRAME, this.translator.translate(2124), i9, i6, i8, i5, elementLine4.getFirstPart()) { // from class: info.flowersoft.theotown.store.PluginEntry.12
            @Override // io.blueflower.stapel2d.gui.Button
            public boolean isPressed() {
                return true;
            }

            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                PluginEntry.this.plugin.setActive(false);
            }
        };
        this.cmdDelete = new IconButton(Resources.ICON_REMOVE, "", i9, i6, 30, i5, elementLine4.getFirstPart()) { // from class: info.flowersoft.theotown.store.PluginEntry.13
            @Override // info.flowersoft.theotown.ui.IconButton, io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i10, int i11) {
                Engine engine = this.skin.engine;
                engine.setScale(0.5f, 0.5f);
                engine.drawImage(Resources.IMAGE_WORLD, this.x + i10 + (this.width / 2), this.y + i11 + (this.height / 2), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f, 0.5f, Resources.ICON_REMOVE);
                engine.setScale(1.0f, 1.0f);
            }

            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                PluginEntry.this.plugin.delete();
            }
        };
        Label label6 = new Label("", 0, 0, 0, elementLine4.getClientHeight(), elementLine4.getFirstPart());
        this.lblStatus = label6;
        label6.setFont(this.skin.fontSmall);
        this.lblStatus.setColor(this.skin.cTextSecondary);
        int i10 = 30;
        int i11 = 30;
        this.cmdReport = new IconButton(this.REPORT_FRAME, "", i9, i6, i11, i10, elementLine4.getThirdPart()) { // from class: info.flowersoft.theotown.store.PluginEntry.14
            @Override // info.flowersoft.theotown.ui.IconButton, io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i12, int i13) {
                Engine engine = this.skin.engine;
                engine.setScale(0.5f, 0.5f);
                engine.drawImage(Resources.IMAGE_WORLD, this.x + i12 + (this.width / 2), this.y + i13 + (this.height / 2), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f, 0.5f, PluginEntry.this.REPORT_FRAME);
                engine.setScale(1.0f, 1.0f);
            }

            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                PluginEntry.this.askForReport();
            }

            @Override // io.blueflower.stapel2d.gui.Gadget
            public boolean isVisible() {
                return super.isVisible() && PluginEntry.this.plugin.canReport() && PluginEntry.this.plugin.getDownloads() >= 0;
            }
        };
        this.cmdComments = new IconButton(Resources.ICON_NOTIFICATION, "" + this.plugin.getComments(), 0, i6, i11, i10, elementLine4.getThirdPart()) { // from class: info.flowersoft.theotown.store.PluginEntry.15
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                PluginEntry.this.stageVisitor.set(PluginEntry.this.plugin.getCommentsStage());
            }
        };
        IconButton iconButton = this.cmdActivate;
        iconButton.setWidth(Math.max(iconButton.getWidth(), this.cmdDeactivate.getWidth()));
        this.cmdDeactivate.setWidth(this.cmdActivate.getWidth());
        onUpdate();
    }

    public final boolean shouldShowUnknownQualityWarning() {
        if (this.plugin.isQualityPluginCertifiedAuthor() || this.plugin.getPrice() <= 0 || TaskManager.getInstance().TASK_STORE_PLUGIN_QUALITY_WARNING.isCompleted()) {
            return false;
        }
        return this.plugin.getDownloads() < this.config.optInt("unknown quality downloads", 100) || this.plugin.getRatingCount() < this.config.optInt("unknown quality ratings", 10);
    }

    public final void showPurchaseDialog() {
        if (shouldShowUnknownQualityWarning()) {
            showNotManyDownloadsDialog(new Runnable() { // from class: info.flowersoft.theotown.store.PluginEntry$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.showPurchaseDialogRaw();
                }
            });
        } else {
            showPurchaseDialogRaw();
        }
    }

    public final void showNotManyDownloadsDialog(final Runnable runnable) {
        Dialog dialog = new Dialog(Resources.ICON_ALERT, this.translator.translate(InterfaceC3676je.a.h), this.translator.translate(2341), 260, 140, (Master) getAbsoluteParent());
        dialog.addButton(Resources.ICON_NOTIFICATION_NO, this.translator.translate(1683), new Runnable() { // from class: info.flowersoft.theotown.store.PluginEntry$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                PluginEntry.$r8$lambda$7n7eHS9GS4qGlmNc9eIg5853NXE(runnable);
            }
        });
        dialog.addButton(Resources.ICON_OK, this.translator.translate(1174), runnable).setGolden(true).addSensitiveKey(66);
        dialog.distributeButtons();
        dialog.setVisible(true);
    }

    public static /* synthetic */ void $r8$lambda$7n7eHS9GS4qGlmNc9eIg5853NXE(Runnable runnable) {
        TaskManager.getInstance().TASK_STORE_PLUGIN_QUALITY_WARNING.complete();
        runnable.run();
    }

    public final void showPurchaseDialogRaw() {
        BuyOrVideoDialog buyOrVideoDialog = new BuyOrVideoDialog(this.DOWNLOAD_FRAME, this.translator.translate(423), StringFormatter.format(this.translator.translate(2877), getTitle()), (Master) getAbsoluteParent(), this.plugin.getPrice(), (Getter<Boolean>) new Getter() { // from class: info.flowersoft.theotown.store.PluginEntry$$ExternalSyntheticLambda3
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return PluginEntry.$r8$lambda$JAalMzTIMGs6LoklSx9Qqor2vUs(this.f$0);
            }
        }, this.stageVisitor, this.context, "getplugin", "get plugin", false);
        BuyOrVideoDialog.configureCap("get plugin", this.config.optInt("download ad cap", 1), this.config.optInt("download ad cap seconds", 60));
        buyOrVideoDialog.setVisible(true);
    }

    public static /* synthetic */ Boolean $r8$lambda$JAalMzTIMGs6LoklSx9Qqor2vUs(PluginEntry pluginEntry) {
        pluginEntry.acquireAndDownload();
        SuccessOverlay.getInstance().addEvent(2, 1.0d);
        return Boolean.TRUE;
    }

    public final void showError() {
        String error = this.plugin.getError();
        if (error != null) {
            Dialog dialog = new Dialog(Resources.ICON_ALERT, this.translator.translate(1464), this.translator.translate(2451) + "\n\n" + error, (Master) getAbsoluteParent());
            dialog.addCancelButton(Resources.ICON_OK, this.translator.translate(2447));
            dialog.setVisible(true);
        }
    }

    public final void issueUpdate() {
        this.updateRunner.run();
    }

    public final void askForReport() {
        ReportDialog.show(this.context, (Master) getAbsoluteParent(), StringFormatter.format(this.translator.translate(2225), getTitle()), new ReportDialog.Reporter() { // from class: info.flowersoft.theotown.store.PluginEntry$$ExternalSyntheticLambda0
            @Override // info.flowersoft.theotown.ui.ReportDialog.Reporter
            public final void report(String str, Runnable runnable, Setter setter) {
                PluginEntry.m2336$r8$lambda$D9nCkAFFDjY_iLaXjYqCWl4Vc(this.f$0, str, runnable, setter);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$D9nC-kAFFDjY_iLaXjYqCW-l4Vc, reason: not valid java name */
    public static /* synthetic */ void m2336$r8$lambda$D9nCkAFFDjY_iLaXjYqCWl4Vc(PluginEntry pluginEntry, String str, Runnable runnable, Setter setter) {
        pluginEntry.plugin.report(str, runnable, setter);
        pluginEntry.issueUpdate();
    }

    public final void acquireAndDownload() {
        this.plugin.acquireAndDownload();
        onUpdate();
        TheoTown.gamesService.unlockAchievement("plugin_download");
        long jAdd = GlobalTransitionVariables.getInstance().add("!_acquiredplugincount", 1L, 0L);
        if (jAdd % 5 == 0) {
            TheoTown.gamesService.unlockAchievement("plugin_addict", (int) jAdd, 100);
        }
    }

    public final void downloadOnly() {
        this.plugin.downloadOnly();
        onUpdate();
    }

    @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
    public void draw(int i, int i2) {
        if (!this.initiated) {
            build();
            this.initiated = true;
            onUpdate();
        }
        if (isVisible()) {
            drawChildren(i, i2);
        }
    }

    @Override // io.blueflower.stapel2d.gui.SensitiveGadget, io.blueflower.stapel2d.gui.Gadget
    public void onUpdate() {
        if (this.initiated) {
            super.onUpdate();
            boolean zIsDownloaded = this.plugin.isDownloaded();
            boolean zIsActive = this.plugin.isActive();
            updateVisibility();
            if (isVisible()) {
                if (this.expanded) {
                    int height = getHeight();
                    int i = this.expandedHeight;
                    if (height != i) {
                        setHeight(i);
                    }
                } else {
                    int defaultHeight = getDefaultHeight(this.parent);
                    if (getHeight() != defaultHeight) {
                        setHeight(defaultHeight);
                    }
                }
                boolean zIsAvailableInStore = this.plugin.isAvailableInStore();
                boolean zIsDownloading = this.plugin.isDownloading();
                this.plugin.isLoaded();
                String downloadError = this.plugin.getDownloadError();
                boolean zIsAcquired = this.plugin.isAcquired();
                boolean zRequiresRestart = this.plugin.requiresRestart();
                boolean zHasNewVersion = this.plugin.hasNewVersion();
                boolean z = (zIsDownloaded ? this.plugin.getError() : null) != null;
                int comments = this.plugin.getComments();
                Label label = this.lblTitle;
                label.setWidth((int) label.getFont().getWidth(this.lblTitle.getText()));
                this.lblText.setText(this.expanded ? getText() : this.shortText);
                this.lblDownloaded.setVisible(false);
                this.progressBar.setVisible(zIsDownloading);
                if (zIsDownloading) {
                    this.progressBar.setProgress(this.plugin.getDownloadProgress());
                }
                this.cmdAcquire.setVisible(!zIsAcquired && zIsAvailableInStore);
                this.cmdDownload.setVisible((!zIsDownloaded || zHasNewVersion) && !zIsDownloading && zIsAcquired && zIsAvailableInStore);
                this.cmdError.setVisible(z);
                this.cmdActivate.setVisible(zIsDownloaded && !zIsActive);
                this.cmdDeactivate.setVisible(zIsDownloaded && zIsActive);
                this.cmdDelete.setVisible(zIsDownloaded && !zIsDownloading && this.plugin.canDelete());
                this.cmdReport.setVisible(zIsAvailableInStore);
                this.cmdComments.setVisible(comments >= 0 && this.plugin.supportsComments() && zIsAvailableInStore);
                if (comments >= 0) {
                    this.cmdComments.setText(StringFormatter.format("%,d", Integer.valueOf(comments)));
                }
                layout();
                if (!zIsAvailableInStore && this.plugin.isStorePlugin()) {
                    this.lblStatus.setText(this.translator.translate(62));
                } else if (zIsDownloading) {
                    this.lblStatus.setText(this.translator.translate(2811) + " " + ((int) (this.plugin.getDownloadProgress() * 100.0f)) + "%");
                } else if (downloadError != null) {
                    this.lblStatus.setText(this.translator.translate(105) + downloadError);
                } else if (zIsDownloaded) {
                    if (this.plugin.isNewlyInstalledAndWaiting()) {
                        this.lblStatus.setText(this.translator.translate(1494));
                    } else {
                        if (this.plugin.isLoaded() && !z) {
                            this.lblStatus.setText(this.translator.translate(400));
                        } else {
                            this.lblStatus.setText(this.translator.translate(2654));
                        }
                        if (this.plugin.newVersionIsDownloadedAndWaiting()) {
                            this.lblStatus.setText(this.lblStatus.getText() + " - " + this.translator.translate(1949));
                        }
                    }
                } else if (zIsAcquired) {
                    this.lblStatus.setText(this.translator.translate(1487));
                } else {
                    this.lblStatus.setText(this.translator.translate(868));
                }
                if (zHasNewVersion && !zIsDownloading) {
                    this.lblStatus.setText(this.lblStatus.getText() + " - " + this.translator.translate(1804));
                }
                if (zRequiresRestart) {
                    this.lblStatus.setText(this.lblStatus.getText() + " - " + this.translator.translate(2505));
                }
            }
        }
    }

    public void setSelected(boolean z) {
        if (!this.expanded || z) {
            return;
        }
        this.expanded = false;
    }
}
