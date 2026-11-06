package com.google.common.io;

import com.google.common.base.Ascii;
import com.google.common.base.Preconditions;
import com.google.common.math.IntMath;
import com.ironsource.G5;
import com.vungle.ads.internal.protos.Sdk;
import io.bidmachine.protobuf.EventTypeExtended;
import java.io.IOException;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BaseEncoding {
    public static final BaseEncoding BASE16;
    public static final BaseEncoding BASE32;
    public static final BaseEncoding BASE32_HEX;
    public static final BaseEncoding BASE64;
    public static final BaseEncoding BASE64_URL;

    public abstract int decodeTo(byte[] target, CharSequence chars) throws DecodingException;

    public abstract void encodeTo(Appendable target, byte[] bytes, int off, int len) throws IOException;

    public abstract BaseEncoding lowerCase();

    public abstract int maxDecodedSize(int chars);

    public abstract int maxEncodedSize(int bytes);

    public abstract BaseEncoding omitPadding();

    public abstract CharSequence trimTrailingPadding(CharSequence chars);

    public static final class DecodingException extends IOException {
        public DecodingException(String message) {
            super(message);
        }
    }

    public String encode(byte[] bytes) {
        return encode(bytes, 0, bytes.length);
    }

    public final String encode(byte[] bytes, int off, int len) {
        Preconditions.checkPositionIndexes(off, off + len, bytes.length);
        StringBuilder sb = new StringBuilder(maxEncodedSize(len));
        try {
            encodeTo(sb, bytes, off, len);
            return sb.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    public static byte[] extract(byte[] result, int length) {
        if (length == result.length) {
            return result;
        }
        byte[] bArr = new byte[length];
        System.arraycopy(result, 0, bArr, 0, length);
        return bArr;
    }

    public final byte[] decode(CharSequence chars) {
        try {
            return decodeChecked(chars);
        } catch (DecodingException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public final byte[] decodeChecked(CharSequence chars) throws DecodingException {
        CharSequence charSequenceTrimTrailingPadding = trimTrailingPadding(chars);
        byte[] bArr = new byte[maxDecodedSize(charSequenceTrimTrailingPadding.length())];
        return extract(bArr, decodeTo(bArr, charSequenceTrimTrailingPadding));
    }

    static {
        Character chValueOf = Character.valueOf(G5.U);
        BASE64 = new Base64Encoding("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", chValueOf);
        BASE64_URL = new Base64Encoding("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_", chValueOf);
        BASE32 = new StandardBaseEncoding("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567", chValueOf);
        BASE32_HEX = new StandardBaseEncoding("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV", chValueOf);
        BASE16 = new Base16Encoding("base16()", "0123456789ABCDEF");
    }

    public static BaseEncoding base64() {
        return BASE64;
    }

    public static BaseEncoding base64Url() {
        return BASE64_URL;
    }

    public static BaseEncoding base16() {
        return BASE16;
    }

    public static final class Alphabet {
        public final int bitsPerChar;
        public final int bytesPerChunk;
        public final char[] chars;
        public final int charsPerChunk;
        public final byte[] decodabet;
        public final boolean ignoreCase;
        public final int mask;
        public final String name;
        public final boolean[] validPadding;

        public Alphabet(String name, char[] chars) {
            this(name, chars, decodabetFor(chars), false);
        }

        public Alphabet(String name, char[] chars, byte[] decodabet, boolean ignoreCase) {
            this.name = (String) Preconditions.checkNotNull(name);
            this.chars = (char[]) Preconditions.checkNotNull(chars);
            try {
                int iLog2 = IntMath.log2(chars.length, RoundingMode.UNNECESSARY);
                this.bitsPerChar = iLog2;
                int iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(iLog2);
                int i = 1 << (3 - iNumberOfTrailingZeros);
                this.charsPerChunk = i;
                this.bytesPerChunk = iLog2 >> iNumberOfTrailingZeros;
                this.mask = chars.length - 1;
                this.decodabet = decodabet;
                boolean[] zArr = new boolean[i];
                for (int i2 = 0; i2 < this.bytesPerChunk; i2++) {
                    zArr[IntMath.divide(i2 * 8, this.bitsPerChar, RoundingMode.CEILING)] = true;
                }
                this.validPadding = zArr;
                this.ignoreCase = ignoreCase;
            } catch (ArithmeticException e) {
                throw new IllegalArgumentException("Illegal alphabet length " + chars.length, e);
            }
        }

        public static byte[] decodabetFor(char[] chars) {
            byte[] bArr = new byte[Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE];
            Arrays.fill(bArr, (byte) -1);
            for (int i = 0; i < chars.length; i++) {
                char c = chars[i];
                boolean z = true;
                Preconditions.checkArgument(c < 128, "Non-ASCII character: %s", c);
                if (bArr[c] != -1) {
                    z = false;
                }
                Preconditions.checkArgument(z, "Duplicate character: %s", c);
                bArr[c] = (byte) i;
            }
            return bArr;
        }

        public Alphabet ignoreCase() {
            if (this.ignoreCase) {
                return this;
            }
            byte[] bArr = this.decodabet;
            byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
            int i = 65;
            while (true) {
                if (i <= 90) {
                    int i2 = i | 32;
                    byte[] bArr2 = this.decodabet;
                    byte b = bArr2[i];
                    byte b2 = bArr2[i2];
                    if (b == -1) {
                        bArrCopyOf[i] = b2;
                    } else {
                        Preconditions.checkState(b2 == -1, "Can't ignoreCase() since '%s' and '%s' encode different values", (char) i, (char) i2);
                        bArrCopyOf[i2] = b;
                    }
                    i++;
                } else {
                    return new Alphabet(this.name + ".ignoreCase()", this.chars, bArrCopyOf, true);
                }
            }
        }

        public char encode(int bits) {
            return this.chars[bits];
        }

        public boolean isValidPaddingStartPosition(int index) {
            return this.validPadding[index % this.charsPerChunk];
        }

        public int decode(char ch) throws DecodingException {
            if (ch > 127) {
                throw new DecodingException("Unrecognized character: 0x" + Integer.toHexString(ch));
            }
            byte b = this.decodabet[ch];
            if (b != -1) {
                return b;
            }
            if (ch <= ' ' || ch == 127) {
                throw new DecodingException("Unrecognized character: 0x" + Integer.toHexString(ch));
            }
            throw new DecodingException("Unrecognized character: " + ch);
        }

        public final boolean hasLowerCase() {
            for (char c : this.chars) {
                if (Ascii.isLowerCase(c)) {
                    return true;
                }
            }
            return false;
        }

        public final boolean hasUpperCase() {
            for (char c : this.chars) {
                if (Ascii.isUpperCase(c)) {
                    return true;
                }
            }
            return false;
        }

        public Alphabet lowerCase() {
            if (!hasUpperCase()) {
                return this;
            }
            Preconditions.checkState(!hasLowerCase(), "Cannot call lowerCase() on a mixed-case alphabet");
            char[] cArr = new char[this.chars.length];
            int i = 0;
            while (true) {
                char[] cArr2 = this.chars;
                if (i >= cArr2.length) {
                    break;
                }
                cArr[i] = Ascii.toLowerCase(cArr2[i]);
                i++;
            }
            Alphabet alphabet = new Alphabet(this.name + ".lowerCase()", cArr);
            return this.ignoreCase ? alphabet.ignoreCase() : alphabet;
        }

        public boolean matches(char c) {
            byte[] bArr = this.decodabet;
            return c < bArr.length && bArr[c] != -1;
        }

        public String toString() {
            return this.name;
        }

        public boolean equals(Object other) {
            if (other instanceof Alphabet) {
                Alphabet alphabet = (Alphabet) other;
                if (this.ignoreCase == alphabet.ignoreCase && Arrays.equals(this.chars, alphabet.chars)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return Arrays.hashCode(this.chars) + (this.ignoreCase ? 1231 : 1237);
        }
    }

    public static class StandardBaseEncoding extends BaseEncoding {
        public final Alphabet alphabet;
        public volatile BaseEncoding lowerCase;
        public final Character paddingChar;

        public StandardBaseEncoding(String name, String alphabetChars, Character paddingChar) {
            this(new Alphabet(name, alphabetChars.toCharArray()), paddingChar);
        }

        public StandardBaseEncoding(Alphabet alphabet, Character paddingChar) {
            this.alphabet = (Alphabet) Preconditions.checkNotNull(alphabet);
            Preconditions.checkArgument(paddingChar == null || !alphabet.matches(paddingChar.charValue()), "Padding character %s was already in alphabet", paddingChar);
            this.paddingChar = paddingChar;
        }

        @Override // com.google.common.io.BaseEncoding
        public int maxEncodedSize(int bytes) {
            Alphabet alphabet = this.alphabet;
            return alphabet.charsPerChunk * IntMath.divide(bytes, alphabet.bytesPerChunk, RoundingMode.CEILING);
        }

        @Override // com.google.common.io.BaseEncoding
        public void encodeTo(Appendable target, byte[] bytes, int off, int len) throws IOException {
            Preconditions.checkNotNull(target);
            Preconditions.checkPositionIndexes(off, off + len, bytes.length);
            int i = 0;
            while (i < len) {
                encodeChunkTo(target, bytes, off + i, Math.min(this.alphabet.bytesPerChunk, len - i));
                i += this.alphabet.bytesPerChunk;
            }
        }

        public void encodeChunkTo(Appendable target, byte[] bytes, int off, int len) throws IOException {
            Preconditions.checkNotNull(target);
            Preconditions.checkPositionIndexes(off, off + len, bytes.length);
            int i = 0;
            Preconditions.checkArgument(len <= this.alphabet.bytesPerChunk);
            long j = 0;
            for (int i2 = 0; i2 < len; i2++) {
                j = (j | ((long) (bytes[off + i2] & 255))) << 8;
            }
            int i3 = ((len + 1) * 8) - this.alphabet.bitsPerChar;
            while (i < len * 8) {
                Alphabet alphabet = this.alphabet;
                target.append(alphabet.encode(((int) (j >>> (i3 - i))) & alphabet.mask));
                i += this.alphabet.bitsPerChar;
            }
            if (this.paddingChar != null) {
                while (i < this.alphabet.bytesPerChunk * 8) {
                    target.append(this.paddingChar.charValue());
                    i += this.alphabet.bitsPerChar;
                }
            }
        }

        @Override // com.google.common.io.BaseEncoding
        public int maxDecodedSize(int chars) {
            return (int) (((((long) this.alphabet.bitsPerChar) * ((long) chars)) + 7) / 8);
        }

        @Override // com.google.common.io.BaseEncoding
        public CharSequence trimTrailingPadding(CharSequence chars) {
            Preconditions.checkNotNull(chars);
            Character ch = this.paddingChar;
            if (ch == null) {
                return chars;
            }
            char cCharValue = ch.charValue();
            int length = chars.length() - 1;
            while (length >= 0 && chars.charAt(length) == cCharValue) {
                length--;
            }
            return chars.subSequence(0, length + 1);
        }

        @Override // com.google.common.io.BaseEncoding
        public int decodeTo(byte[] target, CharSequence chars) throws DecodingException {
            Alphabet alphabet;
            Preconditions.checkNotNull(target);
            CharSequence charSequenceTrimTrailingPadding = trimTrailingPadding(chars);
            if (!this.alphabet.isValidPaddingStartPosition(charSequenceTrimTrailingPadding.length())) {
                throw new DecodingException("Invalid input length " + charSequenceTrimTrailingPadding.length());
            }
            int i = 0;
            int i2 = 0;
            while (i < charSequenceTrimTrailingPadding.length()) {
                long jDecode = 0;
                int i3 = 0;
                int i4 = 0;
                while (true) {
                    alphabet = this.alphabet;
                    if (i3 >= alphabet.charsPerChunk) {
                        break;
                    }
                    jDecode <<= alphabet.bitsPerChar;
                    if (i + i3 < charSequenceTrimTrailingPadding.length()) {
                        jDecode |= (long) this.alphabet.decode(charSequenceTrimTrailingPadding.charAt(i4 + i));
                        i4++;
                    }
                    i3++;
                }
                int i5 = alphabet.bytesPerChunk;
                int i6 = (i5 * 8) - (i4 * alphabet.bitsPerChar);
                int i7 = (i5 - 1) * 8;
                while (i7 >= i6) {
                    target[i2] = (byte) ((jDecode >>> i7) & 255);
                    i7 -= 8;
                    i2++;
                }
                i += this.alphabet.charsPerChunk;
            }
            return i2;
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding omitPadding() {
            return this.paddingChar == null ? this : newInstance(this.alphabet, null);
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding lowerCase() {
            BaseEncoding baseEncodingNewInstance = this.lowerCase;
            if (baseEncodingNewInstance == null) {
                Alphabet alphabetLowerCase = this.alphabet.lowerCase();
                baseEncodingNewInstance = alphabetLowerCase == this.alphabet ? this : newInstance(alphabetLowerCase, this.paddingChar);
                this.lowerCase = baseEncodingNewInstance;
            }
            return baseEncodingNewInstance;
        }

        public BaseEncoding newInstance(Alphabet alphabet, Character paddingChar) {
            return new StandardBaseEncoding(alphabet, paddingChar);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("BaseEncoding.");
            sb.append(this.alphabet);
            if (8 % this.alphabet.bitsPerChar != 0) {
                if (this.paddingChar == null) {
                    sb.append(".omitPadding()");
                } else {
                    sb.append(".withPadChar('");
                    sb.append(this.paddingChar);
                    sb.append("')");
                }
            }
            return sb.toString();
        }

        public boolean equals(Object other) {
            if (other instanceof StandardBaseEncoding) {
                StandardBaseEncoding standardBaseEncoding = (StandardBaseEncoding) other;
                if (this.alphabet.equals(standardBaseEncoding.alphabet) && Objects.equals(this.paddingChar, standardBaseEncoding.paddingChar)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return this.alphabet.hashCode() ^ Objects.hashCode(this.paddingChar);
        }
    }

    public static final class Base16Encoding extends StandardBaseEncoding {
        public final char[] encoding;

        public Base16Encoding(String name, String alphabetChars) {
            this(new Alphabet(name, alphabetChars.toCharArray()));
        }

        public Base16Encoding(Alphabet alphabet) {
            super(alphabet, null);
            this.encoding = new char[EventTypeExtended.EVENT_TYPE_EXTENDED_CONTAINER_ADDED_VALUE];
            Preconditions.checkArgument(alphabet.chars.length == 16);
            for (int i = 0; i < 256; i++) {
                this.encoding[i] = alphabet.encode(i >>> 4);
                this.encoding[i | 256] = alphabet.encode(i & 15);
            }
        }

        @Override // com.google.common.io.BaseEncoding.StandardBaseEncoding, com.google.common.io.BaseEncoding
        public void encodeTo(Appendable target, byte[] bytes, int off, int len) throws IOException {
            Preconditions.checkNotNull(target);
            Preconditions.checkPositionIndexes(off, off + len, bytes.length);
            for (int i = 0; i < len; i++) {
                int i2 = bytes[off + i] & 255;
                target.append(this.encoding[i2]);
                target.append(this.encoding[i2 | 256]);
            }
        }

        @Override // com.google.common.io.BaseEncoding.StandardBaseEncoding, com.google.common.io.BaseEncoding
        public int decodeTo(byte[] target, CharSequence chars) throws DecodingException {
            Preconditions.checkNotNull(target);
            if (chars.length() % 2 == 1) {
                throw new DecodingException("Invalid input length " + chars.length());
            }
            int i = 0;
            int i2 = 0;
            while (i < chars.length()) {
                target[i2] = (byte) ((this.alphabet.decode(chars.charAt(i)) << 4) | this.alphabet.decode(chars.charAt(i + 1)));
                i += 2;
                i2++;
            }
            return i2;
        }

        @Override // com.google.common.io.BaseEncoding.StandardBaseEncoding
        public BaseEncoding newInstance(Alphabet alphabet, Character paddingChar) {
            return new Base16Encoding(alphabet);
        }
    }

    public static final class Base64Encoding extends StandardBaseEncoding {
        public Base64Encoding(String name, String alphabetChars, Character paddingChar) {
            this(new Alphabet(name, alphabetChars.toCharArray()), paddingChar);
        }

        public Base64Encoding(Alphabet alphabet, Character paddingChar) {
            super(alphabet, paddingChar);
            Preconditions.checkArgument(alphabet.chars.length == 64);
        }

        @Override // com.google.common.io.BaseEncoding.StandardBaseEncoding, com.google.common.io.BaseEncoding
        public void encodeTo(Appendable target, byte[] bytes, int off, int len) throws IOException {
            Preconditions.checkNotNull(target);
            int i = off + len;
            Preconditions.checkPositionIndexes(off, i, bytes.length);
            while (len >= 3) {
                int i2 = off + 2;
                int i3 = ((bytes[off + 1] & 255) << 8) | ((bytes[off] & 255) << 16);
                off += 3;
                int i4 = i3 | (bytes[i2] & 255);
                target.append(this.alphabet.encode(i4 >>> 18));
                target.append(this.alphabet.encode((i4 >>> 12) & 63));
                target.append(this.alphabet.encode((i4 >>> 6) & 63));
                target.append(this.alphabet.encode(i4 & 63));
                len -= 3;
            }
            if (off < i) {
                encodeChunkTo(target, bytes, off, i - off);
            }
        }

        @Override // com.google.common.io.BaseEncoding.StandardBaseEncoding, com.google.common.io.BaseEncoding
        public int decodeTo(byte[] target, CharSequence chars) throws DecodingException {
            Preconditions.checkNotNull(target);
            CharSequence charSequenceTrimTrailingPadding = trimTrailingPadding(chars);
            if (!this.alphabet.isValidPaddingStartPosition(charSequenceTrimTrailingPadding.length())) {
                throw new DecodingException("Invalid input length " + charSequenceTrimTrailingPadding.length());
            }
            int i = 0;
            int i2 = 0;
            while (i < charSequenceTrimTrailingPadding.length()) {
                int i3 = i + 2;
                int iDecode = (this.alphabet.decode(charSequenceTrimTrailingPadding.charAt(i)) << 18) | (this.alphabet.decode(charSequenceTrimTrailingPadding.charAt(i + 1)) << 12);
                int i4 = i2 + 1;
                target[i2] = (byte) (iDecode >>> 16);
                if (i3 < charSequenceTrimTrailingPadding.length()) {
                    int i5 = i + 3;
                    int iDecode2 = iDecode | (this.alphabet.decode(charSequenceTrimTrailingPadding.charAt(i3)) << 6);
                    int i6 = i2 + 2;
                    target[i4] = (byte) ((iDecode2 >>> 8) & 255);
                    if (i5 < charSequenceTrimTrailingPadding.length()) {
                        i += 4;
                        i2 += 3;
                        target[i6] = (byte) ((iDecode2 | this.alphabet.decode(charSequenceTrimTrailingPadding.charAt(i5))) & 255);
                    } else {
                        i2 = i6;
                        i = i5;
                    }
                } else {
                    i2 = i4;
                    i = i3;
                }
            }
            return i2;
        }

        @Override // com.google.common.io.BaseEncoding.StandardBaseEncoding
        public BaseEncoding newInstance(Alphabet alphabet, Character paddingChar) {
            return new Base64Encoding(alphabet, paddingChar);
        }
    }
}
