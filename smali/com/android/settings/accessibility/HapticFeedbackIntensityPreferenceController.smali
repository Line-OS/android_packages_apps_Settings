.class public Lcom/android/settings/accessibility/HapticFeedbackIntensityPreferenceController;
.super Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;
.source "HapticFeedbackIntensityPreferenceController.java"


# static fields
.field static final PREF_KEY:Ljava/lang/String; = "touch_vibration_preference_screen"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "touch_vibration_preference_screen"

    const-string v1, "haptic_feedback_intensity"

    const-string v2, "haptic_feedback_enabled"

    .line 31
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getDefaultIntensity()I
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {p0}, Landroid/os/Vibrator;->getDefaultHapticFeedbackIntensity()I

    move-result p0

    return p0
.end method
