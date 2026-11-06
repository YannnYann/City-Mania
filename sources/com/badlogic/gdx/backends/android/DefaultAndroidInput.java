package com.badlogic.gdx.backends.android;

import android.R;
import android.animation.Animator;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Build;
import android.os.Handler;
import android.text.method.PasswordTransformationMethod;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import com.badlogic.gdx.AbstractInput;
import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.Input;
import com.badlogic.gdx.InputProcessor;
import com.badlogic.gdx.backends.android.keyboardheight.KeyboardHeightObserver;
import com.badlogic.gdx.backends.android.keyboardheight.StandardKeyboardHeightProvider;
import com.badlogic.gdx.input.NativeInputConfiguration;
import com.badlogic.gdx.utils.Pool;
import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class DefaultAndroidInput extends AbstractInput implements AndroidInput, KeyboardHeightObserver {
    public SensorEventListener accelerometerListener;
    public final Application app;
    public SensorEventListener compassListener;
    public final AndroidApplicationConfiguration config;
    public final Context context;
    public SensorEventListener gyroscopeListener;
    public final Handler handle;
    public final AndroidHaptics haptics;
    public final boolean hasMultitouch;
    public boolean keyboardAvailable;
    public SensorManager manager;
    public final AndroidMouseHandler mouseHandler;
    public final Input.Orientation nativeOrientation;
    public PredictiveBackHandler predictiveBackHandler;
    public InputProcessor processor;
    public SensorEventListener rotationVectorListener;
    public final AndroidTouchHandler touchHandler;
    public Pool<KeyEvent> usedKeyEvents;
    public Pool<TouchEvent> usedTouchEvents;
    public final View view;
    public ArrayList<View.OnKeyListener> keyListeners = new ArrayList<>();
    public ArrayList<KeyEvent> keyEvents = new ArrayList<>();
    public ArrayList<TouchEvent> touchEvents = new ArrayList<>();
    public int[] touchX = new int[20];
    public int[] touchY = new int[20];
    public int[] deltaX = new int[20];
    public int[] deltaY = new int[20];
    public boolean[] touched = new boolean[20];
    public int[] button = new int[20];
    public int[] realId = new int[20];
    public float[] pressure = new float[20];
    public final boolean[] justPressedButtons = new boolean[20];
    public boolean accelerometerAvailable = false;
    public final float[] accelerometerValues = new float[3];
    public boolean gyroscopeAvailable = false;
    public final float[] gyroscopeValues = new float[3];
    public boolean compassAvailable = false;
    public boolean rotationVectorAvailable = false;
    public final float[] magneticFieldValues = new float[3];
    public final float[] rotationVectorValues = new float[3];
    public float azimuth = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    public float pitch = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    public float roll = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    public boolean justTouched = false;
    public long currentEventTimeStamp = 0;
    public final ArrayList<View.OnGenericMotionListener> genericMotionListeners = new ArrayList<>();
    public boolean requestFocus = true;
    public boolean onscreenVisible = false;
    public RelativeLayout relativeLayoutField = null;
    public final float[] R = new float[9];
    public final float[] orientation = new float[3];

    public static class KeyEvent {
        public char keyChar;
        public int keyCode;
        public long timeStamp;
        public int type;
    }

    public static class TouchEvent {
        public int button;
        public int pointer;
        public int scrollAmountX;
        public int scrollAmountY;
        public long timeStamp;
        public int type;
        public int x;
        public int y;
    }

    public final void dispatchHeightAndVisibilityChangesToObserver(boolean z, int i) {
    }

    public DefaultAndroidInput(Application application, Context context, View view, AndroidApplicationConfiguration androidApplicationConfiguration) {
        int i = 16;
        int i2 = 1000;
        this.usedKeyEvents = new Pool<KeyEvent>(i, i2) { // from class: com.badlogic.gdx.backends.android.DefaultAndroidInput.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.badlogic.gdx.utils.Pool
            public KeyEvent newObject() {
                return new KeyEvent();
            }
        };
        this.usedTouchEvents = new Pool<TouchEvent>(i, i2) { // from class: com.badlogic.gdx.backends.android.DefaultAndroidInput.2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.badlogic.gdx.utils.Pool
            public TouchEvent newObject() {
                return new TouchEvent();
            }
        };
        int i3 = 0;
        this.view = view;
        view.setOnKeyListener(this);
        view.setOnTouchListener(this);
        view.setFocusable(true);
        view.setFocusableInTouchMode(true);
        view.requestFocus();
        view.setOnGenericMotionListener(this);
        this.config = androidApplicationConfiguration;
        this.mouseHandler = new AndroidMouseHandler();
        while (true) {
            int[] iArr = this.realId;
            if (i3 >= iArr.length) {
                break;
            }
            iArr[i3] = -1;
            i3++;
        }
        this.handle = new Handler();
        this.app = application;
        this.context = context;
        AndroidTouchHandler androidTouchHandler = new AndroidTouchHandler();
        this.touchHandler = androidTouchHandler;
        this.hasMultitouch = androidTouchHandler.supportsMultitouch(context);
        this.haptics = new AndroidHaptics(context);
        if (Build.VERSION.SDK_INT >= 33 && (context instanceof Activity)) {
            this.predictiveBackHandler = new PredictiveBackHandler();
        }
        int rotation = getRotation();
        Graphics.DisplayMode displayMode = application.getGraphics().getDisplayMode();
        if (((rotation == 0 || rotation == 180) && displayMode.width >= displayMode.height) || ((rotation == 90 || rotation == 270) && displayMode.width <= displayMode.height)) {
            this.nativeOrientation = Input.Orientation.Landscape;
        } else {
            this.nativeOrientation = Input.Orientation.Portrait;
        }
        setCatchKey(255, true);
    }

    @Override // com.badlogic.gdx.Input
    public void getTextInput(Input.TextInputListener textInputListener, String str, String str2, String str3) {
        getTextInput(textInputListener, str, str2, str3, Input.OnscreenKeyboardType.Default);
    }

    /* JADX INFO: renamed from: com.badlogic.gdx.backends.android.DefaultAndroidInput$3, reason: invalid class name */
    public class AnonymousClass3 implements Runnable {
        public final /* synthetic */ String val$hint;
        public final /* synthetic */ Input.OnscreenKeyboardType val$keyboardType;
        public final /* synthetic */ Input.TextInputListener val$listener;
        public final /* synthetic */ String val$text;
        public final /* synthetic */ String val$title;

        public AnonymousClass3(String str, Input.OnscreenKeyboardType onscreenKeyboardType, String str2, String str3, Input.TextInputListener textInputListener) {
            this.val$title = str;
            this.val$keyboardType = onscreenKeyboardType;
            this.val$hint = str2;
            this.val$text = str3;
            this.val$listener = textInputListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            AlertDialog.Builder builder = new AlertDialog.Builder(DefaultAndroidInput.this.context);
            builder.setTitle(this.val$title);
            final EditText editText = new EditText(DefaultAndroidInput.this.context);
            Input.OnscreenKeyboardType onscreenKeyboardType = this.val$keyboardType;
            if (onscreenKeyboardType != Input.OnscreenKeyboardType.Default) {
                editText.setInputType(DefaultAndroidInput.getAndroidInputType(onscreenKeyboardType, false));
            }
            editText.setHint(this.val$hint);
            editText.setText(this.val$text);
            editText.setSingleLine();
            if (this.val$keyboardType == Input.OnscreenKeyboardType.Password) {
                editText.setTransformationMethod(new PasswordTransformationMethod());
            }
            builder.setView(editText);
            builder.setPositiveButton(DefaultAndroidInput.this.context.getString(R.string.ok), new DialogInterface.OnClickListener() { // from class: com.badlogic.gdx.backends.android.DefaultAndroidInput.3.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    Gdx.app.postRunnable(new Runnable() { // from class: com.badlogic.gdx.backends.android.DefaultAndroidInput.3.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            AnonymousClass3.this.val$listener.input(editText.getText().toString());
                        }
                    });
                }
            });
            builder.setNegativeButton(DefaultAndroidInput.this.context.getString(R.string.cancel), new DialogInterface.OnClickListener() { // from class: com.badlogic.gdx.backends.android.DefaultAndroidInput.3.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    Gdx.app.postRunnable(new Runnable() { // from class: com.badlogic.gdx.backends.android.DefaultAndroidInput.3.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            AnonymousClass3.this.val$listener.canceled();
                        }
                    });
                }
            });
            builder.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.badlogic.gdx.backends.android.DefaultAndroidInput.3.3
                @Override // android.content.DialogInterface.OnCancelListener
                public void onCancel(DialogInterface dialogInterface) {
                    Gdx.app.postRunnable(new Runnable() { // from class: com.badlogic.gdx.backends.android.DefaultAndroidInput.3.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            AnonymousClass3.this.val$listener.canceled();
                        }
                    });
                }
            });
            builder.show();
        }
    }

    public void getTextInput(Input.TextInputListener textInputListener, String str, String str2, String str3, Input.OnscreenKeyboardType onscreenKeyboardType) {
        this.handle.post(new AnonymousClass3(str, onscreenKeyboardType, str3, str2, textInputListener));
    }

    /* JADX INFO: renamed from: com.badlogic.gdx.backends.android.DefaultAndroidInput$8, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass8 {
        public static final /* synthetic */ int[] $SwitchMap$com$badlogic$gdx$Input$OnscreenKeyboardType;

        static {
            int[] iArr = new int[Input.OnscreenKeyboardType.values().length];
            $SwitchMap$com$badlogic$gdx$Input$OnscreenKeyboardType = iArr;
            try {
                iArr[Input.OnscreenKeyboardType.NumberPad.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$badlogic$gdx$Input$OnscreenKeyboardType[Input.OnscreenKeyboardType.PhonePad.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$badlogic$gdx$Input$OnscreenKeyboardType[Input.OnscreenKeyboardType.Email.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$badlogic$gdx$Input$OnscreenKeyboardType[Input.OnscreenKeyboardType.Password.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$badlogic$gdx$Input$OnscreenKeyboardType[Input.OnscreenKeyboardType.URI.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public static int getAndroidInputType(Input.OnscreenKeyboardType onscreenKeyboardType, boolean z) {
        int i = AnonymousClass8.$SwitchMap$com$badlogic$gdx$Input$OnscreenKeyboardType[onscreenKeyboardType.ordinal()];
        if (i == 1) {
            return 2;
        }
        if (i == 2) {
            return 3;
        }
        if (i == 3) {
            return 33;
        }
        if (i == 4) {
            return Sdk.SDKError.Reason.EMPTY_TPAT_ERROR_VALUE;
        }
        if (i != 5) {
            return z ? 524433 : 1;
        }
        return 17;
    }

    @Override // com.badlogic.gdx.Input
    public int getX() {
        int i;
        synchronized (this) {
            i = this.touchX[0];
        }
        return i;
    }

    @Override // com.badlogic.gdx.Input
    public int getY() {
        int i;
        synchronized (this) {
            i = this.touchY[0];
        }
        return i;
    }

    @Override // com.badlogic.gdx.Input
    public int getX(int i) {
        int i2;
        synchronized (this) {
            i2 = this.touchX[i];
        }
        return i2;
    }

    @Override // com.badlogic.gdx.Input
    public int getY(int i) {
        int i2;
        synchronized (this) {
            i2 = this.touchY[i];
        }
        return i2;
    }

    @Override // com.badlogic.gdx.Input
    public boolean isTouched(int i) {
        boolean z;
        synchronized (this) {
            z = this.touched[i];
        }
        return z;
    }

    @Override // com.badlogic.gdx.backends.android.AndroidInput
    public void setKeyboardAvailable(boolean z) {
        this.keyboardAvailable = z;
    }

    @Override // com.badlogic.gdx.Input
    public boolean isTouched() {
        synchronized (this) {
            try {
                if (this.hasMultitouch) {
                    for (int i = 0; i < 20; i++) {
                        if (this.touched[i]) {
                            return true;
                        }
                    }
                }
                return this.touched[0];
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.badlogic.gdx.Input
    public void setInputProcessor(InputProcessor inputProcessor) {
        synchronized (this) {
            this.processor = inputProcessor;
        }
    }

    @Override // com.badlogic.gdx.backends.android.AndroidInput
    public void processEvents() {
        synchronized (this) {
            try {
                if (this.justTouched) {
                    this.justTouched = false;
                    Arrays.fill(this.justPressedButtons, false);
                }
                if (this.keyJustPressed) {
                    this.keyJustPressed = false;
                    Arrays.fill(this.justPressedKeys, false);
                }
                InputProcessor inputProcessor = this.processor;
                if (inputProcessor != null) {
                    int size = this.keyEvents.size();
                    for (int i = 0; i < size; i++) {
                        KeyEvent keyEvent = this.keyEvents.get(i);
                        this.currentEventTimeStamp = keyEvent.timeStamp;
                        int i2 = keyEvent.type;
                        if (i2 == 0) {
                            inputProcessor.keyDown(keyEvent.keyCode);
                            this.keyJustPressed = true;
                            this.justPressedKeys[keyEvent.keyCode] = true;
                        } else if (i2 == 1) {
                            inputProcessor.keyUp(keyEvent.keyCode);
                        } else if (i2 == 2) {
                            inputProcessor.keyTyped(keyEvent.keyChar);
                        }
                        this.usedKeyEvents.free(keyEvent);
                    }
                    int size2 = this.touchEvents.size();
                    for (int i3 = 0; i3 < size2; i3++) {
                        TouchEvent touchEvent = this.touchEvents.get(i3);
                        this.currentEventTimeStamp = touchEvent.timeStamp;
                        int i4 = touchEvent.type;
                        if (i4 == 0) {
                            inputProcessor.touchDown(touchEvent.x, touchEvent.y, touchEvent.pointer, touchEvent.button);
                            this.justTouched = true;
                            this.justPressedButtons[touchEvent.button] = true;
                        } else if (i4 == 1) {
                            inputProcessor.touchUp(touchEvent.x, touchEvent.y, touchEvent.pointer, touchEvent.button);
                        } else if (i4 == 2) {
                            inputProcessor.touchDragged(touchEvent.x, touchEvent.y, touchEvent.pointer);
                        } else if (i4 == 3) {
                            inputProcessor.scrolled(touchEvent.scrollAmountX, touchEvent.scrollAmountY);
                        } else if (i4 == 4) {
                            inputProcessor.mouseMoved(touchEvent.x, touchEvent.y);
                        } else if (i4 == 5) {
                            inputProcessor.touchCancelled(touchEvent.x, touchEvent.y, touchEvent.pointer, touchEvent.button);
                        }
                        this.usedTouchEvents.free(touchEvent);
                    }
                } else {
                    int size3 = this.touchEvents.size();
                    for (int i5 = 0; i5 < size3; i5++) {
                        TouchEvent touchEvent2 = this.touchEvents.get(i5);
                        if (touchEvent2.type == 0) {
                            this.justTouched = true;
                        }
                        this.usedTouchEvents.free(touchEvent2);
                    }
                    int size4 = this.keyEvents.size();
                    for (int i6 = 0; i6 < size4; i6++) {
                        this.usedKeyEvents.free(this.keyEvents.get(i6));
                    }
                }
                if (this.touchEvents.isEmpty()) {
                    int i7 = 0;
                    while (true) {
                        int[] iArr = this.deltaX;
                        if (i7 >= iArr.length) {
                            break;
                        }
                        iArr[0] = 0;
                        this.deltaY[0] = 0;
                        i7++;
                    }
                }
                this.keyEvents.clear();
                this.touchEvents.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.view.View.OnTouchListener
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouch(View view, MotionEvent motionEvent) throws Throwable {
        if (this.requestFocus && view != null) {
            view.setFocusableInTouchMode(true);
            view.requestFocus();
            this.requestFocus = false;
        }
        this.touchHandler.onTouch(motionEvent, this);
        return true;
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, android.view.KeyEvent keyEvent) {
        int size = this.keyListeners.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.keyListeners.get(i2).onKey(view, i, keyEvent)) {
                return true;
            }
        }
        if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() > 0) {
            return isCatchKey(i);
        }
        synchronized (this) {
            try {
                if (keyEvent.getKeyCode() == 0 && keyEvent.getAction() == 2) {
                    String characters = keyEvent.getCharacters();
                    for (int i3 = 0; i3 < characters.length(); i3++) {
                        KeyEvent keyEventObtain = this.usedKeyEvents.obtain();
                        keyEventObtain.timeStamp = System.nanoTime();
                        keyEventObtain.keyCode = 0;
                        keyEventObtain.keyChar = characters.charAt(i3);
                        keyEventObtain.type = 2;
                        this.keyEvents.add(keyEventObtain);
                    }
                    return false;
                }
                char unicodeChar = (char) keyEvent.getUnicodeChar();
                if (i == 67) {
                    unicodeChar = '\b';
                }
                if (keyEvent.getKeyCode() >= 0 && keyEvent.getKeyCode() <= 255) {
                    int action = keyEvent.getAction();
                    if (action == 0) {
                        KeyEvent keyEventObtain2 = this.usedKeyEvents.obtain();
                        keyEventObtain2.timeStamp = System.nanoTime();
                        keyEventObtain2.keyChar = (char) 0;
                        keyEventObtain2.keyCode = keyEvent.getKeyCode();
                        keyEventObtain2.type = 0;
                        if (i == 4 && keyEvent.isAltPressed()) {
                            keyEventObtain2.keyCode = 255;
                            i = 255;
                        }
                        this.keyEvents.add(keyEventObtain2);
                        boolean[] zArr = this.pressedKeys;
                        int i4 = keyEventObtain2.keyCode;
                        if (!zArr[i4]) {
                            this.pressedKeyCount++;
                            zArr[i4] = true;
                        }
                    } else if (action == 1) {
                        long jNanoTime = System.nanoTime();
                        KeyEvent keyEventObtain3 = this.usedKeyEvents.obtain();
                        keyEventObtain3.timeStamp = jNanoTime;
                        keyEventObtain3.keyChar = (char) 0;
                        keyEventObtain3.keyCode = keyEvent.getKeyCode();
                        keyEventObtain3.type = 1;
                        if (i == 4 && keyEvent.isAltPressed()) {
                            keyEventObtain3.keyCode = 255;
                            i = 255;
                        }
                        this.keyEvents.add(keyEventObtain3);
                        KeyEvent keyEventObtain4 = this.usedKeyEvents.obtain();
                        keyEventObtain4.timeStamp = jNanoTime;
                        keyEventObtain4.keyChar = unicodeChar;
                        keyEventObtain4.keyCode = 0;
                        keyEventObtain4.type = 2;
                        this.keyEvents.add(keyEventObtain4);
                        if (i == 255) {
                            boolean[] zArr2 = this.pressedKeys;
                            if (zArr2[255]) {
                                this.pressedKeyCount--;
                                zArr2[255] = false;
                            }
                        } else if (this.pressedKeys[keyEvent.getKeyCode()]) {
                            this.pressedKeyCount--;
                            this.pressedKeys[keyEvent.getKeyCode()] = false;
                        }
                    }
                    this.app.getGraphics().requestRendering();
                    return isCatchKey(i);
                }
                return false;
            } finally {
            }
        }
    }

    public final int getSoftButtonsBarHeight() {
        WindowManager windowManager = (WindowManager) this.context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        int i = displayMetrics.heightPixels;
        windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
        int i2 = displayMetrics.heightPixels;
        if (i2 > i) {
            return i2 - i;
        }
        return 0;
    }

    @Override // com.badlogic.gdx.backends.android.keyboardheight.KeyboardHeightObserver
    public void onKeyboardHeightChanged(boolean z, int i, int i2, int i3, int i4) {
        boolean z2 = ((AndroidApplication) this.app).getKeyboardHeightProvider() instanceof StandardKeyboardHeightProvider;
        if (this.config.useImmersiveMode && z2) {
            i += getSoftButtonsBarHeight();
        }
        if (!isNativeInputOpen()) {
            dispatchHeightAndVisibilityChangesToObserver(z, i);
            RelativeLayout relativeLayout = this.relativeLayoutField;
            if (relativeLayout != null) {
                relativeLayout.setY(-i);
                return;
            }
            return;
        }
        if (i == 0 && z2 && getEditTextForNativeInput().isPopupShowing()) {
            return;
        }
        if (!z) {
            closeTextInputField(false);
            dispatchHeightAndVisibilityChangesToObserver(false, i);
            this.relativeLayoutField.setY(i);
            return;
        }
        dispatchHeightAndVisibilityChangesToObserver(true, getEditTextForNativeInput().getHeight() + i);
        if ((((Activity) this.context).getWindow().getAttributes().softInputMode & 240) != 48) {
            i = 0;
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.relativeLayoutField.getLayoutParams();
        layoutParams.leftMargin = i2;
        layoutParams.rightMargin = i3;
        this.relativeLayoutField.setLayoutParams(layoutParams);
        this.relativeLayoutField.animate().y(-i).setDuration(100L).setListener(new Animator.AnimatorListener() { // from class: com.badlogic.gdx.backends.android.DefaultAndroidInput.5
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (DefaultAndroidInput.this.getEditTextForNativeInput().isPopupShowing()) {
                    DefaultAndroidInput.this.getEditTextForNativeInput().showDropDown();
                }
            }
        });
    }

    public final boolean isNativeInputOpen() {
        RelativeLayout relativeLayout = this.relativeLayoutField;
        return relativeLayout != null && relativeLayout.getVisibility() == 0;
    }

    public final AutoCompleteTextView getEditTextForNativeInput() {
        return (AutoCompleteTextView) this.relativeLayoutField.getChildAt(0);
    }

    @Override // com.badlogic.gdx.Input
    public void closeTextInputField(final boolean z, final NativeInputConfiguration.NativeInputCloseCallback nativeInputCloseCallback) {
        if (isNativeInputOpen()) {
            this.handle.post(new Runnable(z, nativeInputCloseCallback) { // from class: com.badlogic.gdx.backends.android.DefaultAndroidInput$$ExternalSyntheticLambda0
                public final /* synthetic */ boolean f$1;

                @Override // java.lang.Runnable
                public final void run() {
                    DefaultAndroidInput.$r8$lambda$pwSGLuInHk2MJ3hPAXre7so0NfU(this.f$0, this.f$1, null);
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$pwSGLuInHk2MJ3hPAXre7so0NfU(final DefaultAndroidInput defaultAndroidInput, final boolean z, final NativeInputConfiguration.NativeInputCloseCallback nativeInputCloseCallback) {
        if (defaultAndroidInput.isNativeInputOpen()) {
            defaultAndroidInput.view.requestFocus();
            AutoCompleteTextView editTextForNativeInput = defaultAndroidInput.getEditTextForNativeInput();
            final String string = editTextForNativeInput.getText().toString();
            final int selectionStart = editTextForNativeInput.getSelectionStart();
            final int selectionEnd = editTextForNativeInput.getSelectionEnd();
            final NativeInputConfiguration nativeInputConfiguration = null;
            Gdx.app.postRunnable(new Runnable(nativeInputConfiguration, string, selectionStart, selectionEnd, z, nativeInputCloseCallback) { // from class: com.badlogic.gdx.backends.android.DefaultAndroidInput$$ExternalSyntheticLambda1
                public final /* synthetic */ String f$2;
                public final /* synthetic */ int f$3;
                public final /* synthetic */ int f$4;
                public final /* synthetic */ boolean f$5;

                {
                    this.f$2 = string;
                    this.f$3 = selectionStart;
                    this.f$4 = selectionEnd;
                    this.f$5 = z;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    DefaultAndroidInput.$r8$lambda$LFGJizRN8Wigrft2MucTt9XdzJI(this.f$0, null, this.f$2, this.f$3, this.f$4, this.f$5, null);
                }
            });
            if (defaultAndroidInput.relativeLayoutField.getChildCount() > 1) {
                RelativeLayout relativeLayout = defaultAndroidInput.relativeLayoutField;
                relativeLayout.removeViews(1, relativeLayout.getChildCount() - 1);
            }
            defaultAndroidInput.relativeLayoutField.setVisibility(4);
        }
    }

    public static /* synthetic */ void $r8$lambda$LFGJizRN8Wigrft2MucTt9XdzJI(DefaultAndroidInput defaultAndroidInput, NativeInputConfiguration nativeInputConfiguration, String str, int i, int i2, boolean z, NativeInputConfiguration.NativeInputCloseCallback nativeInputCloseCallback) {
        defaultAndroidInput.getClass();
        throw null;
    }

    public void registerSensorListeners() {
        if (this.config.useAccelerometer) {
            SensorManager sensorManager = (SensorManager) this.context.getSystemService("sensor");
            this.manager = sensorManager;
            if (sensorManager.getSensorList(1).isEmpty()) {
                this.accelerometerAvailable = false;
            } else {
                Sensor sensor = this.manager.getSensorList(1).get(0);
                SensorListener sensorListener = new SensorListener();
                this.accelerometerListener = sensorListener;
                this.accelerometerAvailable = this.manager.registerListener(sensorListener, sensor, this.config.sensorDelay);
            }
        } else {
            this.accelerometerAvailable = false;
        }
        if (this.config.useGyroscope) {
            SensorManager sensorManager2 = (SensorManager) this.context.getSystemService("sensor");
            this.manager = sensorManager2;
            if (sensorManager2.getSensorList(4).isEmpty()) {
                this.gyroscopeAvailable = false;
            } else {
                Sensor sensor2 = this.manager.getSensorList(4).get(0);
                SensorListener sensorListener2 = new SensorListener();
                this.gyroscopeListener = sensorListener2;
                this.gyroscopeAvailable = this.manager.registerListener(sensorListener2, sensor2, this.config.sensorDelay);
            }
        } else {
            this.gyroscopeAvailable = false;
        }
        this.rotationVectorAvailable = false;
        if (this.config.useRotationVectorSensor) {
            if (this.manager == null) {
                this.manager = (SensorManager) this.context.getSystemService("sensor");
            }
            List<Sensor> sensorList = this.manager.getSensorList(11);
            if (!sensorList.isEmpty()) {
                this.rotationVectorListener = new SensorListener();
                Iterator<Sensor> it = sensorList.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Sensor next = it.next();
                    if (next.getVendor().equals("Google Inc.") && next.getVersion() == 3) {
                        this.rotationVectorAvailable = this.manager.registerListener(this.rotationVectorListener, next, this.config.sensorDelay);
                        break;
                    }
                }
                if (!this.rotationVectorAvailable) {
                    this.rotationVectorAvailable = this.manager.registerListener(this.rotationVectorListener, sensorList.get(0), this.config.sensorDelay);
                }
            }
        }
        if (this.config.useCompass && !this.rotationVectorAvailable) {
            if (this.manager == null) {
                this.manager = (SensorManager) this.context.getSystemService("sensor");
            }
            Sensor defaultSensor = this.manager.getDefaultSensor(2);
            if (defaultSensor != null) {
                boolean z = this.accelerometerAvailable;
                this.compassAvailable = z;
                if (z) {
                    SensorListener sensorListener3 = new SensorListener();
                    this.compassListener = sensorListener3;
                    this.compassAvailable = this.manager.registerListener(sensorListener3, defaultSensor, this.config.sensorDelay);
                }
            } else {
                this.compassAvailable = false;
            }
        } else {
            this.compassAvailable = false;
        }
        Gdx.app.log("AndroidInput", "sensor listener setup");
    }

    public void unregisterSensorListeners() {
        SensorManager sensorManager = this.manager;
        if (sensorManager != null) {
            SensorEventListener sensorEventListener = this.accelerometerListener;
            if (sensorEventListener != null) {
                sensorManager.unregisterListener(sensorEventListener);
                this.accelerometerListener = null;
            }
            SensorEventListener sensorEventListener2 = this.gyroscopeListener;
            if (sensorEventListener2 != null) {
                this.manager.unregisterListener(sensorEventListener2);
                this.gyroscopeListener = null;
            }
            SensorEventListener sensorEventListener3 = this.rotationVectorListener;
            if (sensorEventListener3 != null) {
                this.manager.unregisterListener(sensorEventListener3);
                this.rotationVectorListener = null;
            }
            SensorEventListener sensorEventListener4 = this.compassListener;
            if (sensorEventListener4 != null) {
                this.manager.unregisterListener(sensorEventListener4);
                this.compassListener = null;
            }
            this.manager = null;
        }
        Gdx.app.log("AndroidInput", "sensor listener tear down");
    }

    public int getFreePointerIndex() {
        int length = this.realId.length;
        for (int i = 0; i < length; i++) {
            if (this.realId[i] == -1) {
                return i;
            }
        }
        this.pressure = resize(this.pressure);
        this.realId = resize(this.realId);
        this.touchX = resize(this.touchX);
        this.touchY = resize(this.touchY);
        this.deltaX = resize(this.deltaX);
        this.deltaY = resize(this.deltaY);
        this.touched = resize(this.touched);
        this.button = resize(this.button);
        return length;
    }

    public final int[] resize(int[] iArr) {
        int[] iArr2 = new int[iArr.length + 2];
        System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
        return iArr2;
    }

    public final boolean[] resize(boolean[] zArr) {
        boolean[] zArr2 = new boolean[zArr.length + 2];
        System.arraycopy(zArr, 0, zArr2, 0, zArr.length);
        return zArr2;
    }

    public final float[] resize(float[] fArr) {
        float[] fArr2 = new float[fArr.length + 2];
        System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
        return fArr2;
    }

    public int lookUpPointerIndex(int i) {
        int length = this.realId.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (this.realId[i2] == i) {
                return i2;
            }
        }
        StringBuilder sb = new StringBuilder();
        for (int i3 = 0; i3 < length; i3++) {
            sb.append(i3);
            sb.append(":");
            sb.append(this.realId[i3]);
            sb.append(" ");
        }
        Gdx.app.log("AndroidInput", "Pointer ID lookup failed: " + i + ", " + sb.toString());
        return -1;
    }

    public int getRotation() {
        int rotation;
        Context context = this.context;
        if (context instanceof Activity) {
            rotation = ((Activity) context).getWindowManager().getDefaultDisplay().getRotation();
        } else {
            rotation = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation();
        }
        if (rotation == 1) {
            return 90;
        }
        if (rotation != 2) {
            return rotation != 3 ? 0 : 270;
        }
        return 180;
    }

    @Override // android.view.View.OnGenericMotionListener
    public boolean onGenericMotion(View view, MotionEvent motionEvent) {
        if (this.mouseHandler.onGenericMotion(motionEvent, this)) {
            return true;
        }
        int size = this.genericMotionListeners.size();
        for (int i = 0; i < size; i++) {
            if (this.genericMotionListeners.get(i).onGenericMotion(view, motionEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.badlogic.gdx.backends.android.AndroidInput
    public void onPause() {
        unregisterSensorListeners();
    }

    @Override // com.badlogic.gdx.backends.android.AndroidInput
    public void onResume() {
        registerSensorListeners();
    }

    @Override // com.badlogic.gdx.AbstractInput, com.badlogic.gdx.Input
    public void setCatchKey(int i, boolean z) {
        PredictiveBackHandler predictiveBackHandler;
        super.setCatchKey(i, z);
        if (i != 4 || (predictiveBackHandler = this.predictiveBackHandler) == null) {
            return;
        }
        if (z) {
            predictiveBackHandler.register();
        } else {
            predictiveBackHandler.unregister();
        }
    }

    @TargetApi(33)
    public class PredictiveBackHandler {
        public final OnBackInvokedCallback callback;
        public final OnBackInvokedDispatcher dispatcher;

        public PredictiveBackHandler() {
            this.dispatcher = ((Activity) DefaultAndroidInput.this.context).getOnBackInvokedDispatcher();
            this.callback = new OnBackInvokedCallback() { // from class: com.badlogic.gdx.backends.android.DefaultAndroidInput.PredictiveBackHandler.1
                public void onBackInvoked() {
                    synchronized (DefaultAndroidInput.this) {
                        KeyEvent keyEvent = new KeyEvent();
                        keyEvent.timeStamp = System.nanoTime();
                        keyEvent.type = 0;
                        keyEvent.keyCode = 4;
                        keyEvent.keyChar = (char) 0;
                        DefaultAndroidInput.this.keyEvents.add(keyEvent);
                    }
                }
            };
        }

        public final void register() {
            this.dispatcher.registerOnBackInvokedCallback(0, this.callback);
        }

        public final void unregister() {
            this.dispatcher.unregisterOnBackInvokedCallback(this.callback);
        }
    }

    public class SensorListener implements SensorEventListener {
        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        public SensorListener() {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            if (sensorEvent.sensor.getType() == 1) {
                DefaultAndroidInput defaultAndroidInput = DefaultAndroidInput.this;
                if (defaultAndroidInput.nativeOrientation == Input.Orientation.Portrait) {
                    float[] fArr = sensorEvent.values;
                    float[] fArr2 = defaultAndroidInput.accelerometerValues;
                    System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
                } else {
                    float[] fArr3 = defaultAndroidInput.accelerometerValues;
                    float[] fArr4 = sensorEvent.values;
                    fArr3[0] = fArr4[1];
                    fArr3[1] = -fArr4[0];
                    fArr3[2] = fArr4[2];
                }
            }
            if (sensorEvent.sensor.getType() == 2) {
                float[] fArr5 = sensorEvent.values;
                float[] fArr6 = DefaultAndroidInput.this.magneticFieldValues;
                System.arraycopy(fArr5, 0, fArr6, 0, fArr6.length);
            }
            if (sensorEvent.sensor.getType() == 4) {
                DefaultAndroidInput defaultAndroidInput2 = DefaultAndroidInput.this;
                if (defaultAndroidInput2.nativeOrientation == Input.Orientation.Portrait) {
                    float[] fArr7 = sensorEvent.values;
                    float[] fArr8 = defaultAndroidInput2.gyroscopeValues;
                    System.arraycopy(fArr7, 0, fArr8, 0, fArr8.length);
                } else {
                    float[] fArr9 = defaultAndroidInput2.gyroscopeValues;
                    float[] fArr10 = sensorEvent.values;
                    fArr9[0] = fArr10[1];
                    fArr9[1] = -fArr10[0];
                    fArr9[2] = fArr10[2];
                }
            }
            if (sensorEvent.sensor.getType() == 11) {
                DefaultAndroidInput defaultAndroidInput3 = DefaultAndroidInput.this;
                if (defaultAndroidInput3.nativeOrientation == Input.Orientation.Portrait) {
                    float[] fArr11 = sensorEvent.values;
                    float[] fArr12 = defaultAndroidInput3.rotationVectorValues;
                    System.arraycopy(fArr11, 0, fArr12, 0, fArr12.length);
                } else {
                    float[] fArr13 = defaultAndroidInput3.rotationVectorValues;
                    float[] fArr14 = sensorEvent.values;
                    fArr13[0] = fArr14[1];
                    fArr13[1] = -fArr14[0];
                    fArr13[2] = fArr14[2];
                }
            }
        }
    }
}
