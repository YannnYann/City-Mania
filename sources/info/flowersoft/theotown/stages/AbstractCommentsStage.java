package info.flowersoft.theotown.stages;

import com.badlogic.gdx.utils.TimeUtils;
import com.ironsource.C3670j8;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.backend.Backend;
import info.flowersoft.theotown.backend.Service;
import info.flowersoft.theotown.backend.User;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.WordFilter;
import info.flowersoft.theotown.ui.Dialog;
import info.flowersoft.theotown.ui.GoldButton;
import info.flowersoft.theotown.ui.IconButton;
import info.flowersoft.theotown.ui.Page;
import info.flowersoft.theotown.ui.ReportDialog;
import info.flowersoft.theotown.ui.TextField;
import info.flowersoft.theotown.util.StringFormatter;
import info.flowersoft.theotown.util.ThemeManager;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Font;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.ElementLine;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Label;
import io.blueflower.stapel2d.gui.ListBox;
import io.blueflower.stapel2d.gui.ListItem;
import io.blueflower.stapel2d.gui.Skin;
import io.blueflower.stapel2d.gui.TextFrame;
import io.blueflower.stapel2d.util.Setter;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractCommentsStage extends BaseStage {
    public static final Map<String, String> lastInputs = new HashMap();
    public final int REPORT_FRAME;
    public final int authorIcon;
    public IconButton cmdNavigate;
    public GoldButton cmdRun;
    public JSONObject lastResponse;
    public float lastShiftY;
    public ListBox listBox;
    public boolean loading;
    public Page page;
    public TextField textField;
    public String title;

    public interface ImageProvider {
        Image get();

        int getFrame();

        void prepare();

        void release();
    }

    public abstract void beforeAddingComments(ListBox listBox);

    public abstract void fetch(Setter<JSONObject> setter, Setter<Exception> setter2);

    public abstract int getOwnerId();

    public abstract String getTargetIdentifier();

    public abstract boolean hasReportedComment(int i);

    public abstract boolean isLocked();

    public abstract void sendCommentRequest(String str, Service.Handler handler);

    public abstract void sendDeleteRequest(int i, Service.Handler handler);

    public abstract void sendLockRequest(boolean z, Service.Handler handler);

    public abstract void sendReportRequest(int i, String str, Runnable runnable, Setter<String> setter);

    public AbstractCommentsStage(Stapel2DGameContext stapel2DGameContext, String str, int i) {
        super(stapel2DGameContext);
        AnimationDraft animationDraft = (AnimationDraft) Drafts.get("$anim_store_report00", AnimationDraft.class);
        Objects.requireNonNull(animationDraft);
        this.REPORT_FRAME = animationDraft.frames[0];
        this.title = str;
        this.authorIcon = i;
    }

    public final void reload(final boolean z) {
        this.loading = true;
        fetch(new Setter<JSONObject>() { // from class: info.flowersoft.theotown.stages.AbstractCommentsStage.1
            @Override // io.blueflower.stapel2d.util.Setter
            public void set(final JSONObject jSONObject) {
                AbstractCommentsStage.this.addTask(new Runnable() { // from class: info.flowersoft.theotown.stages.AbstractCommentsStage.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AbstractCommentsStage.this.lastResponse = jSONObject;
                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                        AbstractCommentsStage.this.rebuild(jSONObject, z);
                        AbstractCommentsStage.this.loading = false;
                    }
                });
            }
        }, new Setter<Exception>() { // from class: info.flowersoft.theotown.stages.AbstractCommentsStage.2
            @Override // io.blueflower.stapel2d.util.Setter
            public void set(Exception exc) {
                TheoTown.runtimeFeatures.showToast(exc.toString());
                exc.printStackTrace();
                AbstractCommentsStage.this.loading = false;
            }
        });
    }

    public final void rebuild(JSONObject jSONObject, boolean z) {
        try {
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArray = jSONObject.getJSONArray("comments");
            for (int i = 0; i < jSONArray.length(); i++) {
                arrayList.add(new Comment(jSONArray.getJSONObject(i)));
            }
            if (this.listBox.countItems() > 0) {
                this.lastShiftY = this.listBox.getShiftY();
            }
            this.listBox.removeAllItems();
            beforeAddingComments(this.listBox);
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                Comment comment = (Comment) arrayList.get(i2);
                ListBox listBox = this.listBox;
                listBox.addItem(new CommentItem(comment, listBox.getClientWidth()));
            }
            if (z) {
                this.listBox.setShiftY((-r6.getContentHeight()) + this.listBox.getClientHeight());
            } else {
                this.listBox.setShiftY(this.lastShiftY);
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void enter() {
        int width;
        super.enter();
        User user = Backend.getInstance().getUser();
        Page page = new Page(this.context, this.title, Resources.ICON_NOTIFICATION, this.gui);
        this.page = page;
        page.setOnBackgroundClick(new Runnable() { // from class: info.flowersoft.theotown.stages.AbstractCommentsStage.3
            @Override // java.lang.Runnable
            public void run() {
                AbstractCommentsStage.this.getGameStack().pop();
            }
        });
        this.textField = null;
        int clientWidth = this.page.getControlLine().getClientWidth();
        GoldButton goldButtonAddButton = this.page.addButton(0, "", true, false, new Runnable() { // from class: info.flowersoft.theotown.stages.AbstractCommentsStage.4
            @Override // java.lang.Runnable
            public void run() {
                if (AbstractCommentsStage.this.listBox.getShiftY() > (-(AbstractCommentsStage.this.listBox.getContentHeight() - AbstractCommentsStage.this.listBox.getClientHeight())) / 2) {
                    AbstractCommentsStage.this.listBox.setShiftY((-AbstractCommentsStage.this.listBox.getContentHeight()) + AbstractCommentsStage.this.listBox.getClientHeight());
                } else {
                    AbstractCommentsStage.this.listBox.setShiftY(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
                }
            }
        });
        this.cmdNavigate = goldButtonAddButton;
        int width2 = clientWidth - goldButtonAddButton.getWidth();
        if (user.getAdmin() != 0) {
            if (isLocked()) {
                width = this.page.addButton(Resources.ICON_UNLOCK, this.translator.translate(2151), true, false, new Runnable() { // from class: info.flowersoft.theotown.stages.AbstractCommentsStage.5
                    @Override // java.lang.Runnable
                    public void run() {
                        AbstractCommentsStage.this.setCommentSectionLocked(false);
                    }
                }).getWidth();
            } else {
                width = this.page.addButton(Resources.ICON_LOCKED, this.translator.translate(563), true, false, new Runnable() { // from class: info.flowersoft.theotown.stages.AbstractCommentsStage.6
                    @Override // java.lang.Runnable
                    public void run() {
                        AbstractCommentsStage.this.setCommentSectionLocked(true);
                    }
                }).getWidth();
            }
            width2 -= width;
        }
        if (isLocked()) {
            GoldButton goldButtonAddButton2 = this.page.addButton(Resources.ICON_LOCKED, this.translator.translate(684), false, false, new Runnable() { // from class: info.flowersoft.theotown.stages.AbstractCommentsStage.7
                @Override // java.lang.Runnable
                public void run() {
                }
            });
            this.cmdRun = goldButtonAddButton2;
            goldButtonAddButton2.setEnabled(false);
            this.cmdRun.setBorderless(true);
        } else if (user.isForumConnected()) {
            String cannotCommentReason = getCannotCommentReason(user);
            if (cannotCommentReason == null) {
                GoldButton goldButtonAddButton3 = this.page.addButton(Resources.ICON_PLAY, this.translator.translate(2376), false, false, new Runnable() { // from class: info.flowersoft.theotown.stages.AbstractCommentsStage.8
                    @Override // java.lang.Runnable
                    public void run() {
                        String text = AbstractCommentsStage.this.textField.getText();
                        if (text.isEmpty()) {
                            return;
                        }
                        AbstractCommentsStage.this.enterComment(text);
                        AbstractCommentsStage.this.textField.setText("");
                    }
                });
                this.cmdRun = goldButtonAddButton3;
                goldButtonAddButton3.setGolden(true);
                this.cmdRun.addSensitiveKey(66);
                this.cmdRun.setRightIcon(true);
                this.textField = new TextField(0, 0, (width2 - this.cmdRun.getWidth()) - 4, this.page.getControlLine().getClientHeight(), this.page.getControlLine().getFirstPart());
                String targetIdentifier = getTargetIdentifier();
                Map<String, String> map = lastInputs;
                if (map.containsKey(targetIdentifier)) {
                    this.textField.setText(map.get(targetIdentifier));
                }
                this.textField.setHint(this.translator.translate(2159));
                this.textField.setActive();
            } else {
                ElementLine controlLine = this.page.getControlLine();
                new Label(cannotCommentReason, 0, 0, 0, controlLine.getClientHeight(), controlLine.getThirdPart()).setAlignment(1.0f, 0.5f);
            }
        } else {
            GoldButton goldButtonAddButton4 = this.page.addButton(Resources.ICON_ACCOUNT, this.translator.translate(2275), false, false, new Runnable() { // from class: info.flowersoft.theotown.stages.AbstractCommentsStage.9
                @Override // java.lang.Runnable
                public void run() {
                    AbstractCommentsStage.this.getGameStack().push(new AccountStage(AbstractCommentsStage.this.context));
                }
            });
            this.cmdRun = goldButtonAddButton4;
            goldButtonAddButton4.setGolden(true);
            this.cmdRun.addSensitiveKey(66);
        }
        ListBox listBox = new ListBox(0, 0, 0, 0, this.page.getContentPanel()) { // from class: info.flowersoft.theotown.stages.AbstractCommentsStage.10
            @Override // io.blueflower.stapel2d.gui.ListBox, io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i, int i2) {
                super.draw(i, i2);
            }
        };
        this.listBox = listBox;
        listBox.fillParent();
        JSONObject jSONObject = this.lastResponse;
        if (jSONObject == null) {
            reload(true);
        } else {
            rebuild(jSONObject, false);
        }
        new Gadget(0, 0, this.gui.getClientWidth(), this.gui.getClientHeight(), this.gui) { // from class: info.flowersoft.theotown.stages.AbstractCommentsStage.11
            @Override // io.blueflower.stapel2d.gui.Gadget
            public void draw(int i, int i2) {
                if (AbstractCommentsStage.this.isLoading()) {
                    int i3 = i + this.x;
                    int i4 = i2 + this.y;
                    Engine engine = this.skin.engine;
                    float fMillis = ((TimeUtils.millis() % 1000) / 1000.0f) * 2.0f * 3.1415927f;
                    engine.setColor(this.skin.cTextAccent);
                    Drawing.getInstance().drawCircle(i3 + (this.width * 0.5f), i4 + (this.height * 0.5f), 50.0f, 55.0f, fMillis, fMillis + 1.5707964f, 1.0f, 1.0f, engine);
                    engine.setColor(Colors.WHITE);
                }
            }
        };
    }

    public String getCannotCommentReason(User user) {
        if (user == null || user.getPermissions() == 0) {
            return this.translator.translate(3290);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isLoading() {
        return this.loading;
    }

    public final void setCommentSectionLocked(boolean z) {
        this.loading = true;
        sendLockRequest(z, new Service.Handler() { // from class: info.flowersoft.theotown.stages.AbstractCommentsStage.12
            @Override // info.flowersoft.theotown.backend.Service.Handler
            public void onSuccess(JSONObject jSONObject) {
                AbstractCommentsStage.this.loading = false;
                AbstractCommentsStage.this.addTask(new Runnable() { // from class: info.flowersoft.theotown.stages.AbstractCommentsStage.12.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AbstractCommentsStage.this.getGameStack().refreshCurrentStage();
                    }
                });
            }

            @Override // info.flowersoft.theotown.backend.Service.Handler
            public void onFailure(JSONObject jSONObject) {
                AbstractCommentsStage.this.loading = false;
                AbstractCommentsStage.this.handleFailuredRequest(jSONObject);
            }
        });
    }

    public final void enterComment(final String str) {
        this.loading = true;
        sendCommentRequest(str, new Service.Handler() { // from class: info.flowersoft.theotown.stages.AbstractCommentsStage.13
            @Override // info.flowersoft.theotown.backend.Service.Handler
            public void onSuccess(JSONObject jSONObject) {
                AbstractCommentsStage.this.reload(true);
            }

            @Override // info.flowersoft.theotown.backend.Service.Handler
            public void onFailure(JSONObject jSONObject) {
                AbstractCommentsStage.this.loading = false;
                AbstractCommentsStage.this.handleFailuredRequest(jSONObject);
                if (AbstractCommentsStage.this.textField.getText().length() == 0) {
                    AbstractCommentsStage.this.textField.setText(str);
                }
            }
        });
    }

    public final void deleteComment(int i) {
        sendDeleteRequest(i, new Service.Handler() { // from class: info.flowersoft.theotown.stages.AbstractCommentsStage.14
            @Override // info.flowersoft.theotown.backend.Service.Handler
            public void onSuccess(JSONObject jSONObject) {
                AbstractCommentsStage.this.reload(false);
            }

            @Override // info.flowersoft.theotown.backend.Service.Handler
            public void onFailure(JSONObject jSONObject) {
                AbstractCommentsStage.this.handleFailuredRequest(jSONObject);
            }
        });
    }

    public final void handleFailuredRequest(JSONObject jSONObject) {
        TheoTown.runtimeFeatures.showToast("ERROR: " + jSONObject.optString("hint", jSONObject.optString("status")));
    }

    @Override // info.flowersoft.theotown.stages.BaseStage
    public void onUpdate() {
        drawBackground();
        TextField textField = this.textField;
        if (textField != null) {
            this.cmdRun.setEnabled(isInputValid(textField.getText()));
        }
        this.cmdNavigate.setEnabled(this.listBox.getContentHeight() > this.listBox.getClientHeight());
        this.cmdNavigate.setIcon(this.listBox.getShiftY() > ((float) ((-(this.listBox.getContentHeight() - this.listBox.getClientHeight())) / 2)) ? Resources.ICON_DOWN : Resources.ICON_UP);
        this.cmdNavigate.getIconGadget().setColor(this.cmdNavigate.isEnabled() ? Resources.skin.cText : Resources.skin.cTextSecondary);
    }

    public final boolean isInputValid(String str) {
        return str.trim().length() >= 2 && !WordFilter.getInstance().isForbidden(str);
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void leave() {
        super.leave();
        this.lastShiftY = this.listBox.getShiftY();
        if (this.textField != null) {
            lastInputs.put(getTargetIdentifier(), this.textField.getText());
        }
    }

    public final void askForDeleteComment(final Comment comment) {
        Dialog dialog = new Dialog(Resources.ICON_TRASH, this.translator.translate(2991), StringFormatter.format(this.translator.translate(2973), comment.author), this.gui);
        dialog.addCancelButton(Resources.ICON_CANCEL, this.translator.translate(1477));
        dialog.addButton(Resources.ICON_TRASH, this.translator.translate(1622), false, new Runnable() { // from class: info.flowersoft.theotown.stages.AbstractCommentsStage$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                AbstractCommentsStage.m2202$r8$lambda$ozdgSFRTEIEpBTn0f_yKgTqLKQ(this.f$0, comment);
            }
        }).addSensitiveKey(66);
        dialog.distributeButtons();
        dialog.setVisible(true);
    }

    /* JADX INFO: renamed from: $r8$lambda$oz-dgSFRTEIEpBTn0f_yKgTqLKQ, reason: not valid java name */
    public static /* synthetic */ void m2202$r8$lambda$ozdgSFRTEIEpBTn0f_yKgTqLKQ(AbstractCommentsStage abstractCommentsStage, Comment comment) {
        abstractCommentsStage.getClass();
        abstractCommentsStage.deleteComment(comment.id);
    }

    public final void askForReportComment(final Comment comment) {
        if (hasReportedComment(comment.id)) {
            return;
        }
        ReportDialog.show(this.context, this.gui, StringFormatter.format(this.translator.translate(1128), comment.author), new ReportDialog.Reporter() { // from class: info.flowersoft.theotown.stages.AbstractCommentsStage$$ExternalSyntheticLambda1
            @Override // info.flowersoft.theotown.ui.ReportDialog.Reporter
            public final void report(String str, Runnable runnable, Setter setter) {
                AbstractCommentsStage.$r8$lambda$ax9SuPvw84yhZI7ZRTManerf_hE(this.f$0, comment, str, runnable, setter);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$ax9SuPvw84yhZI7ZRTManerf_hE(AbstractCommentsStage abstractCommentsStage, Comment comment, String str, Runnable runnable, Setter setter) {
        abstractCommentsStage.getClass();
        abstractCommentsStage.sendReportRequest(comment.id, str, runnable, setter);
    }

    public class CommentHeaderItem extends ListItem {
        public String author;
        public Color authorColor;
        public boolean feature;
        public ImageProvider imageProvider;
        public List<String> lines;
        public String text;
        public Font textFont;

        public CommentHeaderItem(int i, String str, String str2, Color color, boolean z, ImageProvider imageProvider) {
            super("");
            Font font = Resources.skin.fontSmall;
            this.textFont = font;
            this.text = str;
            this.lines = TextFrame.calculateLines(str, i - 90, font);
            this.author = str2;
            this.authorColor = color;
            this.feature = z;
            this.imageProvider = imageProvider;
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public void draw(boolean z, int i, int i2, int i3, int i4, int i5, Skin skin) {
            Engine engine;
            drawBackground(false, i, i2, i3, i4, i5, skin);
            Engine engine2 = skin.engine;
            ImageProvider imageProvider = this.imageProvider;
            Image image = imageProvider != null ? imageProvider.get() : null;
            if (image != null) {
                engine = engine2;
                float f = 80;
                Drawing.getInstance().drawRoundedFit(engine, image, i2, i3, f, f, this.imageProvider.getFrame(), 4.0f);
            } else {
                engine2.setColor(skin.cTextSecondary);
                float f2 = 82;
                engine2.drawNinePatch(Resources.IMAGE_WORLD, i2 - 1, i3 - 1, f2, f2, skin.npWhiteRect);
                engine = engine2;
                engine.setColor(Colors.WHITE);
            }
            engine.setScale(0.5f, 0.5f);
            if (this.feature) {
                engine.drawImage(Resources.IMAGE_WORLD, i2 + 67, i3, Resources.ICON_RANK);
            }
            engine.setScale(1.0f, 1.0f);
            int i6 = i2 + 85;
            int i7 = i3 + 5;
            engine.setColor(ThemeManager.INSTANCE.transformColor(this.authorColor));
            engine.drawText(this.textFont, this.author, i2 + 90, i7);
            int iRound = i7 + Math.round(this.textFont.getHeight());
            engine.setColor(skin.cText);
            for (int i8 = 0; i8 < this.lines.size(); i8++) {
                engine.drawText(this.textFont, this.lines.get(i8), i6, iRound);
                iRound += Math.round(this.textFont.getHeight());
            }
            engine.setColor(Colors.WHITE);
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public int getHeight(boolean z) {
            return Math.max(((this.lines.size() + 1) * Math.round(this.textFont.getHeight())) + 10, 81);
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public void onClick(int i, int i2) {
            super.onClick(i, i2);
        }
    }

    public class CommentItem extends ListItem {
        public boolean admin;
        public Comment comment;
        public boolean creator;
        public String lang;
        public List<String> lines;
        public boolean own;
        public boolean showTranslation;
        public Font textFont;
        public List<String> translatedLines;
        public boolean translationAvailable;
        public int width;

        public CommentItem(Comment comment, int i) {
            super("");
            this.textFont = Resources.skin.fontSmall;
            this.comment = comment;
            this.text = comment.content;
            this.width = i;
            User user = Backend.getInstance().getUser();
            boolean z = false;
            if (user.isValid()) {
                this.admin = user.getAdmin() > 0;
                this.own = user.getId() == ((long) comment.authorId);
                this.creator = user.getId() == ((long) AbstractCommentsStage.this.getOwnerId());
            }
            boolean zIsTranslationAvailable = isTranslationAvailable();
            this.translationAvailable = zIsTranslationAvailable;
            if (this.admin && zIsTranslationAvailable) {
                z = true;
            }
            this.showTranslation = z;
            updateTexts();
        }

        public final void updateTexts() {
            this.lines = TextFrame.calculateLines(this.text, this.width - 40, this.textFont);
            if (!this.showTranslation) {
                this.translatedLines = Collections.EMPTY_LIST;
                this.lang = "";
            } else {
                this.translatedLines = TextFrame.calculateLines(this.comment.contentTranslated, this.width - 40, this.textFont);
                this.lang = new Locale(this.comment.contentLang).getDisplayLanguage();
            }
        }

        public final boolean isTranslationAvailable() {
            return (this.comment.contentTranslated.isEmpty() || this.comment.contentLang.isEmpty() || this.comment.contentLang.equals("en") || this.comment.contentTranslated.equals(this.comment.content)) ? false : true;
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public void draw(boolean z, int i, int i2, int i3, int i4, int i5, Skin skin) {
            drawBackground(false, i, i2, i3, i4, i5, skin);
            Engine engine = skin.engine;
            int i6 = i2 + 5;
            int i7 = i3 + 5;
            String str = this.comment.author;
            if (str == null || str.isEmpty()) {
                engine.setColor(skin.cTextSecondary);
                str = "Anonymous";
            } else {
                engine.setColor(ThemeManager.INSTANCE.transformColor(this.comment.authorColor));
            }
            float f = i7;
            engine.drawText(this.textFont, str, i2 + 10, f);
            if (this.comment.isCreator) {
                engine.setColor(Colors.WHITE);
                engine.setScale(0.5f, 0.5f);
                engine.drawImage(Resources.IMAGE_WORLD, i2 + 11 + this.textFont.getWidth(str), i3 + 4, AbstractCommentsStage.this.authorIcon);
                engine.setScale(1.0f, 1.0f);
                str = str + "       ";
            }
            engine.setColor(skin.cTextSecondary);
            float f2 = i6;
            engine.drawText(this.textFont, DateFormat.getDateTimeInstance().format(new Date(this.comment.time * 1000)) + "", this.textFont.getWidth(str) + f2 + 10.0f, f);
            int iRound = i7 + Math.round(this.textFont.getHeight());
            engine.setColor(skin.cText);
            for (int i8 = 0; i8 < this.lines.size(); i8++) {
                engine.drawText(this.textFont, this.lines.get(i8), f2, iRound);
                iRound += Math.round(this.textFont.getHeight());
            }
            if (!this.translatedLines.isEmpty()) {
                engine.setColor(Colors.LIGHT_GRAY);
                engine.drawText(this.textFont, StringFormatter.format(AbstractCommentsStage.this.translator.translate(2550), this.lang), f2, iRound);
                int iRound2 = iRound + Math.round(this.textFont.getHeight());
                engine.setColor(skin.cTextGreen);
                for (int i9 = 0; i9 < this.translatedLines.size(); i9++) {
                    engine.drawText(this.textFont, this.translatedLines.get(i9), f2, iRound2);
                    iRound2 += Math.round(this.textFont.getHeight());
                }
            } else if (!this.showTranslation && this.translationAvailable) {
                engine.setColor(skin.cTextAccent);
                engine.drawText(this.textFont, AbstractCommentsStage.this.translator.translate(IronSourceError.ERROR_BN_RELOAD_SKIP_BANNER_LAYOUT_IS_NULL), f2, iRound);
                Math.round(this.textFont.getHeight());
            }
            boolean z2 = this.admin || this.own || this.creator;
            engine.setColor(Colors.WHITE);
            engine.setScale(0.5f, 0.5f);
            engine.setTransparency(100);
            if (z2 || !AbstractCommentsStage.this.hasReportedComment(this.comment.id)) {
                engine.drawImage(Resources.IMAGE_WORLD, (i2 + i4) - 15, i3 + 15, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f, 0.5f, z2 ? Resources.ICON_REMOVE : AbstractCommentsStage.this.REPORT_FRAME);
            }
            engine.setTransparency(255);
            engine.setScale(1.0f, 1.0f);
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public int getHeight(boolean z) {
            int size = this.lines.size();
            int size2 = size + 1;
            if (!this.translatedLines.isEmpty()) {
                size2 += this.translatedLines.size() + 1;
            } else if (!this.showTranslation && this.translationAvailable) {
                size2 = size + 2;
            }
            return Math.max((size2 * Math.round(this.textFont.getHeight())) + 10, 30);
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public void onClick(int i, int i2) {
            if (i >= this.width - 30 && i2 <= 30) {
                super.onClick(i, i2);
                if (this.admin || this.own || this.creator) {
                    AbstractCommentsStage.this.askForDeleteComment(this.comment);
                    return;
                } else {
                    AbstractCommentsStage.this.askForReportComment(this.comment);
                    return;
                }
            }
            if (!this.translationAvailable || this.showTranslation) {
                return;
            }
            this.showTranslation = true;
            updateTexts();
        }
    }

    public class Comment {
        public final String author;
        public Color authorColor;
        public final int authorId;
        public final String content;
        public final String contentLang;
        public final String contentTranslated;
        public final int id;
        public final boolean isCreator;
        public final long time;

        public Comment(JSONObject jSONObject) throws JSONException {
            this.id = jSONObject.getInt(C3670j8.x);
            this.authorId = jSONObject.getInt("author_id");
            this.content = jSONObject.getString(HandleInvocationsFromAdViewer.KEY_PRIVACY_UPDATE_CONTENT);
            this.contentLang = jSONObject.getString("content_lang");
            this.contentTranslated = jSONObject.getString("content_translated");
            this.time = jSONObject.getLong("time");
            this.author = jSONObject.optString("author", "");
            String strOptString = jSONObject.optString("author_color", "");
            this.isCreator = jSONObject.optBoolean("is_creator", false);
            if (strOptString == null || strOptString.isEmpty()) {
                this.authorColor = Colors.GRAY;
                return;
            }
            try {
                this.authorColor = Color.fromHexRGB(strOptString);
            } catch (NumberFormatException unused) {
                this.authorColor = Colors.GRAY;
            }
        }
    }
}
