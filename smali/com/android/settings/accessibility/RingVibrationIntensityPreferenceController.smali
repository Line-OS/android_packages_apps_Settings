.class public Lcom/android/settings/accessibility/RingVibrationIntensityPreferenceController;
.super Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;
.source "RingVibrationIntensityPreferenceController.java"


# static fields
.field static final PREF_KEY:Ljava/lang/String; = "ring_vibration_preference_screen"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const-string v2, "ring_vibration_preference_screen"

    const-string v3, "ring_vibration_intensity"

    const-string v4, "vibrate_when_ringing"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    .line 31
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

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

    invoke-virtual {p0}, Landroid/os/Vibrator;->getDefaultRingVibrationIntensity()I

    move-result p0

    return p0
.end method
