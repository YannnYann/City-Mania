package com.badlogic.gdx;

import ads_mobile_sdk.fh;
import com.badlogic.gdx.input.NativeInputConfiguration;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.ironsource.C3522b4;
import com.ironsource.Nc;
import com.unity3d.ads.core.domain.CommonGetHeaderBiddingToken;

/* JADX INFO: loaded from: classes.dex */
public interface Input {

    public enum OnscreenKeyboardType {
        Default,
        NumberPad,
        PhonePad,
        Email,
        Password,
        URI
    }

    public enum Orientation {
        Landscape,
        Portrait
    }

    public interface TextInputListener {
        void canceled();

        void input(String str);
    }

    default void closeTextInputField(boolean z, NativeInputConfiguration.NativeInputCloseCallback nativeInputCloseCallback) {
    }

    void getTextInput(TextInputListener textInputListener, String str, String str2, String str3);

    int getX();

    int getX(int i);

    int getY();

    int getY(int i);

    boolean isKeyPressed(int i);

    boolean isTouched();

    boolean isTouched(int i);

    void setCatchKey(int i, boolean z);

    void setInputProcessor(InputProcessor inputProcessor);

    public static class Keys {
        public static String toString(int i) {
            if (i < 0) {
                throw new IllegalArgumentException("keycode cannot be negative, keycode: " + i);
            }
            if (i > 255) {
                throw new IllegalArgumentException("keycode cannot be greater than 255, keycode: " + i);
            }
            if (i == 115) {
                return "Caps Lock";
            }
            if (i == 116) {
                return "Scroll Lock";
            }
            if (i == 120) {
                return "Print";
            }
            if (i == 121) {
                return "Pause";
            }
            if (i == 123) {
                return "End";
            }
            if (i == 124) {
                return "Insert";
            }
            if (i != 243) {
                switch (i) {
                    case 0:
                        return "Unknown";
                    case 1:
                        return "Soft Left";
                    case 2:
                        return "Soft Right";
                    case 3:
                        return "Home";
                    case 4:
                        return "Back";
                    case 5:
                        return "Call";
                    case 6:
                        return "End Call";
                    case 7:
                        return "0";
                    case 8:
                        return "1";
                    case 9:
                        return CommonGetHeaderBiddingToken.HB_TOKEN_VERSION;
                    case 10:
                        return "3";
                    case 11:
                        return "4";
                    case 12:
                        return "5";
                    case 13:
                        return "6";
                    case 14:
                        return Nc.e;
                    case 15:
                        return "8";
                    case 16:
                        return "9";
                    case 17:
                        return "*";
                    case 18:
                        return "#";
                    case 19:
                        return "Up";
                    case 20:
                        return "Down";
                    case 21:
                        return "Left";
                    case 22:
                        return "Right";
                    case 23:
                        return "Center";
                    case 24:
                        return "Volume Up";
                    case 25:
                        return "Volume Down";
                    case 26:
                        return "Power";
                    case 27:
                        return "Camera";
                    case 28:
                        return "Clear";
                    case 29:
                        return "A";
                    case 30:
                        return "B";
                    case 31:
                        return "C";
                    case 32:
                        return "D";
                    case 33:
                        return "E";
                    case 34:
                        return "F";
                    case 35:
                        return RequestConfiguration.MAX_AD_CONTENT_RATING_G;
                    case 36:
                        return "H";
                    case 37:
                        return "I";
                    case 38:
                        return "J";
                    case 39:
                        return "K";
                    case 40:
                        return "L";
                    case 41:
                        return "M";
                    case 42:
                        return "N";
                    case 43:
                        return "O";
                    case 44:
                        return "P";
                    case 45:
                        return "Q";
                    case 46:
                        return "R";
                    case 47:
                        return "S";
                    case 48:
                        return RequestConfiguration.MAX_AD_CONTENT_RATING_T;
                    case 49:
                        return "U";
                    case 50:
                        return "V";
                    case 51:
                        return "W";
                    case 52:
                        return "X";
                    case 53:
                        return "Y";
                    case 54:
                        return "Z";
                    case 55:
                        return ",";
                    case 56:
                        return ".";
                    case 57:
                        return "L-Alt";
                    case 58:
                        return "R-Alt";
                    case 59:
                        return "L-Shift";
                    case 60:
                        return "R-Shift";
                    case 61:
                        return "Tab";
                    case 62:
                        return "Space";
                    case 63:
                        return "SYM";
                    case 64:
                        return "Explorer";
                    case 65:
                        return "Envelope";
                    case 66:
                        return "Enter";
                    case 67:
                        return "Delete";
                    case 68:
                        return "`";
                    case 69:
                        return "-";
                    case 70:
                        return C3522b4.j.b;
                    case 71:
                        return C3522b4.j.d;
                    case 72:
                        return C3522b4.j.e;
                    case 73:
                        return "\\";
                    case 74:
                        return ";";
                    case 75:
                        return "'";
                    case 76:
                        return "/";
                    case 77:
                        return "@";
                    case 78:
                        return "Num";
                    case 79:
                        return "Headset Hook";
                    case 80:
                        return "Focus";
                    case 81:
                        return "Plus";
                    case 82:
                        return "Menu";
                    case 83:
                        return "Notification";
                    case 84:
                        return "Search";
                    case 85:
                        return "Play/Pause";
                    case 86:
                        return "Stop Media";
                    case 87:
                        return "Next Media";
                    case 88:
                        return "Prev Media";
                    case 89:
                        return "Rewind";
                    case 90:
                        return "Fast Forward";
                    case 91:
                        return "Mute";
                    case 92:
                        return "Page Up";
                    case 93:
                        return "Page Down";
                    case 94:
                        return "PICTSYMBOLS";
                    case fh.p0 /* 95 */:
                        return "SWITCH_CHARSET";
                    case fh.A0 /* 96 */:
                        return "A Button";
                    case fh.H0 /* 97 */:
                        return "B Button";
                    case fh.Q0 /* 98 */:
                        return "C Button";
                    case fh.R0 /* 99 */:
                        return "X Button";
                    case 100:
                        return "Y Button";
                    case 101:
                        return "Z Button";
                    case 102:
                        return "L1 Button";
                    case 103:
                        return "R1 Button";
                    case 104:
                        return "L2 Button";
                    case 105:
                        return "R2 Button";
                    case 106:
                        return "Left Thumb";
                    case 107:
                        return "Right Thumb";
                    case 108:
                        return "Start";
                    case 109:
                        return "Select";
                    case 110:
                        return "Button Mode";
                    case 111:
                        return "Escape";
                    case 112:
                        return "Forward Delete";
                    default:
                        switch (i) {
                            case EMPTY_TPAT_ERROR_VALUE:
                                return "L-Ctrl";
                            case MRAID_DOWNLOAD_JS_ERROR_VALUE:
                                return "R-Ctrl";
                            case MRAID_JS_WRITE_FAILED_VALUE:
                                return "F1";
                            case OMSDK_DOWNLOAD_JS_ERROR_VALUE:
                                return "F2";
                            case OMSDK_JS_WRITE_FAILED_VALUE:
                                return "F3";
                            case STORE_REGION_CODE_ERROR_VALUE:
                                return "F4";
                            case INVALID_CONFIG_RESPONSE_VALUE:
                                return "F5";
                            case PRIVACY_URL_ERROR_VALUE:
                                return "F6";
                            case TPAT_RETRY_FAILED_VALUE:
                                return "F7";
                            case CONFIG_REFRESH_FAILED_VALUE:
                                return "F8";
                            case TEMPLATE_DOWNLOAD_ERROR_VALUE:
                                return "F9";
                            case 140:
                                return "F10";
                            case 141:
                                return "F11";
                            case 142:
                                return "F12";
                            case 143:
                                return "Num Lock";
                            case 144:
                                return "Numpad 0";
                            case 145:
                                return "Numpad 1";
                            case 146:
                                return "Numpad 2";
                            case 147:
                                return "Numpad 3";
                            case 148:
                                return "Numpad 4";
                            case 149:
                                return "Numpad 5";
                            case 150:
                                return "Numpad 6";
                            case 151:
                                return "Numpad 7";
                            case 152:
                                return "Numpad 8";
                            case 153:
                                return "Numpad 9";
                            case 154:
                                return "Num /";
                            case 155:
                                return "Num *";
                            case 156:
                                return "Num -";
                            case 157:
                                return "Num +";
                            case 158:
                                return "Num .";
                            case 159:
                                return "Num ,";
                            case AdSize.WIDE_SKYSCRAPER_WIDTH /* 160 */:
                                return "Num Enter";
                            case 161:
                                return "Num =";
                            case 162:
                                return "Num (";
                            case 163:
                                return "Num )";
                            default:
                                switch (i) {
                                    case 183:
                                        return "F13";
                                    case 184:
                                        return "F14";
                                    case ModuleDescriptor.MODULE_VERSION /* 185 */:
                                        return "F15";
                                    case 186:
                                        return "F16";
                                    case 187:
                                        return "F17";
                                    case 188:
                                        return "F18";
                                    case 189:
                                        return "F19";
                                    case 190:
                                        return "F20";
                                    case 191:
                                        return "F21";
                                    case 192:
                                        return "F22";
                                    case 193:
                                        return "F23";
                                    case 194:
                                        return "F24";
                                    default:
                                        return null;
                                }
                        }
                }
            }
            return ":";
        }
    }

    default void closeTextInputField(boolean z) {
        closeTextInputField(z, null);
    }
}
