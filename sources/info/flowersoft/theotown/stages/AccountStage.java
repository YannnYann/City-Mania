package info.flowersoft.theotown.stages;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.utils.Base64Coder;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.backend.Backend;
import info.flowersoft.theotown.backend.Service;
import info.flowersoft.theotown.backend.User;
import info.flowersoft.theotown.backend.UserService;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.TaskManager;
import info.flowersoft.theotown.stages.AccountStage;
import info.flowersoft.theotown.ui.Dialog;
import info.flowersoft.theotown.ui.GoldButton;
import info.flowersoft.theotown.ui.IconButton;
import info.flowersoft.theotown.ui.Page;
import info.flowersoft.theotown.ui.PopupBuilder;
import info.flowersoft.theotown.ui.TaskCompletionDialogShower;
import info.flowersoft.theotown.ui.TextField;
import info.flowersoft.theotown.util.Hashing;
import info.flowersoft.theotown.util.LineLayoutFiller;
import info.flowersoft.theotown.util.RSAEncrypter;
import info.flowersoft.theotown.util.StringFormatter;
import info.flowersoft.theotown.util.json.JSONObject;
import io.bidmachine.protobuf.EventTypeExtended;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Label;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.gui.Skin;
import io.blueflower.stapel2d.util.Tuple;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class AccountStage extends BaseStage {
    public static final Service TEST_BACKEND_SERVICE = new Service("user/test_backend");
    public GoldButton cmdLogin;
    public final JSONObject config;
    public boolean duringLogin;
    public int enterCtr;
    public boolean isSetup;
    public String name;
    public String pw;
    public TextField tfName;
    public TextField tfPassword;

    public AccountStage(Stapel2DGameContext stapel2DGameContext) {
        super(stapel2DGameContext);
        this.config = Resources.getSpecificConfig("connection");
        this.enterCtr = 0;
        this.isSetup = false;
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void prepare() {
        super.prepare();
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void enter() {
        super.enter();
        final int i = this.enterCtr + 1;
        this.enterCtr = i;
        if (this.tfName != null) {
            new Thread(new Runnable() { // from class: info.flowersoft.theotown.stages.AccountStage$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    AccountStage.$r8$lambda$FqTaKPQPRAI5txfqSh_XEpXWWmo(this.f$0, i);
                }
            }).start();
        } else {
            setup();
        }
    }

    public static /* synthetic */ void $r8$lambda$FqTaKPQPRAI5txfqSh_XEpXWWmo(final AccountStage accountStage, final int i) {
        accountStage.getClass();
        try {
            Thread.sleep(100L);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        accountStage.addTask(new Runnable() { // from class: info.flowersoft.theotown.stages.AccountStage$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                AccountStage.$r8$lambda$xfQw6s5zxJ5KWzV8iSzhn_W6zzA(this.f$0, i);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$xfQw6s5zxJ5KWzV8iSzhn_W6zzA(AccountStage accountStage, int i) {
        if (accountStage.enterCtr == i) {
            accountStage.setup();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.util.ArrayList, java.util.List] */
    /* JADX WARN: Type inference failed for: r6v34 */
    /* JADX WARN: Type inference failed for: r6v35, types: [int] */
    /* JADX WARN: Type inference failed for: r6v39 */
    public final void setup() {
        boolean z;
        TextField textField;
        TextField textField2;
        this.isSetup = true;
        final User user = Backend.getInstance().getUser();
        TextField textField3 = this.tfName;
        if (textField3 != null) {
            this.name = textField3.getText();
            this.tfName.free();
            this.tfName = null;
        }
        TextField textField4 = this.tfPassword;
        if (textField4 != null) {
            this.pw = textField4.getText();
            this.tfPassword.free();
            this.tfPassword = null;
        }
        Page page = new Page(this.context, this.translator.translate(2603), Resources.ICON_ACCOUNT, this.gui);
        page.setOnBackgroundClick(new Runnable() { // from class: info.flowersoft.theotown.stages.AccountStage.1
            @Override // java.lang.Runnable
            public void run() {
                AccountStage.this.getGameStack().pop();
            }
        });
        Panel contentPanel = page.getContentPanel();
        contentPanel.push();
        contentPanel.setHeight(this.gui.getClientHeight() - contentPanel.getAbsoluteY());
        LineLayoutFiller lineLayoutFiller = new LineLayoutFiller(20, 1, contentPanel);
        lineLayoutFiller.addText(this.translator.translate(154)).setFont(Resources.skin.fontSmall);
        lineLayoutFiller.finalizeLine();
        lineLayoutFiller.setLineHeight(Math.min(((contentPanel.getClientHeight() - lineLayoutFiller.getStartY()) + 15) / 10, 30));
        lineLayoutFiller.setStart(Math.max(10, (contentPanel.getClientWidth() - 300) / 2), lineLayoutFiller.getStartY());
        lineLayoutFiller.setLineWidth(contentPanel.getClientWidth() - (lineLayoutFiller.getStartX() * 2));
        int startY = lineLayoutFiller.getStartY();
        lineLayoutFiller.addLabel(this.translator.translate(1059)).setAlignment(0.5f, 0.8f);
        lineLayoutFiller.finalizeLine();
        lineLayoutFiller.setTargetSize(0, 80);
        Label labelAddLabel = lineLayoutFiller.addLabel(this.translator.translate(2867));
        if (user.isForumConnected()) {
            Color userColor = Backend.getInstance().getUser().getUserColor();
            if (userColor.equals(Colors.BLACK)) {
                userColor = Resources.skin.cText;
            }
            lineLayoutFiller.addLabel(user.getForumName()).setColor(userColor);
            lineLayoutFiller.finalizeLine();
            if (user.getForumPw() != null && !user.getForumPw().isEmpty()) {
                lineLayoutFiller.addLabel(this.translator.translate(1872)).setFont(Resources.skin.fontSmall);
                lineLayoutFiller.finalizeLine();
            }
            lineLayoutFiller.setTargetSize(0, lineLayoutFiller.getLineHeight());
            lineLayoutFiller.setTargetSize(1, -1);
            lineLayoutFiller.setTargetSize(2, 100);
            lineLayoutFiller.addButton(Resources.ICON_HAMBURGER, "", new AnonymousClass2(user));
            lineLayoutFiller.addGoldButton(Resources.ICON_CITY, this.translator.translate(255), new Runnable() { // from class: info.flowersoft.theotown.stages.AccountStage.3
                @Override // java.lang.Runnable
                public void run() {
                    TheoTown.runtimeFeatures.openURLInApp(AccountStage.this.config.optString("forum profile url") + user.getForumId());
                }
            }, null);
            if (user.getForumPw() != null && !user.getForumPw().isEmpty()) {
                lineLayoutFiller.addButton(Resources.ICON_CANCEL, this.translator.translate(913), new Runnable() { // from class: info.flowersoft.theotown.stages.AccountStage.4
                    @Override // java.lang.Runnable
                    public void run() {
                        Backend.getInstance().logout();
                        AccountStage.this.getGameStack().refreshCurrentStage();
                    }
                });
            }
            lineLayoutFiller.finalizeLine();
            lineLayoutFiller.setTargetSize(0, -1);
            z = false;
        } else {
            z = false;
            TextField textField5 = new TextField(0, 0, 100, lineLayoutFiller.getLineHeight(), contentPanel);
            this.tfName = textField5;
            textField5.setPassword(false);
            this.tfName.setAutoFill();
            this.tfName.setActive();
            lineLayoutFiller.addGadget(this.tfName);
            lineLayoutFiller.finalizeLine();
            Label label = new Label(this.translator.translate(94), 0, 4, labelAddLabel.getClientWidth(), labelAddLabel.getClientHeight(), labelAddLabel);
            label.setAlignment(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f);
            label.setFont(Resources.skin.fontSmall);
            label.setColor(Colors.GRAY);
            lineLayoutFiller.addLabel(this.translator.translate(889));
            TextField textField6 = new TextField(0, 0, 100, lineLayoutFiller.getLineHeight(), contentPanel);
            this.tfPassword = textField6;
            textField6.setPassword(true);
            this.tfPassword.setAutoFill();
            lineLayoutFiller.addGadget(this.tfPassword);
            lineLayoutFiller.finalizeLine();
            lineLayoutFiller.setTargetSize(0, lineLayoutFiller.getLineHeight());
            lineLayoutFiller.setTargetSize(1, -1);
            lineLayoutFiller.setTargetSize(2, 80);
            lineLayoutFiller.addButton(Resources.ICON_HAMBURGER, "", new LineLayoutFiller.ClickHandler() { // from class: info.flowersoft.theotown.stages.AccountStage.5
                @Override // info.flowersoft.theotown.util.LineLayoutFiller.ClickHandler
                public void handle(Gadget gadget) {
                    new PopupBuilder(gadget).addItem(Resources.ICON_HELP, AccountStage.this.translator.translate(1805), new Runnable() { // from class: info.flowersoft.theotown.stages.AccountStage.5.2
                        @Override // java.lang.Runnable
                        public void run() {
                            TheoTown.runtimeFeatures.openURLInApp(AccountStage.this.config.optString("forum forgot url"));
                        }
                    }).addItem(Resources.ICON_TRASH, AccountStage.this.translator.translate(1201), new Runnable() { // from class: info.flowersoft.theotown.stages.AccountStage.5.1
                        @Override // java.lang.Runnable
                        public void run() {
                            TheoTown.runtimeFeatures.openURLInApp(AccountStage.this.config.optString("forum delete url"));
                        }
                    }).build();
                }
            });
            IconButton iconButtonAddButton = lineLayoutFiller.addButton(Resources.ICON_EDIT, this.translator.translate(EventTypeExtended.EVENT_TYPE_EXTENDED_SK_OVERLAY_DISMISSING_VALUE), new Runnable() { // from class: info.flowersoft.theotown.stages.AccountStage.6
                @Override // java.lang.Runnable
                public void run() {
                    TheoTown.runtimeFeatures.openURLInApp(AccountStage.this.config.optString("forum register url"));
                }
            });
            GoldButton goldButtonAddGoldButton = lineLayoutFiller.addGoldButton(Resources.ICON_OK, this.translator.translate(2397), new Runnable() { // from class: info.flowersoft.theotown.stages.AccountStage.7
                @Override // java.lang.Runnable
                public void run() {
                    String text = AccountStage.this.tfName.getText();
                    Backend backend = Backend.getInstance();
                    AccountStage accountStage = AccountStage.this;
                    backend.onForumLogin(text, accountStage.encryptPw(text, accountStage.tfPassword.getText()));
                    AccountStage.this.duringLogin = true;
                    Backend.getInstance().addTask(AccountStage.TEST_BACKEND_SERVICE.buildTask(AccountStage.TEST_BACKEND_SERVICE.buildRequest("test").put("hint", "forum").build(), new AnonymousClass1(text)));
                }

                /* JADX INFO: renamed from: info.flowersoft.theotown.stages.AccountStage$7$1, reason: invalid class name */
                public class AnonymousClass1 implements Service.Handler {
                    public final /* synthetic */ String val$user;

                    public AnonymousClass1(String str) {
                        this.val$user = str;
                    }

                    @Override // info.flowersoft.theotown.backend.Service.Handler
                    public void onSuccess(JSONObject jSONObject) {
                        AccountStage accountStage = AccountStage.this;
                        final String str = this.val$user;
                        accountStage.addTask(new Runnable() { // from class: info.flowersoft.theotown.stages.AccountStage$7$1$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                AccountStage.AnonymousClass7.AnonymousClass1.m2204$r8$lambda$QmcbZZ2XqoAGEj0RJQDzn7CUaY(this.f$0, str);
                            }
                        });
                    }

                    /* JADX INFO: renamed from: $r8$lambda$QmcbZZ2XqoAGEj0RJQDzn7CU-aY, reason: not valid java name */
                    public static /* synthetic */ void m2204$r8$lambda$QmcbZZ2XqoAGEj0RJQDzn7CUaY(AnonymousClass1 anonymousClass1, String str) {
                        anonymousClass1.getClass();
                        if (Backend.getInstance().getUser().getForumId() != 0) {
                            TheoTown.runtimeFeatures.showToast(AccountStage.this.translator.translate(2106));
                            String forumName = Backend.getInstance().getUser().getForumName();
                            if (forumName != null && !forumName.isEmpty() && !forumName.equals(str) && AccountStage.this.tfPassword != null) {
                                Backend backend = Backend.getInstance();
                                AccountStage accountStage = AccountStage.this;
                                backend.onForumLogin(forumName, accountStage.encryptPw(forumName, accountStage.tfPassword.getText()));
                                AccountStage.this.name = forumName;
                            }
                            AccountStage.this.getGameStack().refreshCurrentStage();
                        } else {
                            TheoTown.runtimeFeatures.showToast(AccountStage.this.translator.translate(2959));
                            if (AccountStage.this.tfPassword != null) {
                                AccountStage.this.tfPassword.setText("");
                            }
                        }
                        AccountStage.this.duringLogin = false;
                    }

                    @Override // info.flowersoft.theotown.backend.Service.Handler
                    public void onFailure(JSONObject jSONObject) {
                        String logoutHint = Backend.getInstance().getLogoutHint();
                        if (logoutHint == null || logoutHint.isEmpty()) {
                            logoutHint = AccountStage.this.translator.translate(430) + "\n" + jSONObject.optString("extra", "");
                        }
                        TheoTown.runtimeFeatures.showToast(logoutHint);
                        AccountStage.this.duringLogin = false;
                    }
                }
            }, null);
            this.cmdLogin = goldButtonAddGoldButton;
            goldButtonAddGoldButton.addSensitiveKey(66);
            lineLayoutFiller.finalizeLine();
            lineLayoutFiller.setTargetSize(0, -1);
            int x = (this.cmdLogin.getX() - iconButtonAddButton.getX()) - 1;
            iconButtonAddButton.setMaxWidth(x);
            iconButtonAddButton.setWidth(x);
            iconButtonAddButton.layout();
        }
        if (!user.isForumConnected()) {
            addRegistrationProsAndCons(lineLayoutFiller);
        }
        ?? arrayList = new ArrayList();
        if (TheoTown.socialManager.isAvailable() && "steam".equals(TheoTown.socialManager.getState().getType())) {
            arrayList.add(new AccountType(Resources.ICON_OK, StringFormatter.format(this.translator.translate(2092), this.translator.translate(467))));
        }
        if (!arrayList.isEmpty()) {
            new Panel(lineLayoutFiller.getStartX() - 5, startY + 5, lineLayoutFiller.getLineWidth() + 10, (lineLayoutFiller.getStartY() - startY) - 5, contentPanel).pushToBack();
            startY = lineLayoutFiller.getStartY();
            lineLayoutFiller.addLabel(this.translator.translate(2914)).setAlignment(0.5f, 0.8f);
            lineLayoutFiller.finalizeLine();
            for (?? r6 = z; r6 < arrayList.size(); r6++) {
                AccountType accountType = (AccountType) arrayList.get(r6);
                int i = accountType.icon;
                String str = accountType.name;
                Runnable runnable = accountType.action;
                if (runnable == null) {
                    runnable = new Runnable() { // from class: info.flowersoft.theotown.stages.AccountStage.8
                        @Override // java.lang.Runnable
                        public void run() {
                        }
                    };
                }
                lineLayoutFiller.addButton(i, str, runnable).setEnabled(accountType.action != null ? true : z);
            }
            lineLayoutFiller.finalizeLine();
        }
        new Panel(lineLayoutFiller.getStartX() - 5, startY + 5, lineLayoutFiller.getLineWidth() + 10, lineLayoutFiller.getStartY() - startY, contentPanel).pushToBack();
        String str2 = this.name;
        if (str2 != null && (textField2 = this.tfName) != null) {
            textField2.setText(str2);
        }
        String str3 = this.pw;
        if (str3 != null && (textField = this.tfPassword) != null) {
            textField.setText(str3);
        }
        this.name = null;
        this.pw = null;
        TaskCompletionDialogShower.showDialog(745, 2997, this.translator, this.gui, TaskManager.getInstance().TASK_ACCOUNT_DISCLAIMER, new Runnable() { // from class: info.flowersoft.theotown.stages.AccountStage$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                AccountStage.$r8$lambda$iXBrKSSF9ljt8hQX8iZD2CZWbZs(this.f$0);
            }
        }, new Runnable() { // from class: info.flowersoft.theotown.stages.AccountStage$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                AccountStage.$r8$lambda$wZQSamcmvfBFL4DhxvZLpD53UL8(this.f$0);
            }
        });
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.stages.AccountStage$2, reason: invalid class name */
    public class AnonymousClass2 implements LineLayoutFiller.ClickHandler {
        public final /* synthetic */ User val$user;

        public AnonymousClass2(User user) {
            this.val$user = user;
        }

        @Override // info.flowersoft.theotown.util.LineLayoutFiller.ClickHandler
        public void handle(Gadget gadget) {
            PopupBuilder popupBuilder = new PopupBuilder(gadget);
            if (Gdx.app.getType() == Application.ApplicationType.Desktop && this.val$user.getSteamId() != 0 && this.val$user.getForumId() != 0) {
                popupBuilder.addItem(Resources.ICON_UNLOCK, AccountStage.this.translator.translate(3027), new Runnable() { // from class: info.flowersoft.theotown.stages.AccountStage.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Dialog dialog = new Dialog(Resources.FRAME_PEOPLE + 5, AccountStage.this.translator.translate(25), AccountStage.this.translator.translate(2248), AccountStage.this.gui);
                        dialog.addCancelButton(Resources.ICON_CANCEL, AccountStage.this.translator.translate(1477)).setMarked(true);
                        dialog.addButton(Resources.ICON_UNLOCK, AccountStage.this.translator.translate(3027), false, new Runnable() { // from class: info.flowersoft.theotown.stages.AccountStage.2.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                AccountStage.this.unlinkForumAccount();
                            }
                        });
                        dialog.distributeButtons();
                        dialog.setVisible(true);
                    }
                });
            }
            popupBuilder.addItem(Resources.ICON_TRASH, AccountStage.this.translator.translate(1201), new Runnable() { // from class: info.flowersoft.theotown.stages.AccountStage.2.2
                @Override // java.lang.Runnable
                public void run() {
                    TheoTown.runtimeFeatures.openURLInApp(AccountStage.this.config.optString("forum delete url"));
                }
            });
            popupBuilder.build();
        }
    }

    public static /* synthetic */ void $r8$lambda$iXBrKSSF9ljt8hQX8iZD2CZWbZs(AccountStage accountStage) {
        TextField textField = accountStage.tfName;
        if (textField != null) {
            textField.setVisible(false);
        }
        TextField textField2 = accountStage.tfPassword;
        if (textField2 != null) {
            textField2.setVisible(false);
        }
    }

    public static /* synthetic */ void $r8$lambda$wZQSamcmvfBFL4DhxvZLpD53UL8(AccountStage accountStage) {
        TextField textField = accountStage.tfName;
        if (textField != null) {
            textField.setVisible(true);
        }
        TextField textField2 = accountStage.tfPassword;
        if (textField2 != null) {
            textField2.setVisible(true);
        }
    }

    public final void addRegistrationProsAndCons(LineLayoutFiller lineLayoutFiller) {
        lineLayoutFiller.addLabel(this.translator.translate(3273)).setAlignment(0.5f, 0.8f);
        lineLayoutFiller.finalizeLine();
        int lineHeight = lineLayoutFiller.getLineHeight();
        lineLayoutFiller.setLineHeight(10);
        lineLayoutFiller.setTargetSize(0, 14);
        List listAsList = Arrays.asList(this.translator.translate(3427), this.translator.translate(1150), this.translator.translate(2617), this.translator.translate(1519));
        List listAsList2 = Arrays.asList(this.translator.translate(2209));
        Skin skin = Resources.skin;
        for (Tuple tuple : Arrays.asList(new Tuple(new Tuple("✔", skin.cTextGreen), listAsList), new Tuple(new Tuple("❌", skin.cTextRed), listAsList2))) {
            Tuple tuple2 = (Tuple) tuple.getFirst();
            for (String str : (List) tuple.getSecond()) {
                lineLayoutFiller.addLabel((String) tuple2.getFirst()).setColor((Color) tuple2.getSecond());
                lineLayoutFiller.addLabel(str);
                lineLayoutFiller.finalizeLine();
            }
        }
        lineLayoutFiller.setTargetSize(0, 0);
        lineLayoutFiller.setLineHeight(lineHeight);
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void drop() {
        super.drop();
        TextField textField = this.tfName;
        if (textField != null) {
            textField.free();
        }
        TextField textField2 = this.tfPassword;
        if (textField2 != null) {
            textField2.free();
        }
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void leave() {
        if (!this.isSetup) {
            super.leave();
            return;
        }
        this.isSetup = false;
        TextField textField = this.tfName;
        if (textField != null && textField.getParent() != null) {
            this.name = this.tfName.getText();
            this.pw = this.tfPassword.getText();
            if (Gdx.app.getType() == Application.ApplicationType.Android) {
                this.tfName.getParent().removeChild(this.tfName);
                this.tfPassword.getParent().removeChild(this.tfPassword);
            } else {
                this.tfName = null;
                this.tfPassword = null;
            }
        } else {
            this.tfName = null;
            this.tfPassword = null;
        }
        super.leave();
        User user = Backend.getInstance().getUser();
        if (this.duringLogin || !user.isForumConnected()) {
            return;
        }
        Backend.getInstance().invalidateSession();
        Service service = TEST_BACKEND_SERVICE;
        Backend.getInstance().addTask(service.buildTask(service.buildRequest("test").put("hint", "forum").build(), new Service.Handler() { // from class: info.flowersoft.theotown.stages.AccountStage.9
            @Override // info.flowersoft.theotown.backend.Service.Handler
            public void onSuccess(final JSONObject jSONObject) {
                AccountStage.this.addTask(new Runnable() { // from class: info.flowersoft.theotown.stages.AccountStage.9.1
                    @Override // java.lang.Runnable
                    public void run() {
                        jSONObject.toString();
                    }
                });
            }

            @Override // info.flowersoft.theotown.backend.Service.Handler
            public void onFailure(JSONObject jSONObject) {
                jSONObject.toString();
            }
        }));
    }

    @Override // info.flowersoft.theotown.stages.BaseStage
    public void onUpdate() {
        TextField textField;
        drawBackground();
        GoldButton goldButton = this.cmdLogin;
        if (goldButton != null && (textField = this.tfName) != null) {
            goldButton.setEnabled(textField.getText().length() >= 3 && this.tfPassword.getText().length() >= 3 && this.tfPassword.getText().length() <= 100);
        }
        if (this.tfName == null || this.tfPassword == null || !this.context.getKey().keyHit(61)) {
            return;
        }
        if (this.tfName.isActive()) {
            this.tfPassword.setActive();
        } else {
            this.tfName.setActive();
        }
    }

    public final void unlinkForumAccount() {
        Backend.getInstance().addTask(new UserService().unlinkSteamAccount(new UserService.UnlinkSteamHandler() { // from class: info.flowersoft.theotown.stages.AccountStage.10
            @Override // info.flowersoft.theotown.backend.UserService.UnlinkSteamHandler
            public void onSuccess() {
                Backend.getInstance().logout();
                AccountStage.this.context.requestRestart();
            }

            @Override // info.flowersoft.theotown.backend.UserService.UnlinkSteamHandler
            public void onFailure(String str) {
                TheoTown.runtimeFeatures.showToast("Could not unlink Steam account: " + str);
            }
        }));
    }

    public final String encryptPw(String str, String str2) {
        Charset charset = StandardCharsets.UTF_8;
        byte[] bytes = str2.getBytes(charset);
        byte[] bArrMd5 = Hashing.md5(str.getBytes(charset));
        int length = bytes.length;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr[i] = (byte) (bytes[i] ^ bArrMd5[i % bArrMd5.length]);
        }
        return new String(Base64Coder.encode(RSAEncrypter.publicEncrypt(bArr, Resources.KEYS.optString("forum public key"))));
    }

    public String toString() {
        return "AccountStage";
    }

    public static class AccountType {
        public Runnable action;
        public int icon;
        public String name;

        public AccountType(int i, String str) {
            this.name = str;
            this.icon = i;
        }
    }
}
