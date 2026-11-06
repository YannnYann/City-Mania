package info.flowersoft.theotown.ui;

import com.ironsource.C3522b4;
import com.ironsource.C3670j8;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.backend.Service;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.online.OnlineRegionStore;
import info.flowersoft.theotown.resources.PersistentData;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.ThemeManager;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.TranslationManager;
import io.blueflower.stapel2d.gui.Button;
import io.blueflower.stapel2d.gui.Label;
import io.blueflower.stapel2d.gui.ListBox;
import io.blueflower.stapel2d.gui.ListItem;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Skin;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class SelectUserDialog extends Dialog {
    public final Map<Long, User> cachedUsers;
    public final GoldButton cmdSelect;
    public String enteredText;
    public JSONObject fetchResult;
    public final int forbiddenUserId;
    public boolean lastRequestReturned;
    public long lastTextChange;
    public final ListBox listBox;
    public final OnlineRegionStore ors;
    public final UserReceiver receiver;
    public User selectedUser;
    public final PersistentData userCache;

    public interface UserReceiver {
        void canceled();

        void select(User user);
    }

    public SelectUserDialog(final UserReceiver userReceiver, final int i, Stapel2DGameContext stapel2DGameContext, Master master) {
        super(Resources.ICON_ONLINE_REGIONS, stapel2DGameContext.getTranslator().translate(3338), "", 300, 320, master);
        this.ors = new OnlineRegionStore();
        this.lastRequestReturned = true;
        this.fetchResult = null;
        this.userCache = new PersistentData("SelectUserDialog");
        this.cachedUsers = new HashMap();
        this.forbiddenUserId = i;
        this.receiver = userReceiver;
        TranslationManager translator = stapel2DGameContext.getTranslator();
        Label label = new Label(translator.translate(3520), 0, 0, 80, 30, this.contentPane);
        label.setAlignment(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f);
        final TextField textField = new TextField(label.getWidth(), 0, this.contentPane.getClientWidth() - label.getWidth(), 30, this.contentPane) { // from class: info.flowersoft.theotown.ui.SelectUserDialog.1
            @Override // info.flowersoft.theotown.ui.TextField
            public void onTextChange(String str) {
                SelectUserDialog.this.changedInput(str);
            }

            @Override // info.flowersoft.theotown.ui.TextField, io.blueflower.stapel2d.gui.SensitiveGadget, io.blueflower.stapel2d.gui.Gadget
            public void onUpdate() {
                super.onUpdate();
                SelectUserDialog.this.tick();
            }
        };
        textField.setHint(translator.translate(655));
        textField.setActive();
        this.listBox = new ListBox(0, textField.getHeight() + 5, this.contentPane.getClientWidth(), (this.contentPane.getClientHeight() - textField.getHeight()) - 5, getContentPane());
        setOnClose(new Runnable() { // from class: info.flowersoft.theotown.ui.SelectUserDialog.2
            @Override // java.lang.Runnable
            public void run() {
                textField.free();
            }
        });
        addHiddenCancelButton(new Runnable() { // from class: info.flowersoft.theotown.ui.SelectUserDialog.3
            @Override // java.lang.Runnable
            public void run() {
                userReceiver.canceled();
            }
        });
        int i2 = 0;
        int i3 = 0;
        GoldButton goldButtonAddButton = addButton(Resources.ICON_OK, translator.translate(90), false, false, true, new Runnable() { // from class: info.flowersoft.theotown.ui.SelectUserDialog$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                SelectUserDialog.m2394$r8$lambda$iMgIS87RRqcwHlX0t61Jcakwzw(this.f$0, i);
            }
        });
        this.cmdSelect = goldButtonAddButton;
        goldButtonAddButton.setGolden(true);
        goldButtonAddButton.addSensitiveKey(66);
        goldButtonAddButton.setEnabled(false);
        int i4 = 0;
        new Button(0, i2, i3, i4, this.contentPane) { // from class: info.flowersoft.theotown.ui.SelectUserDialog.4
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i5, int i6) {
            }

            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                SelectUserDialog.this.selectPreviousUser();
            }
        }.addSensitiveKey(19);
        new Button(0, i2, i3, i4, this.contentPane) { // from class: info.flowersoft.theotown.ui.SelectUserDialog.5
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i5, int i6) {
            }

            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                SelectUserDialog.this.selectNextUser();
            }
        }.addSensitiveKey(20).addSensitiveKey(61);
        loadCachedUsers();
        changedInput("");
    }

    /* JADX INFO: renamed from: $r8$lambda$iMgIS87RRqcwHlX0t6-1Jcakwzw, reason: not valid java name */
    public static /* synthetic */ void m2394$r8$lambda$iMgIS87RRqcwHlX0t61Jcakwzw(SelectUserDialog selectUserDialog, int i) {
        User user = selectUserDialog.selectedUser;
        if (user == null || user.id == i) {
            return;
        }
        selectUserDialog.finalUserSelection(user);
    }

    public final void finalUserSelection(User user) {
        user.useTime = System.currentTimeMillis();
        this.cachedUsers.put(Long.valueOf(user.id), user);
        saveCachedUsers();
        this.receiver.select(this.selectedUser);
        setVisible(false);
    }

    public final void loadCachedUsers() {
        this.cachedUsers.clear();
        JSONArray jSONArrayOptJSONArray = this.userCache.read().optJSONArray("users");
        if (jSONArrayOptJSONArray != null) {
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                if (jSONObjectOptJSONObject != null) {
                    try {
                        User user = new User(jSONObjectOptJSONObject);
                        if (System.currentTimeMillis() - user.useTime < 604800000) {
                            this.cachedUsers.put(Long.valueOf(user.id), user);
                        }
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void saveCachedUsers() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONArray jSONArray = new JSONArray();
            for (User user : this.cachedUsers.values()) {
                JSONObject jSONObject2 = new JSONObject();
                user.save(jSONObject2);
                jSONArray.put(jSONObject2);
            }
            jSONObject.put("users", jSONArray);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        this.userCache.write(jSONObject);
    }

    public final void selectPreviousUser() {
        selectRelativeUser(-1);
    }

    public final void selectNextUser() {
        selectRelativeUser(1);
    }

    public final void selectRelativeUser(int i) {
        if (this.listBox.countItems() > 1) {
            ListBox listBox = this.listBox;
            listBox.selectItemIndex(((listBox.getSelectedItemIndex() + i) + this.listBox.countItems()) % this.listBox.countItems());
            ListBox listBox2 = this.listBox;
            listBox2.getItem(listBox2.getSelectedItemIndex()).onClick(0, 0);
        }
    }

    public final void changedInput(String str) {
        this.enteredText = str;
    }

    public final void tick() {
        JSONObject jSONObject = this.fetchResult;
        if (jSONObject != null) {
            fillInListBox(this.listBox, jSONObject);
            this.fetchResult = null;
        }
        String str = this.enteredText;
        if (str != null && str.trim().length() >= 3 && System.currentTimeMillis() - this.lastTextChange > 1000 && this.lastRequestReturned) {
            this.lastTextChange = System.currentTimeMillis();
            this.lastRequestReturned = false;
            this.ors.fetchUsersByName(this.enteredText.trim(), new Service.Handler() { // from class: info.flowersoft.theotown.ui.SelectUserDialog.6
                @Override // info.flowersoft.theotown.backend.Service.Handler
                public void onSuccess(JSONObject jSONObject2) {
                    SelectUserDialog.this.fetchResult = jSONObject2;
                    SelectUserDialog.this.lastRequestReturned = true;
                }

                @Override // info.flowersoft.theotown.backend.Service.Handler
                public void onFailure(JSONObject jSONObject2) {
                    TheoTown.runtimeFeatures.showToast(jSONObject2.toString());
                    SelectUserDialog.this.lastRequestReturned = true;
                }
            });
            this.enteredText = null;
            return;
        }
        String str2 = this.enteredText;
        if (str2 != null && str2.isEmpty()) {
            fillWithCache();
            this.enteredText = null;
            return;
        }
        String str3 = this.enteredText;
        if (str3 == null || str3.trim().length() >= 3) {
            return;
        }
        this.listBox.removeAllItems();
        selectUser(null);
        this.enteredText = null;
    }

    public final void fillWithCache() {
        this.listBox.removeAllItems();
        if (this.cachedUsers.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList(this.cachedUsers.values());
        Collections.sort(arrayList, new Comparator<User>() { // from class: info.flowersoft.theotown.ui.SelectUserDialog.7
            @Override // java.util.Comparator
            public int compare(User user, User user2) {
                return (int) Math.signum(user2.useTime - user.useTime);
            }
        });
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            this.listBox.addItem(new UserItem((User) it.next(), this));
        }
        selectUser((User) arrayList.get(0));
    }

    public final void selectUser(User user) {
        this.selectedUser = user;
        this.cmdSelect.setEnabled((user == null || user.id == ((long) this.forbiddenUserId)) ? false : true);
    }

    public final void fillInListBox(ListBox listBox, JSONObject jSONObject) {
        listBox.removeAllItems();
        selectUser(null);
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("users");
        if (jSONArrayOptJSONArray != null) {
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                if (jSONObjectOptJSONObject != null) {
                    User userCreateUser = createUser(jSONObjectOptJSONObject);
                    listBox.addItem(new UserItem(userCreateUser, this));
                    if (listBox.countItems() == 1) {
                        selectUser(userCreateUser);
                        listBox.selectItemIndex(0);
                    }
                }
            }
        }
    }

    public final User createUser(JSONObject jSONObject) {
        Color colorFromHexRGB = Colors.GRAY;
        try {
            colorFromHexRGB = Color.fromHexRGB(jSONObject.optString(C3522b4.i.S, "888888"));
        } catch (Exception unused) {
        }
        return new User(jSONObject.optString("name"), colorFromHexRGB, jSONObject.optLong(C3670j8.x), jSONObject.optLong("forum_id"));
    }

    public static class UserItem extends ListItem {
        public final SelectUserDialog selectUserDialog;
        public final User user;
        public final Color userColor;

        @Override // io.blueflower.stapel2d.gui.ListItem
        public int getHeight(boolean z) {
            return 30;
        }

        public UserItem(User user, SelectUserDialog selectUserDialog) {
            super(user.name);
            this.user = user;
            this.userColor = ThemeManager.INSTANCE.transformColor(user.color);
            this.selectUserDialog = selectUserDialog;
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public void draw(boolean z, int i, int i2, int i3, int i4, int i5, Skin skin) {
            super.drawBackground(this.selectUserDialog.selectedUser == this.user, i, i2, i3, i4, i5, skin);
            Engine engine = skin.engine;
            engine.setColor(this.userColor);
            engine.drawText(skin.fontDefault, this.text, i2 + 5, i3, i4, i5, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f);
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public void onClick(int i, int i2) {
            super.onClick(i, i2);
            this.selectUserDialog.selectUser(this.user);
        }
    }

    public static class User {
        public final Color color;
        public final long forumId;
        public final long id;
        public final String name;
        public long useTime;

        public User(String str, Color color, long j, long j2) {
            this.name = str;
            this.color = color;
            this.id = j;
            this.forumId = j2;
        }

        public User(JSONObject jSONObject) throws JSONException {
            this.name = jSONObject.getString("name");
            this.color = Color.fromHexRGB(jSONObject.getString(C3522b4.i.S));
            this.id = jSONObject.getInt(C3670j8.x);
            this.forumId = jSONObject.getInt("forumId");
            this.useTime = jSONObject.optLong("use time");
        }

        public void save(JSONObject jSONObject) throws JSONException {
            jSONObject.put("name", this.name);
            jSONObject.put(C3522b4.i.S, this.color.toHexRGB());
            jSONObject.put(C3670j8.x, this.id);
            jSONObject.put("forumId", this.forumId);
            jSONObject.put("use time", this.useTime);
        }
    }
}
