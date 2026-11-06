package com.google.android.material.timepicker;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Checkable;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.chip.Chip;
import com.google.android.material.timepicker.ClockFaceView;

/* JADX INFO: loaded from: classes3.dex */
class TimePickerView extends ConstraintLayout {
    public final ClockFaceView clockFace;
    public final ClockHandView clockHandView;
    public final Chip hourView;
    public final Chip minuteView;
    public final View.OnClickListener selectionListener;
    public final MaterialButtonToggleGroup toggle;

    public interface OnDoubleTapListener {
    }

    public interface OnSelectionChange {
    }

    public static /* synthetic */ OnSelectionChange access$000(TimePickerView timePickerView) {
        timePickerView.getClass();
        return null;
    }

    public static /* synthetic */ OnDoubleTapListener access$100(TimePickerView timePickerView) {
        timePickerView.getClass();
        return null;
    }

    public TimePickerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TimePickerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.selectionListener = new View.OnClickListener() { // from class: com.google.android.material.timepicker.TimePickerView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TimePickerView.access$000(TimePickerView.this);
            }
        };
        LayoutInflater.from(context).inflate(R$layout.material_timepicker, this);
        ClockFaceView clockFaceView = (ClockFaceView) findViewById(R$id.material_clock_face);
        this.clockFace = clockFaceView;
        MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) findViewById(R$id.material_clock_period_toggle);
        this.toggle = materialButtonToggleGroup;
        materialButtonToggleGroup.addOnButtonCheckedListener(new MaterialButtonToggleGroup.OnButtonCheckedListener() { // from class: com.google.android.material.timepicker.TimePickerView$$ExternalSyntheticLambda0
            @Override // com.google.android.material.button.MaterialButtonToggleGroup.OnButtonCheckedListener
            public final void onButtonChecked(MaterialButtonToggleGroup materialButtonToggleGroup2, int i2, boolean z) {
                this.f$0.getClass();
            }
        });
        this.minuteView = (Chip) findViewById(R$id.material_minute_tv);
        this.hourView = (Chip) findViewById(R$id.material_hour_tv);
        this.clockHandView = (ClockHandView) findViewById(R$id.material_clock_hand);
        clockFaceView.setOnEnterKeyPressedListener(new ClockFaceView.OnEnterKeyPressedListener() { // from class: com.google.android.material.timepicker.TimePickerView$$ExternalSyntheticLambda1
            @Override // com.google.android.material.timepicker.ClockFaceView.OnEnterKeyPressedListener
            public final void onEnterKeyPressed() {
                this.f$0.hourView.isChecked();
            }
        });
        setupDoubleTap();
        setUpDisplay();
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public final void setupDoubleTap() {
        final GestureDetector gestureDetector = new GestureDetector(getContext(), new GestureDetector.SimpleOnGestureListener() { // from class: com.google.android.material.timepicker.TimePickerView.2
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public boolean onDoubleTap(MotionEvent motionEvent) {
                TimePickerView.access$100(TimePickerView.this);
                return false;
            }
        });
        View.OnTouchListener onTouchListener = new View.OnTouchListener() { // from class: com.google.android.material.timepicker.TimePickerView.3
            /* JADX WARN: Multi-variable type inference failed */
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (((Checkable) view).isChecked()) {
                    return gestureDetector.onTouchEvent(motionEvent);
                }
                return false;
            }
        };
        this.minuteView.setOnTouchListener(onTouchListener);
        this.hourView.setOnTouchListener(onTouchListener);
    }

    public final void setUpDisplay() {
        this.minuteView.setTag(R$id.selection_type, 12);
        this.hourView.setTag(R$id.selection_type, 10);
        this.minuteView.setOnClickListener(this.selectionListener);
        this.hourView.setOnClickListener(this.selectionListener);
        this.minuteView.setAccessibilityClassName("android.view.View");
        this.hourView.setAccessibilityClassName("android.view.View");
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (view == this && i == 0) {
            this.hourView.sendAccessibilityEvent(8);
        }
    }
}
